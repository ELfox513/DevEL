package net.bytebuddy.matcher;

import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MethodParameterTypesMatcher<T extends ParameterList<?>> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final ElementMatcher<? super List<? extends TypeDescription.Generic>> matcher;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((MethodParameterTypesMatcher<T>) ((ParameterList) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((MethodParameterTypesMatcher) obj).matcher);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "hasTypes(" + this.matcher + ")";
    }

    public boolean doMatch(T t) {
        return this.matcher.matches(t.asTypeList());
    }

    public MethodParameterTypesMatcher(ElementMatcher<? super List<? extends TypeDescription.Generic>> elementMatcher) {
        this.matcher = elementMatcher;
    }
}
