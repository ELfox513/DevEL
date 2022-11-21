package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class CollectionItemMatcher<T> extends ElementMatcher.Junction.ForNonNullValues<Iterable<? extends T>> {
    private final ElementMatcher<? super T> matcher;

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((Iterable) ((Iterable) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((CollectionItemMatcher) obj).matcher);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "whereOne(" + this.matcher + ")";
    }

    public boolean doMatch(Iterable<? extends T> iterable) {
        for (T t : iterable) {
            if (this.matcher.matches(t)) {
                return true;
            }
        }
        return false;
    }

    public CollectionItemMatcher(ElementMatcher<? super T> elementMatcher) {
        this.matcher = elementMatcher;
    }
}
