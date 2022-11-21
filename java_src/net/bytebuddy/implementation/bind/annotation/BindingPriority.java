package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface BindingPriority {
    public static final int DEFAULT = 1;

    int value();

    /* loaded from: classes.dex */
    public enum Resolver implements MethodDelegationBinder.AmbiguityResolver {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(BindingPriority.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();

        private static int resolve(@MaybeNull AnnotationDescription.Loadable<BindingPriority> loadable) {
            if (loadable == null) {
                return 1;
            }
            return ((Integer) loadable.getValue(VALUE).resolve(Integer.class)).intValue();
        }

        @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.AmbiguityResolver
        public MethodDelegationBinder.AmbiguityResolver.Resolution resolve(MethodDescription methodDescription, MethodDelegationBinder.MethodBinding methodBinding, MethodDelegationBinder.MethodBinding methodBinding2) {
            int resolve = resolve(methodBinding.getTarget().getDeclaredAnnotations().ofType(BindingPriority.class));
            int resolve2 = resolve(methodBinding2.getTarget().getDeclaredAnnotations().ofType(BindingPriority.class));
            if (resolve == resolve2) {
                return MethodDelegationBinder.AmbiguityResolver.Resolution.AMBIGUOUS;
            }
            if (resolve < resolve2) {
                return MethodDelegationBinder.AmbiguityResolver.Resolution.RIGHT;
            }
            return MethodDelegationBinder.AmbiguityResolver.Resolution.LEFT;
        }
    }
}
