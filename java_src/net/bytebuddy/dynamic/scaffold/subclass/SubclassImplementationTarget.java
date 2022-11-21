package net.bytebuddy.dynamic.scaffold.subclass;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.FilterableList;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class SubclassImplementationTarget extends Implementation.Target.AbstractBase {
    public final OriginTypeResolver originTypeResolver;

    /* loaded from: classes2.dex */
    public enum OriginTypeResolver {
        SUPER_CLASS { // from class: net.bytebuddy.dynamic.scaffold.subclass.SubclassImplementationTarget.OriginTypeResolver.1
            @Override // net.bytebuddy.dynamic.scaffold.subclass.SubclassImplementationTarget.OriginTypeResolver
            @SuppressFBWarnings(justification = "Assuming super class for given instance.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public TypeDefinition identify(TypeDescription typeDescription) {
                return typeDescription.getSuperClass();
            }
        },
        LEVEL_TYPE { // from class: net.bytebuddy.dynamic.scaffold.subclass.SubclassImplementationTarget.OriginTypeResolver.2
            @Override // net.bytebuddy.dynamic.scaffold.subclass.SubclassImplementationTarget.OriginTypeResolver
            public TypeDefinition identify(TypeDescription typeDescription) {
                return typeDescription;
            }
        };

        public abstract TypeDefinition identify(TypeDescription typeDescription);
    }

    @Override // net.bytebuddy.implementation.Implementation.Target.AbstractBase
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.originTypeResolver.equals(((SubclassImplementationTarget) obj).originTypeResolver);
        }
        return false;
    }

    @Override // net.bytebuddy.implementation.Implementation.Target
    public TypeDefinition getOriginType() {
        return this.originTypeResolver.identify(this.instrumentedType);
    }

    @Override // net.bytebuddy.implementation.Implementation.Target.AbstractBase
    public int hashCode() {
        return (super.hashCode() * 31) + this.originTypeResolver.hashCode();
    }

    /* loaded from: classes2.dex */
    public enum Factory implements Implementation.Target.Factory {
        SUPER_CLASS(OriginTypeResolver.SUPER_CLASS),
        LEVEL_TYPE(OriginTypeResolver.LEVEL_TYPE);
        
        private final OriginTypeResolver originTypeResolver;

        @Override // net.bytebuddy.implementation.Implementation.Target.Factory
        public Implementation.Target make(TypeDescription typeDescription, MethodGraph.Linked linked, ClassFileVersion classFileVersion) {
            return new SubclassImplementationTarget(typeDescription, linked, Implementation.Target.AbstractBase.DefaultMethodInvocation.m15070of(classFileVersion), this.originTypeResolver);
        }

        Factory(OriginTypeResolver originTypeResolver) {
            this.originTypeResolver = originTypeResolver;
        }
    }

    private Implementation.SpecialMethodInvocation invokeConstructor(MethodDescription.SignatureToken signatureToken) {
        FilterableList filterableList;
        TypeDescription.Generic superClass = this.instrumentedType.getSuperClass();
        if (superClass == null) {
            filterableList = new MethodList.Empty();
        } else {
            filterableList = (MethodList) superClass.getDeclaredMethods().filter(ElementMatchers.hasSignature(signatureToken).and(ElementMatchers.isVisibleTo(this.instrumentedType)));
        }
        if (filterableList.size() == 1) {
            return Implementation.SpecialMethodInvocation.Simple.m15071of((MethodDescription) filterableList.getOnly(), superClass.asErasure());
        }
        return Implementation.SpecialMethodInvocation.Illegal.INSTANCE;
    }

    @SuppressFBWarnings(justification = "Assuming super class for given instance.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
    private Implementation.SpecialMethodInvocation invokeMethod(MethodDescription.SignatureToken signatureToken) {
        MethodGraph.Node locate = this.methodGraph.getSuperClassGraph().locate(signatureToken);
        if (locate.getSort().isUnique()) {
            return Implementation.SpecialMethodInvocation.Simple.m15071of(locate.getRepresentative(), this.instrumentedType.getSuperClass().asErasure());
        }
        return Implementation.SpecialMethodInvocation.Illegal.INSTANCE;
    }

    public SubclassImplementationTarget(TypeDescription typeDescription, MethodGraph.Linked linked, Implementation.Target.AbstractBase.DefaultMethodInvocation defaultMethodInvocation, OriginTypeResolver originTypeResolver) {
        super(typeDescription, linked, defaultMethodInvocation);
        this.originTypeResolver = originTypeResolver;
    }

    @Override // net.bytebuddy.implementation.Implementation.Target
    public Implementation.SpecialMethodInvocation invokeSuper(MethodDescription.SignatureToken signatureToken) {
        if (signatureToken.getName().equals(MethodDescription.CONSTRUCTOR_INTERNAL_NAME)) {
            return invokeConstructor(signatureToken);
        }
        return invokeMethod(signatureToken);
    }
}
