package net.bytebuddy.implementation.bytecode.assign.reference;

import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
/* loaded from: classes.dex */
public enum ReferenceTypeAwareAssigner implements Assigner {
    INSTANCE;

    @Override // net.bytebuddy.implementation.bytecode.assign.Assigner
    public StackManipulation assign(TypeDescription.Generic generic, TypeDescription.Generic generic2, Assigner.Typing typing) {
        if (!generic.isPrimitive() && !generic2.isPrimitive()) {
            if (generic.asErasure().isAssignableTo(generic2.asErasure())) {
                return StackManipulation.Trivial.INSTANCE;
            }
            if (typing.isDynamic()) {
                return TypeCasting.m14971to(generic2);
            }
            return StackManipulation.Illegal.INSTANCE;
        } else if (generic.equals(generic2)) {
            return StackManipulation.Trivial.INSTANCE;
        } else {
            return StackManipulation.Illegal.INSTANCE;
        }
    }
}
