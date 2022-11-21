package net.bytebuddy.matcher;

import java.util.Set;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class StringSetMatcher extends ElementMatcher.Junction.ForNonNullValues<String> {
    private final Set<String> values;

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.values.equals(((StringSetMatcher) obj).values);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.values.hashCode();
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean doMatch(String str) {
        return this.values.contains(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("in(");
        boolean z = true;
        for (String str : this.values) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }

    public StringSetMatcher(Set<String> set) {
        this.values = set;
    }
}
