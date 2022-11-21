package net.bytebuddy.dynamic.scaffold.inline;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class InliningImplementationMatcher implements LatentMatcher<MethodDescription> {
    private final LatentMatcher<? super MethodDescription> ignoredMethods;
    private final ElementMatcher<? super MethodDescription> predefinedMethodSignatures;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            InliningImplementationMatcher inliningImplementationMatcher = (InliningImplementationMatcher) obj;
            return this.ignoredMethods.equals(inliningImplementationMatcher.ignoredMethods) && this.predefinedMethodSignatures.equals(inliningImplementationMatcher.predefinedMethodSignatures);
        }
        return false;
    }

    public int hashCode() {
        return (((getClass().hashCode() * 31) + this.ignoredMethods.hashCode()) * 31) + this.predefinedMethodSignatures.hashCode();
    }

    @Override // net.bytebuddy.matcher.LatentMatcher
    public ElementMatcher<? super MethodDescription> resolve(TypeDescription typeDescription) {
        return ElementMatchers.not(this.ignoredMethods.resolve(typeDescription)).and(ElementMatchers.isVirtual().and(ElementMatchers.not(ElementMatchers.isFinal())).mo14830or(ElementMatchers.isDeclaredBy(typeDescription))).mo14830or(ElementMatchers.isDeclaredBy(typeDescription).and(ElementMatchers.not(this.predefinedMethodSignatures)));
    }

    public InliningImplementationMatcher(LatentMatcher<? super MethodDescription> latentMatcher, ElementMatcher<? super MethodDescription> elementMatcher) {
        this.ignoredMethods = latentMatcher;
        this.predefinedMethodSignatures = elementMatcher;
    }

    /* renamed from: of */
    public static LatentMatcher<MethodDescription> m15109of(LatentMatcher<? super MethodDescription> latentMatcher, TypeDescription typeDescription) {
        ElementMatcher.Junction named;
        ElementMatcher.Junction none = ElementMatchers.none();
        for (MethodDescription methodDescription : typeDescription.getDeclaredMethods()) {
            if (methodDescription.isConstructor()) {
                named = ElementMatchers.isConstructor();
            } else {
                named = ElementMatchers.named(methodDescription.getName());
            }
            none = none.mo14830or(named.and(ElementMatchers.returns(methodDescription.getReturnType().asErasure())).and(ElementMatchers.takesArguments(methodDescription.getParameters().asTypeList().asErasures())));
        }
        return new InliningImplementationMatcher(latentMatcher, none);
    }
}
