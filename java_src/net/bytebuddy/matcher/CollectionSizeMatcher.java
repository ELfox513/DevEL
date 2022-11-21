package net.bytebuddy.matcher;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.Iterable;
import java.util.Collection;
import java.util.Iterator;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class CollectionSizeMatcher<T extends Iterable<?>> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final int size;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    @SuppressFBWarnings(justification = "Iteration required to count size of an iterable.", value = {"DLS_DEAD_LOCAL_STORE"})
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((CollectionSizeMatcher<T>) ((Iterable) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.size == ((CollectionSizeMatcher) obj).size;
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.size;
    }

    public String toString() {
        return "ofSize(" + this.size + ')';
    }

    @SuppressFBWarnings(justification = "Iteration required to count size of an iterable.", value = {"DLS_DEAD_LOCAL_STORE"})
    public boolean doMatch(T t) {
        if (t instanceof Collection) {
            return ((Collection) t).size() == this.size;
        }
        Iterator it = t.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next();
            i++;
        }
        return i == this.size;
    }

    public CollectionSizeMatcher(int i) {
        this.size = i;
    }
}
