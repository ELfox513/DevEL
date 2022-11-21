package net.bytebuddy.implementation.bytecode.assign.primitive;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class PrimitiveTypeAwareAssigner implements Assigner {
    private final Assigner referenceTypeAwareAssigner;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.referenceTypeAwareAssigner.equals(((PrimitiveTypeAwareAssigner) obj).referenceTypeAwareAssigner);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.referenceTypeAwareAssigner.hashCode();
    }

    public PrimitiveTypeAwareAssigner(Assigner assigner) {
        this.referenceTypeAwareAssigner = assigner;
    }

    @Override // net.bytebuddy.implementation.bytecode.assign.Assigner
    public StackManipulation assign(TypeDescription.Generic generic, TypeDescription.Generic generic2, Assigner.Typing typing) {
        if (generic.isPrimitive() && generic2.isPrimitive()) {
            return PrimitiveWideningDelegate.forPrimitive(generic).widenTo(generic2);
        }
        if (generic.isPrimitive()) {
            return PrimitiveBoxingDelegate.forPrimitive(generic).assignBoxedTo(generic2, this.referenceTypeAwareAssigner, typing);
        }
        if (generic2.isPrimitive()) {
            return PrimitiveUnboxingDelegate.forReferenceType(generic).assignUnboxedTo(generic2, this.referenceTypeAwareAssigner, typing);
        }
        return this.referenceTypeAwareAssigner.assign(generic, generic2, typing);
    }
}
