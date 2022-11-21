package net.bytebuddy.implementation.bytecode.constant;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum IntegerConstant implements StackManipulation {
    MINUS_ONE(2),
    ZERO(3),
    ONE(4),
    TWO(5),
    THREE(6),
    FOUR(7),
    FIVE(8);
    
    private static final StackManipulation.Size SIZE = StackSize.SINGLE.toIncreasingSize();
    private final int opcode;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ConstantPool extends StackManipulation.AbstractBase {
        private final int value;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.value == ((ConstantPool) obj).value;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.value;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitLdcInsn(Integer.valueOf(this.value));
            return IntegerConstant.SIZE;
        }

        public ConstantPool(int i) {
            this.value = i;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class SingleBytePush extends StackManipulation.AbstractBase {
        private final byte value;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.value == ((SingleBytePush) obj).value;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.value;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitIntInsn(16, this.value);
            return IntegerConstant.SIZE;
        }

        public SingleBytePush(byte b) {
            this.value = b;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class TwoBytePush extends StackManipulation.AbstractBase {
        private final short value;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.value == ((TwoBytePush) obj).value;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.value;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitIntInsn(17, this.value);
            return IntegerConstant.SIZE;
        }

        public TwoBytePush(short s) {
            this.value = s;
        }
    }

    public static StackManipulation forValue(boolean z) {
        return z ? ONE : ZERO;
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    public static StackManipulation forValue(int i) {
        switch (i) {
            case -1:
                return MINUS_ONE;
            case 0:
                return ZERO;
            case 1:
                return ONE;
            case 2:
                return TWO;
            case 3:
                return THREE;
            case 4:
                return FOUR;
            case 5:
                return FIVE;
            default:
                if (i < -128 || i > 127) {
                    if (i >= -32768 && i <= 32767) {
                        return new TwoBytePush((short) i);
                    }
                    return new ConstantPool(i);
                }
                return new SingleBytePush((byte) i);
        }
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return SIZE;
    }

    IntegerConstant(int i) {
        this.opcode = i;
    }
}
