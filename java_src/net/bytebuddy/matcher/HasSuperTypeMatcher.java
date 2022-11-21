package net.bytebuddy.matcher;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Queue;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.QueueFactory;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class HasSuperTypeMatcher<T extends TypeDescription> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final ElementMatcher<? super TypeDescription.Generic> matcher;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((HasSuperTypeMatcher<T>) ((TypeDescription) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((HasSuperTypeMatcher) obj).matcher);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "hasSuperType(" + this.matcher + ")";
    }

    public boolean doMatch(T t) {
        HashSet hashSet = new HashSet();
        Iterator it = t.iterator();
        while (it.hasNext()) {
            TypeDefinition typeDefinition = (TypeDefinition) it.next();
            if (!hashSet.add(typeDefinition.asErasure())) {
                return false;
            }
            if (this.matcher.matches(typeDefinition.asGenericType())) {
                return true;
            }
            Queue make = QueueFactory.make(typeDefinition.getInterfaces());
            while (!make.isEmpty()) {
                TypeDefinition typeDefinition2 = (TypeDefinition) make.remove();
                if (hashSet.add(typeDefinition2.asErasure())) {
                    if (this.matcher.matches(typeDefinition2.asGenericType())) {
                        return true;
                    }
                    make.addAll(typeDefinition2.getInterfaces());
                }
            }
        }
        return false;
    }

    public HasSuperTypeMatcher(ElementMatcher<? super TypeDescription.Generic> elementMatcher) {
        this.matcher = elementMatcher;
    }
}
