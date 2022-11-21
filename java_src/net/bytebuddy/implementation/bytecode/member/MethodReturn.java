package net.bytebuddy.implementation.bytecode.member;

import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.MethodVisitor;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum INTEGER uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class MethodReturn implements StackManipulation {
    private static final /* synthetic */ MethodReturn[] $VALUES;
    public static final MethodReturn DOUBLE;
    public static final MethodReturn FLOAT;
    public static final MethodReturn INTEGER;
    public static final MethodReturn LONG;
    public static final MethodReturn REFERENCE;
    public static final MethodReturn VOID;
    private final int returnOpcode;
    private final StackManipulation.Size size;

    public static MethodReturn valueOf(String str) {
        return (MethodReturn) Enum.valueOf(MethodReturn.class, str);
    }

    public static MethodReturn[] values() {
        return (MethodReturn[]) $VALUES.clone();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    static {
        StackSize stackSize = StackSize.SINGLE;
        MethodReturn methodReturn = new MethodReturn("INTEGER", 0, 172, stackSize);
        INTEGER = methodReturn;
        StackSize stackSize2 = StackSize.DOUBLE;
        MethodReturn methodReturn2 = new MethodReturn("DOUBLE", 1, 175, stackSize2);
        DOUBLE = methodReturn2;
        MethodReturn methodReturn3 = new MethodReturn("FLOAT", 2, 174, stackSize);
        FLOAT = methodReturn3;
        MethodReturn methodReturn4 = new MethodReturn("LONG", 3, 173, stackSize2);
        LONG = methodReturn4;
        MethodReturn methodReturn5 = new MethodReturn("VOID", 4, 177, StackSize.ZERO);
        VOID = methodReturn5;
        MethodReturn methodReturn6 = new MethodReturn("REFERENCE", 5, 176, stackSize);
        REFERENCE = methodReturn6;
        $VALUES = new MethodReturn[]{methodReturn, methodReturn2, methodReturn3, methodReturn4, methodReturn5, methodReturn6};
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.returnOpcode);
        return this.size;
    }

    private MethodReturn(String str, int i, int i2, StackSize stackSize) {
        this.returnOpcode = i2;
        this.size = stackSize.toDecreasingSize();
    }

    /* renamed from: of */
    public static StackManipulation m14940of(TypeDefinition typeDefinition) {
        if (typeDefinition.isPrimitive()) {
            if (typeDefinition.represents(Long.TYPE)) {
                return LONG;
            }
            if (typeDefinition.represents(Double.TYPE)) {
                return DOUBLE;
            }
            if (typeDefinition.represents(Float.TYPE)) {
                return FLOAT;
            }
            if (typeDefinition.represents(Void.TYPE)) {
                return VOID;
            }
            return INTEGER;
        }
        return REFERENCE;
    }
}
