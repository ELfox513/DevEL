package net.bytebuddy.matcher;

import java.lang.annotation.ElementType;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class AnnotationTargetMatcher<T extends AnnotationDescription> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final ElementType elementType;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((AnnotationTargetMatcher<T>) ((AnnotationDescription) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.elementType.equals(((AnnotationTargetMatcher) obj).elementType);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.elementType.hashCode();
    }

    public String toString() {
        return "targetsElement(" + this.elementType + ")";
    }

    public boolean doMatch(T t) {
        return t.isSupportedOn(this.elementType);
    }

    public AnnotationTargetMatcher(ElementType elementType) {
        this.elementType = elementType;
    }
}
