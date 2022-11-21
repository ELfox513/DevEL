package net.bytebuddy.implementation.bytecode.member;

import java.util.List;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum MethodInvocation {
    VIRTUAL(182, 5, 182, 5),
    INTERFACE(185, 9, 185, 9),
    STATIC(184, 6, 184, 6),
    SPECIAL(183, 7, 183, 7),
    SPECIAL_CONSTRUCTOR(183, 8, 183, 8),
    VIRTUAL_PRIVATE(182, 5, 183, 7),
    INTERFACE_PRIVATE(185, 9, 183, 7);
    
    private final int handle;
    private final int legacyHandle;
    private final int legacyOpcode;
    private final int opcode;

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class DynamicInvocation extends StackManipulation.AbstractBase {
        private final List<? extends JavaConstant> arguments;
        private final MethodDescription.InDefinedShape bootstrapMethod;
        private final String methodName;
        private final List<? extends TypeDescription> parameterTypes;
        private final TypeDescription returnType;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                DynamicInvocation dynamicInvocation = (DynamicInvocation) obj;
                return MethodInvocation.this.equals(MethodInvocation.this) && this.methodName.equals(dynamicInvocation.methodName) && this.returnType.equals(dynamicInvocation.returnType) && this.parameterTypes.equals(dynamicInvocation.parameterTypes) && this.bootstrapMethod.equals(dynamicInvocation.bootstrapMethod) && this.arguments.equals(dynamicInvocation.arguments);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((getClass().hashCode() * 31) + this.methodName.hashCode()) * 31) + this.returnType.hashCode()) * 31) + this.parameterTypes.hashCode()) * 31) + this.bootstrapMethod.hashCode()) * 31) + this.arguments.hashCode()) * 31) + MethodInvocation.this.hashCode();
        }

        public DynamicInvocation(String str, TypeDescription typeDescription, List<? extends TypeDescription> list, MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list2) {
            this.methodName = str;
            this.returnType = typeDescription;
            this.parameterTypes = list;
            this.bootstrapMethod = inDefinedShape;
            this.arguments = list2;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            int i;
            StringBuilder sb = new StringBuilder("(");
            for (TypeDescription typeDescription : this.parameterTypes) {
                sb.append(typeDescription.getDescriptor());
            }
            sb.append(')');
            sb.append(this.returnType.getDescriptor());
            String sb2 = sb.toString();
            Object[] objArr = new Object[this.arguments.size()];
            int i2 = 0;
            for (JavaConstant javaConstant : this.arguments) {
                objArr[i2] = javaConstant.accept(JavaConstantValue.Visitor.INSTANCE);
                i2++;
            }
            String str = this.methodName;
            if (MethodInvocation.this.handle != MethodInvocation.this.legacyHandle && !context.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V11)) {
                i = MethodInvocation.this.legacyHandle;
            } else {
                i = MethodInvocation.this.handle;
            }
            methodVisitor.visitInvokeDynamicInsn(str, sb2, new Handle(i, this.bootstrapMethod.getDeclaringType().getInternalName(), this.bootstrapMethod.getInternalName(), this.bootstrapMethod.getDescriptor(), this.bootstrapMethod.getDeclaringType().isInterface()), objArr);
            int size = this.returnType.getStackSize().getSize() - StackSize.m14976of(this.parameterTypes);
            return new StackManipulation.Size(size, Math.max(size, 0));
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class HandleInvocation extends StackManipulation.AbstractBase {
        private static final String METHOD_HANDLE = "java/lang/invoke/MethodHandle";
        private final MethodDescription.InDefinedShape methodDescription;
        private final HandleType type;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                HandleInvocation handleInvocation = (HandleInvocation) obj;
                return this.type.equals(handleInvocation.type) && this.methodDescription.equals(handleInvocation.methodDescription);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.type.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            String descriptor;
            String methodName = this.type.getMethodName();
            if (!this.methodDescription.isStatic() && !this.methodDescription.isConstructor()) {
                descriptor = "(" + this.methodDescription.getDeclaringType().getDescriptor() + this.methodDescription.getDescriptor().substring(1);
            } else {
                descriptor = this.methodDescription.getDescriptor();
            }
            methodVisitor.visitMethodInsn(182, METHOD_HANDLE, methodName, descriptor, false);
            int size = this.methodDescription.getReturnType().getStackSize().getSize() - (this.methodDescription.getStackSize() + 1);
            return new StackManipulation.Size(size, Math.max(0, size));
        }

        public HandleInvocation(MethodDescription.InDefinedShape inDefinedShape, HandleType handleType) {
            this.methodDescription = inDefinedShape;
            this.type = handleType;
        }
    }

    /* loaded from: classes.dex */
    public enum IllegalInvocation implements WithImplicitInvocationTargetType {
        INSTANCE;

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return StackManipulation.Illegal.INSTANCE.apply(methodVisitor, context);
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation dynamic(String str, TypeDescription typeDescription, List<? extends TypeDescription> list, List<? extends JavaConstant> list2) {
            return StackManipulation.Illegal.INSTANCE;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return false;
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation onHandle(HandleType handleType) {
            return StackManipulation.Illegal.INSTANCE;
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation special(TypeDescription typeDescription) {
            return StackManipulation.Illegal.INSTANCE;
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation virtual(TypeDescription typeDescription) {
            return StackManipulation.Illegal.INSTANCE;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class Invocation extends StackManipulation.AbstractBase implements WithImplicitInvocationTargetType {
        private final MethodDescription.InDefinedShape methodDescription;
        private final TypeDescription typeDescription;

        public Invocation(MethodInvocation methodInvocation, MethodDescription.InDefinedShape inDefinedShape) {
            this(inDefinedShape, inDefinedShape.getDeclaringType());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Invocation invocation = (Invocation) obj;
                return MethodInvocation.this.equals(MethodInvocation.this) && this.typeDescription.equals(invocation.typeDescription) && this.methodDescription.equals(invocation.methodDescription);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + MethodInvocation.this.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation onHandle(HandleType handleType) {
            return new HandleInvocation(this.methodDescription, handleType);
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation special(TypeDescription typeDescription) {
            if (this.methodDescription.isSpecializableFor(typeDescription)) {
                MethodInvocation methodInvocation = MethodInvocation.SPECIAL;
                methodInvocation.getClass();
                return new Invocation(this.methodDescription, typeDescription);
            }
            return StackManipulation.Illegal.INSTANCE;
        }

        public Invocation(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription) {
            this.typeDescription = typeDescription;
            this.methodDescription = inDefinedShape;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            int i;
            if (MethodInvocation.this.opcode != MethodInvocation.this.legacyOpcode && !context.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V11)) {
                i = MethodInvocation.this.legacyOpcode;
            } else {
                i = MethodInvocation.this.opcode;
            }
            methodVisitor.visitMethodInsn(i, this.typeDescription.getInternalName(), this.methodDescription.getInternalName(), this.methodDescription.getDescriptor(), this.typeDescription.isInterface());
            int size = this.methodDescription.getReturnType().getStackSize().getSize() - this.methodDescription.getStackSize();
            return new StackManipulation.Size(size, Math.max(0, size));
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation dynamic(String str, TypeDescription typeDescription, List<? extends TypeDescription> list, List<? extends JavaConstant> list2) {
            if (this.methodDescription.isInvokeBootstrap()) {
                return new DynamicInvocation(str, typeDescription, new TypeList.Explicit(list), this.methodDescription.asDefined(), list2);
            }
            return StackManipulation.Illegal.INSTANCE;
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation virtual(TypeDescription typeDescription) {
            if (!this.methodDescription.isConstructor() && !this.methodDescription.isStatic()) {
                if (this.methodDescription.isPrivate()) {
                    if (this.methodDescription.getDeclaringType().equals(typeDescription)) {
                        return this;
                    }
                    return StackManipulation.Illegal.INSTANCE;
                } else if (typeDescription.isInterface()) {
                    if (this.methodDescription.getDeclaringType().represents(Object.class)) {
                        return this;
                    }
                    MethodInvocation methodInvocation = MethodInvocation.INTERFACE;
                    methodInvocation.getClass();
                    return new Invocation(this.methodDescription, typeDescription);
                } else {
                    MethodInvocation methodInvocation2 = MethodInvocation.VIRTUAL;
                    methodInvocation2.getClass();
                    return new Invocation(this.methodDescription, typeDescription);
                }
            }
            return StackManipulation.Illegal.INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public interface WithImplicitInvocationTargetType extends StackManipulation {
        StackManipulation dynamic(String str, TypeDescription typeDescription, List<? extends TypeDescription> list, List<? extends JavaConstant> list2);

        StackManipulation onHandle(HandleType handleType);

        StackManipulation special(TypeDescription typeDescription);

        StackManipulation virtual(TypeDescription typeDescription);
    }

    public static WithImplicitInvocationTargetType invoke(MethodDescription.InDefinedShape inDefinedShape) {
        if (inDefinedShape.isTypeInitializer()) {
            return IllegalInvocation.INSTANCE;
        }
        if (inDefinedShape.isStatic()) {
            MethodInvocation methodInvocation = STATIC;
            methodInvocation.getClass();
            return new Invocation(methodInvocation, inDefinedShape);
        } else if (inDefinedShape.isConstructor()) {
            MethodInvocation methodInvocation2 = SPECIAL_CONSTRUCTOR;
            methodInvocation2.getClass();
            return new Invocation(methodInvocation2, inDefinedShape);
        } else if (inDefinedShape.isPrivate()) {
            MethodInvocation methodInvocation3 = inDefinedShape.getDeclaringType().isInterface() ? INTERFACE_PRIVATE : VIRTUAL_PRIVATE;
            methodInvocation3.getClass();
            return new Invocation(methodInvocation3, inDefinedShape);
        } else if (inDefinedShape.getDeclaringType().isInterface()) {
            MethodInvocation methodInvocation4 = INTERFACE;
            methodInvocation4.getClass();
            return new Invocation(methodInvocation4, inDefinedShape);
        } else {
            MethodInvocation methodInvocation5 = VIRTUAL;
            methodInvocation5.getClass();
            return new Invocation(methodInvocation5, inDefinedShape);
        }
    }

    /* loaded from: classes.dex */
    public enum HandleType {
        EXACT("invokeExact"),
        REGULAR("invoke");
        
        private final String methodName;

        public String getMethodName() {
            return this.methodName;
        }

        HandleType(String str) {
            this.methodName = str;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class OfGenericMethod implements WithImplicitInvocationTargetType {
        private final WithImplicitInvocationTargetType invocation;
        private final TypeDescription targetType;

        /* renamed from: of */
        public static WithImplicitInvocationTargetType m14941of(MethodDescription methodDescription, WithImplicitInvocationTargetType withImplicitInvocationTargetType) {
            return new OfGenericMethod(methodDescription.getReturnType().asErasure(), withImplicitInvocationTargetType);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return new StackManipulation.Compound(this.invocation, TypeCasting.m14971to(this.targetType)).apply(methodVisitor, context);
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation dynamic(String str, TypeDescription typeDescription, List<? extends TypeDescription> list, List<? extends JavaConstant> list2) {
            return this.invocation.dynamic(str, typeDescription, list, list2);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                OfGenericMethod ofGenericMethod = (OfGenericMethod) obj;
                return this.targetType.equals(ofGenericMethod.targetType) && this.invocation.equals(ofGenericMethod.invocation);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.targetType.hashCode()) * 31) + this.invocation.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return this.invocation.isValid();
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation onHandle(HandleType handleType) {
            return new StackManipulation.Compound(this.invocation.onHandle(handleType), TypeCasting.m14971to(this.targetType));
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation special(TypeDescription typeDescription) {
            return new StackManipulation.Compound(this.invocation.special(typeDescription), TypeCasting.m14971to(this.targetType));
        }

        @Override // net.bytebuddy.implementation.bytecode.member.MethodInvocation.WithImplicitInvocationTargetType
        public StackManipulation virtual(TypeDescription typeDescription) {
            return new StackManipulation.Compound(this.invocation.virtual(typeDescription), TypeCasting.m14971to(this.targetType));
        }

        public OfGenericMethod(TypeDescription typeDescription, WithImplicitInvocationTargetType withImplicitInvocationTargetType) {
            this.targetType = typeDescription;
            this.invocation = withImplicitInvocationTargetType;
        }
    }

    MethodInvocation(int i, int i2, int i3, int i4) {
        this.opcode = i;
        this.handle = i2;
        this.legacyOpcode = i3;
        this.legacyHandle = i4;
    }

    public static WithImplicitInvocationTargetType invoke(MethodDescription methodDescription) {
        MethodDescription.InDefinedShape asDefined = methodDescription.asDefined();
        if (asDefined.getReturnType().asErasure().equals(methodDescription.getReturnType().asErasure())) {
            return invoke(asDefined);
        }
        return OfGenericMethod.m14941of(methodDescription, invoke(asDefined));
    }
}
