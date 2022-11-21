package net.bytebuddy.implementation.bytecode.assign;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class InstanceCheck extends StackManipulation.AbstractBase {
    private final TypeDescription typeDescription;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((InstanceCheck) obj).typeDescription);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitTypeInsn(193, this.typeDescription.getInternalName());
        return StackManipulation.Size.ZERO;
    }

    public InstanceCheck(TypeDescription typeDescription) {
        this.typeDescription = typeDescription;
    }

    /* renamed from: of */
    public static StackManipulation m14972of(TypeDescription typeDescription) {
        if (!typeDescription.isPrimitive()) {
            return new InstanceCheck(typeDescription);
        }
        throw new IllegalArgumentException("Cannot check an instance against a primitive type: " + typeDescription);
    }
}
