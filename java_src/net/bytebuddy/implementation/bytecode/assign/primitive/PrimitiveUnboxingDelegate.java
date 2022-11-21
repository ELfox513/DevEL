package net.bytebuddy.implementation.bytecode.assign.primitive;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
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
public final class PrimitiveUnboxingDelegate implements StackManipulation {
    private static final /* synthetic */ PrimitiveUnboxingDelegate[] $VALUES;
    public static final PrimitiveUnboxingDelegate BOOLEAN;
    public static final PrimitiveUnboxingDelegate BYTE;
    public static final PrimitiveUnboxingDelegate CHARACTER;
    public static final PrimitiveUnboxingDelegate DOUBLE;
    public static final PrimitiveUnboxingDelegate FLOAT;
    public static final PrimitiveUnboxingDelegate INTEGER;
    public static final PrimitiveUnboxingDelegate LONG;
    public static final PrimitiveUnboxingDelegate SHORT;
    private final TypeDescription primitiveType;
    private final StackManipulation.Size size;
    private final String unboxingMethodDescriptor;
    private final String unboxingMethodName;
    private final TypeDescription wrapperType;

    /* loaded from: classes.dex */
    public enum ExplicitlyTypedUnboxingResponsible implements UnboxingResponsible {
        BOOLEAN(PrimitiveUnboxingDelegate.BOOLEAN),
        BYTE(PrimitiveUnboxingDelegate.BYTE),
        SHORT(PrimitiveUnboxingDelegate.SHORT),
        CHARACTER(PrimitiveUnboxingDelegate.CHARACTER),
        INTEGER(PrimitiveUnboxingDelegate.INTEGER),
        LONG(PrimitiveUnboxingDelegate.LONG),
        FLOAT(PrimitiveUnboxingDelegate.FLOAT),
        DOUBLE(PrimitiveUnboxingDelegate.DOUBLE);
        
        private final PrimitiveUnboxingDelegate primitiveUnboxingDelegate;

        @Override // net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveUnboxingDelegate.UnboxingResponsible
        public StackManipulation assignUnboxedTo(TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing) {
            PrimitiveUnboxingDelegate primitiveUnboxingDelegate = this.primitiveUnboxingDelegate;
            return new StackManipulation.Compound(primitiveUnboxingDelegate, PrimitiveWideningDelegate.forPrimitive(primitiveUnboxingDelegate.primitiveType).widenTo(generic));
        }

        ExplicitlyTypedUnboxingResponsible(PrimitiveUnboxingDelegate primitiveUnboxingDelegate) {
            this.primitiveUnboxingDelegate = primitiveUnboxingDelegate;
        }
    }

    /* loaded from: classes.dex */
    public interface UnboxingResponsible {
        StackManipulation assignUnboxedTo(TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing);
    }

    public static PrimitiveUnboxingDelegate valueOf(String str) {
        return (PrimitiveUnboxingDelegate) Enum.valueOf(PrimitiveUnboxingDelegate.class, str);
    }

    public static PrimitiveUnboxingDelegate[] values() {
        return (PrimitiveUnboxingDelegate[]) $VALUES.clone();
    }

    public TypeDescription.Generic getWrapperType() {
        return this.wrapperType.asGenericType();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return true;
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ImplicitlyTypedUnboxingResponsible implements UnboxingResponsible {
        private final TypeDescription.Generic originalType;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.originalType.equals(((ImplicitlyTypedUnboxingResponsible) obj).originalType);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.originalType.hashCode();
        }

        public ImplicitlyTypedUnboxingResponsible(TypeDescription.Generic generic) {
            this.originalType = generic;
        }

        @Override // net.bytebuddy.implementation.bytecode.assign.primitive.PrimitiveUnboxingDelegate.UnboxingResponsible
        public StackManipulation assignUnboxedTo(TypeDescription.Generic generic, Assigner assigner, Assigner.Typing typing) {
            PrimitiveUnboxingDelegate forPrimitive = PrimitiveUnboxingDelegate.forPrimitive(generic);
            return new StackManipulation.Compound(assigner.assign(this.originalType, forPrimitive.getWrapperType(), typing), forPrimitive);
        }
    }

    static {
        Class cls = Boolean.TYPE;
        StackSize stackSize = StackSize.ZERO;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate = new PrimitiveUnboxingDelegate("BOOLEAN", 0, Boolean.class, cls, stackSize, "booleanValue", "()Z");
        BOOLEAN = primitiveUnboxingDelegate;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate2 = new PrimitiveUnboxingDelegate("BYTE", 1, Byte.class, Byte.TYPE, stackSize, "byteValue", "()B");
        BYTE = primitiveUnboxingDelegate2;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate3 = new PrimitiveUnboxingDelegate("SHORT", 2, Short.class, Short.TYPE, stackSize, "shortValue", "()S");
        SHORT = primitiveUnboxingDelegate3;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate4 = new PrimitiveUnboxingDelegate("CHARACTER", 3, Character.class, Character.TYPE, stackSize, "charValue", "()C");
        CHARACTER = primitiveUnboxingDelegate4;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate5 = new PrimitiveUnboxingDelegate("INTEGER", 4, Integer.class, Integer.TYPE, stackSize, "intValue", "()I");
        INTEGER = primitiveUnboxingDelegate5;
        Class cls2 = Long.TYPE;
        StackSize stackSize2 = StackSize.SINGLE;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate6 = new PrimitiveUnboxingDelegate("LONG", 5, Long.class, cls2, stackSize2, "longValue", "()J");
        LONG = primitiveUnboxingDelegate6;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate7 = new PrimitiveUnboxingDelegate("FLOAT", 6, Float.class, Float.TYPE, stackSize, "floatValue", "()F");
        FLOAT = primitiveUnboxingDelegate7;
        PrimitiveUnboxingDelegate primitiveUnboxingDelegate8 = new PrimitiveUnboxingDelegate("DOUBLE", 7, Double.class, Double.TYPE, stackSize2, "doubleValue", "()D");
        DOUBLE = primitiveUnboxingDelegate8;
        $VALUES = new PrimitiveUnboxingDelegate[]{primitiveUnboxingDelegate, primitiveUnboxingDelegate2, primitiveUnboxingDelegate3, primitiveUnboxingDelegate4, primitiveUnboxingDelegate5, primitiveUnboxingDelegate6, primitiveUnboxingDelegate7, primitiveUnboxingDelegate8};
    }

    public static PrimitiveUnboxingDelegate forPrimitive(TypeDefinition typeDefinition) {
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
        throw new IllegalArgumentException("Expected non-void primitive type instead of " + typeDefinition);
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitMethodInsn(182, this.wrapperType.asErasure().getInternalName(), this.unboxingMethodName, this.unboxingMethodDescriptor, false);
        return this.size;
    }

    private PrimitiveUnboxingDelegate(String str, int i, Class cls, Class cls2, StackSize stackSize, String str2, String str3) {
        this.size = stackSize.toIncreasingSize();
        this.wrapperType = TypeDescription.ForLoadedType.m15196of(cls);
        this.primitiveType = TypeDescription.ForLoadedType.m15196of(cls2);
        this.unboxingMethodName = str2;
        this.unboxingMethodDescriptor = str3;
    }

    public static UnboxingResponsible forReferenceType(TypeDefinition typeDefinition) {
        if (!typeDefinition.isPrimitive()) {
            if (typeDefinition.represents(Boolean.class)) {
                return ExplicitlyTypedUnboxingResponsible.BOOLEAN;
            }
            if (typeDefinition.represents(Byte.class)) {
                return ExplicitlyTypedUnboxingResponsible.BYTE;
            }
            if (typeDefinition.represents(Short.class)) {
                return ExplicitlyTypedUnboxingResponsible.SHORT;
            }
            if (typeDefinition.represents(Character.class)) {
                return ExplicitlyTypedUnboxingResponsible.CHARACTER;
            }
            if (typeDefinition.represents(Integer.class)) {
                return ExplicitlyTypedUnboxingResponsible.INTEGER;
            }
            if (typeDefinition.represents(Long.class)) {
                return ExplicitlyTypedUnboxingResponsible.LONG;
            }
            if (typeDefinition.represents(Float.class)) {
                return ExplicitlyTypedUnboxingResponsible.FLOAT;
            }
            if (typeDefinition.represents(Double.class)) {
                return ExplicitlyTypedUnboxingResponsible.DOUBLE;
            }
            return new ImplicitlyTypedUnboxingResponsible(typeDefinition.asGenericType());
        }
        throw new IllegalArgumentException("Expected reference type instead of " + typeDefinition);
    }
}
