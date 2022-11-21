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
public @interface SuperMethod {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<SuperMethod> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape CACHED;
        private static final MethodDescription.InDefinedShape FALLBACK_TO_DEFAULT;
        private static final MethodDescription.InDefinedShape NULL_IF_IMPOSSIBLE;
        private static final MethodDescription.InDefinedShape PRIVILEGED;

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

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<SuperMethod> getHandledType() {
            return SuperMethod.class;
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(SuperMethod.class).getDeclaredMethods();
            CACHED = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("cached")).getOnly();
            PRIVILEGED = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("privileged")).getOnly();
            FALLBACK_TO_DEFAULT = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("fallbackToDefault")).getOnly();
            NULL_IF_IMPOSSIBLE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("nullIfImpossible")).getOnly();
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<SuperMethod> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            Implementation.SpecialMethodInvocation invokeSuper;
            if (parameterDescription.getType().asErasure().isAssignableFrom(Method.class)) {
                if (methodDescription.isMethod()) {
                    if (((Boolean) loadable.getValue(FALLBACK_TO_DEFAULT).resolve(Boolean.class)).booleanValue()) {
                        invokeSuper = target.invokeDominant(methodDescription.asSignatureToken());
                    } else {
                        invokeSuper = target.invokeSuper(methodDescription.asSignatureToken());
                    }
                    Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = invokeSuper.withCheckedCompatibilityTo(methodDescription.asTypeToken());
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

    boolean fallbackToDefault() default true;

    boolean nullIfImpossible() default false;

    boolean privileged() default false;
}
