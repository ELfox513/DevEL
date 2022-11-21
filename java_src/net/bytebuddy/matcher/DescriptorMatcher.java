package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.NamedElement.WithDescriptor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class DescriptorMatcher<T extends NamedElement.WithDescriptor> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final ElementMatcher<String> matcher;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((DescriptorMatcher<T>) ((NamedElement.WithDescriptor) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((DescriptorMatcher) obj).matcher);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "hasDescriptor(" + this.matcher + ")";
    }

    public boolean doMatch(T t) {
        return this.matcher.matches(t.getDescriptor());
    }

    public DescriptorMatcher(ElementMatcher<String> elementMatcher) {
        this.matcher = elementMatcher;
    }
}
