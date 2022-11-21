package net.bytebuddy.implementation.bind;

import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
/* loaded from: classes.dex */
public enum DeclaringTypeResolver implements MethodDelegationBinder.AmbiguityResolver {
    INSTANCE;

    @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.AmbiguityResolver
    public MethodDelegationBinder.AmbiguityResolver.Resolution resolve(MethodDescription methodDescription, MethodDelegationBinder.MethodBinding methodBinding, MethodDelegationBinder.MethodBinding methodBinding2) {
        TypeDescription asErasure = methodBinding.getTarget().getDeclaringType().asErasure();
        TypeDescription asErasure2 = methodBinding2.getTarget().getDeclaringType().asErasure();
        if (asErasure.equals(asErasure2)) {
            return MethodDelegationBinder.AmbiguityResolver.Resolution.AMBIGUOUS;
        }
        if (asErasure.isAssignableFrom(asErasure2)) {
            return MethodDelegationBinder.AmbiguityResolver.Resolution.RIGHT;
        }
        if (asErasure.isAssignableTo(asErasure2)) {
            return MethodDelegationBinder.AmbiguityResolver.Resolution.LEFT;
        }
        return MethodDelegationBinder.AmbiguityResolver.Resolution.AMBIGUOUS;
    }
}
