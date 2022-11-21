package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class NullMatcher<T> extends ElementMatcher.Junction.AbstractBase<T> {
    private static final NullMatcher<?> INSTANCE = new NullMatcher<>();

    public static <T> ElementMatcher.Junction<T> make() {
        return INSTANCE;
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public int hashCode() {
        return getClass().hashCode();
    }

    @Override // net.bytebuddy.matcher.ElementMatcher
    public boolean matches(@MaybeNull T t) {
        return t == null;
    }

    public String toString() {
        return "isNull()";
    }
}
