package net.bytebuddy.implementation.bytecode.constant;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum DoubleConstant implements StackManipulation {
    ZERO(14),
    ONE(15);
    
    private static final StackManipulation.Size SIZE = StackSize.DOUBLE.toIncreasingSize();
    private final int opcode;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ConstantPool extends StackManipulation.AbstractBase {
        private final double value;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Double.compare(this.value, ((ConstantPool) obj).value) == 0;
        }

        public int hashCode() {
            long doubleToLongBits = Double.doubleToLongBits(this.value);
            return (getClass().hashCode() * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitLdcInsn(Double.valueOf(this.value));
            return DoubleConstant.SIZE;
        }

        public ConstantPool(double d) {
            this.value = d;
        }
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    public static StackManipulation forValue(double d) {
        if (d == 0.0d) {
            return ZERO;
        }
        if (d == 1.0d) {
            return ONE;
        }
        return new ConstantPool(d);
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return SIZE;
    }

    DoubleConstant(int i) {
        this.opcode = i;
    }
}
