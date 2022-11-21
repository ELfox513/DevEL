package net.bytebuddy.matcher;

import java.util.List;
import java.util.Set;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MethodOverrideMatcher<T extends MethodDescription> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final ElementMatcher<? super TypeDescription.Generic> matcher;

    private boolean matches(MethodDescription methodDescription, List<? extends TypeDefinition> list, Set<TypeDescription> set) {
        for (TypeDefinition typeDefinition : list) {
            if (set.add(typeDefinition.asErasure()) && (matches(methodDescription, typeDefinition) || matches(methodDescription, typeDefinition.getInterfaces(), set))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((MethodOverrideMatcher<T>) ((MethodDescription) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((MethodOverrideMatcher) obj).matcher);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "isOverriddenFrom(" + this.matcher + ")";
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean doMatch(T r5) {
        /*
            r4 = this;
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            net.bytebuddy.description.type.TypeDefinition r1 = r5.getDeclaringType()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L2b
            java.lang.Object r2 = r1.next()
            net.bytebuddy.description.type.TypeDefinition r2 = (net.bytebuddy.description.type.TypeDefinition) r2
            boolean r3 = r4.matches(r5, r2)
            if (r3 != 0) goto L29
            net.bytebuddy.description.type.TypeList$Generic r2 = r2.getInterfaces()
            boolean r2 = r4.matches(r5, r2, r0)
            if (r2 == 0) goto Ld
        L29:
            r5 = 1
            return r5
        L2b:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.matcher.MethodOverrideMatcher.doMatch(net.bytebuddy.description.method.MethodDescription):boolean");
    }

    public MethodOverrideMatcher(ElementMatcher<? super TypeDescription.Generic> elementMatcher) {
        this.matcher = elementMatcher;
    }

    private boolean matches(MethodDescription methodDescription, TypeDefinition typeDefinition) {
        for (MethodDescription methodDescription2 : typeDefinition.getDeclaredMethods().filter(ElementMatchers.isVirtual())) {
            if (methodDescription2.asSignatureToken().equals(methodDescription.asSignatureToken())) {
                return this.matcher.matches(typeDefinition.asGenericType());
            }
        }
        return false;
    }
}
