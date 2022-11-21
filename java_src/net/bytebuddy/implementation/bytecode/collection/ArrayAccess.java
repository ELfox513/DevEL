package net.bytebuddy.implementation.bytecode.collection;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum BYTE uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class ArrayAccess {
    private static final /* synthetic */ ArrayAccess[] $VALUES;
    public static final ArrayAccess BYTE;
    public static final ArrayAccess CHARACTER;
    public static final ArrayAccess DOUBLE;
    public static final ArrayAccess FLOAT;
    public static final ArrayAccess INTEGER;
    public static final ArrayAccess LONG;
    public static final ArrayAccess REFERENCE;
    public static final ArrayAccess SHORT;
    private final int loadOpcode;
    private final StackSize stackSize;
    private final int storeOpcode;

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class Loader extends StackManipulation.AbstractBase {
        public Loader() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && ArrayAccess.this.equals(ArrayAccess.this);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + ArrayAccess.this.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitInsn(ArrayAccess.this.loadOpcode);
            return ArrayAccess.this.stackSize.toIncreasingSize().aggregate(new StackManipulation.Size(-2, 0));
        }
    }

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class Putter extends StackManipulation.AbstractBase {
        public Putter() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && ArrayAccess.this.equals(ArrayAccess.this);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + ArrayAccess.this.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitInsn(ArrayAccess.this.storeOpcode);
            return ArrayAccess.this.stackSize.toDecreasingSize().aggregate(new StackManipulation.Size(-2, 0));
        }
    }

    public static ArrayAccess valueOf(String str) {
        return (ArrayAccess) Enum.valueOf(ArrayAccess.class, str);
    }

    public static ArrayAccess[] values() {
        return (ArrayAccess[]) $VALUES.clone();
    }

    public StackManipulation load() {
        return new Loader();
    }

    public StackManipulation store() {
        return new Putter();
    }

    static {
        StackSize stackSize = StackSize.SINGLE;
        ArrayAccess arrayAccess = new ArrayAccess("BYTE", 0, 51, 84, stackSize);
        BYTE = arrayAccess;
        ArrayAccess arrayAccess2 = new ArrayAccess("SHORT", 1, 53, 86, stackSize);
        SHORT = arrayAccess2;
        ArrayAccess arrayAccess3 = new ArrayAccess("CHARACTER", 2, 52, 85, stackSize);
        CHARACTER = arrayAccess3;
        ArrayAccess arrayAccess4 = new ArrayAccess("INTEGER", 3, 46, 79, stackSize);
        INTEGER = arrayAccess4;
        StackSize stackSize2 = StackSize.DOUBLE;
        ArrayAccess arrayAccess5 = new ArrayAccess("LONG", 4, 47, 80, stackSize2);
        LONG = arrayAccess5;
        ArrayAccess arrayAccess6 = new ArrayAccess("FLOAT", 5, 48, 81, stackSize);
        FLOAT = arrayAccess6;
        ArrayAccess arrayAccess7 = new ArrayAccess("DOUBLE", 6, 49, 82, stackSize2);
        DOUBLE = arrayAccess7;
        ArrayAccess arrayAccess8 = new ArrayAccess("REFERENCE", 7, 50, 83, stackSize);
        REFERENCE = arrayAccess8;
        $VALUES = new ArrayAccess[]{arrayAccess, arrayAccess2, arrayAccess3, arrayAccess4, arrayAccess5, arrayAccess6, arrayAccess7, arrayAccess8};
    }

    public StackManipulation forEach(List<? extends StackManipulation> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<? extends StackManipulation> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            arrayList.add(new StackManipulation.Compound(Duplication.SINGLE, IntegerConstant.forValue(i), new Loader(), it.next()));
            i++;
        }
        return new StackManipulation.Compound(arrayList);
    }

    private ArrayAccess(String str, int i, int i2, int i3, StackSize stackSize) {
        this.loadOpcode = i2;
        this.storeOpcode = i3;
        this.stackSize = stackSize;
    }

    /* renamed from: of */
    public static ArrayAccess m14962of(TypeDefinition typeDefinition) {
        if (!typeDefinition.isPrimitive()) {
            return REFERENCE;
        }
        if (!typeDefinition.represents(Boolean.TYPE) && !typeDefinition.represents(Byte.TYPE)) {
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
            throw new IllegalArgumentException("Not a legal array type: " + typeDefinition);
        }
        return BYTE;
    }
}
