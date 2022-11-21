package net.bytebuddy.implementation.bytecode;

import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
/* loaded from: classes.dex */
public enum ShiftLeft implements StackManipulation {
    INTEGER(120, StackSize.SINGLE),
    LONG(121, StackSize.DOUBLE);
    
    private final int opcode;
    private final StackSize stackSize;

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return this.stackSize.toDecreasingSize();
    }

    ShiftLeft(int i, StackSize stackSize) {
        this.opcode = i;
        this.stackSize = stackSize;
    }
}
