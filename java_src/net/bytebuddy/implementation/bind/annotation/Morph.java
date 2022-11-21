package net.bytebuddy.implementation.bind.annotation;

import java.io.Serializable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
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
import net.bytebuddy.implementation.bytecode.collection.ArrayAccess;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
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
public @interface Morph {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<Morph> {
        private static final MethodDescription.InDefinedShape DEFAULT_METHOD;
        private static final MethodDescription.InDefinedShape DEFAULT_TARGET;
        private static final MethodDescription.InDefinedShape SERIALIZABLE_PROXY;
        private final MethodDescription forwardingMethod;

        /* loaded from: classes.dex */
        public interface DefaultMethodLocator {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Explicit implements DefaultMethodLocator {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((Explicit) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.bind.annotation.Morph.Binder.DefaultMethodLocator
                public Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription) {
                    if (this.typeDescription.isInterface()) {
                        return target.invokeDefault(methodDescription.asSignatureToken(), this.typeDescription).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                    }
                    throw new IllegalStateException(methodDescription + " method carries default method call parameter on non-interface type");
                }

                public Explicit(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            /* loaded from: classes.dex */
            public enum Implicit implements DefaultMethodLocator {
                INSTANCE;

                @Override // net.bytebuddy.implementation.bind.annotation.Morph.Binder.DefaultMethodLocator
                public Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription) {
                    return target.invokeDefault(methodDescription.asSignatureToken()).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                }
            }

            Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class RedirectionProxy extends StackManipulation.AbstractBase implements AuxiliaryType {
            public static final String FIELD_NAME = "target";
            private final Assigner assigner;
            private final TypeDescription instrumentedType;
            private final TypeDescription morphingType;
            private final boolean serializableProxy;
            private final Implementation.SpecialMethodInvocation specialMethodInvocation;

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
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodInvocation.invoke(StaticFieldConstructor.INSTANCE.objectTypeDefaultConstructor), MethodVariableAccess.allArgumentsOf(methodDescription).prependThisReference(), FieldAccess.forField(this.fieldDescription).write(), MethodReturn.VOID).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }

                    public Appender(Implementation.Target target) {
                        this.fieldDescription = (FieldDescription) target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.named("target")).getOnly();
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
                    return instrumentedType.withField(new FieldDescription.Token("target", 18, this.instrumentedType.asGenericType()));
                }

                public InstanceFieldConstructor(TypeDescription typeDescription) {
                    this.instrumentedType = typeDescription;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    RedirectionProxy redirectionProxy = (RedirectionProxy) obj;
                    return this.serializableProxy == redirectionProxy.serializableProxy && this.morphingType.equals(redirectionProxy.morphingType) && this.instrumentedType.equals(redirectionProxy.instrumentedType) && this.specialMethodInvocation.equals(redirectionProxy.specialMethodInvocation) && this.assigner.equals(redirectionProxy.assigner);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
            public String getSuffix() {
                StringBuilder sb = new StringBuilder();
                sb.append(RandomString.hashOf(this.morphingType.hashCode()));
                sb.append(this.serializableProxy ? "S" : "0");
                return sb.toString();
            }

            public int hashCode() {
                return (((((((((getClass().hashCode() * 31) + this.morphingType.hashCode()) * 31) + this.instrumentedType.hashCode()) * 31) + this.specialMethodInvocation.hashCode()) * 31) + this.assigner.hashCode()) * 31) + (this.serializableProxy ? 1 : 0);
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class MethodCall implements Implementation {
                private final MethodDescription accessorMethod;
                private final Assigner assigner;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class Appender implements ByteCodeAppender {
                    private final TypeDescription typeDescription;

                    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                        StackManipulation compound;
                        StackManipulation loadFrom = MethodVariableAccess.REFERENCE.loadFrom(1);
                        StackManipulation[] stackManipulationArr = new StackManipulation[MethodCall.this.accessorMethod.getParameters().size()];
                        Iterator<TypeDescription.Generic> it = MethodCall.this.accessorMethod.getParameters().asTypeList().iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            stackManipulationArr[i] = new StackManipulation.Compound(loadFrom, IntegerConstant.forValue(i), ArrayAccess.REFERENCE.load(), MethodCall.this.assigner.assign(TypeDescription.Generic.OBJECT, it.next(), Assigner.Typing.DYNAMIC));
                            i++;
                        }
                        StackManipulation[] stackManipulationArr2 = new StackManipulation[5];
                        if (MethodCall.this.accessorMethod.isStatic()) {
                            compound = StackManipulation.Trivial.INSTANCE;
                        } else {
                            compound = new StackManipulation.Compound(MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription.InDefinedShape) this.typeDescription.getDeclaredFields().filter(ElementMatchers.named("target")).getOnly()).read());
                        }
                        stackManipulationArr2[0] = compound;
                        stackManipulationArr2[1] = new StackManipulation.Compound(stackManipulationArr);
                        stackManipulationArr2[2] = MethodInvocation.invoke(MethodCall.this.accessorMethod);
                        stackManipulationArr2[3] = MethodCall.this.assigner.assign(MethodCall.this.accessorMethod.getReturnType(), methodDescription.getReturnType(), Assigner.Typing.DYNAMIC);
                        stackManipulationArr2[4] = MethodReturn.REFERENCE;
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulationArr2).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Appender appender = (Appender) obj;
                            return this.typeDescription.equals(appender.typeDescription) && MethodCall.this.equals(MethodCall.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + MethodCall.this.hashCode();
                    }

                    public Appender(Implementation.Target target) {
                        this.typeDescription = target.getInstrumentedType();
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
                        MethodCall methodCall = (MethodCall) obj;
                        return this.accessorMethod.equals(methodCall.accessorMethod) && this.assigner.equals(methodCall.assigner);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.accessorMethod.hashCode()) * 31) + this.assigner.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                public MethodCall(MethodDescription methodDescription, Assigner assigner) {
                    this.accessorMethod = methodDescription;
                    this.assigner = assigner;
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

            @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
            public DynamicType make(String str, ClassFileVersion classFileVersion, MethodAccessorFactory methodAccessorFactory) {
                List singletonList;
                Implementation instanceFieldConstructor;
                DynamicType.Builder.MethodDefinition.ParameterDefinition.Initial<?> defineConstructor = new ByteBuddy(classFileVersion).with(TypeValidation.DISABLED).subclass(this.morphingType, ConstructorStrategy.Default.NO_CONSTRUCTORS).name(str).modifiers(AuxiliaryType.DEFAULT_TYPE_MODIFIER).implement(this.serializableProxy ? new Class[]{Serializable.class} : new Class[0]).defineConstructor(new ModifierContributor.ForMethod[0]);
                if (this.specialMethodInvocation.getMethodDescription().isStatic()) {
                    singletonList = Collections.emptyList();
                } else {
                    singletonList = Collections.singletonList(this.instrumentedType);
                }
                DynamicType.Builder.MethodDefinition.ExceptionDefinition<?> withParameters = defineConstructor.withParameters((Collection<? extends TypeDefinition>) singletonList);
                if (this.specialMethodInvocation.getMethodDescription().isStatic()) {
                    instanceFieldConstructor = StaticFieldConstructor.INSTANCE;
                } else {
                    instanceFieldConstructor = new InstanceFieldConstructor(this.instrumentedType);
                }
                return withParameters.intercept(instanceFieldConstructor).method(ElementMatchers.isAbstract().and(ElementMatchers.isDeclaredBy(this.morphingType))).intercept(new MethodCall(methodAccessorFactory.registerAccessorFor(this.specialMethodInvocation, MethodAccessorFactory.AccessType.DEFAULT), this.assigner)).make();
            }

            public RedirectionProxy(TypeDescription typeDescription, TypeDescription typeDescription2, Implementation.SpecialMethodInvocation specialMethodInvocation, Assigner assigner, boolean z) {
                this.morphingType = typeDescription;
                this.instrumentedType = typeDescription2;
                this.specialMethodInvocation = specialMethodInvocation;
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
                if (this.specialMethodInvocation.getMethodDescription().isStatic()) {
                    loadThis = StackManipulation.Trivial.INSTANCE;
                } else {
                    loadThis = MethodVariableAccess.loadThis();
                }
                stackManipulationArr[2] = loadThis;
                stackManipulationArr[3] = MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly());
                return new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context);
            }
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<Morph> install(Class<?> cls) {
            return install(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.forwardingMethod.equals(((Binder) obj).forwardingMethod);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<Morph> getHandledType() {
            return Morph.class;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.forwardingMethod.hashCode();
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Morph.class).getDeclaredMethods();
            SERIALIZABLE_PROXY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("serializableProxy")).getOnly();
            DEFAULT_METHOD = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("defaultMethod")).getOnly();
            DEFAULT_TARGET = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("defaultTarget")).getOnly();
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<Morph> install(TypeDescription typeDescription) {
            return new Binder(onlyMethod(typeDescription));
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<Morph> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            DefaultMethodLocator explicit;
            Implementation.SpecialMethodInvocation resolve;
            if (parameterDescription.getType().asErasure().equals(this.forwardingMethod.getDeclaringType())) {
                TypeDescription typeDescription = (TypeDescription) loadable.getValue(DEFAULT_TARGET).resolve(TypeDescription.class);
                if (typeDescription.represents(Void.TYPE) && !((Boolean) loadable.getValue(DEFAULT_METHOD).resolve(Boolean.class)).booleanValue()) {
                    resolve = target.invokeSuper(methodDescription.asSignatureToken()).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                } else {
                    if (typeDescription.represents(Void.TYPE)) {
                        explicit = DefaultMethodLocator.Implicit.INSTANCE;
                    } else {
                        explicit = new DefaultMethodLocator.Explicit(typeDescription);
                    }
                    resolve = explicit.resolve(target, methodDescription);
                }
                Implementation.SpecialMethodInvocation specialMethodInvocation = resolve;
                if (specialMethodInvocation.isValid()) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(new RedirectionProxy(this.forwardingMethod.getDeclaringType().asErasure(), target.getInstrumentedType(), specialMethodInvocation, assigner, ((Boolean) loadable.getValue(SERIALIZABLE_PROXY).resolve(Boolean.class)).booleanValue()));
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            }
            throw new IllegalStateException("Illegal use of @Morph for " + parameterDescription + " which was installed for " + this.forwardingMethod.getDeclaringType());
        }

        public Binder(MethodDescription methodDescription) {
            this.forwardingMethod = methodDescription;
        }

        private static MethodDescription onlyMethod(TypeDescription typeDescription) {
            if (typeDescription.isInterface()) {
                if (typeDescription.getInterfaces().isEmpty()) {
                    if (typeDescription.isPublic()) {
                        MethodList filter = typeDescription.getDeclaredMethods().filter(ElementMatchers.isAbstract());
                        if (filter.size() == 1) {
                            MethodDescription methodDescription = (MethodDescription) filter.getOnly();
                            if (methodDescription.getReturnType().asErasure().represents(Object.class)) {
                                if (methodDescription.getParameters().size() == 1 && ((ParameterDescription) methodDescription.getParameters().get(0)).getType().asErasure().represents(Object[].class)) {
                                    return methodDescription;
                                }
                                throw new IllegalArgumentException(methodDescription + " does not take a single argument of type Object[]");
                            }
                            throw new IllegalArgumentException(methodDescription + " does not return an Object-type");
                        }
                        throw new IllegalArgumentException(typeDescription + " must declare exactly one abstract method");
                    }
                    throw new IllegalArgumentException(typeDescription + " is mot public");
                }
                throw new IllegalArgumentException(typeDescription + " must not extend other interfaces");
            }
            throw new IllegalArgumentException(typeDescription + " is not an interface");
        }
    }

    boolean defaultMethod() default false;

    Class<?> defaultTarget() default void.class;

    boolean serializableProxy() default false;
}
