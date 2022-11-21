package net.bytebuddy.implementation.bytecode;

import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
/* loaded from: classes.dex */
public enum Removal implements StackManipulation {
    ZERO(StackSize.ZERO, 0) { // from class: net.bytebuddy.implementation.bytecode.Removal.1
        @Override // net.bytebuddy.implementation.bytecode.Removal, net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return StackManipulation.Size.ZERO;
        }
    },
    SINGLE(StackSize.SINGLE, 87),
    DOUBLE(StackSize.DOUBLE, 88);
    
    private final int opcode;
    private final StackManipulation.Size size;

    /* renamed from: net.bytebuddy.implementation.bytecode.Removal$2 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C50282 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19157a;

        static {
            int[] iArr = new int[StackSize.values().length];
            f19157a = iArr;
            try {
                iArr[StackSize.SINGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19157a[StackSize.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19157a[StackSize.ZERO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    Removal(StackSize stackSize, int i) {
        this.size = stackSize.toDecreasingSize();
        this.opcode = i;
    }

    /* renamed from: of */
    public static StackManipulation m14979of(TypeDefinition typeDefinition) {
        int i = C50282.f19157a[typeDefinition.getStackSize().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return ZERO;
                }
                throw new AssertionError();
            }
            return DOUBLE;
        }
        return SINGLE;
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return this.size;
    }
}
