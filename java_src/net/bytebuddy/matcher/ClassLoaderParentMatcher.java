package net.bytebuddy.matcher;

import java.lang.ClassLoader;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ClassLoaderParentMatcher<T extends ClassLoader> extends ElementMatcher.Junction.AbstractBase<T> {
    @MaybeNull
    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
    private final ClassLoader classLoader;

    /* JADX WARN: Removed duplicated region for block: B:19:0x0027 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            if (r4 != r5) goto L4
            return r0
        L4:
            r1 = 0
            if (r5 != 0) goto L8
            return r1
        L8:
            java.lang.Class r2 = r4.getClass()
            java.lang.Class r3 = r5.getClass()
            if (r2 == r3) goto L13
            return r1
        L13:
            java.lang.ClassLoader r2 = r4.classLoader
            net.bytebuddy.matcher.ClassLoaderParentMatcher r5 = (net.bytebuddy.matcher.ClassLoaderParentMatcher) r5
            java.lang.ClassLoader r5 = r5.classLoader
            if (r5 == 0) goto L24
            if (r2 == 0) goto L26
            boolean r5 = r2.equals(r5)
            if (r5 != 0) goto L27
            return r1
        L24:
            if (r2 == 0) goto L27
        L26:
            return r1
        L27:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.matcher.ClassLoaderParentMatcher.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode = getClass().hashCode() * 31;
        ClassLoader classLoader = this.classLoader;
        return classLoader != null ? hashCode + classLoader.hashCode() : hashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher
    public /* bridge */ /* synthetic */ boolean matches(@MaybeNull Object obj) {
        return matches((ClassLoaderParentMatcher<T>) ((ClassLoader) obj));
    }

    public String toString() {
        return "isParentOf(" + this.classLoader + ')';
    }

    public boolean matches(@MaybeNull T t) {
        for (ClassLoader classLoader = this.classLoader; classLoader != null; classLoader = classLoader.getParent()) {
            if (classLoader == t) {
                return true;
            }
        }
        return t == null;
    }

    public ClassLoaderParentMatcher(@MaybeNull ClassLoader classLoader) {
        this.classLoader = classLoader;
    }
}
