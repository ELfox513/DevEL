package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.bytebuddy.description.method.MethodDescription;
@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface IgnoreForBinding {

    /* loaded from: classes.dex */
    public static final class Verifier {
        public static boolean check(MethodDescription methodDescription) {
            return methodDescription.getDeclaredAnnotations().isAnnotationPresent(IgnoreForBinding.class);
        }

        private Verifier() {
            throw new UnsupportedOperationException();
        }
    }
}
