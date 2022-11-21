package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MethodParametersMatcher<T extends MethodDescription> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final ElementMatcher<? super ParameterList<?>> matcher;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((MethodParametersMatcher<T>) ((MethodDescription) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((MethodParametersMatcher) obj).matcher);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "hasParameter(" + this.matcher + ")";
    }

    public boolean doMatch(T t) {
        return this.matcher.matches(t.getParameters());
    }

    public MethodParametersMatcher(ElementMatcher<? super ParameterList<? extends ParameterDescription>> elementMatcher) {
        this.matcher = elementMatcher;
    }
}
