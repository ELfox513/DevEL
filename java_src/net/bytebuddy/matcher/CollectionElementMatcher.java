package net.bytebuddy.matcher;

import java.util.Iterator;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class CollectionElementMatcher<T> extends ElementMatcher.Junction.ForNonNullValues<Iterable<? extends T>> {
    private final int index;
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
            if (obj != null && getClass() == obj.getClass()) {
                CollectionElementMatcher collectionElementMatcher = (CollectionElementMatcher) obj;
                return this.index == collectionElementMatcher.index && this.matcher.equals(collectionElementMatcher.matcher);
            }
            return false;
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (((super.hashCode() * 31) + this.index) * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "with(" + this.index + " matches " + this.matcher + ")";
    }

    public boolean doMatch(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        for (int i = 0; i < this.index; i++) {
            if (!it.hasNext()) {
                return false;
            }
            it.next();
        }
        return it.hasNext() && this.matcher.matches((T) it.next());
    }

    public CollectionElementMatcher(int i, ElementMatcher<? super T> elementMatcher) {
        this.index = i;
        this.matcher = elementMatcher;
    }
}
