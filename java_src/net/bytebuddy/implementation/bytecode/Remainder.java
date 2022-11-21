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
public final class Remainder implements StackManipulation {
    private static final /* synthetic */ Remainder[] $VALUES;
    public static final Remainder DOUBLE;
    public static final Remainder FLOAT;
    public static final Remainder INTEGER;
    public static final Remainder LONG;
    private final int opcode;
    private final StackSize stackSize;

    public static Remainder valueOf(String str) {
        return (Remainder) Enum.valueOf(Remainder.class, str);
    }

    public static Remainder[] values() {
        return (Remainder[]) $VALUES.clone();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    static {
        StackSize stackSize = StackSize.SINGLE;
        Remainder remainder = new Remainder("INTEGER", 0, 112, stackSize);
        INTEGER = remainder;
        StackSize stackSize2 = StackSize.DOUBLE;
        Remainder remainder2 = new Remainder("LONG", 1, 113, stackSize2);
        LONG = remainder2;
        Remainder remainder3 = new Remainder("FLOAT", 2, 114, stackSize);
        FLOAT = remainder3;
        Remainder remainder4 = new Remainder("DOUBLE", 3, 115, stackSize2);
        DOUBLE = remainder4;
        $VALUES = new Remainder[]{remainder, remainder2, remainder3, remainder4};
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return this.stackSize.toDecreasingSize();
    }

    private Remainder(String str, int i, int i2, StackSize stackSize) {
        this.opcode = i2;
        this.stackSize = stackSize;
    }
}
