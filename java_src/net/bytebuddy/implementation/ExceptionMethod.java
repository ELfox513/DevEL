package net.bytebuddy.implementation;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.Throw;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ExceptionMethod implements Implementation, ByteCodeAppender {
    private final ConstructionDelegate constructionDelegate;

    /* loaded from: classes.dex */
    public interface ConstructionDelegate {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForDefaultConstructor implements ConstructionDelegate {
            private final MethodDescription targetConstructor;
            private final TypeDescription throwableType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForDefaultConstructor forDefaultConstructor = (ForDefaultConstructor) obj;
                    return this.throwableType.equals(forDefaultConstructor.throwableType) && this.targetConstructor.equals(forDefaultConstructor.targetConstructor);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.throwableType.hashCode()) * 31) + this.targetConstructor.hashCode();
            }

            @Override // net.bytebuddy.implementation.ExceptionMethod.ConstructionDelegate
            public StackManipulation make() {
                return new StackManipulation.Compound(TypeCreation.m14974of(this.throwableType), Duplication.SINGLE, MethodInvocation.invoke(this.targetConstructor));
            }

            public ForDefaultConstructor(TypeDescription typeDescription) {
                this.throwableType = typeDescription;
                this.targetConstructor = (MethodDescription) typeDescription.getDeclaredMethods().filter(ElementMatchers.isConstructor().and(ElementMatchers.takesArguments(0))).getOnly();
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForStringConstructor implements ConstructionDelegate {
            private final String message;
            private final MethodDescription targetConstructor;
            private final TypeDescription throwableType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForStringConstructor forStringConstructor = (ForStringConstructor) obj;
                    return this.message.equals(forStringConstructor.message) && this.throwableType.equals(forStringConstructor.throwableType) && this.targetConstructor.equals(forStringConstructor.targetConstructor);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.throwableType.hashCode()) * 31) + this.targetConstructor.hashCode()) * 31) + this.message.hashCode();
            }

            @Override // net.bytebuddy.implementation.ExceptionMethod.ConstructionDelegate
            public StackManipulation make() {
                return new StackManipulation.Compound(TypeCreation.m14974of(this.throwableType), Duplication.SINGLE, new TextConstant(this.message), MethodInvocation.invoke(this.targetConstructor));
            }

            public ForStringConstructor(TypeDescription typeDescription, String str) {
                this.throwableType = typeDescription;
                this.targetConstructor = (MethodDescription) typeDescription.getDeclaredMethods().filter(ElementMatchers.isConstructor().and(ElementMatchers.takesArguments(String.class))).getOnly();
                this.message = str;
            }
        }

        StackManipulation make();
    }

    public static Implementation throwing(Class<? extends Throwable> cls) {
        return throwing(TypeDescription.ForLoadedType.m15196of(cls));
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        return this;
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.constructionDelegate.equals(((ExceptionMethod) obj).constructionDelegate);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.constructionDelegate.hashCode();
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return instrumentedType;
    }

    public static Implementation throwing(TypeDescription typeDescription) {
        if (typeDescription.isAssignableTo(Throwable.class)) {
            return new ExceptionMethod(new ConstructionDelegate.ForDefaultConstructor(typeDescription));
        }
        throw new IllegalArgumentException(typeDescription + " does not extend throwable");
    }

    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
        return new ByteCodeAppender.Size(new StackManipulation.Compound(this.constructionDelegate.make(), Throw.INSTANCE).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
    }

    public ExceptionMethod(ConstructionDelegate constructionDelegate) {
        this.constructionDelegate = constructionDelegate;
    }

    public static Implementation throwing(Class<? extends Throwable> cls, String str) {
        return throwing(TypeDescription.ForLoadedType.m15196of(cls), str);
    }

    public static Implementation throwing(TypeDescription typeDescription, String str) {
        if (typeDescription.isAssignableTo(Throwable.class)) {
            return new ExceptionMethod(new ConstructionDelegate.ForStringConstructor(typeDescription, str));
        }
        throw new IllegalArgumentException(typeDescription + " does not extend throwable");
    }
}
