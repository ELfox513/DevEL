package net.bytebuddy.implementation.bytecode.member;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum FieldAccess {
    STATIC(179, 178, StackSize.ZERO),
    INSTANCE(181, 180, StackSize.SINGLE);
    
    private final int getterOpcode;
    private final int putterOpcode;
    private final int targetSizeChange;

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class AccessDispatcher implements Defined {
        private final FieldDescription.InDefinedShape fieldDescription;

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class FieldPutInstruction extends AbstractFieldInstruction {
            public FieldPutInstruction() {
                super();
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && AccessDispatcher.this.equals(AccessDispatcher.this);
            }

            @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.AccessDispatcher.AbstractFieldInstruction
            public int getOpcode() {
                return FieldAccess.this.putterOpcode;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + AccessDispatcher.this.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.AccessDispatcher.AbstractFieldInstruction
            public StackManipulation.Size resolveSize(StackSize stackSize) {
                return new StackManipulation.Size((stackSize.getSize() + FieldAccess.this.targetSizeChange) * (-1), 0);
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                AccessDispatcher accessDispatcher = (AccessDispatcher) obj;
                return FieldAccess.this.equals(FieldAccess.this) && this.fieldDescription.equals(accessDispatcher.fieldDescription);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + FieldAccess.this.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.Defined
        public StackManipulation read() {
            return new FieldGetInstruction();
        }

        @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.Defined
        public StackManipulation write() {
            return new FieldPutInstruction();
        }

        /* loaded from: classes.dex */
        public abstract class AbstractFieldInstruction extends StackManipulation.AbstractBase {
            private AbstractFieldInstruction() {
            }

            public abstract int getOpcode();

            public abstract StackManipulation.Size resolveSize(StackSize stackSize);

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitFieldInsn(getOpcode(), AccessDispatcher.this.fieldDescription.getDeclaringType().getInternalName(), AccessDispatcher.this.fieldDescription.getInternalName(), AccessDispatcher.this.fieldDescription.getDescriptor());
                return resolveSize(AccessDispatcher.this.fieldDescription.getType().getStackSize());
            }
        }

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class FieldGetInstruction extends AbstractFieldInstruction {
            public FieldGetInstruction() {
                super();
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && AccessDispatcher.this.equals(AccessDispatcher.this);
            }

            @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.AccessDispatcher.AbstractFieldInstruction
            public int getOpcode() {
                return FieldAccess.this.getterOpcode;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + AccessDispatcher.this.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.AccessDispatcher.AbstractFieldInstruction
            public StackManipulation.Size resolveSize(StackSize stackSize) {
                int size = stackSize.getSize() - FieldAccess.this.targetSizeChange;
                return new StackManipulation.Size(size, size);
            }
        }

        public AccessDispatcher(FieldDescription.InDefinedShape inDefinedShape) {
            this.fieldDescription = inDefinedShape;
        }
    }

    /* loaded from: classes.dex */
    public interface Defined {
        StackManipulation read();

        StackManipulation write();
    }

    public static Defined forField(FieldDescription.InDefinedShape inDefinedShape) {
        if (inDefinedShape.isStatic()) {
            FieldAccess fieldAccess = STATIC;
            fieldAccess.getClass();
            return new AccessDispatcher(inDefinedShape);
        }
        FieldAccess fieldAccess2 = INSTANCE;
        fieldAccess2.getClass();
        return new AccessDispatcher(inDefinedShape);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class OfGenericField implements Defined {
        private final Defined defined;
        private final TypeDefinition targetType;

        /* renamed from: of */
        public static Defined m14946of(FieldDescription fieldDescription, Defined defined) {
            return new OfGenericField(fieldDescription.getType(), defined);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                OfGenericField ofGenericField = (OfGenericField) obj;
                return this.targetType.equals(ofGenericField.targetType) && this.defined.equals(ofGenericField.defined);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.targetType.hashCode()) * 31) + this.defined.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.Defined
        public StackManipulation read() {
            return new StackManipulation.Compound(this.defined.read(), TypeCasting.m14971to(this.targetType));
        }

        @Override // net.bytebuddy.implementation.bytecode.member.FieldAccess.Defined
        public StackManipulation write() {
            return this.defined.write();
        }

        public OfGenericField(TypeDefinition typeDefinition, Defined defined) {
            this.targetType = typeDefinition;
            this.defined = defined;
        }
    }

    public static Defined forField(FieldDescription fieldDescription) {
        FieldDescription.InDefinedShape asDefined = fieldDescription.asDefined();
        if (fieldDescription.getType().asErasure().equals(asDefined.getType().asErasure())) {
            return forField(asDefined);
        }
        return OfGenericField.m14946of(fieldDescription, forField(asDefined));
    }

    FieldAccess(int i, int i2, StackSize stackSize) {
        this.putterOpcode = i;
        this.getterOpcode = i2;
        this.targetSizeChange = stackSize.getSize();
    }

    public static StackManipulation forEnumeration(EnumerationDescription enumerationDescription) {
        FieldList filter = enumerationDescription.getEnumerationType().getDeclaredFields().filter(ElementMatchers.named(enumerationDescription.getValue()));
        if (filter.size() == 1 && ((FieldDescription.InDefinedShape) filter.getOnly()).isStatic() && ((FieldDescription.InDefinedShape) filter.getOnly()).isPublic() && ((FieldDescription.InDefinedShape) filter.getOnly()).isEnum()) {
            FieldAccess fieldAccess = STATIC;
            fieldAccess.getClass();
            return new AccessDispatcher((FieldDescription.InDefinedShape) filter.getOnly()).read();
        }
        return StackManipulation.Illegal.INSTANCE;
    }
}
