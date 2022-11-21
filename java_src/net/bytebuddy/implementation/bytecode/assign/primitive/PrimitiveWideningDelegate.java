package net.bytebuddy.implementation.bytecode.assign.primitive;

import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum BOOLEAN uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class PrimitiveWideningDelegate {
    private static final /* synthetic */ PrimitiveWideningDelegate[] $VALUES;
    public static final PrimitiveWideningDelegate BOOLEAN;
    public static final PrimitiveWideningDelegate BYTE;
    public static final PrimitiveWideningDelegate CHARACTER;
    public static final PrimitiveWideningDelegate DOUBLE;
    public static final PrimitiveWideningDelegate FLOAT;
    public static final PrimitiveWideningDelegate INTEGER;
    public static final PrimitiveWideningDelegate LONG;
    public static final PrimitiveWideningDelegate SHORT;
    private final StackManipulation toBooleanStackManipulation;
    private final StackManipulation toByteStackManipulation;
    private final StackManipulation toCharacterStackManipulation;
    private final StackManipulation toDoubleStackManipulation;
    private final StackManipulation toFloatStackManipulation;
    private final StackManipulation toIntegerStackManipulation;
    private final StackManipulation toLongStackManipulation;
    private final StackManipulation toShortStackManipulation;

    public static PrimitiveWideningDelegate valueOf(String str) {
        return (PrimitiveWideningDelegate) Enum.valueOf(PrimitiveWideningDelegate.class, str);
    }

    public static PrimitiveWideningDelegate[] values() {
        return (PrimitiveWideningDelegate[]) $VALUES.clone();
    }

    static {
        StackManipulation.Trivial trivial = StackManipulation.Trivial.INSTANCE;
        StackManipulation.Illegal illegal = StackManipulation.Illegal.INSTANCE;
        PrimitiveWideningDelegate primitiveWideningDelegate = new PrimitiveWideningDelegate("BOOLEAN", 0, trivial, illegal, illegal, illegal, illegal, illegal, illegal, illegal);
        BOOLEAN = primitiveWideningDelegate;
        StackSize stackSize = StackSize.SINGLE;
        StackManipulation.AbstractBase abstractBase = new StackManipulation.AbstractBase(133, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        };
        StackSize stackSize2 = StackSize.ZERO;
        PrimitiveWideningDelegate primitiveWideningDelegate2 = new PrimitiveWideningDelegate("BYTE", 1, illegal, trivial, trivial, illegal, trivial, abstractBase, new StackManipulation.AbstractBase(134, stackSize2.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(133, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        });
        BYTE = primitiveWideningDelegate2;
        PrimitiveWideningDelegate primitiveWideningDelegate3 = new PrimitiveWideningDelegate("SHORT", 2, illegal, illegal, trivial, illegal, trivial, new StackManipulation.AbstractBase(133, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(134, stackSize2.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(135, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        });
        SHORT = primitiveWideningDelegate3;
        PrimitiveWideningDelegate primitiveWideningDelegate4 = new PrimitiveWideningDelegate("CHARACTER", 3, illegal, illegal, illegal, trivial, trivial, new StackManipulation.AbstractBase(133, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(134, stackSize2.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(135, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        });
        CHARACTER = primitiveWideningDelegate4;
        PrimitiveWideningDelegate primitiveWideningDelegate5 = new PrimitiveWideningDelegate("INTEGER", 4, illegal, illegal, illegal, illegal, trivial, new StackManipulation.AbstractBase(133, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(134, stackSize2.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(135, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        });
        INTEGER = primitiveWideningDelegate5;
        PrimitiveWideningDelegate primitiveWideningDelegate6 = new PrimitiveWideningDelegate("LONG", 5, illegal, illegal, illegal, illegal, illegal, trivial, new StackManipulation.AbstractBase(137, stackSize.toDecreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        }, new StackManipulation.AbstractBase(138, stackSize2.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        });
        LONG = primitiveWideningDelegate6;
        PrimitiveWideningDelegate primitiveWideningDelegate7 = new PrimitiveWideningDelegate("FLOAT", 6, illegal, illegal, illegal, illegal, illegal, illegal, trivial, new StackManipulation.AbstractBase(141, stackSize.toIncreasingSize()) { // from class: net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveWideningDelegate.WideningStackManipulation
            private final int conversionOpcode;
            private final StackManipulation.Size size;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    WideningStackManipulation wideningStackManipulation = (WideningStackManipulation) obj;
                    return this.conversionOpcode == wideningStackManipulation.conversionOpcode && this.size.equals(wideningStackManipulation.size);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.conversionOpcode) * 31) + this.size.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(this.conversionOpcode);
                return this.size;
            }

            {
                this.conversionOpcode = r1;
                this.size = r2;
            }
        });
        FLOAT = primitiveWideningDelegate7;
        PrimitiveWideningDelegate primitiveWideningDelegate8 = new PrimitiveWideningDelegate("DOUBLE", 7, illegal, illegal, illegal, illegal, illegal, illegal, illegal, trivial);
        DOUBLE = primitiveWideningDelegate8;
        $VALUES = new PrimitiveWideningDelegate[]{primitiveWideningDelegate, primitiveWideningDelegate2, primitiveWideningDelegate3, primitiveWideningDelegate4, primitiveWideningDelegate5, primitiveWideningDelegate6, primitiveWideningDelegate7, primitiveWideningDelegate8};
    }

    public static PrimitiveWideningDelegate forPrimitive(TypeDefinition typeDefinition) {
        if (typeDefinition.represents(Boolean.TYPE)) {
            return BOOLEAN;
        }
        if (typeDefinition.represents(Byte.TYPE)) {
            return BYTE;
        }
        if (typeDefinition.represents(Short.TYPE)) {
            return SHORT;
        }
        if (typeDefinition.represents(Character.TYPE)) {
            return CHARACTER;
        }
        if (typeDefinition.represents(Integer.TYPE)) {
            return INTEGER;
        }
        if (typeDefinition.represents(Long.TYPE)) {
            return LONG;
        }
        if (typeDefinition.represents(Float.TYPE)) {
            return FLOAT;
        }
        if (typeDefinition.represents(Double.TYPE)) {
            return DOUBLE;
        }
        throw new IllegalArgumentException("Not a primitive, non-void type: " + typeDefinition);
    }

    public StackManipulation widenTo(TypeDefinition typeDefinition) {
        if (typeDefinition.represents(Boolean.TYPE)) {
            return this.toBooleanStackManipulation;
        }
        if (typeDefinition.represents(Byte.TYPE)) {
            return this.toByteStackManipulation;
        }
        if (typeDefinition.represents(Short.TYPE)) {
            return this.toShortStackManipulation;
        }
        if (typeDefinition.represents(Character.TYPE)) {
            return this.toCharacterStackManipulation;
        }
        if (typeDefinition.represents(Integer.TYPE)) {
            return this.toIntegerStackManipulation;
        }
        if (typeDefinition.represents(Long.TYPE)) {
            return this.toLongStackManipulation;
        }
        if (typeDefinition.represents(Float.TYPE)) {
            return this.toFloatStackManipulation;
        }
        if (typeDefinition.represents(Double.TYPE)) {
            return this.toDoubleStackManipulation;
        }
        throw new IllegalArgumentException("Not a primitive non-void type: " + typeDefinition);
    }

    private PrimitiveWideningDelegate(String str, int i, StackManipulation stackManipulation, StackManipulation stackManipulation2, StackManipulation stackManipulation3, StackManipulation stackManipulation4, StackManipulation stackManipulation5, StackManipulation stackManipulation6, StackManipulation stackManipulation7, StackManipulation stackManipulation8) {
        this.toBooleanStackManipulation = stackManipulation;
        this.toByteStackManipulation = stackManipulation2;
        this.toShortStackManipulation = stackManipulation3;
        this.toCharacterStackManipulation = stackManipulation4;
        this.toIntegerStackManipulation = stackManipulation5;
        this.toLongStackManipulation = stackManipulation6;
        this.toFloatStackManipulation = stackManipulation7;
        this.toDoubleStackManipulation = stackManipulation8;
    }
}
