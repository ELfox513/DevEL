package net.bytebuddy.implementation.bytecode.member;

import java.util.ArrayList;
import java.util.Iterator;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
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
public final class MethodVariableAccess {
    private static final /* synthetic */ MethodVariableAccess[] $VALUES;
    public static final MethodVariableAccess DOUBLE;
    public static final MethodVariableAccess FLOAT;
    public static final MethodVariableAccess INTEGER;
    public static final MethodVariableAccess LONG;
    public static final MethodVariableAccess REFERENCE;
    private static /* synthetic */ StackManipulation loadThis;
    private final int loadOpcode;
    private final StackSize size;
    private final int storeOpcode;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class MethodLoading extends StackManipulation.AbstractBase {
        private final MethodDescription methodDescription;
        private final TypeCastingHandler typeCastingHandler;

        /* loaded from: classes.dex */
        public interface TypeCastingHandler {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForBridgeTarget implements TypeCastingHandler {
                private final MethodDescription bridgeTarget;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.bridgeTarget.equals(((ForBridgeTarget) obj).bridgeTarget);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.bridgeTarget.hashCode();
                }

                @Override // net.bytebuddy.implementation.bytecode.member.MethodVariableAccess.MethodLoading.TypeCastingHandler
                public StackManipulation ofIndex(TypeDescription typeDescription, int i) {
                    TypeDescription asErasure = ((ParameterDescription) this.bridgeTarget.getParameters().get(i)).getType().asErasure();
                    if (typeDescription.equals(asErasure)) {
                        return StackManipulation.Trivial.INSTANCE;
                    }
                    return TypeCasting.m14971to(asErasure);
                }

                public ForBridgeTarget(MethodDescription methodDescription) {
                    this.bridgeTarget = methodDescription;
                }
            }

            /* loaded from: classes.dex */
            public enum NoOp implements TypeCastingHandler {
                INSTANCE;

                @Override // net.bytebuddy.implementation.bytecode.member.MethodVariableAccess.MethodLoading.TypeCastingHandler
                public StackManipulation ofIndex(TypeDescription typeDescription, int i) {
                    return StackManipulation.Trivial.INSTANCE;
                }
            }

            StackManipulation ofIndex(TypeDescription typeDescription, int i);
        }

        public MethodLoading asBridgeOf(MethodDescription methodDescription) {
            return new MethodLoading(this.methodDescription, new TypeCastingHandler.ForBridgeTarget(methodDescription));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                MethodLoading methodLoading = (MethodLoading) obj;
                return this.methodDescription.equals(methodLoading.methodDescription) && this.typeCastingHandler.equals(methodLoading.typeCastingHandler);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.typeCastingHandler.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = this.methodDescription.getParameters().iterator();
            while (it.hasNext()) {
                ParameterDescription parameterDescription = (ParameterDescription) it.next();
                TypeDescription asErasure = parameterDescription.getType().asErasure();
                arrayList.add(MethodVariableAccess.m14936of(asErasure).loadFrom(parameterDescription.getOffset()));
                arrayList.add(this.typeCastingHandler.ofIndex(asErasure, parameterDescription.getIndex()));
            }
            return new StackManipulation.Compound(arrayList).apply(methodVisitor, context);
        }

        public StackManipulation prependThisReference() {
            if (this.methodDescription.isStatic()) {
                return this;
            }
            return new StackManipulation.Compound(MethodVariableAccess.loadThis(), this);
        }

        public MethodLoading(MethodDescription methodDescription, TypeCastingHandler typeCastingHandler) {
            this.methodDescription = methodDescription;
            this.typeCastingHandler = typeCastingHandler;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class OffsetIncrementing extends StackManipulation.AbstractBase {
        private final int offset;
        private final int value;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                OffsetIncrementing offsetIncrementing = (OffsetIncrementing) obj;
                return this.offset == offsetIncrementing.offset && this.value == offsetIncrementing.value;
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.offset) * 31) + this.value;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitIincInsn(this.offset, this.value);
            return StackManipulation.Size.ZERO;
        }

        public OffsetIncrementing(int i, int i2) {
            this.offset = i;
            this.value = i2;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class OffsetLoading extends StackManipulation.AbstractBase {
        private final int offset;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                OffsetLoading offsetLoading = (OffsetLoading) obj;
                return this.offset == offsetLoading.offset && MethodVariableAccess.this.equals(MethodVariableAccess.this);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.offset) * 31) + MethodVariableAccess.this.hashCode();
        }

        public OffsetLoading(int i) {
            this.offset = i;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitVarInsn(MethodVariableAccess.this.loadOpcode, this.offset);
            return MethodVariableAccess.this.size.toIncreasingSize();
        }
    }

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class OffsetWriting extends StackManipulation.AbstractBase {
        private final int offset;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                OffsetWriting offsetWriting = (OffsetWriting) obj;
                return this.offset == offsetWriting.offset && MethodVariableAccess.this.equals(MethodVariableAccess.this);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.offset) * 31) + MethodVariableAccess.this.hashCode();
        }

        public OffsetWriting(int i) {
            this.offset = i;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            methodVisitor.visitVarInsn(MethodVariableAccess.this.storeOpcode, this.offset);
            return MethodVariableAccess.this.size.toDecreasingSize();
        }
    }

    public static MethodLoading allArgumentsOf(MethodDescription methodDescription) {
        return new MethodLoading(methodDescription, MethodLoading.TypeCastingHandler.NoOp.INSTANCE);
    }

    public static StackManipulation load(ParameterDescription parameterDescription) {
        return m14936of(parameterDescription.getType()).loadFrom(parameterDescription.getOffset());
    }

    @CachedReturnPlugin.Enhance("loadThis")
    public static StackManipulation loadThis() {
        StackManipulation loadFrom = loadThis != null ? null : REFERENCE.loadFrom(0);
        if (loadFrom == null) {
            return loadThis;
        }
        loadThis = loadFrom;
        return loadFrom;
    }

    public static StackManipulation store(ParameterDescription parameterDescription) {
        return m14936of(parameterDescription.getType()).storeAt(parameterDescription.getOffset());
    }

    public static MethodVariableAccess valueOf(String str) {
        return (MethodVariableAccess) Enum.valueOf(MethodVariableAccess.class, str);
    }

    public static MethodVariableAccess[] values() {
        return (MethodVariableAccess[]) $VALUES.clone();
    }

    public StackManipulation increment(int i, int i2) {
        if (this == INTEGER) {
            return new OffsetIncrementing(i, i2);
        }
        throw new IllegalStateException("Cannot increment type: " + this);
    }

    public StackManipulation loadFrom(int i) {
        return new OffsetLoading(i);
    }

    public StackManipulation storeAt(int i) {
        return new OffsetWriting(i);
    }

    static {
        StackSize stackSize = StackSize.SINGLE;
        MethodVariableAccess methodVariableAccess = new MethodVariableAccess("INTEGER", 0, 21, 54, stackSize);
        INTEGER = methodVariableAccess;
        StackSize stackSize2 = StackSize.DOUBLE;
        MethodVariableAccess methodVariableAccess2 = new MethodVariableAccess("LONG", 1, 22, 55, stackSize2);
        LONG = methodVariableAccess2;
        MethodVariableAccess methodVariableAccess3 = new MethodVariableAccess("FLOAT", 2, 23, 56, stackSize);
        FLOAT = methodVariableAccess3;
        MethodVariableAccess methodVariableAccess4 = new MethodVariableAccess("DOUBLE", 3, 24, 57, stackSize2);
        DOUBLE = methodVariableAccess4;
        MethodVariableAccess methodVariableAccess5 = new MethodVariableAccess("REFERENCE", 4, 25, 58, stackSize);
        REFERENCE = methodVariableAccess5;
        $VALUES = new MethodVariableAccess[]{methodVariableAccess, methodVariableAccess2, methodVariableAccess3, methodVariableAccess4, methodVariableAccess5};
    }

    private MethodVariableAccess(String str, int i, int i2, int i3, StackSize stackSize) {
        this.loadOpcode = i2;
        this.size = stackSize;
        this.storeOpcode = i3;
    }

    /* renamed from: of */
    public static MethodVariableAccess m14936of(TypeDefinition typeDefinition) {
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
            if (!typeDefinition.represents(Void.TYPE)) {
                return INTEGER;
            }
            throw new IllegalArgumentException("Variable type cannot be void");
        }
        return REFERENCE;
    }

    public static StackManipulation increment(ParameterDescription parameterDescription, int i) {
        return m14936of(parameterDescription.getType()).increment(parameterDescription.getOffset(), i);
    }
}
