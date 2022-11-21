package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.TargetType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.MethodConstant;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface DefaultMethod {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<DefaultMethod> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape CACHED;
        private static final MethodDescription.InDefinedShape NULL_IF_IMPOSSIBLE;
        private static final MethodDescription.InDefinedShape PRIVILEGED;
        private static final MethodDescription.InDefinedShape TARGET_TYPE;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class DelegationMethod implements StackManipulation {
            private final boolean cached;
            private final boolean privileged;
            private final Implementation.SpecialMethodInvocation specialMethodInvocation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    DelegationMethod delegationMethod = (DelegationMethod) obj;
                    return this.cached == delegationMethod.cached && this.privileged == delegationMethod.privileged && this.specialMethodInvocation.equals(delegationMethod.specialMethodInvocation);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.specialMethodInvocation.hashCode()) * 31) + (this.cached ? 1 : 0)) * 31) + (this.privileged ? 1 : 0);
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return this.specialMethodInvocation.isValid();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                StackManipulation m14952of;
                if (this.privileged) {
                    m14952of = MethodConstant.ofPrivileged(context.registerAccessorFor(this.specialMethodInvocation, MethodAccessorFactory.AccessType.PUBLIC));
                } else {
                    m14952of = MethodConstant.m14952of(context.registerAccessorFor(this.specialMethodInvocation, MethodAccessorFactory.AccessType.PUBLIC));
                }
                if (this.cached) {
                    m14952of = FieldAccess.forField(context.cache(m14952of, TypeDescription.ForLoadedType.m15196of(Method.class))).read();
                }
                return m14952of.apply(methodVisitor, context);
            }

            public DelegationMethod(Implementation.SpecialMethodInvocation specialMethodInvocation, boolean z, boolean z2) {
                this.specialMethodInvocation = specialMethodInvocation;
                this.cached = z;
                this.privileged = z2;
            }
        }

        /* loaded from: classes.dex */
        public interface MethodLocator {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForExplicitType implements MethodLocator {
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

                @Override // net.bytebuddy.implementation.bind.annotation.DefaultMethod.Binder.MethodLocator
                public Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription) {
                    if (this.typeDescription.isInterface()) {
                        return target.invokeDefault(methodDescription.asSignatureToken(), TargetType.resolve(this.typeDescription, target.getInstrumentedType()));
                    }
                    throw new IllegalStateException(methodDescription + " method carries default method call parameter on non-interface type");
                }

                public ForExplicitType(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            /* loaded from: classes.dex */
            public enum ForImplicitType implements MethodLocator {
                INSTANCE;

                @Override // net.bytebuddy.implementation.bind.annotation.DefaultMethod.Binder.MethodLocator
                public Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription) {
                    return target.invokeDefault(methodDescription.asSignatureToken());
                }
            }

            Implementation.SpecialMethodInvocation resolve(Implementation.Target target, MethodDescription methodDescription);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<DefaultMethod> getHandledType() {
            return DefaultMethod.class;
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(DefaultMethod.class).getDeclaredMethods();
            CACHED = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("cached")).getOnly();
            PRIVILEGED = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("privileged")).getOnly();
            TARGET_TYPE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("targetType")).getOnly();
            NULL_IF_IMPOSSIBLE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("nullIfImpossible")).getOnly();
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<DefaultMethod> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            MethodLocator forExplicitType;
            if (parameterDescription.getType().asErasure().isAssignableFrom(Method.class)) {
                if (methodDescription.isMethod()) {
                    TypeDescription typeDescription = (TypeDescription) loadable.getValue(TARGET_TYPE).resolve(TypeDescription.class);
                    if (typeDescription.represents(Void.TYPE)) {
                        forExplicitType = MethodLocator.ForImplicitType.INSTANCE;
                    } else {
                        forExplicitType = new MethodLocator.ForExplicitType(typeDescription);
                    }
                    Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = forExplicitType.resolve(target, methodDescription).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                    if (withCheckedCompatibilityTo.isValid()) {
                        return new MethodDelegationBinder.ParameterBinding.Anonymous(new DelegationMethod(withCheckedCompatibilityTo, ((Boolean) loadable.getValue(CACHED).resolve(Boolean.class)).booleanValue(), ((Boolean) loadable.getValue(PRIVILEGED).resolve(Boolean.class)).booleanValue()));
                    }
                    if (((Boolean) loadable.getValue(NULL_IF_IMPOSSIBLE).resolve(Boolean.class)).booleanValue()) {
                        return new MethodDelegationBinder.ParameterBinding.Anonymous(NullConstant.INSTANCE);
                    }
                    return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
                } else if (((Boolean) loadable.getValue(NULL_IF_IMPOSSIBLE).resolve(Boolean.class)).booleanValue()) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(NullConstant.INSTANCE);
                } else {
                    return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
                }
            }
            throw new IllegalStateException("Cannot assign Method type to " + parameterDescription);
        }
    }

    boolean cached() default true;

    boolean nullIfImpossible() default false;

    boolean privileged() default false;

    Class<?> targetType() default void.class;
}
