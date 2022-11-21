package net.bytebuddy.implementation;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum SuperMethodCall implements Implementation.Composable {
    INSTANCE;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Appender implements ByteCodeAppender {
        private final Implementation.Target implementationTarget;
        private final TerminationHandler terminationHandler;

        /* loaded from: classes.dex */
        public enum TerminationHandler {
            RETURNING { // from class: net.bytebuddy.implementation.SuperMethodCall.Appender.TerminationHandler.1
                @Override // net.bytebuddy.implementation.SuperMethodCall.Appender.TerminationHandler
                /* renamed from: of */
                public StackManipulation mo15024of(MethodDescription methodDescription) {
                    return MethodReturn.m14940of(methodDescription.getReturnType());
                }
            },
            DROPPING { // from class: net.bytebuddy.implementation.SuperMethodCall.Appender.TerminationHandler.2
                @Override // net.bytebuddy.implementation.SuperMethodCall.Appender.TerminationHandler
                /* renamed from: of */
                public StackManipulation mo15024of(MethodDescription methodDescription) {
                    return Removal.m14979of(methodDescription.getReturnType());
                }
            };

            /* renamed from: of */
            public abstract StackManipulation mo15024of(MethodDescription methodDescription);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.terminationHandler.equals(appender.terminationHandler) && this.implementationTarget.equals(appender.implementationTarget);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.implementationTarget.hashCode()) * 31) + this.terminationHandler.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = this.implementationTarget.invokeDominant(methodDescription.asSignatureToken()).withCheckedCompatibilityTo(methodDescription.asTypeToken());
            if (withCheckedCompatibilityTo.isValid()) {
                return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.allArgumentsOf(methodDescription).prependThisReference(), withCheckedCompatibilityTo, this.terminationHandler.mo15024of(methodDescription)).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
            }
            throw new IllegalStateException("Cannot call super (or default) method for " + methodDescription);
        }

        public Appender(Implementation.Target target, TerminationHandler terminationHandler) {
            this.implementationTarget = target;
            this.terminationHandler = terminationHandler;
        }
    }

    /* loaded from: classes.dex */
    public enum WithoutReturn implements Implementation {
        INSTANCE;

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target, Appender.TerminationHandler.DROPPING);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation andThen(Implementation implementation) {
        return new Implementation.Compound(WithoutReturn.INSTANCE, implementation);
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        return new Appender(target, Appender.TerminationHandler.RETURNING);
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return instrumentedType;
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation.Composable andThen(Implementation.Composable composable) {
        return new Implementation.Compound.Composable(WithoutReturn.INSTANCE, composable);
    }
}
