package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class VisibilityMatcher<T extends ByteCodeElement> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final TypeDescription typeDescription;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((VisibilityMatcher<T>) ((ByteCodeElement) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((VisibilityMatcher) obj).typeDescription);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.typeDescription.hashCode();
    }

    public String toString() {
        return "isVisibleTo(" + this.typeDescription + ")";
    }

    public boolean doMatch(T t) {
        return t.isVisibleTo(this.typeDescription);
    }

    public VisibilityMatcher(TypeDescription typeDescription) {
        this.typeDescription = typeDescription;
    }
}
