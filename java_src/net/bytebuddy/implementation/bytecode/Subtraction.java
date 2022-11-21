package net.bytebuddy.implementation.bytecode;

import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
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
public final class Subtraction implements StackManipulation {
    private static final /* synthetic */ Subtraction[] $VALUES;
    public static final Subtraction DOUBLE;
    public static final Subtraction FLOAT;
    public static final Subtraction INTEGER;
    public static final Subtraction LONG;
    private final int opcode;
    private final StackSize stackSize;

    public static Subtraction valueOf(String str) {
        return (Subtraction) Enum.valueOf(Subtraction.class, str);
    }

    public static Subtraction[] values() {
        return (Subtraction[]) $VALUES.clone();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    static {
        StackSize stackSize = StackSize.SINGLE;
        Subtraction subtraction = new Subtraction("INTEGER", 0, 100, stackSize);
        INTEGER = subtraction;
        StackSize stackSize2 = StackSize.DOUBLE;
        Subtraction subtraction2 = new Subtraction("LONG", 1, 101, stackSize2);
        LONG = subtraction2;
        Subtraction subtraction3 = new Subtraction("FLOAT", 2, 102, stackSize);
        FLOAT = subtraction3;
        Subtraction subtraction4 = new Subtraction("DOUBLE", 3, 103, stackSize2);
        DOUBLE = subtraction4;
        $VALUES = new Subtraction[]{subtraction, subtraction2, subtraction3, subtraction4};
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return this.stackSize.toDecreasingSize();
    }

    private Subtraction(String str, int i, int i2, StackSize stackSize) {
        this.opcode = i2;
        this.stackSize = stackSize;
    }
}
