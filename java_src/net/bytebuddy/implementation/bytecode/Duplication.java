package net.bytebuddy.implementation.bytecode;

import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
/* loaded from: classes.dex */
public enum Duplication implements StackManipulation {
    ZERO(StackSize.ZERO, 0) { // from class: net.bytebuddy.implementation.bytecode.Duplication.1
        @Override // net.bytebuddy.implementation.bytecode.Duplication, net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return this.size;
        }

        @Override // net.bytebuddy.implementation.bytecode.Duplication
        public StackManipulation flipOver(TypeDefinition typeDefinition) {
            throw new IllegalStateException("Cannot flip zero value");
        }
    },
    SINGLE(StackSize.SINGLE, 89) { // from class: net.bytebuddy.implementation.bytecode.Duplication.2
        @Override // net.bytebuddy.implementation.bytecode.Duplication
        public StackManipulation flipOver(TypeDefinition typeDefinition) {
            int i = C50264.f19156a[typeDefinition.getStackSize().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return WithFlip.SINGLE_DOUBLE;
                }
                throw new IllegalArgumentException("Cannot flip: " + typeDefinition);
            }
            return WithFlip.SINGLE_SINGLE;
        }
    },
    DOUBLE(StackSize.DOUBLE, 92) { // from class: net.bytebuddy.implementation.bytecode.Duplication.3
        @Override // net.bytebuddy.implementation.bytecode.Duplication
        public StackManipulation flipOver(TypeDefinition typeDefinition) {
            int i = C50264.f19156a[typeDefinition.getStackSize().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return WithFlip.DOUBLE_DOUBLE;
                }
                throw new IllegalArgumentException("Cannot flip: " + typeDefinition);
            }
            return WithFlip.DOUBLE_SINGLE;
        }
    };
    
    private final int opcode;
    public final StackManipulation.Size size;

    /* renamed from: net.bytebuddy.implementation.bytecode.Duplication$4 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C50264 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19156a;

        static {
            int[] iArr = new int[StackSize.values().length];
            f19156a = iArr;
            try {
                iArr[StackSize.SINGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19156a[StackSize.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19156a[StackSize.ZERO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum SINGLE_SINGLE uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes.dex */
    public static final class WithFlip implements StackManipulation {
        private static final /* synthetic */ WithFlip[] $VALUES;
        public static final WithFlip DOUBLE_DOUBLE;
        public static final WithFlip DOUBLE_SINGLE;
        public static final WithFlip SINGLE_DOUBLE;
        public static final WithFlip SINGLE_SINGLE;
        private final int opcode;
        private final StackSize stackSize;

        public static WithFlip valueOf(String str) {
            return (WithFlip) Enum.valueOf(WithFlip.class, str);
        }

        public static WithFlip[] values() {
            return (WithFlip[]) $VALUES.clone();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return true;
        }

        static {
            StackSize stackSize = StackSize.SINGLE;
            WithFlip withFlip = new WithFlip("SINGLE_SINGLE", 0, 90, stackSize);
            SINGLE_SINGLE = withFlip;
            WithFlip withFlip2 = new WithFlip("SINGLE_DOUBLE", 1, 91, stackSize);
            SINGLE_DOUBLE = withFlip2;
            StackSize stackSize2 = StackSize.DOUBLE;
            WithFlip withFlip3 = new WithFlip("DOUBLE_SINGLE", 2, 93, stackSize2);
            DOUBLE_SINGLE = withFlip3;
            WithFlip withFlip4 = new WithFlip("DOUBLE_DOUBLE", 3, 94, stackSize2);
            DOUBLE_DOUBLE = withFlip4;
            $VALUES = new WithFlip[]{withFlip, withFlip2, withFlip3, withFlip4};
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitInsn(this.opcode);
            return this.stackSize.toIncreasingSize();
        }

        private WithFlip(String str, int i, int i2, StackSize stackSize) {
            this.opcode = i2;
            this.stackSize = stackSize;
        }
    }

    public abstract StackManipulation flipOver(TypeDefinition typeDefinition);

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    Duplication(StackSize stackSize, int i) {
        this.size = stackSize.toIncreasingSize();
        this.opcode = i;
    }

    /* renamed from: of */
    public static Duplication m14980of(TypeDefinition typeDefinition) {
        int i = C50264.f19156a[typeDefinition.getStackSize().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return ZERO;
                }
                throw new AssertionError("Unexpected type: " + typeDefinition);
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
