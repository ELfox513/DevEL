package net.bytebuddy.implementation.bytecode.constant;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum LongConstant implements StackManipulation {
    ZERO(9),
    ONE(10);
    
    private static final StackManipulation.Size SIZE = StackSize.DOUBLE.toIncreasingSize();
    private final int opcode;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ConstantPool extends StackManipulation.AbstractBase {
        private final long value;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.value == ((ConstantPool) obj).value;
        }

        public int hashCode() {
            long j = this.value;
            return (getClass().hashCode() * 31) + ((int) (j ^ (j >>> 32)));
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitLdcInsn(Long.valueOf(this.value));
            return LongConstant.SIZE;
        }

        public ConstantPool(long j) {
            this.value = j;
        }
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    public static StackManipulation forValue(long j) {
        if (j == 0) {
            return ZERO;
        }
        if (j == 1) {
            return ONE;
        }
        return new ConstantPool(j);
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return SIZE;
    }

    LongConstant(int i) {
        this.opcode = i;
    }
}
