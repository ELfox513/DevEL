package net.bytebuddy.implementation.bytecode.member;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class HandleInvocation extends StackManipulation.AbstractBase {
    private static final String INVOKE_EXACT = "invokeExact";
    private static final String METHOD_HANDLE_NAME = "java/lang/invoke/MethodHandle";
    private final JavaConstant.MethodType methodType;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.methodType.equals(((HandleInvocation) obj).methodType);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.methodType.hashCode();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitMethodInsn(182, METHOD_HANDLE_NAME, INVOKE_EXACT, this.methodType.getDescriptor(), false);
        int size = this.methodType.getReturnType().getStackSize().getSize() - this.methodType.getParameterTypes().getStackSize();
        return new StackManipulation.Size(size, Math.max(size, 0));
    }

    public HandleInvocation(JavaConstant.MethodType methodType) {
        this.methodType = methodType;
    }
}
