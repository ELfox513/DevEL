package net.bytebuddy.implementation.bytecode.constant;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.jar.asm.ConstantDynamic;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class JavaConstantValue extends StackManipulation.AbstractBase {
    private final JavaConstant constant;

    /* loaded from: classes.dex */
    public enum Visitor implements JavaConstant.Visitor<Object> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.utility.JavaConstant.Visitor
        public /* bridge */ /* synthetic */ Object onType(JavaConstant.Simple simple) {
            return onType((JavaConstant.Simple<TypeDescription>) simple);
        }

        @Override // net.bytebuddy.utility.JavaConstant.Visitor
        public Object onValue(JavaConstant.Simple<?> simple) {
            return simple.getValue();
        }

        @Override // net.bytebuddy.utility.JavaConstant.Visitor
        public Object onDynamic(JavaConstant.Dynamic dynamic) {
            int size = dynamic.getArguments().size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                objArr[i] = dynamic.getArguments().get(i).accept(this);
            }
            return new ConstantDynamic(dynamic.getName(), dynamic.getTypeDescription().getDescriptor(), onMethodHandle(dynamic.getBootstrap()), objArr);
        }

        @Override // net.bytebuddy.utility.JavaConstant.Visitor
        public Object onMethodHandle(JavaConstant.MethodHandle methodHandle) {
            return new Handle(methodHandle.getHandleType().getIdentifier(), methodHandle.getOwnerType().getInternalName(), methodHandle.getName(), methodHandle.getDescriptor(), methodHandle.getOwnerType().isInterface());
        }

        @Override // net.bytebuddy.utility.JavaConstant.Visitor
        public Object onMethodType(JavaConstant.MethodType methodType) {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            for (TypeDescription typeDescription : methodType.getParameterTypes()) {
                sb.append(typeDescription.getDescriptor());
            }
            sb.append(')');
            sb.append(methodType.getReturnType().getDescriptor());
            return Type.getMethodType(sb.toString());
        }

        @Override // net.bytebuddy.utility.JavaConstant.Visitor
        public Object onType(JavaConstant.Simple<TypeDescription> simple) {
            return Type.getType(simple.getValue().getDescriptor());
        }
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.constant.equals(((JavaConstantValue) obj).constant);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.constant.hashCode();
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        methodVisitor.visitLdcInsn(this.constant.accept(Visitor.INSTANCE));
        return this.constant.getTypeDescription().getStackSize().toIncreasingSize();
    }

    public JavaConstantValue(JavaConstant javaConstant) {
        this.constant = javaConstant;
    }
}
