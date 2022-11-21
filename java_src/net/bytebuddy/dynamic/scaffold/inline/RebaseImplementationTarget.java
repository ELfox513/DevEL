package net.bytebuddy.dynamic.scaffold.inline;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class RebaseImplementationTarget extends Implementation.Target.AbstractBase {
    private final Map<MethodDescription.SignatureToken, MethodRebaseResolver.Resolution> rebaseableMethods;

    /* loaded from: classes2.dex */
    public static class RebasedMethodInvocation extends Implementation.SpecialMethodInvocation.AbstractBase {
        private final TypeDescription instrumentedType;
        private final MethodDescription methodDescription;
        private final TypeList prependedParameters;
        private final StackManipulation stackManipulation;

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return this.stackManipulation.apply(methodVisitor, context);
        }

        @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
        public MethodDescription getMethodDescription() {
            return this.methodDescription;
        }

        @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
        public TypeDescription getTypeDescription() {
            return this.instrumentedType;
        }

        @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
        public Implementation.SpecialMethodInvocation withCheckedCompatibilityTo(MethodDescription.TypeToken typeToken) {
            if (this.methodDescription.asTypeToken().equals(new MethodDescription.TypeToken(typeToken.getReturnType(), CompoundList.m14776of((List) typeToken.getParameterTypes(), (List) this.prependedParameters)))) {
                return this;
            }
            return Implementation.SpecialMethodInvocation.Illegal.INSTANCE;
        }

        public RebasedMethodInvocation(MethodDescription methodDescription, TypeDescription typeDescription, StackManipulation stackManipulation, TypeList typeList) {
            this.methodDescription = methodDescription;
            this.instrumentedType = typeDescription;
            this.stackManipulation = stackManipulation;
            this.prependedParameters = typeList;
        }

        /* renamed from: of */
        public static Implementation.SpecialMethodInvocation m15105of(MethodDescription methodDescription, TypeDescription typeDescription, TypeList typeList) {
            StackManipulation special;
            if (methodDescription.isStatic()) {
                special = MethodInvocation.invoke(methodDescription);
            } else {
                special = MethodInvocation.invoke(methodDescription).special(typeDescription);
            }
            if (special.isValid()) {
                ArrayList arrayList = new ArrayList(typeList.size() + 1);
                Iterator<TypeDescription> it = typeList.iterator();
                while (it.hasNext()) {
                    arrayList.add(DefaultValue.m14957of(it.next()));
                }
                arrayList.add(special);
                return new RebasedMethodInvocation(methodDescription, typeDescription, new StackManipulation.Compound(arrayList), typeList);
            }
            return Implementation.SpecialMethodInvocation.Illegal.INSTANCE;
        }
    }

    /* renamed from: of */
    public static Implementation.Target m15106of(TypeDescription typeDescription, MethodGraph.Linked linked, ClassFileVersion classFileVersion, MethodRebaseResolver methodRebaseResolver) {
        return new RebaseImplementationTarget(typeDescription, linked, Implementation.Target.AbstractBase.DefaultMethodInvocation.m15070of(classFileVersion), methodRebaseResolver.asTokenMap());
    }

    @Override // net.bytebuddy.implementation.Implementation.Target.AbstractBase
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.rebaseableMethods.equals(((RebaseImplementationTarget) obj).rebaseableMethods);
        }
        return false;
    }

    @Override // net.bytebuddy.implementation.Implementation.Target.AbstractBase
    public int hashCode() {
        return (super.hashCode() * 31) + this.rebaseableMethods.hashCode();
    }

    @Override // net.bytebuddy.implementation.Implementation.Target
    public Implementation.SpecialMethodInvocation invokeSuper(MethodDescription.SignatureToken signatureToken) {
        MethodRebaseResolver.Resolution resolution = this.rebaseableMethods.get(signatureToken);
        if (resolution == null) {
            return invokeSuper(this.methodGraph.getSuperClassGraph().locate(signatureToken));
        }
        return invokeSuper(resolution);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Factory implements Implementation.Target.Factory {
        private final MethodRebaseResolver methodRebaseResolver;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.methodRebaseResolver.equals(((Factory) obj).methodRebaseResolver);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.methodRebaseResolver.hashCode();
        }

        @Override // net.bytebuddy.implementation.Implementation.Target.Factory
        public Implementation.Target make(TypeDescription typeDescription, MethodGraph.Linked linked, ClassFileVersion classFileVersion) {
            return RebaseImplementationTarget.m15106of(typeDescription, linked, classFileVersion, this.methodRebaseResolver);
        }

        public Factory(MethodRebaseResolver methodRebaseResolver) {
            this.methodRebaseResolver = methodRebaseResolver;
        }
    }

    @Override // net.bytebuddy.implementation.Implementation.Target
    public TypeDescription getOriginType() {
        return this.instrumentedType;
    }

    public RebaseImplementationTarget(TypeDescription typeDescription, MethodGraph.Linked linked, Implementation.Target.AbstractBase.DefaultMethodInvocation defaultMethodInvocation, Map<MethodDescription.SignatureToken, MethodRebaseResolver.Resolution> map) {
        super(typeDescription, linked, defaultMethodInvocation);
        this.rebaseableMethods = map;
    }

    private Implementation.SpecialMethodInvocation invokeSuper(MethodGraph.Node node) {
        TypeDescription.Generic superClass = this.instrumentedType.getSuperClass();
        return (!node.getSort().isResolved() || superClass == null) ? Implementation.SpecialMethodInvocation.Illegal.INSTANCE : Implementation.SpecialMethodInvocation.Simple.m15071of(node.getRepresentative(), superClass.asErasure());
    }

    private Implementation.SpecialMethodInvocation invokeSuper(MethodRebaseResolver.Resolution resolution) {
        if (resolution.isRebased()) {
            return RebasedMethodInvocation.m15105of(resolution.getResolvedMethod(), this.instrumentedType, resolution.getAppendedParameters());
        }
        return Implementation.SpecialMethodInvocation.Simple.m15071of(resolution.getResolvedMethod(), this.instrumentedType);
    }
}
