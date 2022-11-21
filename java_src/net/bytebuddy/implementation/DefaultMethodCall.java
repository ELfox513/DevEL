package net.bytebuddy.implementation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class DefaultMethodCall implements Implementation {
    private final List<TypeDescription> prioritizedInterfaces;

    public static Implementation prioritize(Class<?>... clsArr) {
        return prioritize((Collection<? extends TypeDescription>) new TypeList.ForLoadedTypes(clsArr));
    }

    public static Implementation unambiguousOnly() {
        return new DefaultMethodCall(Collections.emptyList());
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        return new Appender(target, filterRelevant(target.getInstrumentedType()));
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.prioritizedInterfaces.equals(((DefaultMethodCall) obj).prioritizedInterfaces);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.prioritizedInterfaces.hashCode();
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return instrumentedType;
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Appender implements ByteCodeAppender {
        private final Implementation.Target implementationTarget;
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
        private final Set<TypeDescription> nonPrioritizedInterfaces;
        private final List<TypeDescription> prioritizedInterfaces;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.implementationTarget.equals(appender.implementationTarget) && this.prioritizedInterfaces.equals(appender.prioritizedInterfaces);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.implementationTarget.hashCode()) * 31) + this.prioritizedInterfaces.hashCode();
        }

        public Appender(Implementation.Target target, List<TypeDescription> list) {
            this.implementationTarget = target;
            this.prioritizedInterfaces = list;
            HashSet hashSet = new HashSet(target.getInstrumentedType().getInterfaces().asErasures());
            this.nonPrioritizedInterfaces = hashSet;
            hashSet.removeAll(list);
        }

        private StackManipulation locateDefault(MethodDescription methodDescription) {
            MethodDescription.SignatureToken asSignatureToken = methodDescription.asSignatureToken();
            Implementation.SpecialMethodInvocation specialMethodInvocation = Implementation.SpecialMethodInvocation.Illegal.INSTANCE;
            for (TypeDescription typeDescription : this.prioritizedInterfaces) {
                specialMethodInvocation = this.implementationTarget.invokeDefault(asSignatureToken, typeDescription).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                if (specialMethodInvocation.isValid()) {
                    return specialMethodInvocation;
                }
            }
            for (TypeDescription typeDescription2 : this.nonPrioritizedInterfaces) {
                Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = this.implementationTarget.invokeDefault(asSignatureToken, typeDescription2).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                if (specialMethodInvocation.isValid() && withCheckedCompatibilityTo.isValid()) {
                    throw new IllegalStateException(methodDescription + " has an ambiguous default method with " + withCheckedCompatibilityTo.getMethodDescription() + " and " + specialMethodInvocation.getMethodDescription());
                }
                specialMethodInvocation = withCheckedCompatibilityTo;
            }
            return specialMethodInvocation;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            StackManipulation locateDefault = locateDefault(methodDescription);
            if (locateDefault.isValid()) {
                return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.allArgumentsOf(methodDescription).prependThisReference(), locateDefault, MethodReturn.m14940of(methodDescription.getReturnType())).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
            }
            throw new IllegalStateException("Cannot invoke default method on " + methodDescription);
        }
    }

    private List<TypeDescription> filterRelevant(TypeDescription typeDescription) {
        ArrayList arrayList = new ArrayList(this.prioritizedInterfaces.size());
        HashSet hashSet = new HashSet(typeDescription.getInterfaces().asErasures());
        for (TypeDescription typeDescription2 : this.prioritizedInterfaces) {
            if (hashSet.remove(typeDescription2)) {
                arrayList.add(typeDescription2);
            }
        }
        return arrayList;
    }

    public static Implementation prioritize(Iterable<? extends Class<?>> iterable) {
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls : iterable) {
            arrayList.add(cls);
        }
        return prioritize((Collection<? extends TypeDescription>) new TypeList.ForLoadedTypes(arrayList));
    }

    public DefaultMethodCall(List<TypeDescription> list) {
        this.prioritizedInterfaces = list;
    }

    public static Implementation prioritize(TypeDescription... typeDescriptionArr) {
        return prioritize((Collection<? extends TypeDescription>) Arrays.asList(typeDescriptionArr));
    }

    public static Implementation prioritize(Collection<? extends TypeDescription> collection) {
        return new DefaultMethodCall(new ArrayList(collection));
    }
}
