package net.bytebuddy.matcher;

import java.lang.Iterable;
import java.util.ArrayList;
import java.util.Iterator;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class CollectionErasureMatcher<T extends Iterable<? extends TypeDefinition>> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final ElementMatcher<? super Iterable<? extends TypeDescription>> matcher;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((CollectionErasureMatcher<T>) ((Iterable) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((CollectionErasureMatcher) obj).matcher);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "erasures(" + this.matcher + ')';
    }

    public boolean doMatch(T t) {
        ArrayList arrayList = new ArrayList();
        Iterator it = t.iterator();
        while (it.hasNext()) {
            arrayList.add(((TypeDefinition) it.next()).asErasure());
        }
        return this.matcher.matches(arrayList);
    }

    public CollectionErasureMatcher(ElementMatcher<? super Iterable<? extends TypeDescription>> elementMatcher) {
        this.matcher = elementMatcher;
    }
}
