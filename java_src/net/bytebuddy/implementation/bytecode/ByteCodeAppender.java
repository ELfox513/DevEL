package net.bytebuddy.implementation.bytecode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface ByteCodeAppender {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements ByteCodeAppender {
        private final List<ByteCodeAppender> byteCodeAppenders;

        public Compound(ByteCodeAppender... byteCodeAppenderArr) {
            this(Arrays.asList(byteCodeAppenderArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.byteCodeAppenders.equals(((Compound) obj).byteCodeAppenders);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.byteCodeAppenders.hashCode();
        }

        public Compound(List<? extends ByteCodeAppender> list) {
            this.byteCodeAppenders = new ArrayList();
            for (ByteCodeAppender byteCodeAppender : list) {
                if (byteCodeAppender instanceof Compound) {
                    this.byteCodeAppenders.addAll(((Compound) byteCodeAppender).byteCodeAppenders);
                } else {
                    this.byteCodeAppenders.add(byteCodeAppender);
                }
            }
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            Size size = new Size(0, methodDescription.getStackSize());
            for (ByteCodeAppender byteCodeAppender : this.byteCodeAppenders) {
                size = size.merge(byteCodeAppender.apply(methodVisitor, context, methodDescription));
            }
            return size;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Simple implements ByteCodeAppender {
        private final StackManipulation stackManipulation;

        public Simple(StackManipulation... stackManipulationArr) {
            this(Arrays.asList(stackManipulationArr));
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            return new Size(this.stackManipulation.apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.stackManipulation.equals(((Simple) obj).stackManipulation);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.stackManipulation.hashCode();
        }

        public Simple(List<? extends StackManipulation> list) {
            this.stackManipulation = new StackManipulation.Compound(list);
        }
    }

    Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Size {
        public static final Size ZERO = new Size(0, 0);
        private final int localVariableSize;
        private final int operandStackSize;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Size size = (Size) obj;
                return this.operandStackSize == size.operandStackSize && this.localVariableSize == size.localVariableSize;
            }
            return false;
        }

        public int getLocalVariableSize() {
            return this.localVariableSize;
        }

        public int getOperandStackSize() {
            return this.operandStackSize;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.operandStackSize) * 31) + this.localVariableSize;
        }

        public Size merge(Size size) {
            return new Size(Math.max(this.operandStackSize, size.operandStackSize), Math.max(this.localVariableSize, size.localVariableSize));
        }

        public Size(int i, int i2) {
            this.operandStackSize = i;
            this.localVariableSize = i2;
        }
    }
}
