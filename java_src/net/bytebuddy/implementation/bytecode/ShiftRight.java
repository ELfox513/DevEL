package net.bytebuddy.implementation.bytecode;

import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
/* loaded from: classes.dex */
public enum ShiftRight implements StackManipulation {
    INTEGER(122, StackSize.SINGLE, Unsigned.INTEGER),
    LONG(123, StackSize.DOUBLE, Unsigned.LONG);
    
    private final int opcode;
    private final StackSize stackSize;
    private final StackManipulation unsigned;

    /* loaded from: classes.dex */
    public enum Unsigned implements StackManipulation {
        INTEGER(124, StackSize.SINGLE),
        LONG(125, StackSize.DOUBLE);
        
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

        Unsigned(int i, StackSize stackSize) {
            this.opcode = i;
            this.stackSize = stackSize;
        }
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    public StackManipulation toUnsigned() {
        return this.unsigned;
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return this.stackSize.toDecreasingSize();
    }

    ShiftRight(int i, StackSize stackSize, StackManipulation stackManipulation) {
        this.opcode = i;
        this.stackSize = stackSize;
        this.unsigned = stackManipulation;
    }
}
