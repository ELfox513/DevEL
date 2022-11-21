package net.bytebuddy.implementation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.FieldLocator;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.constant.DoubleConstant;
import net.bytebuddy.implementation.bytecode.constant.FloatConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.implementation.bytecode.constant.LongConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public abstract class FieldAccessor implements Implementation {
    public final Assigner assigner;
    public final FieldLocation fieldLocation;
    public final Assigner.Typing typing;

    /* loaded from: classes.dex */
    public interface AssignerConfigurable extends PropertyConfigurable {
        PropertyConfigurable withAssigner(Assigner assigner, Assigner.Typing typing);
    }

    /* loaded from: classes.dex */
    public interface FieldLocation {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Absolute implements FieldLocation, Prepared {
            private final FieldDescription fieldDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((Absolute) obj).fieldDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.FieldLocation.Prepared
            public FieldDescription resolve(MethodDescription methodDescription) {
                return this.fieldDescription;
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.FieldLocation
            public FieldLocation with(FieldLocator.Factory factory) {
                throw new IllegalStateException("Cannot specify a field locator factory for an absolute field location");
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.FieldLocation
            @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public Prepared prepare(TypeDescription typeDescription) {
                if (!this.fieldDescription.isStatic() && !typeDescription.isAssignableTo(this.fieldDescription.getDeclaringType().asErasure())) {
                    throw new IllegalStateException(this.fieldDescription + " is not declared by " + typeDescription);
                } else if (this.fieldDescription.isAccessibleTo(typeDescription)) {
                    return this;
                } else {
                    throw new IllegalStateException("Cannot access " + this.fieldDescription + " from " + typeDescription);
                }
            }

            public Absolute(FieldDescription fieldDescription) {
                this.fieldDescription = fieldDescription;
            }
        }

        /* loaded from: classes.dex */
        public interface Prepared {
            FieldDescription resolve(MethodDescription methodDescription);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Relative implements FieldLocation {
            private final FieldLocator.Factory fieldLocatorFactory;
            private final FieldNameExtractor fieldNameExtractor;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Prepared implements Prepared {
                private final FieldLocator fieldLocator;
                private final FieldNameExtractor fieldNameExtractor;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Prepared prepared = (Prepared) obj;
                        return this.fieldNameExtractor.equals(prepared.fieldNameExtractor) && this.fieldLocator.equals(prepared.fieldLocator);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.fieldNameExtractor.hashCode()) * 31) + this.fieldLocator.hashCode();
                }

                @Override // net.bytebuddy.implementation.FieldAccessor.FieldLocation.Prepared
                public FieldDescription resolve(MethodDescription methodDescription) {
                    FieldLocator.Resolution locate = this.fieldLocator.locate(this.fieldNameExtractor.resolve(methodDescription));
                    if (locate.isResolved()) {
                        return locate.getField();
                    }
                    throw new IllegalStateException("Cannot resolve field for " + methodDescription + " using " + this.fieldLocator);
                }

                public Prepared(FieldNameExtractor fieldNameExtractor, FieldLocator fieldLocator) {
                    this.fieldNameExtractor = fieldNameExtractor;
                    this.fieldLocator = fieldLocator;
                }
            }

            public Relative(FieldNameExtractor fieldNameExtractor) {
                this(fieldNameExtractor, FieldLocator.ForClassHierarchy.Factory.INSTANCE);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Relative relative = (Relative) obj;
                    return this.fieldNameExtractor.equals(relative.fieldNameExtractor) && this.fieldLocatorFactory.equals(relative.fieldLocatorFactory);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.fieldNameExtractor.hashCode()) * 31) + this.fieldLocatorFactory.hashCode();
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.FieldLocation
            public Prepared prepare(TypeDescription typeDescription) {
                return new Prepared(this.fieldNameExtractor, this.fieldLocatorFactory.make(typeDescription));
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.FieldLocation
            public FieldLocation with(FieldLocator.Factory factory) {
                return new Relative(this.fieldNameExtractor, factory);
            }

            private Relative(FieldNameExtractor fieldNameExtractor, FieldLocator.Factory factory) {
                this.fieldNameExtractor = fieldNameExtractor;
                this.fieldLocatorFactory = factory;
            }
        }

        Prepared prepare(TypeDescription typeDescription);

        FieldLocation with(FieldLocator.Factory factory);
    }

    /* loaded from: classes.dex */
    public interface FieldNameExtractor {
        String resolve(MethodDescription methodDescription);

        /* loaded from: classes.dex */
        public enum ForBeanProperty implements FieldNameExtractor {
            INSTANCE;

            @Override // net.bytebuddy.implementation.FieldAccessor.FieldNameExtractor
            public String resolve(MethodDescription methodDescription) {
                int i;
                String internalName = methodDescription.getInternalName();
                if (!internalName.startsWith("get") && !internalName.startsWith("set")) {
                    if (internalName.startsWith("is")) {
                        i = 2;
                    } else {
                        throw new IllegalArgumentException(methodDescription + " does not follow Java bean naming conventions");
                    }
                } else {
                    i = 3;
                }
                String substring = internalName.substring(i);
                if (substring.length() != 0) {
                    return Character.toLowerCase(substring.charAt(0)) + substring.substring(1);
                }
                throw new IllegalArgumentException(methodDescription + " does not specify a bean name");
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForFixedValue implements FieldNameExtractor {
            private final String name;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.name.equals(((ForFixedValue) obj).name);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.name.hashCode();
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.FieldNameExtractor
            public String resolve(MethodDescription methodDescription) {
                return this.name;
            }

            public ForFixedValue(String str) {
                this.name = str;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ForImplicitProperty extends FieldAccessor implements OwnerTypeLocatable {

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Appender implements ByteCodeAppender {
            private final FieldLocation.Prepared fieldLocation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Appender appender = (Appender) obj;
                    return this.fieldLocation.equals(appender.fieldLocation) && ForImplicitProperty.this.equals(ForImplicitProperty.this);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.fieldLocation.hashCode()) * 31) + ForImplicitProperty.this.hashCode();
            }

            public Appender(FieldLocation.Prepared prepared) {
                this.fieldLocation = prepared;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                StackManipulation loadThis;
                StackManipulation.Compound compound;
                if (methodDescription.isMethod()) {
                    FieldDescription resolve = this.fieldLocation.resolve(methodDescription);
                    if (!resolve.isStatic() && methodDescription.isStatic()) {
                        throw new IllegalStateException("Cannot set instance field " + resolve + " from " + methodDescription);
                    }
                    if (resolve.isStatic()) {
                        loadThis = StackManipulation.Trivial.INSTANCE;
                    } else {
                        loadThis = MethodVariableAccess.loadThis();
                    }
                    if (!methodDescription.getReturnType().represents(Void.TYPE)) {
                        compound = new StackManipulation.Compound(loadThis, FieldAccess.forField(resolve).read(), ForImplicitProperty.this.assigner.assign(resolve.getType(), methodDescription.getReturnType(), ForImplicitProperty.this.typing), MethodReturn.m14940of(methodDescription.getReturnType()));
                    } else if (methodDescription.getReturnType().represents(Void.TYPE) && methodDescription.getParameters().size() == 1) {
                        if (resolve.isFinal() && methodDescription.isMethod()) {
                            throw new IllegalStateException("Cannot set final field " + resolve + " from " + methodDescription);
                        }
                        compound = new StackManipulation.Compound(loadThis, MethodVariableAccess.load((ParameterDescription) methodDescription.getParameters().get(0)), ForImplicitProperty.this.assigner.assign(((ParameterDescription) methodDescription.getParameters().get(0)).getType(), resolve.getType(), ForImplicitProperty.this.typing), FieldAccess.forField(resolve).write(), MethodReturn.VOID);
                    } else {
                        throw new IllegalArgumentException("Method " + methodDescription + " is no bean accessor");
                    }
                    if (compound.isValid()) {
                        return new ByteCodeAppender.Size(compound.apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }
                    throw new IllegalStateException("Cannot set or get value of " + methodDescription + " using " + resolve);
                }
                throw new IllegalArgumentException(methodDescription + " does not describe a field getter or setter");
            }
        }

        public ForImplicitProperty(FieldLocation fieldLocation) {
            this(fieldLocation, Assigner.DEFAULT, Assigner.Typing.STATIC);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(this.fieldLocation.prepare(target.getInstrumentedType()));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.OwnerTypeLocatable
        /* renamed from: in */
        public AssignerConfigurable mo15092in(Class<?> cls) {
            return mo15091in(TypeDescription.ForLoadedType.m15196of(cls));
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsDefaultValue() {
            return new ForSetter.OfDefaultValue(this.fieldLocation, this.assigner, this.typing, ForSetter.TerminationHandler.RETURNING);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsFieldValueOf(Field field) {
            return setsFieldValueOf(new FieldDescription.ForLoadedField(field));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsReference(Object obj) {
            return setsReference(obj, "fixedFieldValue$" + RandomString.hashOf(obj));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsValue(@MaybeNull Object obj) {
            if (obj == null) {
                return setsDefaultValue();
            }
            Class<?> cls = obj.getClass();
            if (cls == String.class) {
                return setsValue(new TextConstant((String) obj), String.class);
            }
            if (cls == Class.class) {
                return setsValue(ClassConstant.m14958of(TypeDescription.ForLoadedType.m15196of((Class) obj)), Class.class);
            }
            if (cls == Boolean.class) {
                return setsValue(IntegerConstant.forValue(((Boolean) obj).booleanValue()), Boolean.TYPE);
            }
            if (cls == Byte.class) {
                return setsValue(IntegerConstant.forValue(((Byte) obj).byteValue()), Byte.TYPE);
            }
            if (cls == Short.class) {
                return setsValue(IntegerConstant.forValue(((Short) obj).shortValue()), Short.TYPE);
            }
            if (cls == Character.class) {
                return setsValue(IntegerConstant.forValue(((Character) obj).charValue()), Character.TYPE);
            }
            if (cls == Integer.class) {
                return setsValue(IntegerConstant.forValue(((Integer) obj).intValue()), Integer.TYPE);
            }
            if (cls == Long.class) {
                return setsValue(LongConstant.forValue(((Long) obj).longValue()), Long.TYPE);
            }
            if (cls == Float.class) {
                return setsValue(FloatConstant.forValue(((Float) obj).floatValue()), Float.TYPE);
            }
            if (cls == Double.class) {
                return setsValue(DoubleConstant.forValue(((Double) obj).doubleValue()), Double.TYPE);
            }
            if (JavaType.METHOD_HANDLE.getTypeStub().isAssignableFrom(cls)) {
                return setsValue(new JavaConstantValue(JavaConstant.MethodHandle.ofLoaded(obj)), cls);
            }
            if (JavaType.METHOD_TYPE.getTypeStub().represents(cls)) {
                return setsValue(new JavaConstantValue(JavaConstant.MethodType.ofLoaded(obj)), cls);
            }
            return setsReference(obj);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.AssignerConfigurable
        public PropertyConfigurable withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new ForImplicitProperty(this.fieldLocation, assigner, typing);
        }

        private ForImplicitProperty(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing) {
            super(fieldLocation, assigner, typing);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.OwnerTypeLocatable
        /* renamed from: in */
        public AssignerConfigurable mo15091in(TypeDescription typeDescription) {
            return mo15090in(new FieldLocator.ForExactType.Factory(typeDescription));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsArgumentAt(int i) {
            if (i >= 0) {
                return new ForSetter.OfParameterValue(this.fieldLocation, this.assigner, this.typing, ForSetter.TerminationHandler.RETURNING, i);
            }
            throw new IllegalArgumentException("A parameter index cannot be negative: " + i);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsFieldValueOf(FieldDescription fieldDescription) {
            return new ForSetter.OfFieldValue(this.fieldLocation, this.assigner, this.typing, ForSetter.TerminationHandler.RETURNING, new FieldLocation.Absolute(fieldDescription));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsReference(Object obj, String str) {
            return new ForSetter.OfReferenceValue(this.fieldLocation, this.assigner, this.typing, ForSetter.TerminationHandler.RETURNING, obj, str);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.OwnerTypeLocatable
        /* renamed from: in */
        public AssignerConfigurable mo15090in(FieldLocator.Factory factory) {
            return new ForImplicitProperty(this.fieldLocation.with(factory), this.assigner, this.typing);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsFieldValueOf(String str) {
            return setsFieldValueOf(new FieldNameExtractor.ForFixedValue(str));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsFieldValueOf(FieldNameExtractor fieldNameExtractor) {
            return new ForSetter.OfFieldValue(this.fieldLocation, this.assigner, this.typing, ForSetter.TerminationHandler.RETURNING, new FieldLocation.Relative(fieldNameExtractor));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsValue(TypeDescription typeDescription) {
            return setsValue(ClassConstant.m14958of(typeDescription), Class.class);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsValue(JavaConstant javaConstant) {
            return setsValue(new JavaConstantValue(javaConstant), javaConstant.getTypeDescription().asGenericType());
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsValue(StackManipulation stackManipulation, Type type) {
            return setsValue(stackManipulation, TypeDefinition.Sort.describe(type));
        }

        @Override // net.bytebuddy.implementation.FieldAccessor.PropertyConfigurable
        public Implementation.Composable setsValue(StackManipulation stackManipulation, TypeDescription.Generic generic) {
            return new ForSetter.OfConstantValue(this.fieldLocation, this.assigner, this.typing, ForSetter.TerminationHandler.RETURNING, generic, stackManipulation);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class ForSetter<T> extends FieldAccessor implements Implementation.Composable {
        private final TerminationHandler terminationHandler;

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Appender implements ByteCodeAppender {
            private final FieldLocation.Prepared fieldLocation;
            @MaybeNull
            @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
            private final T initialized;
            private final TypeDescription instrumentedType;

            /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
                if (r2 != null) goto L27;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                /*
                    r4 = this;
                    r0 = 1
                    if (r4 != r5) goto L4
                    return r0
                L4:
                    r1 = 0
                    if (r5 != 0) goto L8
                    return r1
                L8:
                    java.lang.Class r2 = r4.getClass()
                    java.lang.Class r3 = r5.getClass()
                    if (r2 == r3) goto L13
                    return r1
                L13:
                    net.bytebuddy.description.type.TypeDescription r2 = r4.instrumentedType
                    net.bytebuddy.implementation.FieldAccessor$ForSetter$Appender r5 = (net.bytebuddy.implementation.FieldAccessor.ForSetter.Appender) r5
                    net.bytebuddy.description.type.TypeDescription r3 = r5.instrumentedType
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L20
                    return r1
                L20:
                    T r2 = r4.initialized
                    T r3 = r5.initialized
                    if (r3 == 0) goto L2f
                    if (r2 == 0) goto L31
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L32
                    return r1
                L2f:
                    if (r2 == 0) goto L32
                L31:
                    return r1
                L32:
                    net.bytebuddy.implementation.FieldAccessor$FieldLocation$Prepared r2 = r4.fieldLocation
                    net.bytebuddy.implementation.FieldAccessor$FieldLocation$Prepared r3 = r5.fieldLocation
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L3d
                    return r1
                L3d:
                    net.bytebuddy.implementation.FieldAccessor$ForSetter r2 = net.bytebuddy.implementation.FieldAccessor.ForSetter.this
                    net.bytebuddy.implementation.FieldAccessor$ForSetter r5 = net.bytebuddy.implementation.FieldAccessor.ForSetter.this
                    boolean r5 = r2.equals(r5)
                    if (r5 != 0) goto L48
                    return r1
                L48:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.implementation.FieldAccessor.ForSetter.Appender.equals(java.lang.Object):boolean");
            }

            public int hashCode() {
                int hashCode = ((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31;
                T t = this.initialized;
                if (t != null) {
                    hashCode += t.hashCode();
                }
                return (((hashCode * 31) + this.fieldLocation.hashCode()) * 31) + ForSetter.this.hashCode();
            }

            public Appender(TypeDescription typeDescription, @MaybeNull T t, FieldLocation.Prepared prepared) {
                this.instrumentedType = typeDescription;
                this.initialized = t;
                this.fieldLocation = prepared;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                StackManipulation loadThis;
                FieldDescription resolve = this.fieldLocation.resolve(methodDescription);
                if (!resolve.isStatic() && methodDescription.isStatic()) {
                    throw new IllegalStateException("Cannot set instance field " + resolve + " from " + methodDescription);
                } else if (resolve.isFinal() && methodDescription.isMethod()) {
                    throw new IllegalStateException("Cannot set final field " + resolve + " from " + methodDescription);
                } else {
                    StackManipulation resolve2 = ForSetter.this.resolve(this.initialized, resolve, this.instrumentedType, methodDescription);
                    if (resolve2.isValid()) {
                        StackManipulation[] stackManipulationArr = new StackManipulation[4];
                        if (methodDescription.isStatic()) {
                            loadThis = StackManipulation.Trivial.INSTANCE;
                        } else {
                            loadThis = MethodVariableAccess.loadThis();
                        }
                        stackManipulationArr[0] = loadThis;
                        stackManipulationArr[1] = resolve2;
                        stackManipulationArr[2] = FieldAccess.forField(resolve).write();
                        stackManipulationArr[3] = ForSetter.this.terminationHandler.resolve(methodDescription);
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }
                    throw new IllegalStateException("Set value cannot be assigned to " + resolve);
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OfConstantValue extends ForSetter<Void> {
            private final StackManipulation stackManipulation;
            private final TypeDescription.Generic typeDescription;

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation andThen(Implementation implementation) {
                return new Implementation.Compound(new OfConstantValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.typeDescription, this.stackManipulation), implementation);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        OfConstantValue ofConstantValue = (OfConstantValue) obj;
                        return this.typeDescription.equals(ofConstantValue.typeDescription) && this.stackManipulation.equals(ofConstantValue.stackManipulation);
                    }
                    return false;
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public int hashCode() {
                return (((super.hashCode() * 31) + this.typeDescription.hashCode()) * 31) + this.stackManipulation.hashCode();
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            @AlwaysNull
            public Void initialize(TypeDescription typeDescription) {
                return null;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation.Composable andThen(Implementation.Composable composable) {
                return new Implementation.Compound.Composable(new OfConstantValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.typeDescription, this.stackManipulation), composable);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            public StackManipulation resolve(@MaybeNull Void r3, FieldDescription fieldDescription, TypeDescription typeDescription, MethodDescription methodDescription) {
                return new StackManipulation.Compound(this.stackManipulation, this.assigner.assign(this.typeDescription, fieldDescription.getType(), this.typing));
            }

            public OfConstantValue(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing, TerminationHandler terminationHandler, TypeDescription.Generic generic, StackManipulation stackManipulation) {
                super(fieldLocation, assigner, typing, terminationHandler);
                this.typeDescription = generic;
                this.stackManipulation = stackManipulation;
            }
        }

        /* loaded from: classes.dex */
        public static class OfDefaultValue extends ForSetter<Void> {
            public OfDefaultValue(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing, TerminationHandler terminationHandler) {
                super(fieldLocation, assigner, typing, terminationHandler);
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation andThen(Implementation implementation) {
                return new Implementation.Compound(new OfDefaultValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL), implementation);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            @AlwaysNull
            public Void initialize(TypeDescription typeDescription) {
                return null;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation.Composable andThen(Implementation.Composable composable) {
                return new Implementation.Compound.Composable(new OfDefaultValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL), composable);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            public StackManipulation resolve(@MaybeNull Void r1, FieldDescription fieldDescription, TypeDescription typeDescription, MethodDescription methodDescription) {
                return DefaultValue.m14957of(fieldDescription.getType());
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OfFieldValue extends ForSetter<FieldLocation.Prepared> {
            private final FieldLocation target;

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation andThen(Implementation implementation) {
                return new Implementation.Compound(new OfFieldValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.target), implementation);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.target.equals(((OfFieldValue) obj).target);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public int hashCode() {
                return (super.hashCode() * 31) + this.target.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation.Composable andThen(Implementation.Composable composable) {
                return new Implementation.Compound.Composable(new OfFieldValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.target), composable);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            public FieldLocation.Prepared initialize(TypeDescription typeDescription) {
                return this.target.prepare(typeDescription);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            @SuppressFBWarnings(justification = "Expects its own initialized value as argument", value = {"NP_PARAMETER_MUST_BE_NONNULL_BUT_MARKED_AS_NULLABLE"})
            public StackManipulation resolve(@MaybeNull FieldLocation.Prepared prepared, FieldDescription fieldDescription, TypeDescription typeDescription, MethodDescription methodDescription) {
                FieldDescription resolve = prepared.resolve(methodDescription);
                if (!resolve.isStatic() && methodDescription.isStatic()) {
                    throw new IllegalStateException("Cannot set instance field " + fieldDescription + " from " + methodDescription);
                }
                StackManipulation[] stackManipulationArr = new StackManipulation[3];
                stackManipulationArr[0] = resolve.isStatic() ? StackManipulation.Trivial.INSTANCE : MethodVariableAccess.loadThis();
                stackManipulationArr[1] = FieldAccess.forField(resolve).read();
                stackManipulationArr[2] = this.assigner.assign(resolve.getType(), fieldDescription.getType(), this.typing);
                return new StackManipulation.Compound(stackManipulationArr);
            }

            public OfFieldValue(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing, TerminationHandler terminationHandler, FieldLocation fieldLocation2) {
                super(fieldLocation, assigner, typing, terminationHandler);
                this.target = fieldLocation2;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OfParameterValue extends ForSetter<Void> {
            private final int index;

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation andThen(Implementation implementation) {
                return new Implementation.Compound(new OfParameterValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.index), implementation);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.index == ((OfParameterValue) obj).index;
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public int hashCode() {
                return (super.hashCode() * 31) + this.index;
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            @AlwaysNull
            public Void initialize(TypeDescription typeDescription) {
                return null;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation.Composable andThen(Implementation.Composable composable) {
                return new Implementation.Compound.Composable(new OfParameterValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.index), composable);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            public StackManipulation resolve(@MaybeNull Void r4, FieldDescription fieldDescription, TypeDescription typeDescription, MethodDescription methodDescription) {
                if (methodDescription.getParameters().size() > this.index) {
                    return new StackManipulation.Compound(MethodVariableAccess.load((ParameterDescription) methodDescription.getParameters().get(this.index)), this.assigner.assign(((ParameterDescription) methodDescription.getParameters().get(this.index)).getType(), fieldDescription.getType(), this.typing));
                }
                throw new IllegalStateException(methodDescription + " does not define a parameter with index " + this.index);
            }

            public OfParameterValue(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing, TerminationHandler terminationHandler, int i) {
                super(fieldLocation, assigner, typing, terminationHandler);
                this.index = i;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OfReferenceValue extends ForSetter<FieldDescription.InDefinedShape> {
            public static final String PREFIX = "fixedFieldValue";
            private final String name;
            private final Object value;

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation andThen(Implementation implementation) {
                return new Implementation.Compound(new OfReferenceValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.value, this.name), implementation);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        OfReferenceValue ofReferenceValue = (OfReferenceValue) obj;
                        return this.name.equals(ofReferenceValue.name) && this.value.equals(ofReferenceValue.value);
                    }
                    return false;
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter, net.bytebuddy.implementation.FieldAccessor
            public int hashCode() {
                return (((super.hashCode() * 31) + this.value.hashCode()) * 31) + this.name.hashCode();
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation.Composable andThen(Implementation.Composable composable) {
                return new Implementation.Compound.Composable(new OfReferenceValue(this.fieldLocation, this.assigner, this.typing, TerminationHandler.NON_OPERATIONAL, this.value, this.name), composable);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            public FieldDescription.InDefinedShape initialize(TypeDescription typeDescription) {
                return (FieldDescription.InDefinedShape) typeDescription.getDeclaredFields().filter(ElementMatchers.named(this.name)).getOnly();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType.withAuxiliaryField(new FieldDescription.Token(this.name, 4105, TypeDescription.ForLoadedType.m15196of(this.value.getClass()).asGenericType()), this.value);
            }

            @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter
            @SuppressFBWarnings(justification = "Expects its own initialized value as argument", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public StackManipulation resolve(@MaybeNull FieldDescription.InDefinedShape inDefinedShape, FieldDescription fieldDescription, TypeDescription typeDescription, MethodDescription methodDescription) {
                if (fieldDescription.isFinal() && methodDescription.isMethod()) {
                    throw new IllegalArgumentException("Cannot set final field " + fieldDescription + " from " + methodDescription);
                }
                return new StackManipulation.Compound(FieldAccess.forField(inDefinedShape).read(), this.assigner.assign(TypeDescription.ForLoadedType.m15196of(this.value.getClass()).asGenericType(), fieldDescription.getType(), this.typing));
            }

            public OfReferenceValue(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing, TerminationHandler terminationHandler, Object obj, String str) {
                super(fieldLocation, assigner, typing, terminationHandler);
                this.value = obj;
                this.name = str;
            }
        }

        /* loaded from: classes.dex */
        public enum TerminationHandler {
            RETURNING { // from class: net.bytebuddy.implementation.FieldAccessor.ForSetter.TerminationHandler.1
                @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter.TerminationHandler
                public StackManipulation resolve(MethodDescription methodDescription) {
                    if (methodDescription.getReturnType().represents(Void.TYPE)) {
                        return MethodReturn.VOID;
                    }
                    throw new IllegalStateException("Cannot implement setter with return value for " + methodDescription);
                }
            },
            NON_OPERATIONAL { // from class: net.bytebuddy.implementation.FieldAccessor.ForSetter.TerminationHandler.2
                @Override // net.bytebuddy.implementation.FieldAccessor.ForSetter.TerminationHandler
                public StackManipulation resolve(MethodDescription methodDescription) {
                    return StackManipulation.Trivial.INSTANCE;
                }
            };

            public abstract StackManipulation resolve(MethodDescription methodDescription);
        }

        @Override // net.bytebuddy.implementation.FieldAccessor
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.terminationHandler.equals(((ForSetter) obj).terminationHandler);
            }
            return false;
        }

        @Override // net.bytebuddy.implementation.FieldAccessor
        public int hashCode() {
            return (super.hashCode() * 31) + this.terminationHandler.hashCode();
        }

        @MaybeNull
        public abstract T initialize(TypeDescription typeDescription);

        public abstract StackManipulation resolve(@MaybeNull T t, FieldDescription fieldDescription, TypeDescription typeDescription, MethodDescription methodDescription);

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target.getInstrumentedType(), initialize(target.getInstrumentedType()), this.fieldLocation.prepare(target.getInstrumentedType()));
        }

        public ForSetter(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing, TerminationHandler terminationHandler) {
            super(fieldLocation, assigner, typing);
            this.terminationHandler = terminationHandler;
        }
    }

    /* loaded from: classes.dex */
    public interface OwnerTypeLocatable extends AssignerConfigurable {
        /* renamed from: in */
        AssignerConfigurable mo15092in(Class<?> cls);

        /* renamed from: in */
        AssignerConfigurable mo15091in(TypeDescription typeDescription);

        /* renamed from: in */
        AssignerConfigurable mo15090in(FieldLocator.Factory factory);
    }

    /* loaded from: classes.dex */
    public interface PropertyConfigurable extends Implementation {
        Implementation.Composable setsArgumentAt(int i);

        Implementation.Composable setsDefaultValue();

        Implementation.Composable setsFieldValueOf(String str);

        Implementation.Composable setsFieldValueOf(Field field);

        Implementation.Composable setsFieldValueOf(FieldDescription fieldDescription);

        Implementation.Composable setsFieldValueOf(FieldNameExtractor fieldNameExtractor);

        Implementation.Composable setsReference(Object obj);

        Implementation.Composable setsReference(Object obj, String str);

        Implementation.Composable setsValue(Object obj);

        Implementation.Composable setsValue(TypeDescription typeDescription);

        Implementation.Composable setsValue(StackManipulation stackManipulation, Type type);

        Implementation.Composable setsValue(StackManipulation stackManipulation, TypeDescription.Generic generic);

        Implementation.Composable setsValue(JavaConstant javaConstant);
    }

    /* renamed from: of */
    public static OwnerTypeLocatable m15094of(FieldNameExtractor fieldNameExtractor) {
        return new ForImplicitProperty(new FieldLocation.Relative(fieldNameExtractor));
    }

    public static OwnerTypeLocatable ofBeanProperty() {
        return m15094of(FieldNameExtractor.ForBeanProperty.INSTANCE);
    }

    public static OwnerTypeLocatable ofField(String str) {
        return m15094of(new FieldNameExtractor.ForFixedValue(str));
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            FieldAccessor fieldAccessor = (FieldAccessor) obj;
            return this.typing.equals(fieldAccessor.typing) && this.fieldLocation.equals(fieldAccessor.fieldLocation) && this.assigner.equals(fieldAccessor.assigner);
        }
        return false;
    }

    public int hashCode() {
        return (((((getClass().hashCode() * 31) + this.fieldLocation.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.typing.hashCode();
    }

    /* renamed from: of */
    public static AssignerConfigurable m15096of(Field field) {
        return m15095of(new FieldDescription.ForLoadedField(field));
    }

    public FieldAccessor(FieldLocation fieldLocation, Assigner assigner, Assigner.Typing typing) {
        this.fieldLocation = fieldLocation;
        this.assigner = assigner;
        this.typing = typing;
    }

    /* renamed from: of */
    public static AssignerConfigurable m15095of(FieldDescription fieldDescription) {
        return new ForImplicitProperty(new FieldLocation.Absolute(fieldDescription));
    }
}
