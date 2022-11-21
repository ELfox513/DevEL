package net.bytebuddy.implementation.bytecode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface StackManipulation {

    /* loaded from: classes.dex */
    public static abstract class AbstractBase implements StackManipulation {
        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return true;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements StackManipulation {
        private final List<StackManipulation> stackManipulations;

        public Compound(StackManipulation... stackManipulationArr) {
            this(Arrays.asList(stackManipulationArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.stackManipulations.equals(((Compound) obj).stackManipulations);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.stackManipulations.hashCode();
        }

        public Compound(List<? extends StackManipulation> list) {
            this.stackManipulations = new ArrayList();
            for (StackManipulation stackManipulation : list) {
                if (stackManipulation instanceof Compound) {
                    this.stackManipulations.addAll(((Compound) stackManipulation).stackManipulations);
                } else if (!(stackManipulation instanceof Trivial)) {
                    this.stackManipulations.add(stackManipulation);
                }
            }
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            Size size = Size.ZERO;
            for (StackManipulation stackManipulation : this.stackManipulations) {
                size = size.aggregate(stackManipulation.apply(methodVisitor, context));
            }
            return size;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            for (StackManipulation stackManipulation : this.stackManipulations) {
                if (!stackManipulation.isValid()) {
                    return false;
                }
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public enum Illegal implements StackManipulation {
        INSTANCE;

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            throw new IllegalStateException("An illegal stack manipulation must not be applied");
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return false;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Size {
        public static final Size ZERO = new Size(0, 0);
        private final int maximalSize;
        private final int sizeImpact;

        public Size aggregate(Size size) {
            return aggregate(size.sizeImpact, size.maximalSize);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Size size = (Size) obj;
                return this.sizeImpact == size.sizeImpact && this.maximalSize == size.maximalSize;
            }
            return false;
        }

        public int getMaximalSize() {
            return this.maximalSize;
        }

        public int getSizeImpact() {
            return this.sizeImpact;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.sizeImpact) * 31) + this.maximalSize;
        }

        private Size aggregate(int i, int i2) {
            int i3 = this.sizeImpact;
            return new Size(i + i3, Math.max(this.maximalSize, i3 + i2));
        }

        public Size(int i, int i2) {
            this.sizeImpact = i;
            this.maximalSize = i2;
        }
    }

    /* loaded from: classes.dex */
    public enum Trivial implements StackManipulation {
        INSTANCE;

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return StackSize.ZERO.toIncreasingSize();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return true;
        }
    }

    Size apply(MethodVisitor methodVisitor, Implementation.Context context);

    boolean isValid();

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Simple extends AbstractBase {
        private final Dispatcher dispatcher;

        /* loaded from: classes.dex */
        public interface Dispatcher {
            Size apply(MethodVisitor methodVisitor, Implementation.Context context);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return this.dispatcher.apply(methodVisitor, context);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.dispatcher.equals(((Simple) obj).dispatcher);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.dispatcher.hashCode();
        }

        public Simple(Dispatcher dispatcher) {
            this.dispatcher = dispatcher;
        }
    }
}
