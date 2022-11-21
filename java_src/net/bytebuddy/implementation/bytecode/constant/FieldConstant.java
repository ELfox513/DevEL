package net.bytebuddy.implementation.bytecode.constant;

import java.lang.reflect.Field;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public class FieldConstant extends StackManipulation.AbstractBase {
    private final FieldDescription.InDefinedShape fieldDescription;

    /* loaded from: classes.dex */
    public static class Cached implements StackManipulation {
        private final StackManipulation fieldConstant;

        public int hashCode() {
            return this.fieldConstant.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return this.fieldConstant.isValid();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return FieldAccess.forField(context.cache(this.fieldConstant, TypeDescription.ForLoadedType.m15196of(Field.class))).read().apply(methodVisitor, context);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.fieldConstant.equals(((Cached) obj).fieldConstant);
            }
            return false;
        }

        public Cached(StackManipulation stackManipulation) {
            this.fieldConstant = stackManipulation;
        }
    }

    public StackManipulation cached() {
        return new Cached(this);
    }

    public int hashCode() {
        return this.fieldDescription.hashCode();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        try {
            return new StackManipulation.Compound(ClassConstant.m14958of(this.fieldDescription.getDeclaringType()), new TextConstant(this.fieldDescription.getInternalName()), MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(Class.class.getMethod("getDeclaredField", String.class)))).apply(methodVisitor, context);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Cannot locate Class::getDeclaredField", e);
        }
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.fieldDescription.equals(((FieldConstant) obj).fieldDescription);
        }
        return false;
    }

    public FieldConstant(FieldDescription.InDefinedShape inDefinedShape) {
        this.fieldDescription = inDefinedShape;
    }
}
