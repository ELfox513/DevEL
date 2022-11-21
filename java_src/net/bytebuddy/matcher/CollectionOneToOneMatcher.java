package net.bytebuddy.matcher;

import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class CollectionOneToOneMatcher<T> extends ElementMatcher.Junction.ForNonNullValues<Iterable<? extends T>> {
    private final List<? extends ElementMatcher<? super T>> matchers;

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
            return obj != null && getClass() == obj.getClass() && this.matchers.equals(((CollectionOneToOneMatcher) obj).matchers);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matchers.hashCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean doMatch(java.lang.Iterable<? extends T> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof java.util.Collection
            r1 = 0
            if (r0 == 0) goto L15
            r0 = r5
            java.util.Collection r0 = (java.util.Collection) r0
            int r0 = r0.size()
            java.util.List<? extends net.bytebuddy.matcher.ElementMatcher<? super T>> r2 = r4.matchers
            int r2 = r2.size()
            if (r0 == r2) goto L15
            return r1
        L15:
            java.util.List<? extends net.bytebuddy.matcher.ElementMatcher<? super T>> r0 = r4.matchers
            java.util.Iterator r0 = r0.iterator()
            java.util.Iterator r5 = r5.iterator()
        L1f:
            boolean r2 = r5.hasNext()
            if (r2 == 0) goto L3c
            java.lang.Object r2 = r5.next()
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L3b
            java.lang.Object r3 = r0.next()
            net.bytebuddy.matcher.ElementMatcher r3 = (net.bytebuddy.matcher.ElementMatcher) r3
            boolean r2 = r3.matches(r2)
            if (r2 != 0) goto L1f
        L3b:
            return r1
        L3c:
            r5 = 1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.matcher.CollectionOneToOneMatcher.doMatch(java.lang.Iterable):boolean");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("containing(");
        boolean z = true;
        for (ElementMatcher<? super T> elementMatcher : this.matchers) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(elementMatcher);
        }
        sb.append(')');
        return sb.toString();
    }

    public CollectionOneToOneMatcher(List<? extends ElementMatcher<? super T>> list) {
        this.matchers = list;
    }
}
