package net.bytebuddy.implementation.bytecode.assign.primitive;

import net.bytebuddy.ByteBuddy;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.jar.asm.MethodVisitor;
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
public final class PrimitiveBoxingDelegate {
    private static final /* synthetic */ PrimitiveBoxingDelegate[] $VALUES;
    public static final PrimitiveBoxingDelegate BOOLEAN;
    public static final PrimitiveBoxingDelegate BYTE;
    public static final PrimitiveBoxingDelegate CHARACTER;
    public static final PrimitiveBoxingDelegate DOUBLE;
    public static final PrimitiveBoxingDelegate FLOAT;
    public static final PrimitiveBoxingDelegate INTEGER;
    public static final PrimitiveBoxingDelegate LONG;
    public static final PrimitiveBoxingDelegate SHORT;
    private final String boxingMethodDescriptor;
    private final String boxingMethodName;
    private final StackManipulation.Size size;
    private final TypeDescription wrapperType;

    /* loaded from: classes.dex */
    public class BoxingStackManipulation implements StackManipulation {
        private final StackManipulation stackManipulation;

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return this.stackManipulation.isValid();
        }

        public BoxingStackManipulation(StackManipulation stackManipulation) {
            this.stackManipulation = stackManipulation;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitMethodInsn(184, PrimitiveBoxingDelegate.this.wrapperType.getInternalName(), PrimitiveBoxingDelegate.this.boxingMethodName, PrimitiveBoxingDelegate.this.boxingMethodDescriptor, false);
            return PrimitiveBoxingDelegate.this.size.aggregate(this.stackManipulation.apply(methodVisitor, context));
        }
    }

    public static PrimitiveBoxingDelegate valueOf(String str) {
        return (PrimitiveBoxingDelegate) Enum.valueOf(PrimitiveBoxingDelegate.class, str);
    }

    public static PrimitiveBoxingDelegate[] values() {
        return (PrimitiveBoxingDelegate[]) $VALUES.clone();
    }

    public StackManipulation assignBoxedTo(TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing) {
        return new BoxingStackManipulation(assigner.assign(this.wrapperType.asGenericType(), generic, typing));
    }

    static {
        StackSize stackSize = StackSize.ZERO;
        PrimitiveBoxingDelegate primitiveBoxingDelegate = new PrimitiveBoxingDelegate("BOOLEAN", 0, Boolean.class, stackSize, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(Z)Ljava/lang/Boolean;");
        BOOLEAN = primitiveBoxingDelegate;
        PrimitiveBoxingDelegate primitiveBoxingDelegate2 = new PrimitiveBoxingDelegate("BYTE", 1, Byte.class, stackSize, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(B)Ljava/lang/Byte;");
        BYTE = primitiveBoxingDelegate2;
        PrimitiveBoxingDelegate primitiveBoxingDelegate3 = new PrimitiveBoxingDelegate("SHORT", 2, Short.class, stackSize, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(S)Ljava/lang/Short;");
        SHORT = primitiveBoxingDelegate3;
        PrimitiveBoxingDelegate primitiveBoxingDelegate4 = new PrimitiveBoxingDelegate("CHARACTER", 3, Character.class, stackSize, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(C)Ljava/lang/Character;");
        CHARACTER = primitiveBoxingDelegate4;
        PrimitiveBoxingDelegate primitiveBoxingDelegate5 = new PrimitiveBoxingDelegate("INTEGER", 4, Integer.class, stackSize, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(I)Ljava/lang/Integer;");
        INTEGER = primitiveBoxingDelegate5;
        StackSize stackSize2 = StackSize.SINGLE;
        PrimitiveBoxingDelegate primitiveBoxingDelegate6 = new PrimitiveBoxingDelegate("LONG", 5, Long.class, stackSize2, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(J)Ljava/lang/Long;");
        LONG = primitiveBoxingDelegate6;
        PrimitiveBoxingDelegate primitiveBoxingDelegate7 = new PrimitiveBoxingDelegate("FLOAT", 6, Float.class, stackSize, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(F)Ljava/lang/Float;");
        FLOAT = primitiveBoxingDelegate7;
        PrimitiveBoxingDelegate primitiveBoxingDelegate8 = new PrimitiveBoxingDelegate("DOUBLE", 7, Double.class, stackSize2, ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(D)Ljava/lang/Double;");
        DOUBLE = primitiveBoxingDelegate8;
        $VALUES = new PrimitiveBoxingDelegate[]{primitiveBoxingDelegate, primitiveBoxingDelegate2, primitiveBoxingDelegate3, primitiveBoxingDelegate4, primitiveBoxingDelegate5, primitiveBoxingDelegate6, primitiveBoxingDelegate7, primitiveBoxingDelegate8};
    }

    public static PrimitiveBoxingDelegate forPrimitive(TypeDefinition typeDefinition) {
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
        throw new IllegalArgumentException("Not a non-void, primitive type: " + typeDefinition);
    }

    private PrimitiveBoxingDelegate(String str, int i, Class cls, StackSize stackSize, String str2, String str3) {
        this.wrapperType = TypeDescription.ForLoadedType.m15196of(cls);
        this.size = stackSize.toDecreasingSize();
        this.boxingMethodName = str2;
        this.boxingMethodDescriptor = str3;
    }
}
