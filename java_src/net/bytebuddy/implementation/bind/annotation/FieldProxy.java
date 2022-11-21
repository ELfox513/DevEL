package net.bytebuddy.implementation.bind.annotation;

import java.io.Serializable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy;
import net.bytebuddy.implementation.ExceptionMethod;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface FieldProxy {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Binder extends TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding<FieldProxy> {
        private static final MethodDescription.InDefinedShape DECLARING_TYPE;
        private static final MethodDescription.InDefinedShape FIELD_NAME;
        private static final MethodDescription.InDefinedShape SERIALIZABLE_PROXY;
        private final FieldResolver.Factory fieldResolverFactory;

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public static class AccessorProxy extends StackManipulation.AbstractBase implements AuxiliaryType {
            public static final String FIELD_NAME = "instance";
            private final Assigner assigner;
            private final FieldDescription fieldDescription;
            private final FieldResolver fieldResolver;
            private final TypeDescription instrumentedType;
            private final boolean serializableProxy;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    AccessorProxy accessorProxy = (AccessorProxy) obj;
                    return this.serializableProxy == accessorProxy.serializableProxy && this.fieldDescription.equals(accessorProxy.fieldDescription) && this.instrumentedType.equals(accessorProxy.instrumentedType) && this.fieldResolver.equals(accessorProxy.fieldResolver) && this.assigner.equals(accessorProxy.assigner);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
            public String getSuffix() {
                StringBuilder sb = new StringBuilder();
                sb.append(RandomString.hashOf(this.fieldDescription.hashCode()));
                sb.append(this.serializableProxy ? "S" : "0");
                return sb.toString();
            }

            public int hashCode() {
                return (((((((((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + this.instrumentedType.hashCode()) * 31) + this.fieldResolver.hashCode()) * 31) + this.assigner.hashCode()) * 31) + (this.serializableProxy ? 1 : 0);
            }

            @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
            public DynamicType make(String str, ClassFileVersion classFileVersion, MethodAccessorFactory methodAccessorFactory) {
                List singletonList;
                Implementation instanceFieldConstructor;
                FieldResolver fieldResolver = this.fieldResolver;
                DynamicType.Builder.MethodDefinition.ParameterDefinition.Initial<?> defineConstructor = new ByteBuddy(classFileVersion).with(TypeValidation.DISABLED).subclass(this.fieldResolver.getProxyType(), ConstructorStrategy.Default.NO_CONSTRUCTORS).name(str).modifiers(AuxiliaryType.DEFAULT_TYPE_MODIFIER).implement(this.serializableProxy ? new Class[]{Serializable.class} : new Class[0]).defineConstructor(new ModifierContributor.ForMethod[0]);
                if (this.fieldDescription.isStatic()) {
                    singletonList = Collections.emptyList();
                } else {
                    singletonList = Collections.singletonList(this.instrumentedType);
                }
                DynamicType.Builder.MethodDefinition.ExceptionDefinition<?> withParameters = defineConstructor.withParameters((Collection<? extends TypeDefinition>) singletonList);
                if (this.fieldDescription.isStatic()) {
                    instanceFieldConstructor = StaticFieldConstructor.INSTANCE;
                } else {
                    instanceFieldConstructor = new InstanceFieldConstructor(this.instrumentedType);
                }
                return fieldResolver.apply(withParameters.intercept(instanceFieldConstructor), this.fieldDescription, this.assigner, methodAccessorFactory).make();
            }

            public AccessorProxy(FieldDescription fieldDescription, TypeDescription typeDescription, FieldResolver fieldResolver, Assigner assigner, boolean z) {
                this.fieldDescription = fieldDescription;
                this.instrumentedType = typeDescription;
                this.fieldResolver = fieldResolver;
                this.assigner = assigner;
                this.serializableProxy = z;
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                StackManipulation loadThis;
                TypeDescription register = context.register(this);
                StackManipulation[] stackManipulationArr = new StackManipulation[4];
                stackManipulationArr[0] = TypeCreation.m14974of(register);
                stackManipulationArr[1] = Duplication.SINGLE;
                if (this.fieldDescription.isStatic()) {
                    loadThis = StackManipulation.Trivial.INSTANCE;
                } else {
                    loadThis = MethodVariableAccess.loadThis();
                }
                stackManipulationArr[2] = loadThis;
                stackManipulationArr[3] = MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly());
                return new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context);
            }
        }

        /* loaded from: classes.dex */
        public interface FieldResolver {

            /* loaded from: classes.dex */
            public interface Factory {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Duplex implements Factory {
                    private final MethodDescription.InDefinedShape getterMethod;
                    private final TypeDescription proxyType;
                    private final MethodDescription.InDefinedShape setterMethod;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Duplex duplex = (Duplex) obj;
                            return this.proxyType.equals(duplex.proxyType) && this.getterMethod.equals(duplex.getterMethod) && this.setterMethod.equals(duplex.setterMethod);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.proxyType.hashCode()) * 31) + this.getterMethod.hashCode()) * 31) + this.setterMethod.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver.Factory
                    public FieldResolver resolve(TypeDescription typeDescription, FieldDescription fieldDescription) {
                        if (typeDescription.equals(this.proxyType)) {
                            return new ForGetterSetterPair(this.proxyType, this.getterMethod, this.setterMethod);
                        }
                        throw new IllegalStateException("Cannot use @FieldProxy on a non-installed type");
                    }

                    public Duplex(TypeDescription typeDescription, MethodDescription.InDefinedShape inDefinedShape, MethodDescription.InDefinedShape inDefinedShape2) {
                        this.proxyType = typeDescription;
                        this.getterMethod = inDefinedShape;
                        this.setterMethod = inDefinedShape2;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simplex implements Factory {
                    private final MethodDescription.InDefinedShape getterMethod;
                    private final MethodDescription.InDefinedShape setterMethod;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Simplex simplex = (Simplex) obj;
                            return this.getterMethod.equals(simplex.getterMethod) && this.setterMethod.equals(simplex.setterMethod);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.getterMethod.hashCode()) * 31) + this.setterMethod.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver.Factory
                    public FieldResolver resolve(TypeDescription typeDescription, FieldDescription fieldDescription) {
                        if (typeDescription.equals(this.getterMethod.getDeclaringType())) {
                            return new ForGetter(this.getterMethod);
                        }
                        if (typeDescription.equals(this.setterMethod.getDeclaringType())) {
                            if (fieldDescription.isFinal()) {
                                return Unresolved.INSTANCE;
                            }
                            return new ForSetter(this.setterMethod);
                        }
                        throw new IllegalStateException("Cannot use @FieldProxy on a non-installed type");
                    }

                    public Simplex(MethodDescription.InDefinedShape inDefinedShape, MethodDescription.InDefinedShape inDefinedShape2) {
                        this.getterMethod = inDefinedShape;
                        this.setterMethod = inDefinedShape2;
                    }
                }

                FieldResolver resolve(TypeDescription typeDescription, FieldDescription fieldDescription);
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForGetterSetterPair implements FieldResolver {
                private final MethodDescription.InDefinedShape getterMethod;
                private final TypeDescription proxyType;
                private final MethodDescription.InDefinedShape setterMethod;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForGetterSetterPair forGetterSetterPair = (ForGetterSetterPair) obj;
                        return this.proxyType.equals(forGetterSetterPair.proxyType) && this.getterMethod.equals(forGetterSetterPair.getterMethod) && this.setterMethod.equals(forGetterSetterPair.setterMethod);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public TypeDescription getProxyType() {
                    return this.proxyType;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.proxyType.hashCode()) * 31) + this.getterMethod.hashCode()) * 31) + this.setterMethod.hashCode();
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public boolean isResolved() {
                    return true;
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, FieldDescription fieldDescription, Assigner assigner, MethodAccessorFactory methodAccessorFactory) {
                    Implementation fieldSetter;
                    DynamicType.Builder.MethodDefinition.ImplementationDefinition<?> method = builder.method(ElementMatchers.m14822is(this.getterMethod)).intercept(new FieldGetter(fieldDescription, assigner, methodAccessorFactory)).method(ElementMatchers.m14822is(this.setterMethod));
                    if (fieldDescription.isFinal()) {
                        fieldSetter = ExceptionMethod.throwing(UnsupportedOperationException.class, "Cannot set final field " + fieldDescription);
                    } else {
                        fieldSetter = new FieldSetter(fieldDescription, assigner, methodAccessorFactory);
                    }
                    return method.intercept(fieldSetter);
                }

                public ForGetterSetterPair(TypeDescription typeDescription, MethodDescription.InDefinedShape inDefinedShape, MethodDescription.InDefinedShape inDefinedShape2) {
                    this.proxyType = typeDescription;
                    this.getterMethod = inDefinedShape;
                    this.setterMethod = inDefinedShape2;
                }
            }

            /* loaded from: classes.dex */
            public enum Unresolved implements FieldResolver {
                INSTANCE;

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, FieldDescription fieldDescription, Assigner assigner, MethodAccessorFactory methodAccessorFactory) {
                    throw new IllegalStateException("Cannot apply unresolved field resolver");
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public TypeDescription getProxyType() {
                    throw new IllegalStateException("Cannot read type for unresolved field resolver");
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public boolean isResolved() {
                    return false;
                }
            }

            DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, FieldDescription fieldDescription, Assigner assigner, MethodAccessorFactory methodAccessorFactory);

            TypeDescription getProxyType();

            boolean isResolved();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForGetter implements FieldResolver {
                private final MethodDescription.InDefinedShape getterMethod;

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, FieldDescription fieldDescription, Assigner assigner, MethodAccessorFactory methodAccessorFactory) {
                    return builder.method(ElementMatchers.definedMethod(ElementMatchers.m14822is(this.getterMethod))).intercept(new FieldGetter(fieldDescription, assigner, methodAccessorFactory));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.getterMethod.equals(((ForGetter) obj).getterMethod);
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public TypeDescription getProxyType() {
                    return this.getterMethod.getDeclaringType();
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.getterMethod.hashCode();
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public boolean isResolved() {
                    return true;
                }

                public ForGetter(MethodDescription.InDefinedShape inDefinedShape) {
                    this.getterMethod = inDefinedShape;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForSetter implements FieldResolver {
                private final MethodDescription.InDefinedShape setterMethod;

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, FieldDescription fieldDescription, Assigner assigner, MethodAccessorFactory methodAccessorFactory) {
                    return builder.method(ElementMatchers.m14822is(this.setterMethod)).intercept(new FieldSetter(fieldDescription, assigner, methodAccessorFactory));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.setterMethod.equals(((ForSetter) obj).setterMethod);
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public TypeDescription getProxyType() {
                    return this.setterMethod.getDeclaringType();
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.setterMethod.hashCode();
                }

                @Override // net.bytebuddy.implementation.bind.annotation.FieldProxy.Binder.FieldResolver
                public boolean isResolved() {
                    return true;
                }

                public ForSetter(MethodDescription.InDefinedShape inDefinedShape) {
                    this.setterMethod = inDefinedShape;
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class InstanceFieldConstructor implements Implementation {
            private final TypeDescription instrumentedType;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Appender implements ByteCodeAppender {
                private final FieldDescription fieldDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((Appender) obj).fieldDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodInvocation.invoke(StaticFieldConstructor.INSTANCE.objectTypeDefaultConstructor), MethodVariableAccess.allArgumentsOf(methodDescription.asDefined()).prependThisReference(), FieldAccess.forField(this.fieldDescription).write(), MethodReturn.VOID).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }

                public Appender(Implementation.Target target) {
                    this.fieldDescription = (FieldDescription) target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.named(AccessorProxy.FIELD_NAME)).getOnly();
                }
            }

            @Override // net.bytebuddy.implementation.Implementation
            public ByteCodeAppender appender(Implementation.Target target) {
                return new Appender(target);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((InstanceFieldConstructor) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType.withField(new FieldDescription.Token(AccessorProxy.FIELD_NAME, 18, this.instrumentedType.asGenericType()));
            }

            public InstanceFieldConstructor(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }
        }

        public Binder(MethodDescription.InDefinedShape inDefinedShape, MethodDescription.InDefinedShape inDefinedShape2) {
            this(new FieldResolver.Factory.Simplex(inDefinedShape, inDefinedShape2));
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<FieldProxy> install(Class<?> cls) {
            return install(TypeDescription.ForLoadedType.m15196of(cls));
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding
        public TypeDescription declaringType(AnnotationDescription.Loadable<FieldProxy> loadable) {
            return (TypeDescription) loadable.getValue(DECLARING_TYPE).resolve(TypeDescription.class);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.fieldResolverFactory.equals(((Binder) obj).fieldResolverFactory);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding
        public String fieldName(AnnotationDescription.Loadable<FieldProxy> loadable) {
            return (String) loadable.getValue(FIELD_NAME).resolve(String.class);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<FieldProxy> getHandledType() {
            return FieldProxy.class;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.fieldResolverFactory.hashCode();
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class FieldGetter implements Implementation {
            private final Assigner assigner;
            private final FieldDescription fieldDescription;
            private final MethodAccessorFactory methodAccessorFactory;

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class Appender implements ByteCodeAppender {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Appender appender = (Appender) obj;
                        return this.typeDescription.equals(appender.typeDescription) && FieldGetter.this.equals(FieldGetter.this);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + FieldGetter.this.hashCode();
                }

                public Appender(Implementation.Target target) {
                    this.typeDescription = target.getInstrumentedType();
                }

                @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                    StackManipulation compound;
                    MethodDescription.InDefinedShape registerGetterFor = FieldGetter.this.methodAccessorFactory.registerGetterFor(FieldGetter.this.fieldDescription, MethodAccessorFactory.AccessType.DEFAULT);
                    StackManipulation[] stackManipulationArr = new StackManipulation[4];
                    if (FieldGetter.this.fieldDescription.isStatic()) {
                        compound = StackManipulation.Trivial.INSTANCE;
                    } else {
                        compound = new StackManipulation.Compound(MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription.InDefinedShape) this.typeDescription.getDeclaredFields().filter(ElementMatchers.named(AccessorProxy.FIELD_NAME)).getOnly()).read());
                    }
                    stackManipulationArr[0] = compound;
                    stackManipulationArr[1] = MethodInvocation.invoke((MethodDescription) registerGetterFor);
                    stackManipulationArr[2] = FieldGetter.this.assigner.assign(registerGetterFor.getReturnType(), methodDescription.getReturnType(), Assigner.Typing.DYNAMIC);
                    stackManipulationArr[3] = MethodReturn.m14940of(methodDescription.getReturnType().asErasure());
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }
            }

            @Override // net.bytebuddy.implementation.Implementation
            public ByteCodeAppender appender(Implementation.Target target) {
                return new Appender(target);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    FieldGetter fieldGetter = (FieldGetter) obj;
                    return this.fieldDescription.equals(fieldGetter.fieldDescription) && this.assigner.equals(fieldGetter.assigner) && this.methodAccessorFactory.equals(fieldGetter.methodAccessorFactory);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.methodAccessorFactory.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            public FieldGetter(FieldDescription fieldDescription, Assigner assigner, MethodAccessorFactory methodAccessorFactory) {
                this.fieldDescription = fieldDescription;
                this.assigner = assigner;
                this.methodAccessorFactory = methodAccessorFactory;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class FieldSetter implements Implementation {
            private final Assigner assigner;
            private final FieldDescription fieldDescription;
            private final MethodAccessorFactory methodAccessorFactory;

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class Appender implements ByteCodeAppender {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Appender appender = (Appender) obj;
                        return this.typeDescription.equals(appender.typeDescription) && FieldSetter.this.equals(FieldSetter.this);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + FieldSetter.this.hashCode();
                }

                public Appender(Implementation.Target target) {
                    this.typeDescription = target.getInstrumentedType();
                }

                @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                    StackManipulation compound;
                    TypeDescription.Generic type = ((ParameterDescription) methodDescription.getParameters().get(0)).getType();
                    MethodDescription.InDefinedShape registerSetterFor = FieldSetter.this.methodAccessorFactory.registerSetterFor(FieldSetter.this.fieldDescription, MethodAccessorFactory.AccessType.DEFAULT);
                    StackManipulation[] stackManipulationArr = new StackManipulation[5];
                    if (FieldSetter.this.fieldDescription.isStatic()) {
                        compound = StackManipulation.Trivial.INSTANCE;
                    } else {
                        compound = new StackManipulation.Compound(MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription.InDefinedShape) this.typeDescription.getDeclaredFields().filter(ElementMatchers.named(AccessorProxy.FIELD_NAME)).getOnly()).read());
                    }
                    stackManipulationArr[0] = compound;
                    stackManipulationArr[1] = MethodVariableAccess.m14936of(type).loadFrom(1);
                    stackManipulationArr[2] = FieldSetter.this.assigner.assign(type, ((ParameterDescription) registerSetterFor.getParameters().get(0)).getType(), Assigner.Typing.DYNAMIC);
                    stackManipulationArr[3] = MethodInvocation.invoke((MethodDescription) registerSetterFor);
                    stackManipulationArr[4] = MethodReturn.VOID;
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }
            }

            @Override // net.bytebuddy.implementation.Implementation
            public ByteCodeAppender appender(Implementation.Target target) {
                return new Appender(target);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    FieldSetter fieldSetter = (FieldSetter) obj;
                    return this.fieldDescription.equals(fieldSetter.fieldDescription) && this.assigner.equals(fieldSetter.assigner) && this.methodAccessorFactory.equals(fieldSetter.methodAccessorFactory);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.methodAccessorFactory.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            public FieldSetter(FieldDescription fieldDescription, Assigner assigner, MethodAccessorFactory methodAccessorFactory) {
                this.fieldDescription = fieldDescription;
                this.assigner = assigner;
                this.methodAccessorFactory = methodAccessorFactory;
            }
        }

        /* loaded from: classes.dex */
        public enum StaticFieldConstructor implements Implementation {
            INSTANCE;
            
            private final MethodDescription objectTypeDefaultConstructor = (MethodDescription) TypeDescription.OBJECT.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly();

            @Override // net.bytebuddy.implementation.Implementation
            public ByteCodeAppender appender(Implementation.Target target) {
                return new ByteCodeAppender.Simple(MethodVariableAccess.loadThis(), MethodInvocation.invoke(this.objectTypeDefaultConstructor), MethodReturn.VOID);
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            StaticFieldConstructor() {
            }
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(FieldProxy.class).getDeclaredMethods();
            DECLARING_TYPE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("declaringType")).getOnly();
            FIELD_NAME = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("value")).getOnly();
            SERIALIZABLE_PROXY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("serializableProxy")).getOnly();
        }

        public Binder(TypeDescription typeDescription, MethodDescription.InDefinedShape inDefinedShape, MethodDescription.InDefinedShape inDefinedShape2) {
            this(new FieldResolver.Factory.Duplex(typeDescription, inDefinedShape, inDefinedShape2));
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<FieldProxy> install(TypeDescription typeDescription) {
            if (typeDescription.isInterface()) {
                if (typeDescription.getInterfaces().isEmpty()) {
                    if (typeDescription.isPublic()) {
                        MethodList filter = typeDescription.getDeclaredMethods().filter(ElementMatchers.isAbstract());
                        if (filter.size() == 2) {
                            MethodList filter2 = filter.filter(ElementMatchers.isGetter(Object.class));
                            if (filter2.size() == 1) {
                                MethodList filter3 = filter.filter(ElementMatchers.isSetter(Object.class));
                                if (filter3.size() == 1) {
                                    return new Binder(typeDescription, (MethodDescription.InDefinedShape) filter2.getOnly(), (MethodDescription.InDefinedShape) filter3.getOnly());
                                }
                                throw new IllegalArgumentException(typeDescription + " does not declare a setter with an Object type");
                            }
                            throw new IllegalArgumentException(typeDescription + " does not declare a getter with an Object type");
                        }
                        throw new IllegalArgumentException(typeDescription + " does not declare exactly two non-abstract methods");
                    }
                    throw new IllegalArgumentException(typeDescription + " is not public");
                }
                throw new IllegalArgumentException(typeDescription + " must not extend other interfaces");
            }
            throw new IllegalArgumentException(typeDescription + " is not an interface");
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding
        public MethodDelegationBinder.ParameterBinding<?> bind(FieldDescription fieldDescription, AnnotationDescription.Loadable<FieldProxy> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner) {
            FieldResolver resolve = this.fieldResolverFactory.resolve(parameterDescription.getType().asErasure(), fieldDescription);
            if (resolve.isResolved()) {
                return new MethodDelegationBinder.ParameterBinding.Anonymous(new AccessorProxy(fieldDescription, target.getInstrumentedType(), resolve, assigner, ((Boolean) loadable.getValue(SERIALIZABLE_PROXY).resolve(Boolean.class)).booleanValue()));
            }
            return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
        }

        public Binder(FieldResolver.Factory factory) {
            this.fieldResolverFactory = factory;
        }

        private static MethodDescription.InDefinedShape onlyMethod(TypeDescription typeDescription) {
            if (typeDescription.isInterface()) {
                if (typeDescription.getInterfaces().isEmpty()) {
                    if (typeDescription.isPublic()) {
                        MethodList filter = typeDescription.getDeclaredMethods().filter(ElementMatchers.isAbstract());
                        if (filter.size() == 1) {
                            return (MethodDescription.InDefinedShape) filter.getOnly();
                        }
                        throw new IllegalArgumentException(typeDescription + " must declare exactly one abstract method");
                    }
                    throw new IllegalArgumentException(typeDescription + " is not public");
                }
                throw new IllegalArgumentException(typeDescription + " must not extend other interfaces");
            }
            throw new IllegalArgumentException(typeDescription + " is not an interface");
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<FieldProxy> install(Class<?> cls, Class<?> cls2) {
            return install(TypeDescription.ForLoadedType.m15196of(cls), TypeDescription.ForLoadedType.m15196of(cls2));
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<FieldProxy> install(TypeDescription typeDescription, TypeDescription typeDescription2) {
            MethodDescription.InDefinedShape onlyMethod = onlyMethod(typeDescription);
            if (onlyMethod.getReturnType().asErasure().represents(Object.class)) {
                if (onlyMethod.getParameters().size() == 0) {
                    MethodDescription.InDefinedShape onlyMethod2 = onlyMethod(typeDescription2);
                    if (onlyMethod2.getReturnType().asErasure().represents(Void.TYPE)) {
                        if (onlyMethod2.getParameters().size() == 1 && ((ParameterDescription.InDefinedShape) onlyMethod2.getParameters().get(0)).getType().asErasure().represents(Object.class)) {
                            return new Binder(onlyMethod, onlyMethod2);
                        }
                        throw new IllegalArgumentException(onlyMethod2 + " must declare a single Object-typed parameters");
                    }
                    throw new IllegalArgumentException(onlyMethod2 + " must return void");
                }
                throw new IllegalArgumentException(onlyMethod + " must not declare parameters");
            }
            throw new IllegalArgumentException(onlyMethod + " must take a single Object-typed parameter");
        }
    }

    Class<?> declaringType() default void.class;

    boolean serializableProxy() default false;

    String value() default "";
}
