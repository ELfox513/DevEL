package net.bytebuddy.implementation.bind;

import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
/* loaded from: classes.dex */
public enum MethodNameEqualityResolver implements MethodDelegationBinder.AmbiguityResolver {
    INSTANCE;

    @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.AmbiguityResolver
    public MethodDelegationBinder.AmbiguityResolver.Resolution resolve(MethodDescription methodDescription, MethodDelegationBinder.MethodBinding methodBinding, MethodDelegationBinder.MethodBinding methodBinding2) {
        boolean equals = methodBinding.getTarget().getName().equals(methodDescription.getName());
        if (methodBinding2.getTarget().getName().equals(methodDescription.getName()) ^ equals) {
            if (equals) {
                return MethodDelegationBinder.AmbiguityResolver.Resolution.LEFT;
            }
            return MethodDelegationBinder.AmbiguityResolver.Resolution.RIGHT;
        }
        return MethodDelegationBinder.AmbiguityResolver.Resolution.AMBIGUOUS;
    }
}
