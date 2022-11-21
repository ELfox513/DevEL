package net.bytebuddy.implementation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.scaffold.FieldLocator;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.DoubleConstant;
import net.bytebuddy.implementation.bytecode.constant.FloatConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.implementation.bytecode.constant.LongConstant;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class InvokeDynamic implements Implementation.Composable {
    public final List<? extends JavaConstant> arguments;
    public final Assigner assigner;
    public final MethodDescription.InDefinedShape bootstrap;
    public final InvocationProvider invocationProvider;
    public final TerminationHandler terminationHandler;
    public final Assigner.Typing typing;

    /* loaded from: classes.dex */
    public static abstract class AbstractDelegator extends InvokeDynamic {
        public AbstractDelegator(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing) {
            super(inDefinedShape, list, invocationProvider, terminationHandler, assigner, typing);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.implementation.Implementation.Composable
        public Implementation andThen(Implementation implementation) {
            return materialize().andThen(implementation);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return materialize().appender(target);
        }

        public abstract InvokeDynamic materialize();

        @Override // net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return materialize().prepare(instrumentedType);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withArgument(int... iArr) {
            return materialize().withArgument(iArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public Implementation.Composable withAssigner(Assigner assigner, Assigner.Typing typing) {
            return materialize().withAssigner(assigner, typing);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withBooleanValue(boolean... zArr) {
            return materialize().withBooleanValue(zArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withByteValue(byte... bArr) {
            return materialize().withByteValue(bArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withCharacterValue(char... cArr) {
            return materialize().withCharacterValue(cArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withDoubleValue(double... dArr) {
            return materialize().withDoubleValue(dArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withEnumeration(EnumerationDescription... enumerationDescriptionArr) {
            return materialize().withEnumeration(enumerationDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withField(String... strArr) {
            return materialize().withField(strArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withFloatValue(float... fArr) {
            return materialize().withFloatValue(fArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withImplicitAndMethodArguments() {
            return materialize().withImplicitAndMethodArguments();
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withInstance(JavaConstant... javaConstantArr) {
            return materialize().withInstance(javaConstantArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withIntegerValue(int... iArr) {
            return materialize().withIntegerValue(iArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withLongValue(long... jArr) {
            return materialize().withLongValue(jArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withMethodArguments() {
            return materialize().withMethodArguments();
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withNullValue(Class<?>... clsArr) {
            return materialize().withNullValue(clsArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public WithImplicitType withReference(Object obj) {
            return materialize().withReference(obj);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withShortValue(short... sArr) {
            return materialize().withShortValue(sArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withThis(Class<?>... clsArr) {
            return materialize().withThis(clsArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withType(TypeDescription... typeDescriptionArr) {
            return materialize().withType(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withValue(Object... objArr) {
            return materialize().withValue(objArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public WithImplicitType withArgument(int i) {
            return materialize().withArgument(i);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withField(FieldLocator.Factory factory, String... strArr) {
            return materialize().withField(factory, strArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withNullValue(TypeDescription... typeDescriptionArr) {
            return materialize().withNullValue(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withReference(Object... objArr) {
            return materialize().withReference(objArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public InvokeDynamic withThis(TypeDescription... typeDescriptionArr) {
            return materialize().withThis(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public WithImplicitType withField(String str) {
            return materialize().withField(str);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic
        public WithImplicitType withField(String str, FieldLocator.Factory factory) {
            return materialize().withField(str, factory);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class Appender implements ByteCodeAppender {
        private final TypeDescription instrumentedType;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.instrumentedType.equals(appender.instrumentedType) && InvokeDynamic.this.equals(InvokeDynamic.this);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + InvokeDynamic.this.hashCode();
        }

        public Appender(TypeDescription typeDescription) {
            this.instrumentedType = typeDescription;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            InvocationProvider.Target make = InvokeDynamic.this.invocationProvider.make(methodDescription);
            TypeDescription typeDescription = this.instrumentedType;
            InvokeDynamic invokeDynamic = InvokeDynamic.this;
            InvocationProvider.Target.Resolved resolve = make.resolve(typeDescription, invokeDynamic.assigner, invokeDynamic.typing);
            TerminationHandler terminationHandler = InvokeDynamic.this.terminationHandler;
            TypeDescription returnType = resolve.getReturnType();
            InvokeDynamic invokeDynamic2 = InvokeDynamic.this;
            return new ByteCodeAppender.Size(new StackManipulation.Compound(resolve.getStackManipulation(), MethodInvocation.invoke(InvokeDynamic.this.bootstrap).dynamic(resolve.getInternalName(), resolve.getReturnType(), resolve.getParameterTypes(), InvokeDynamic.this.arguments), terminationHandler.resolve(methodDescription, returnType, invokeDynamic2.assigner, invokeDynamic2.typing)).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
        }
    }

    /* loaded from: classes.dex */
    public interface InvocationProvider {

        /* loaded from: classes.dex */
        public interface ArgumentProvider {

            /* loaded from: classes.dex */
            public enum ConstantPoolWrapper {
                BOOLEAN(Boolean.TYPE, Boolean.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.1
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(IntegerConstant.forValue(((Boolean) obj).booleanValue()));
                    }
                },
                BYTE(Byte.TYPE, Byte.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.2
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(IntegerConstant.forValue(((Byte) obj).byteValue()));
                    }
                },
                SHORT(Short.TYPE, Short.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.3
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(IntegerConstant.forValue(((Short) obj).shortValue()));
                    }
                },
                CHARACTER(Character.TYPE, Character.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.4
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(IntegerConstant.forValue(((Character) obj).charValue()));
                    }
                },
                INTEGER(Integer.TYPE, Integer.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.5
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(IntegerConstant.forValue(((Integer) obj).intValue()));
                    }
                },
                LONG(Long.TYPE, Long.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.6
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(LongConstant.forValue(((Long) obj).longValue()));
                    }
                },
                FLOAT(Float.TYPE, Float.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.7
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(FloatConstant.forValue(((Float) obj).floatValue()));
                    }
                },
                DOUBLE(Double.TYPE, Double.class) { // from class: net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper.8
                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ConstantPoolWrapper
                    public ArgumentProvider make(Object obj) {
                        return new WrappingArgumentProvider(DoubleConstant.forValue(((Double) obj).doubleValue()));
                    }
                };
                
                private final TypeDescription primitiveType;
                private final TypeDescription wrapperType;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class WrappingArgumentProvider implements ArgumentProvider {
                    private final StackManipulation stackManipulation;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WrappingArgumentProvider wrappingArgumentProvider = (WrappingArgumentProvider) obj;
                            return ConstantPoolWrapper.this.equals(ConstantPoolWrapper.this) && this.stackManipulation.equals(wrappingArgumentProvider.stackManipulation);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + ConstantPoolWrapper.this.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                    public InstrumentedType prepare(InstrumentedType instrumentedType) {
                        return instrumentedType;
                    }

                    public WrappingArgumentProvider(StackManipulation stackManipulation) {
                        this.stackManipulation = stackManipulation;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                    public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                        return new Resolved.Simple(new StackManipulation.Compound(this.stackManipulation, assigner.assign(ConstantPoolWrapper.this.primitiveType.asGenericType(), ConstantPoolWrapper.this.wrapperType.asGenericType(), typing)), ConstantPoolWrapper.this.wrapperType);
                    }
                }

                public abstract ArgumentProvider make(Object obj);

                ConstantPoolWrapper(Class cls, Class cls2) {
                    this.primitiveType = TypeDescription.ForLoadedType.m15196of(cls);
                    this.wrapperType = TypeDescription.ForLoadedType.m15196of(cls2);
                }

                /* renamed from: of */
                public static ArgumentProvider m15064of(Object obj) {
                    if (obj instanceof Boolean) {
                        return BOOLEAN.make(obj);
                    }
                    if (obj instanceof Byte) {
                        return BYTE.make(obj);
                    }
                    if (obj instanceof Short) {
                        return SHORT.make(obj);
                    }
                    if (obj instanceof Character) {
                        return CHARACTER.make(obj);
                    }
                    if (obj instanceof Integer) {
                        return INTEGER.make(obj);
                    }
                    if (obj instanceof Long) {
                        return LONG.make(obj);
                    }
                    if (obj instanceof Float) {
                        return FLOAT.make(obj);
                    }
                    if (obj instanceof Double) {
                        return DOUBLE.make(obj);
                    }
                    if (obj instanceof String) {
                        return new ForStringConstant((String) obj);
                    }
                    if (obj instanceof Class) {
                        return new ForClassConstant(TypeDescription.ForLoadedType.m15196of((Class) obj));
                    }
                    if (obj instanceof TypeDescription) {
                        return new ForClassConstant((TypeDescription) obj);
                    }
                    if (obj instanceof Enum) {
                        return new ForEnumerationValue(new EnumerationDescription.ForLoadedEnumeration((Enum) obj));
                    }
                    if (obj instanceof EnumerationDescription) {
                        return new ForEnumerationValue((EnumerationDescription) obj);
                    }
                    if (JavaType.METHOD_HANDLE.isInstance(obj)) {
                        return new ForJavaConstant(JavaConstant.MethodHandle.ofLoaded(obj));
                    }
                    if (JavaType.METHOD_TYPE.isInstance(obj)) {
                        return new ForJavaConstant(JavaConstant.MethodType.ofLoaded(obj));
                    }
                    if (obj instanceof JavaConstant) {
                        return new ForJavaConstant((JavaConstant) obj);
                    }
                    return ForInstance.m15063of(obj);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForField implements ArgumentProvider {
                public final FieldLocator.Factory fieldLocatorFactory;
                public final String fieldName;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithExplicitType extends ForField {
                    private final TypeDescription typeDescription;

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ForField
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((WithExplicitType) obj).typeDescription);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ForField
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.typeDescription.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ForField
                    public Resolved doResolve(StackManipulation stackManipulation, TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing) {
                        StackManipulation assign = assigner.assign(generic, this.typeDescription.asGenericType(), typing);
                        if (assign.isValid()) {
                            return new Resolved.Simple(new StackManipulation.Compound(stackManipulation, assign), this.typeDescription);
                        }
                        throw new IllegalStateException("Cannot assign " + generic + " to " + this.typeDescription);
                    }

                    public WithExplicitType(String str, FieldLocator.Factory factory, TypeDescription typeDescription) {
                        super(str, factory);
                        this.typeDescription = typeDescription;
                    }
                }

                public Resolved doResolve(StackManipulation stackManipulation, TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(stackManipulation, generic.asErasure());
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForField forField = (ForField) obj;
                        return this.fieldName.equals(forField.fieldName) && this.fieldLocatorFactory.equals(forField.fieldLocatorFactory);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.fieldName.hashCode()) * 31) + this.fieldLocatorFactory.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    StackManipulation loadThis;
                    FieldLocator.Resolution locate = this.fieldLocatorFactory.make(typeDescription).locate(this.fieldName);
                    if (locate.isResolved()) {
                        if (!locate.getField().isStatic() && methodDescription.isStatic()) {
                            throw new IllegalStateException("Cannot access non-static " + locate.getField() + " from " + methodDescription);
                        }
                        StackManipulation[] stackManipulationArr = new StackManipulation[2];
                        if (locate.getField().isStatic()) {
                            loadThis = StackManipulation.Trivial.INSTANCE;
                        } else {
                            loadThis = MethodVariableAccess.loadThis();
                        }
                        stackManipulationArr[0] = loadThis;
                        stackManipulationArr[1] = FieldAccess.forField(locate.getField()).read();
                        return doResolve(new StackManipulation.Compound(stackManipulationArr), locate.getField().getType(), assigner, typing);
                    }
                    throw new IllegalStateException("Cannot find a field " + this.fieldName + " for " + typeDescription);
                }

                public ForField(String str, FieldLocator.Factory factory) {
                    this.fieldName = str;
                    this.fieldLocatorFactory = factory;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForInstance implements ArgumentProvider {
                private static final String FIELD_PREFIX = "invokeDynamic";
                private final TypeDescription fieldType;
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
                private final String name;
                private final Object value;

                /* renamed from: of */
                public static ArgumentProvider m15063of(Object obj) {
                    return new ForInstance(obj, TypeDescription.ForLoadedType.m15196of(obj.getClass()));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForInstance forInstance = (ForInstance) obj;
                        return this.value.equals(forInstance.value) && this.fieldType.equals(forInstance.fieldType);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.value.hashCode()) * 31) + this.fieldType.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType.withAuxiliaryField(new FieldDescription.Token(this.name, 4169, this.fieldType.asGenericType()), this.value);
                }

                public ForInstance(Object obj, TypeDescription typeDescription) {
                    this.value = obj;
                    this.fieldType = typeDescription;
                    this.name = "invokeDynamic$" + RandomString.hashOf(obj);
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    FieldDescription fieldDescription = (FieldDescription) typeDescription.getDeclaredFields().filter(ElementMatchers.named(this.name)).getOnly();
                    StackManipulation assign = assigner.assign(fieldDescription.getType(), this.fieldType.asGenericType(), typing);
                    if (assign.isValid()) {
                        return new Resolved.Simple(new StackManipulation.Compound(FieldAccess.forField(fieldDescription).read(), assign), fieldDescription.getType().asErasure());
                    }
                    throw new IllegalStateException("Cannot assign " + fieldDescription + " to " + this.fieldType);
                }
            }

            /* loaded from: classes.dex */
            public enum ForInterceptedMethodInstanceAndParameters implements ArgumentProvider {
                INSTANCE;

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    List m14778of;
                    StackManipulation prependThisReference = MethodVariableAccess.allArgumentsOf(methodDescription).prependThisReference();
                    if (methodDescription.isStatic()) {
                        m14778of = methodDescription.getParameters().asTypeList().asErasures();
                    } else {
                        m14778of = CompoundList.m14778of(methodDescription.getDeclaringType().asErasure(), methodDescription.getParameters().asTypeList().asErasures());
                    }
                    return new Resolved.Simple(prependThisReference, m14778of);
                }
            }

            /* loaded from: classes.dex */
            public enum ForInterceptedMethodParameters implements ArgumentProvider {
                INSTANCE;

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(MethodVariableAccess.allArgumentsOf(methodDescription), methodDescription.getParameters().asTypeList().asErasures());
                }
            }

            /* loaded from: classes.dex */
            public interface Resolved {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple implements Resolved {
                    private final List<TypeDescription> loadedTypes;
                    private final StackManipulation stackManipulation;

                    public Simple(StackManipulation stackManipulation, TypeDescription typeDescription) {
                        this(stackManipulation, Collections.singletonList(typeDescription));
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Simple simple = (Simple) obj;
                            return this.stackManipulation.equals(simple.stackManipulation) && this.loadedTypes.equals(simple.loadedTypes);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.Resolved
                    public StackManipulation getLoadInstruction() {
                        return this.stackManipulation;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.Resolved
                    public List<TypeDescription> getLoadedTypes() {
                        return this.loadedTypes;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + this.loadedTypes.hashCode();
                    }

                    public Simple(StackManipulation stackManipulation, List<TypeDescription> list) {
                        this.stackManipulation = stackManipulation;
                        this.loadedTypes = list;
                    }
                }

                StackManipulation getLoadInstruction();

                List<TypeDescription> getLoadedTypes();
            }

            InstrumentedType prepare(InstrumentedType instrumentedType);

            Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForBooleanConstant implements ArgumentProvider {
                private final boolean value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value == ((ForBooleanConstant) obj).value;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + (this.value ? 1 : 0);
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(IntegerConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Boolean.TYPE));
                }

                public ForBooleanConstant(boolean z) {
                    this.value = z;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForByteConstant implements ArgumentProvider {
                private final byte value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value == ((ForByteConstant) obj).value;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.value;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(IntegerConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Byte.TYPE));
                }

                public ForByteConstant(byte b) {
                    this.value = b;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForCharacterConstant implements ArgumentProvider {
                private final char value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value == ((ForCharacterConstant) obj).value;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.value;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(IntegerConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Character.TYPE));
                }

                public ForCharacterConstant(char c) {
                    this.value = c;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForClassConstant implements ArgumentProvider {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForClassConstant) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(ClassConstant.m14958of(this.typeDescription), TypeDescription.CLASS);
                }

                public ForClassConstant(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForDoubleConstant implements ArgumentProvider {
                private final double value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && Double.compare(this.value, ((ForDoubleConstant) obj).value) == 0;
                }

                public int hashCode() {
                    long doubleToLongBits = Double.doubleToLongBits(this.value);
                    return (getClass().hashCode() * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(DoubleConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Double.TYPE));
                }

                public ForDoubleConstant(double d) {
                    this.value = d;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForEnumerationValue implements ArgumentProvider {
                private final EnumerationDescription enumerationDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.enumerationDescription.equals(((ForEnumerationValue) obj).enumerationDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.enumerationDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(FieldAccess.forEnumeration(this.enumerationDescription), this.enumerationDescription.getEnumerationType());
                }

                public ForEnumerationValue(EnumerationDescription enumerationDescription) {
                    this.enumerationDescription = enumerationDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForFloatConstant implements ArgumentProvider {
                private final float value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && Float.compare(this.value, ((ForFloatConstant) obj).value) == 0;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + Float.floatToIntBits(this.value);
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(FloatConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Float.TYPE));
                }

                public ForFloatConstant(float f) {
                    this.value = f;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForIntegerConstant implements ArgumentProvider {
                private final int value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value == ((ForIntegerConstant) obj).value;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.value;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(IntegerConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Integer.TYPE));
                }

                public ForIntegerConstant(int i) {
                    this.value = i;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForJavaConstant implements ArgumentProvider {
                private final JavaConstant javaConstant;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.javaConstant.equals(((ForJavaConstant) obj).javaConstant);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.javaConstant.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(new JavaConstantValue(this.javaConstant), this.javaConstant.getTypeDescription());
                }

                public ForJavaConstant(JavaConstant javaConstant) {
                    this.javaConstant = javaConstant;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForLongConstant implements ArgumentProvider {
                private final long value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value == ((ForLongConstant) obj).value;
                }

                public int hashCode() {
                    long j = this.value;
                    return (getClass().hashCode() * 31) + ((int) (j ^ (j >>> 32)));
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(LongConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Long.TYPE));
                }

                public ForLongConstant(long j) {
                    this.value = j;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForMethodParameter implements ArgumentProvider {
                public final int index;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithExplicitType extends ForMethodParameter {
                    private final TypeDescription typeDescription;

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ForMethodParameter
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((WithExplicitType) obj).typeDescription);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ForMethodParameter
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.typeDescription.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider.ForMethodParameter
                    public Resolved doResolve(StackManipulation stackManipulation, TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing) {
                        StackManipulation assign = assigner.assign(generic, this.typeDescription.asGenericType(), typing);
                        if (assign.isValid()) {
                            return new Resolved.Simple(new StackManipulation.Compound(stackManipulation, assign), this.typeDescription);
                        }
                        throw new IllegalStateException("Cannot assign " + generic + " to " + this.typeDescription);
                    }

                    public WithExplicitType(int i, TypeDescription typeDescription) {
                        super(i);
                        this.typeDescription = typeDescription;
                    }
                }

                public Resolved doResolve(StackManipulation stackManipulation, TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(stackManipulation, generic.asErasure());
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.index == ((ForMethodParameter) obj).index;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.index;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                public ForMethodParameter(int i) {
                    this.index = i;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    ParameterList<?> parameters = methodDescription.getParameters();
                    if (this.index < parameters.size()) {
                        return doResolve(MethodVariableAccess.load((ParameterDescription) parameters.get(this.index)), ((ParameterDescription) parameters.get(this.index)).getType(), assigner, typing);
                    }
                    throw new IllegalStateException("No parameter " + this.index + " for " + methodDescription);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForNullValue implements ArgumentProvider {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForNullValue) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(NullConstant.INSTANCE, this.typeDescription);
                }

                public ForNullValue(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForShortConstant implements ArgumentProvider {
                private final short value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value == ((ForShortConstant) obj).value;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.value;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(IntegerConstant.forValue(this.value), TypeDescription.ForLoadedType.m15196of(Short.TYPE));
                }

                public ForShortConstant(short s) {
                    this.value = s;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForStringConstant implements ArgumentProvider {
                private final String value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value.equals(((ForStringConstant) obj).value);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.value.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    return new Resolved.Simple(new TextConstant(this.value), TypeDescription.STRING);
                }

                public ForStringConstant(String str) {
                    this.value = str;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForThisInstance implements ArgumentProvider {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForThisInstance) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                public ForThisInstance(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ArgumentProvider
                public Resolved resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    if (!methodDescription.isStatic()) {
                        if (typeDescription.isAssignableTo(this.typeDescription)) {
                            return new Resolved.Simple(MethodVariableAccess.loadThis(), this.typeDescription);
                        }
                        throw new IllegalStateException(typeDescription + " is not assignable to " + typeDescription);
                    }
                    throw new IllegalStateException("Cannot get this instance from static method: " + methodDescription);
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Default implements InvocationProvider {
            private final List<ArgumentProvider> argumentProviders;
            private final NameProvider nameProvider;
            private final ReturnTypeProvider returnTypeProvider;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Target implements Target {
                private final List<ArgumentProvider> argumentProviders;
                private final MethodDescription instrumentedMethod;
                private final String internalName;
                private final TypeDescription returnType;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Target target = (Target) obj;
                        return this.internalName.equals(target.internalName) && this.returnType.equals(target.returnType) && this.argumentProviders.equals(target.argumentProviders) && this.instrumentedMethod.equals(target.instrumentedMethod);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((getClass().hashCode() * 31) + this.internalName.hashCode()) * 31) + this.returnType.hashCode()) * 31) + this.argumentProviders.hashCode()) * 31) + this.instrumentedMethod.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.Target
                public Target.Resolved resolve(TypeDescription typeDescription, Assigner assigner, Assigner.Typing typing) {
                    StackManipulation[] stackManipulationArr = new StackManipulation[this.argumentProviders.size()];
                    ArrayList arrayList = new ArrayList();
                    int i = 0;
                    for (ArgumentProvider argumentProvider : this.argumentProviders) {
                        ArgumentProvider.Resolved resolve = argumentProvider.resolve(typeDescription, this.instrumentedMethod, assigner, typing);
                        arrayList.addAll(resolve.getLoadedTypes());
                        stackManipulationArr[i] = resolve.getLoadInstruction();
                        i++;
                    }
                    return new Target.Resolved.Simple(new StackManipulation.Compound(stackManipulationArr), this.internalName, this.returnType, arrayList);
                }

                public Target(String str, TypeDescription typeDescription, List<ArgumentProvider> list, MethodDescription methodDescription) {
                    this.internalName = str;
                    this.returnType = typeDescription;
                    this.argumentProviders = list;
                    this.instrumentedMethod = methodDescription;
                }
            }

            public Default() {
                this(NameProvider.ForInterceptedMethod.INSTANCE, ReturnTypeProvider.ForInterceptedMethod.INSTANCE, Collections.singletonList(ArgumentProvider.ForInterceptedMethodInstanceAndParameters.INSTANCE));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Default r5 = (Default) obj;
                    return this.nameProvider.equals(r5.nameProvider) && this.returnTypeProvider.equals(r5.returnTypeProvider) && this.argumentProviders.equals(r5.argumentProviders);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.nameProvider.hashCode()) * 31) + this.returnTypeProvider.hashCode()) * 31) + this.argumentProviders.hashCode();
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider
            public InvocationProvider withNameProvider(NameProvider nameProvider) {
                return new Default(nameProvider, this.returnTypeProvider, this.argumentProviders);
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider
            public InvocationProvider withReturnTypeProvider(ReturnTypeProvider returnTypeProvider) {
                return new Default(this.nameProvider, returnTypeProvider, this.argumentProviders);
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider
            public InvocationProvider appendArgument(ArgumentProvider argumentProvider) {
                return new Default(this.nameProvider, this.returnTypeProvider, CompoundList.m14777of(this.argumentProviders, argumentProvider));
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider
            public InvocationProvider appendArguments(List<ArgumentProvider> list) {
                return new Default(this.nameProvider, this.returnTypeProvider, CompoundList.m14776of((List) this.argumentProviders, (List) list));
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider
            public Target make(MethodDescription methodDescription) {
                return new Target(this.nameProvider.resolve(methodDescription), this.returnTypeProvider.resolve(methodDescription), this.argumentProviders, methodDescription);
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                for (ArgumentProvider argumentProvider : this.argumentProviders) {
                    instrumentedType = argumentProvider.prepare(instrumentedType);
                }
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider
            public InvocationProvider withoutArguments() {
                return new Default(this.nameProvider, this.returnTypeProvider, Collections.emptyList());
            }

            public Default(NameProvider nameProvider, ReturnTypeProvider returnTypeProvider, List<ArgumentProvider> list) {
                this.nameProvider = nameProvider;
                this.returnTypeProvider = returnTypeProvider;
                this.argumentProviders = list;
            }
        }

        /* loaded from: classes.dex */
        public interface NameProvider {

            /* loaded from: classes.dex */
            public enum ForInterceptedMethod implements NameProvider {
                INSTANCE;

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.NameProvider
                public String resolve(MethodDescription methodDescription) {
                    return methodDescription.getInternalName();
                }
            }

            String resolve(MethodDescription methodDescription);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForExplicitName implements NameProvider {
                private final String internalName;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.internalName.equals(((ForExplicitName) obj).internalName);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.internalName.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.NameProvider
                public String resolve(MethodDescription methodDescription) {
                    return this.internalName;
                }

                public ForExplicitName(String str) {
                    this.internalName = str;
                }
            }
        }

        /* loaded from: classes.dex */
        public interface ReturnTypeProvider {

            /* loaded from: classes.dex */
            public enum ForInterceptedMethod implements ReturnTypeProvider {
                INSTANCE;

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ReturnTypeProvider
                public TypeDescription resolve(MethodDescription methodDescription) {
                    return methodDescription.getReturnType().asErasure();
                }
            }

            TypeDescription resolve(MethodDescription methodDescription);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForExplicitType implements ReturnTypeProvider {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForExplicitType) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.ReturnTypeProvider
                public TypeDescription resolve(MethodDescription methodDescription) {
                    return this.typeDescription;
                }

                public ForExplicitType(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }
        }

        /* loaded from: classes.dex */
        public interface Target {

            /* loaded from: classes.dex */
            public interface Resolved {
                String getInternalName();

                List<TypeDescription> getParameterTypes();

                TypeDescription getReturnType();

                StackManipulation getStackManipulation();

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple implements Resolved {
                    private final String internalName;
                    private final List<TypeDescription> parameterTypes;
                    private final TypeDescription returnType;
                    private final StackManipulation stackManipulation;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Simple simple = (Simple) obj;
                            return this.internalName.equals(simple.internalName) && this.stackManipulation.equals(simple.stackManipulation) && this.returnType.equals(simple.returnType) && this.parameterTypes.equals(simple.parameterTypes);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.Target.Resolved
                    public String getInternalName() {
                        return this.internalName;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.Target.Resolved
                    public List<TypeDescription> getParameterTypes() {
                        return this.parameterTypes;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.Target.Resolved
                    public TypeDescription getReturnType() {
                        return this.returnType;
                    }

                    @Override // net.bytebuddy.implementation.InvokeDynamic.InvocationProvider.Target.Resolved
                    public StackManipulation getStackManipulation() {
                        return this.stackManipulation;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + this.internalName.hashCode()) * 31) + this.returnType.hashCode()) * 31) + this.parameterTypes.hashCode();
                    }

                    public Simple(StackManipulation stackManipulation, String str, TypeDescription typeDescription, List<TypeDescription> list) {
                        this.stackManipulation = stackManipulation;
                        this.internalName = str;
                        this.returnType = typeDescription;
                        this.parameterTypes = list;
                    }
                }
            }

            Resolved resolve(TypeDescription typeDescription, Assigner assigner, Assigner.Typing typing);
        }

        InvocationProvider appendArgument(ArgumentProvider argumentProvider);

        InvocationProvider appendArguments(List<ArgumentProvider> list);

        Target make(MethodDescription methodDescription);

        InstrumentedType prepare(InstrumentedType instrumentedType);

        InvocationProvider withNameProvider(NameProvider nameProvider);

        InvocationProvider withReturnTypeProvider(ReturnTypeProvider returnTypeProvider);

        InvocationProvider withoutArguments();
    }

    /* loaded from: classes.dex */
    public enum TerminationHandler {
        RETURNING { // from class: net.bytebuddy.implementation.InvokeDynamic.TerminationHandler.1
            @Override // net.bytebuddy.implementation.InvokeDynamic.TerminationHandler
            public StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation assign = assigner.assign(typeDescription.asGenericType(), methodDescription.getReturnType(), typing);
                if (assign.isValid()) {
                    return new StackManipulation.Compound(assign, MethodReturn.m14940of(methodDescription.getReturnType()));
                }
                throw new IllegalStateException("Cannot return " + typeDescription + " from " + methodDescription);
            }
        },
        DROPPING { // from class: net.bytebuddy.implementation.InvokeDynamic.TerminationHandler.2
            @Override // net.bytebuddy.implementation.InvokeDynamic.TerminationHandler
            public StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription, Assigner assigner, Assigner.Typing typing) {
                return Removal.m14979of(typeDescription);
            }
        };

        public abstract StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription, Assigner assigner, Assigner.Typing typing);
    }

    /* loaded from: classes.dex */
    public static class WithImplicitArguments extends AbstractDelegator {
        public WithImplicitArguments(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing) {
            super(inDefinedShape, list, invocationProvider, terminationHandler, assigner, typing);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.implementation.Implementation.Composable
        public /* bridge */ /* synthetic */ Implementation andThen(Implementation implementation) {
            return super.andThen(implementation);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.implementation.Implementation
        public /* bridge */ /* synthetic */ ByteCodeAppender appender(Implementation.Target target) {
            return super.appender(target);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator
        public InvokeDynamic materialize() {
            return withoutArguments();
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public /* bridge */ /* synthetic */ InstrumentedType prepare(InstrumentedType instrumentedType) {
            return super.prepare(instrumentedType);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withArgument(int i) {
            return super.withArgument(i);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withBooleanValue(boolean[] zArr) {
            return super.withBooleanValue(zArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withByteValue(byte[] bArr) {
            return super.withByteValue(bArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withCharacterValue(char[] cArr) {
            return super.withCharacterValue(cArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withDoubleValue(double[] dArr) {
            return super.withDoubleValue(dArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withEnumeration(EnumerationDescription[] enumerationDescriptionArr) {
            return super.withEnumeration(enumerationDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withField(String str) {
            return super.withField(str);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withFloatValue(float[] fArr) {
            return super.withFloatValue(fArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withImplicitAndMethodArguments() {
            return super.withImplicitAndMethodArguments();
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withInstance(JavaConstant[] javaConstantArr) {
            return super.withInstance(javaConstantArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withIntegerValue(int[] iArr) {
            return super.withIntegerValue(iArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withLongValue(long[] jArr) {
            return super.withLongValue(jArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withMethodArguments() {
            return super.withMethodArguments();
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withNullValue(Class[] clsArr) {
            return super.withNullValue(clsArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withReference(Object obj) {
            return super.withReference(obj);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withShortValue(short[] sArr) {
            return super.withShortValue(sArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withThis(Class[] clsArr) {
            return super.withThis(clsArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withType(TypeDescription[] typeDescriptionArr) {
            return super.withType(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withValue(Object[] objArr) {
            return super.withValue(objArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withArgument(int[] iArr) {
            return super.withArgument(iArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public WithImplicitArguments withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new WithImplicitArguments(this.bootstrap, this.arguments, this.invocationProvider, this.terminationHandler, assigner, typing);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withField(String str, FieldLocator.Factory factory) {
            return super.withField(str, factory);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withNullValue(TypeDescription[] typeDescriptionArr) {
            return super.withNullValue(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withReference(Object[] objArr) {
            return super.withReference(objArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withThis(TypeDescription[] typeDescriptionArr) {
            return super.withThis(typeDescriptionArr);
        }

        public InvokeDynamic withoutArguments() {
            return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.withoutArguments(), this.terminationHandler, this.assigner, this.typing);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withField(FieldLocator.Factory factory, String[] strArr) {
            return super.withField(factory, strArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withField(String[] strArr) {
            return super.withField(strArr);
        }
    }

    /* loaded from: classes.dex */
    public static class WithImplicitTarget extends WithImplicitArguments {
        public WithImplicitTarget(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing) {
            super(inDefinedShape, list, invocationProvider, terminationHandler, assigner, typing);
        }

        public WithImplicitArguments invoke(Class<?> cls) {
            return invoke(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public WithImplicitArguments invoke(TypeDescription typeDescription) {
            return new WithImplicitArguments(this.bootstrap, this.arguments, this.invocationProvider.withReturnTypeProvider(new InvocationProvider.ReturnTypeProvider.ForExplicitType(typeDescription)), this.terminationHandler, this.assigner, this.typing);
        }

        public WithImplicitArguments invoke(String str) {
            return new WithImplicitArguments(this.bootstrap, this.arguments, this.invocationProvider.withNameProvider(new InvocationProvider.NameProvider.ForExplicitName(str)), this.terminationHandler, this.assigner, this.typing);
        }

        public WithImplicitArguments invoke(String str, Class<?> cls) {
            return invoke(str, TypeDescription.ForLoadedType.m15196of(cls));
        }

        public WithImplicitArguments invoke(String str, TypeDescription typeDescription) {
            return new WithImplicitArguments(this.bootstrap, this.arguments, this.invocationProvider.withNameProvider(new InvocationProvider.NameProvider.ForExplicitName(str)).withReturnTypeProvider(new InvocationProvider.ReturnTypeProvider.ForExplicitType(typeDescription)), this.terminationHandler, this.assigner, this.typing);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class WithImplicitType extends AbstractDelegator {

        @SuppressFBWarnings(justification = "Super type implementation covers use case", value = {"EQ_DOESNT_OVERRIDE_EQUALS"})
        /* loaded from: classes.dex */
        public static class OfArgument extends WithImplicitType {
            private final int index;

            @Override // net.bytebuddy.implementation.InvokeDynamic.WithImplicitType
            /* renamed from: as */
            public InvokeDynamic mo15061as(TypeDescription typeDescription) {
                return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(new InvocationProvider.ArgumentProvider.ForMethodParameter.WithExplicitType(this.index, typeDescription)), this.terminationHandler, this.assigner, this.typing);
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator
            public InvokeDynamic materialize() {
                return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(new InvocationProvider.ArgumentProvider.ForMethodParameter(this.index)), this.terminationHandler, this.assigner, this.typing);
            }

            public OfArgument(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing, int i) {
                super(inDefinedShape, list, invocationProvider, terminationHandler, assigner, typing);
                this.index = i;
            }
        }

        @SuppressFBWarnings(justification = "Super type implementation covers use case", value = {"EQ_DOESNT_OVERRIDE_EQUALS"})
        /* loaded from: classes.dex */
        public static class OfField extends WithImplicitType {
            private final FieldLocator.Factory fieldLocatorFactory;
            private final String fieldName;

            @Override // net.bytebuddy.implementation.InvokeDynamic.WithImplicitType
            /* renamed from: as */
            public InvokeDynamic mo15061as(TypeDescription typeDescription) {
                return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(new InvocationProvider.ArgumentProvider.ForField.WithExplicitType(this.fieldName, this.fieldLocatorFactory, typeDescription)), this.terminationHandler, this.assigner, this.typing);
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator
            public InvokeDynamic materialize() {
                return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(new InvocationProvider.ArgumentProvider.ForField(this.fieldName, this.fieldLocatorFactory)), this.terminationHandler, this.assigner, this.typing);
            }

            public OfField(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing, String str, FieldLocator.Factory factory) {
                super(inDefinedShape, list, invocationProvider, terminationHandler, assigner, typing);
                this.fieldName = str;
                this.fieldLocatorFactory = factory;
            }
        }

        @SuppressFBWarnings(justification = "Super type implementation covers use case", value = {"EQ_DOESNT_OVERRIDE_EQUALS"})
        /* loaded from: classes.dex */
        public static class OfInstance extends WithImplicitType {
            private final InvocationProvider.ArgumentProvider argumentProvider;
            private final Object value;

            @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator
            public InvokeDynamic materialize() {
                return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(this.argumentProvider), this.terminationHandler, this.assigner, this.typing);
            }

            public OfInstance(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing, Object obj) {
                super(inDefinedShape, list, invocationProvider, terminationHandler, assigner, typing);
                this.value = obj;
                this.argumentProvider = InvocationProvider.ArgumentProvider.ForInstance.m15063of(obj);
            }

            @Override // net.bytebuddy.implementation.InvokeDynamic.WithImplicitType
            /* renamed from: as */
            public InvokeDynamic mo15061as(TypeDescription typeDescription) {
                if (typeDescription.asBoxed().isInstance(this.value)) {
                    return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(new InvocationProvider.ArgumentProvider.ForInstance(this.value, typeDescription)), this.terminationHandler, this.assigner, this.typing);
                }
                throw new IllegalArgumentException(this.value + " is not of type " + typeDescription);
            }
        }

        public WithImplicitType(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing) {
            super(inDefinedShape, list, invocationProvider, terminationHandler, assigner, typing);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.implementation.Implementation.Composable
        public /* bridge */ /* synthetic */ Implementation andThen(Implementation implementation) {
            return super.andThen(implementation);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.implementation.Implementation
        public /* bridge */ /* synthetic */ ByteCodeAppender appender(Implementation.Target target) {
            return super.appender(target);
        }

        /* renamed from: as */
        public InvokeDynamic m15062as(Class<?> cls) {
            return mo15061as(TypeDescription.ForLoadedType.m15196of(cls));
        }

        /* renamed from: as */
        public abstract InvokeDynamic mo15061as(TypeDescription typeDescription);

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic, net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public /* bridge */ /* synthetic */ InstrumentedType prepare(InstrumentedType instrumentedType) {
            return super.prepare(instrumentedType);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withArgument(int i) {
            return super.withArgument(i);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ Implementation.Composable withAssigner(Assigner assigner, Assigner.Typing typing) {
            return super.withAssigner(assigner, typing);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withBooleanValue(boolean[] zArr) {
            return super.withBooleanValue(zArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withByteValue(byte[] bArr) {
            return super.withByteValue(bArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withCharacterValue(char[] cArr) {
            return super.withCharacterValue(cArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withDoubleValue(double[] dArr) {
            return super.withDoubleValue(dArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withEnumeration(EnumerationDescription[] enumerationDescriptionArr) {
            return super.withEnumeration(enumerationDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withField(String str) {
            return super.withField(str);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withFloatValue(float[] fArr) {
            return super.withFloatValue(fArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withImplicitAndMethodArguments() {
            return super.withImplicitAndMethodArguments();
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withInstance(JavaConstant[] javaConstantArr) {
            return super.withInstance(javaConstantArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withIntegerValue(int[] iArr) {
            return super.withIntegerValue(iArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withLongValue(long[] jArr) {
            return super.withLongValue(jArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withMethodArguments() {
            return super.withMethodArguments();
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withNullValue(Class[] clsArr) {
            return super.withNullValue(clsArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withReference(Object obj) {
            return super.withReference(obj);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withShortValue(short[] sArr) {
            return super.withShortValue(sArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withThis(Class[] clsArr) {
            return super.withThis(clsArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withType(TypeDescription[] typeDescriptionArr) {
            return super.withType(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withValue(Object[] objArr) {
            return super.withValue(objArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withArgument(int[] iArr) {
            return super.withArgument(iArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ WithImplicitType withField(String str, FieldLocator.Factory factory) {
            return super.withField(str, factory);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withNullValue(TypeDescription[] typeDescriptionArr) {
            return super.withNullValue(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withReference(Object[] objArr) {
            return super.withReference(objArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withThis(TypeDescription[] typeDescriptionArr) {
            return super.withThis(typeDescriptionArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withField(FieldLocator.Factory factory, String[] strArr) {
            return super.withField(factory, strArr);
        }

        @Override // net.bytebuddy.implementation.InvokeDynamic.AbstractDelegator, net.bytebuddy.implementation.InvokeDynamic
        public /* bridge */ /* synthetic */ InvokeDynamic withField(String[] strArr) {
            return super.withField(strArr);
        }
    }

    public static WithImplicitTarget bootstrap(Method method, Object... objArr) {
        return bootstrap(new MethodDescription.ForLoadedMethod(method), objArr);
    }

    public static WithImplicitArguments lambda(Method method, Type type) {
        return lambda(new MethodDescription.ForLoadedMethod(method), TypeDefinition.Sort.describe(type));
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation andThen(Implementation implementation) {
        return new Implementation.Compound(new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider, TerminationHandler.DROPPING, this.assigner, this.typing), implementation);
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        return new Appender(target.getInstrumentedType());
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            InvokeDynamic invokeDynamic = (InvokeDynamic) obj;
            return this.terminationHandler.equals(invokeDynamic.terminationHandler) && this.typing.equals(invokeDynamic.typing) && this.bootstrap.equals(invokeDynamic.bootstrap) && this.arguments.equals(invokeDynamic.arguments) && this.invocationProvider.equals(invokeDynamic.invocationProvider) && this.assigner.equals(invokeDynamic.assigner);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((getClass().hashCode() * 31) + this.bootstrap.hashCode()) * 31) + this.arguments.hashCode()) * 31) + this.invocationProvider.hashCode()) * 31) + this.terminationHandler.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.typing.hashCode();
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return this.invocationProvider.prepare(instrumentedType);
    }

    public InvokeDynamic withArgument(int... iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            if (i >= 0) {
                arrayList.add(new InvocationProvider.ArgumentProvider.ForMethodParameter(i));
            } else {
                throw new IllegalArgumentException("Method parameter indices cannot be negative: " + i);
            }
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public Implementation.Composable withAssigner(Assigner assigner, Assigner.Typing typing) {
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider, this.terminationHandler, assigner, typing);
    }

    public InvokeDynamic withField(String... strArr) {
        return withField(FieldLocator.ForClassHierarchy.Factory.INSTANCE, strArr);
    }

    public InvokeDynamic withNullValue(Class<?>... clsArr) {
        return withNullValue((TypeDescription[]) new TypeList.ForLoadedTypes(clsArr).toArray(new TypeDescription[0]));
    }

    public WithImplicitType withReference(Object obj) {
        return new WithImplicitType.OfInstance(this.bootstrap, this.arguments, this.invocationProvider, this.terminationHandler, this.assigner, this.typing, obj);
    }

    public InvokeDynamic withThis(Class<?>... clsArr) {
        return withThis((TypeDescription[]) new TypeList.ForLoadedTypes(clsArr).toArray(new TypeDescription[0]));
    }

    public static WithImplicitTarget bootstrap(Method method, List<?> list) {
        return bootstrap(new MethodDescription.ForLoadedMethod(method), list);
    }

    public static WithImplicitArguments lambda(Method method, Type type, MethodGraph.Compiler compiler) {
        return lambda(new MethodDescription.ForLoadedMethod(method), TypeDefinition.Sort.describe(type), compiler);
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation.Composable andThen(Implementation.Composable composable) {
        return new Implementation.Compound.Composable(new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider, TerminationHandler.DROPPING, this.assigner, this.typing), composable);
    }

    public InvokeDynamic withBooleanValue(boolean... zArr) {
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForBooleanConstant(z));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withByteValue(byte... bArr) {
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b : bArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForByteConstant(b));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withCharacterValue(char... cArr) {
        ArrayList arrayList = new ArrayList(cArr.length);
        for (char c : cArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForCharacterConstant(c));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withDoubleValue(double... dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d : dArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForDoubleConstant(d));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withEnumeration(EnumerationDescription... enumerationDescriptionArr) {
        ArrayList arrayList = new ArrayList(enumerationDescriptionArr.length);
        for (EnumerationDescription enumerationDescription : enumerationDescriptionArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForEnumerationValue(enumerationDescription));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withField(FieldLocator.Factory factory, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForField(str, factory));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withFloatValue(float... fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForFloatConstant(f));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withImplicitAndMethodArguments() {
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(InvocationProvider.ArgumentProvider.ForInterceptedMethodInstanceAndParameters.INSTANCE), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withInstance(JavaConstant... javaConstantArr) {
        ArrayList arrayList = new ArrayList(javaConstantArr.length);
        for (JavaConstant javaConstant : javaConstantArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForJavaConstant(javaConstant));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withIntegerValue(int... iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForIntegerConstant(i));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withLongValue(long... jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForLongConstant(j));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withMethodArguments() {
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArgument(InvocationProvider.ArgumentProvider.ForInterceptedMethodParameters.INSTANCE), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withNullValue(TypeDescription... typeDescriptionArr) {
        ArrayList arrayList = new ArrayList(typeDescriptionArr.length);
        for (TypeDescription typeDescription : typeDescriptionArr) {
            if (!typeDescription.isPrimitive()) {
                arrayList.add(new InvocationProvider.ArgumentProvider.ForNullValue(typeDescription));
            } else {
                throw new IllegalArgumentException("Cannot assign null to primitive type: " + typeDescription);
            }
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withReference(Object... objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(InvocationProvider.ArgumentProvider.ForInstance.m15063of(obj));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withShortValue(short... sArr) {
        ArrayList arrayList = new ArrayList(sArr.length);
        for (short s : sArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForShortConstant(s));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withThis(TypeDescription... typeDescriptionArr) {
        ArrayList arrayList = new ArrayList(typeDescriptionArr.length);
        for (TypeDescription typeDescription : typeDescriptionArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForThisInstance(typeDescription));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withType(TypeDescription... typeDescriptionArr) {
        ArrayList arrayList = new ArrayList(typeDescriptionArr.length);
        for (TypeDescription typeDescription : typeDescriptionArr) {
            arrayList.add(new InvocationProvider.ArgumentProvider.ForClassConstant(typeDescription));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic withValue(Object... objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(InvocationProvider.ArgumentProvider.ConstantPoolWrapper.m15064of(obj));
        }
        return new InvokeDynamic(this.bootstrap, this.arguments, this.invocationProvider.appendArguments(arrayList), this.terminationHandler, this.assigner, this.typing);
    }

    public InvokeDynamic(MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list, InvocationProvider invocationProvider, TerminationHandler terminationHandler, Assigner assigner, Assigner.Typing typing) {
        this.bootstrap = inDefinedShape;
        this.arguments = list;
        this.invocationProvider = invocationProvider;
        this.terminationHandler = terminationHandler;
        this.assigner = assigner;
        this.typing = typing;
    }

    public static WithImplicitTarget bootstrap(Constructor<?> constructor, Object... objArr) {
        return bootstrap(new MethodDescription.ForLoadedConstructor(constructor), objArr);
    }

    public static WithImplicitArguments lambda(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition) {
        return lambda(inDefinedShape, typeDefinition, MethodGraph.Compiler.Default.forJavaHierarchy());
    }

    public static WithImplicitTarget bootstrap(Constructor<?> constructor, List<?> list) {
        return bootstrap(new MethodDescription.ForLoadedConstructor(constructor), list);
    }

    public static WithImplicitArguments lambda(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition typeDefinition, MethodGraph.Compiler compiler) {
        if (typeDefinition.isInterface()) {
            MethodList filter = compiler.compile(typeDefinition).listNodes().asMethodList().filter(ElementMatchers.isAbstract());
            if (filter.size() == 1) {
                TypeDescription.Latent latent = new TypeDescription.Latent("java.lang.invoke.LambdaMetafactory", 1, TypeDescription.Generic.OBJECT, new TypeDescription.Generic[0]);
                List emptyList = Collections.emptyList();
                TypeDescription.Generic asGenericType = JavaType.CALL_SITE.getTypeStub().asGenericType();
                JavaType javaType = JavaType.METHOD_TYPE;
                return bootstrap(new MethodDescription.Latent(latent, "metafactory", 9, emptyList, asGenericType, Arrays.asList(new ParameterDescription.Token(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub().asGenericType()), new ParameterDescription.Token(TypeDescription.STRING.asGenericType()), new ParameterDescription.Token(javaType.getTypeStub().asGenericType()), new ParameterDescription.Token(javaType.getTypeStub().asGenericType()), new ParameterDescription.Token(JavaType.METHOD_HANDLE.getTypeStub().asGenericType()), new ParameterDescription.Token(javaType.getTypeStub().asGenericType())), Collections.emptyList(), Collections.emptyList(), AnnotationValue.UNDEFINED, TypeDescription.Generic.UNDEFINED), JavaConstant.MethodType.m14765of((MethodDescription) filter.asDefined().getOnly()), JavaConstant.MethodHandle.m14771of(inDefinedShape), JavaConstant.MethodType.m14765of((MethodDescription) filter.getOnly())).invoke(((MethodDescription.InDefinedShape) filter.asDefined().getOnly()).getInternalName());
            }
            throw new IllegalArgumentException(typeDefinition + " does not define exactly one abstract method: " + filter);
        }
        throw new IllegalArgumentException(typeDefinition + " is not an interface type");
    }

    public static WithImplicitTarget bootstrap(MethodDescription.InDefinedShape inDefinedShape, Object... objArr) {
        return bootstrap(inDefinedShape, Arrays.asList(objArr));
    }

    public static WithImplicitTarget bootstrap(MethodDescription.InDefinedShape inDefinedShape, List<?> list) {
        List<JavaConstant> wrap = JavaConstant.Simple.wrap(list);
        if (inDefinedShape.isInvokeBootstrap(TypeList.Explicit.m15179of((List<? extends JavaConstant>) wrap))) {
            return new WithImplicitTarget(inDefinedShape, wrap, new InvocationProvider.Default(), TerminationHandler.RETURNING, Assigner.DEFAULT, Assigner.Typing.STATIC);
        }
        throw new IllegalArgumentException("Not a valid bootstrap method " + inDefinedShape + " for " + wrap);
    }

    public WithImplicitType withArgument(int i) {
        if (i >= 0) {
            return new WithImplicitType.OfArgument(this.bootstrap, this.arguments, this.invocationProvider, this.terminationHandler, this.assigner, this.typing, i);
        }
        throw new IllegalArgumentException("Method parameter indices cannot be negative: " + i);
    }

    public WithImplicitType withField(String str) {
        return withField(str, FieldLocator.ForClassHierarchy.Factory.INSTANCE);
    }

    public WithImplicitType withField(String str, FieldLocator.Factory factory) {
        return new WithImplicitType.OfField(this.bootstrap, this.arguments, this.invocationProvider, this.terminationHandler, this.assigner, this.typing, str, factory);
    }
}
