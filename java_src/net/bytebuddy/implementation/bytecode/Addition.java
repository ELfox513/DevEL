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
public final class Addition implements StackManipulation {
    private static final /* synthetic */ Addition[] $VALUES;
    public static final Addition DOUBLE;
    public static final Addition FLOAT;
    public static final Addition INTEGER;
    public static final Addition LONG;
    private final int opcode;
    private final StackSize stackSize;

    public static Addition valueOf(String str) {
        return (Addition) Enum.valueOf(Addition.class, str);
    }

    public static Addition[] values() {
        return (Addition[]) $VALUES.clone();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    static {
        StackSize stackSize = StackSize.SINGLE;
        Addition addition = new Addition("INTEGER", 0, 96, stackSize);
        INTEGER = addition;
        StackSize stackSize2 = StackSize.DOUBLE;
        Addition addition2 = new Addition("LONG", 1, 97, stackSize2);
        LONG = addition2;
        Addition addition3 = new Addition("FLOAT", 2, 98, stackSize);
        FLOAT = addition3;
        Addition addition4 = new Addition("DOUBLE", 3, 99, stackSize2);
        DOUBLE = addition4;
        $VALUES = new Addition[]{addition, addition2, addition3, addition4};
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitInsn(this.opcode);
        return this.stackSize.toDecreasingSize();
    }

    private Addition(String str, int i, int i2, StackSize stackSize) {
        this.opcode = i2;
        this.stackSize = stackSize;
    }
}
