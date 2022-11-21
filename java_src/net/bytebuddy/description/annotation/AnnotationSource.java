package net.bytebuddy.description.annotation;

import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface AnnotationSource {

    /* loaded from: classes2.dex */
    public enum Empty implements AnnotationSource {
        INSTANCE;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Empty();
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Explicit implements AnnotationSource {
        private final List<? extends AnnotationDescription> annotations;

        public Explicit(AnnotationDescription... annotationDescriptionArr) {
            this(Arrays.asList(annotationDescriptionArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.annotations.equals(((Explicit) obj).annotations);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Explicit(this.annotations);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.annotations.hashCode();
        }

        public Explicit(List<? extends AnnotationDescription> list) {
            this.annotations = list;
        }
    }

    AnnotationList getDeclaredAnnotations();
}
