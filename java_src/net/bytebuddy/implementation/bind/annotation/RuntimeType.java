package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.bytebuddy.description.annotation.AnnotationSource;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
@Target({ElementType.PARAMETER, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface RuntimeType {

    /* loaded from: classes.dex */
    public static final class Verifier {
        public static Assigner.Typing check(AnnotationSource annotationSource) {
            return Assigner.Typing.m14973of(annotationSource.getDeclaredAnnotations().isAnnotationPresent(RuntimeType.class));
        }

        private Verifier() {
            throw new UnsupportedOperationException();
        }
    }
}
