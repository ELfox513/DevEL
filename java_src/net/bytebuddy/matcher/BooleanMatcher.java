package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class BooleanMatcher<T> extends ElementMatcher.Junction.AbstractBase<T> {
    public final boolean matches;
    private static final BooleanMatcher<?> TRUE = new BooleanMatcher<>(true);
    private static final BooleanMatcher<?> FALSE = new BooleanMatcher<>(false);

    /* renamed from: of */
    public static <T> ElementMatcher.Junction<T> m14831of(boolean z) {
        return z ? TRUE : FALSE;
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.matches == ((BooleanMatcher) obj).matches;
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + (this.matches ? 1 : 0);
    }

    @Override // net.bytebuddy.matcher.ElementMatcher
    public boolean matches(@MaybeNull T t) {
        return this.matches;
    }

    public String toString() {
        return Boolean.toString(this.matches);
    }

    public BooleanMatcher(boolean z) {
        this.matches = z;
    }
}
