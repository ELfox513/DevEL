package net.bytebuddy.matcher;

import java.lang.ClassLoader;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ClassLoaderHierarchyMatcher<T extends ClassLoader> extends ElementMatcher.Junction.AbstractBase<T> {
    private final ElementMatcher<? super ClassLoader> matcher;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.matcher.equals(((ClassLoaderHierarchyMatcher) obj).matcher);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.matcher.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher
    public /* bridge */ /* synthetic */ boolean matches(@MaybeNull Object obj) {
        return matches((ClassLoaderHierarchyMatcher<T>) ((ClassLoader) obj));
    }

    public String toString() {
        return "hasChild(" + this.matcher + ')';
    }

    public boolean matches(@MaybeNull T t) {
        while (t != null) {
            if (this.matcher.matches(t)) {
                return true;
            }
            t = (T) t.getParent();
        }
        return this.matcher.matches(null);
    }

    public ClassLoaderHierarchyMatcher(ElementMatcher<? super ClassLoader> elementMatcher) {
        this.matcher = elementMatcher;
    }
}
