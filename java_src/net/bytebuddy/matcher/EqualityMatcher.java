package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class EqualityMatcher<T> extends ElementMatcher.Junction.AbstractBase<T> {
    private final Object value;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value.equals(((EqualityMatcher) obj).value);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.value.hashCode();
    }

    @Override // net.bytebuddy.matcher.ElementMatcher
    public boolean matches(@MaybeNull T t) {
        return this.value.equals(t);
    }

    public String toString() {
        return "is(" + this.value + ")";
    }

    public EqualityMatcher(Object obj) {
        this.value = obj;
    }
}
