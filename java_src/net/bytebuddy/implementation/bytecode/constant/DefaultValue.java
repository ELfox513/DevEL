package net.bytebuddy.implementation.bytecode.constant;

import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
/* loaded from: classes.dex */
public enum DefaultValue implements StackManipulation {
    INTEGER(IntegerConstant.ZERO),
    LONG(LongConstant.ZERO),
    FLOAT(FloatConstant.ZERO),
    DOUBLE(DoubleConstant.ZERO),
    VOID(StackManipulation.Trivial.INSTANCE),
    REFERENCE(NullConstant.INSTANCE);
    
    private final StackManipulation stackManipulation;

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        return this.stackManipulation.apply(methodVisitor, context);
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public boolean isValid() {
        return this.stackManipulation.isValid();
    }

    DefaultValue(StackManipulation stackManipulation) {
        this.stackManipulation = stackManipulation;
    }

    /* renamed from: of */
    public static StackManipulation m14957of(TypeDefinition typeDefinition) {
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
