package net.bytebuddy.implementation.bytecode.assign;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class TypeCasting extends StackManipulation.AbstractBase {
    private final TypeDescription typeDescription;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((TypeCasting) obj).typeDescription);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitTypeInsn(192, this.typeDescription.getInternalName());
        return StackSize.ZERO.toIncreasingSize();
    }

    public TypeCasting(TypeDescription typeDescription) {
        this.typeDescription = typeDescription;
    }

    /* renamed from: to */
    public static StackManipulation m14971to(TypeDefinition typeDefinition) {
        if (!typeDefinition.isPrimitive()) {
            return new TypeCasting(typeDefinition.asErasure());
        }
        throw new IllegalArgumentException("Cannot cast to primitive type: " + typeDefinition);
    }
}
