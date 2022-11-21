package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.Callable;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.auxiliary.MethodCallProxy;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface DefaultCall {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<DefaultCall> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape NULL_IF_IMPOSSIBLE;
        private static final MethodDescription.InDefinedShape SERIALIZABLE_PROXY;
        private static final MethodDescription.InDefinedShape TARGET_TYPE;

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

                @Override // net.bytebuddy.implementation.bind.annotation.DefaultCall.Binder.DefaultMethodLocator
                public Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription) {
                    if (this.typeDescription.isInterface()) {
                        return target.invokeDefault(methodDescription.asSignatureToken(), this.typeDescription);
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

                @Override // net.bytebuddy.implementation.bind.annotation.DefaultCall.Binder.DefaultMethodLocator
                public Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription) {
                    return target.invokeDefault(methodDescription.asSignatureToken());
                }
            }

            Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<DefaultCall> getHandledType() {
            return DefaultCall.class;
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(DefaultCall.class).getDeclaredMethods();
            TARGET_TYPE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("targetType")).getOnly();
            SERIALIZABLE_PROXY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("serializableProxy")).getOnly();
            NULL_IF_IMPOSSIBLE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("nullIfImpossible")).getOnly();
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<DefaultCall> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            DefaultMethodLocator explicit;
            StackManipulation stackManipulation;
            TypeDescription asErasure = parameterDescription.getType().asErasure();
            if (!asErasure.represents(Runnable.class) && !asErasure.represents(Callable.class) && !asErasure.represents(Object.class)) {
                throw new IllegalStateException("A default method call proxy can only be assigned to Runnable or Callable types: " + parameterDescription);
            } else if (methodDescription.isConstructor()) {
                if (((Boolean) loadable.getValue(NULL_IF_IMPOSSIBLE).resolve(Boolean.class)).booleanValue()) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(NullConstant.INSTANCE);
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            } else {
                TypeDescription typeDescription = (TypeDescription) loadable.getValue(TARGET_TYPE).resolve(TypeDescription.class);
                if (typeDescription.represents(Void.TYPE)) {
                    explicit = DefaultMethodLocator.Implicit.INSTANCE;
                } else {
                    explicit = new DefaultMethodLocator.Explicit(typeDescription);
                }
                Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = explicit.resolve(target, methodDescription).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                if (withCheckedCompatibilityTo.isValid()) {
                    stackManipulation = new MethodCallProxy.AssignableSignatureCall(withCheckedCompatibilityTo, ((Boolean) loadable.getValue(SERIALIZABLE_PROXY).resolve(Boolean.class)).booleanValue());
                } else if (((Boolean) loadable.getValue(NULL_IF_IMPOSSIBLE).resolve(Boolean.class)).booleanValue()) {
                    stackManipulation = NullConstant.INSTANCE;
                } else {
                    return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
                }
                return new MethodDelegationBinder.ParameterBinding.Anonymous(stackManipulation);
            }
        }
    }

    boolean nullIfImpossible() default false;

    boolean serializableProxy() default false;

    Class<?> targetType() default void.class;
}
