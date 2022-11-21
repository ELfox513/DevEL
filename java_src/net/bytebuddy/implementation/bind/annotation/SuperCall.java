package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.Callable;
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
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface SuperCall {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<SuperCall> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape FALLBACK_TO_DEFAULT;
        private static final MethodDescription.InDefinedShape NULL_IF_IMPOSSIBLE;
        private static final MethodDescription.InDefinedShape SERIALIZABLE_PROXY;

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<SuperCall> getHandledType() {
            return SuperCall.class;
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(SuperCall.class).getDeclaredMethods();
            SERIALIZABLE_PROXY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("serializableProxy")).getOnly();
            FALLBACK_TO_DEFAULT = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("fallbackToDefault")).getOnly();
            NULL_IF_IMPOSSIBLE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("nullIfImpossible")).getOnly();
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<SuperCall> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            Implementation.SpecialMethodInvocation invokeSuper;
            StackManipulation stackManipulation;
            TypeDescription asErasure = parameterDescription.getType().asErasure();
            if (!asErasure.represents(Runnable.class) && !asErasure.represents(Callable.class) && !asErasure.represents(Object.class)) {
                throw new IllegalStateException("A super method call proxy can only be assigned to Runnable or Callable types: " + parameterDescription);
            } else if (methodDescription.isConstructor()) {
                if (((Boolean) loadable.getValue(NULL_IF_IMPOSSIBLE).resolve(Boolean.class)).booleanValue()) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(NullConstant.INSTANCE);
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            } else {
                if (((Boolean) loadable.getValue(FALLBACK_TO_DEFAULT).resolve(Boolean.class)).booleanValue()) {
                    invokeSuper = target.invokeDominant(methodDescription.asSignatureToken());
                } else {
                    invokeSuper = target.invokeSuper(methodDescription.asSignatureToken());
                }
                Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = invokeSuper.withCheckedCompatibilityTo(methodDescription.asTypeToken());
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

    boolean fallbackToDefault() default true;

    boolean nullIfImpossible() default false;

    boolean serializableProxy() default false;
}
