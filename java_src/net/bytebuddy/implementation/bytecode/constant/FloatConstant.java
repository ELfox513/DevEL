package net.bytebuddy.implementation.bytecode.constant;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum FloatConstant implements StackManipulation {
    ZERO(11),
    ONE(12),
    TWO(13);
    
    private static final StackManipulation.Size SIZE = StackSize.SINGLE.toIncreasingSize();
    private final int opcode;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ConstantPool extends StackManipulation.AbstractBase {
        private final float value;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.compare(this.value, ((ConstantPool) obj).value) == 0;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + Float.floatToIntBits(this.value);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitLdcInsn(Float.valueOf(this.value));
            return FloatConstant.SIZE;
        }

        public ConstantPool(float f) {
            this.value = f;
        }
    }

    public static StackManipulation forValue(float f) {
        if (f == 0.0f) {
            return ZERO;
        }
        if (f == 1.0f) {
            return ONE;
        }
        if (f == 2.0f) {
            return TWO;
        }
        return new ConstantPool(f);
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return SIZE;
    }

    FloatConstant(int i) {
        this.opcode = i;
    }
}
