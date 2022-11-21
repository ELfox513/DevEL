package net.bytebuddy.implementation.auxiliary;

import java.io.Serializable;
import java.util.List;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.modifier.Ownership;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.TargetType;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.Throw;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class TypeProxy implements AuxiliaryType {
    public static final String INSTANCE_FIELD = "target";
    public static final String REFLECTION_METHOD = "make";
    private final boolean ignoreFinalizer;
    private final Implementation.Target implementationTarget;
    private final InvocationFactory invocationFactory;
    private final TypeDescription proxiedType;
    private final boolean serializableProxy;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForDefaultMethod extends StackManipulation.AbstractBase {
        private final Implementation.Target implementationTarget;
        private final TypeDescription proxiedType;
        private final boolean serializableProxy;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForDefaultMethod forDefaultMethod = (ForDefaultMethod) obj;
                return this.serializableProxy == forDefaultMethod.serializableProxy && this.proxiedType.equals(forDefaultMethod.proxiedType) && this.implementationTarget.equals(forDefaultMethod.implementationTarget);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.proxiedType.hashCode()) * 31) + this.implementationTarget.hashCode()) * 31) + (this.serializableProxy ? 1 : 0);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            TypeDescription register = context.register(new TypeProxy(this.proxiedType, this.implementationTarget, InvocationFactory.Default.DEFAULT_METHOD, true, this.serializableProxy));
            Duplication duplication = Duplication.SINGLE;
            return new StackManipulation.Compound(TypeCreation.m14974of(register), duplication, MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly()), duplication, MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription.InDefinedShape) register.getDeclaredFields().filter(ElementMatchers.named("target")).getOnly()).write()).apply(methodVisitor, context);
        }

        public ForDefaultMethod(TypeDescription typeDescription, Implementation.Target target, boolean z) {
            this.proxiedType = typeDescription;
            this.implementationTarget = target;
            this.serializableProxy = z;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForSuperMethodByConstructor extends StackManipulation.AbstractBase {
        private final List<TypeDescription> constructorParameters;
        private final boolean ignoreFinalizer;
        private final Implementation.Target implementationTarget;
        private final TypeDescription proxiedType;
        private final boolean serializableProxy;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForSuperMethodByConstructor forSuperMethodByConstructor = (ForSuperMethodByConstructor) obj;
                return this.ignoreFinalizer == forSuperMethodByConstructor.ignoreFinalizer && this.serializableProxy == forSuperMethodByConstructor.serializableProxy && this.proxiedType.equals(forSuperMethodByConstructor.proxiedType) && this.implementationTarget.equals(forSuperMethodByConstructor.implementationTarget) && this.constructorParameters.equals(forSuperMethodByConstructor.constructorParameters);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((getClass().hashCode() * 31) + this.proxiedType.hashCode()) * 31) + this.implementationTarget.hashCode()) * 31) + this.constructorParameters.hashCode()) * 31) + (this.ignoreFinalizer ? 1 : 0)) * 31) + (this.serializableProxy ? 1 : 0);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            TypeDescription register = context.register(new TypeProxy(this.proxiedType, this.implementationTarget, InvocationFactory.Default.SUPER_METHOD, this.ignoreFinalizer, this.serializableProxy));
            StackManipulation[] stackManipulationArr = new StackManipulation[this.constructorParameters.size()];
            int i = 0;
            for (TypeDescription typeDescription : this.constructorParameters) {
                stackManipulationArr[i] = DefaultValue.m14957of(typeDescription);
                i++;
            }
            Duplication duplication = Duplication.SINGLE;
            return new StackManipulation.Compound(TypeCreation.m14974of(register), duplication, new StackManipulation.Compound(stackManipulationArr), MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.isConstructor().and(ElementMatchers.takesArguments(this.constructorParameters))).getOnly()), duplication, MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription.InDefinedShape) register.getDeclaredFields().filter(ElementMatchers.named("target")).getOnly()).write()).apply(methodVisitor, context);
        }

        public ForSuperMethodByConstructor(TypeDescription typeDescription, Implementation.Target target, List<TypeDescription> list, boolean z, boolean z2) {
            this.proxiedType = typeDescription;
            this.implementationTarget = target;
            this.constructorParameters = list;
            this.ignoreFinalizer = z;
            this.serializableProxy = z2;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForSuperMethodByReflectionFactory extends StackManipulation.AbstractBase {
        private final boolean ignoreFinalizer;
        private final Implementation.Target implementationTarget;
        private final TypeDescription proxiedType;
        private final boolean serializableProxy;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForSuperMethodByReflectionFactory forSuperMethodByReflectionFactory = (ForSuperMethodByReflectionFactory) obj;
                return this.ignoreFinalizer == forSuperMethodByReflectionFactory.ignoreFinalizer && this.serializableProxy == forSuperMethodByReflectionFactory.serializableProxy && this.proxiedType.equals(forSuperMethodByReflectionFactory.proxiedType) && this.implementationTarget.equals(forSuperMethodByReflectionFactory.implementationTarget);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.proxiedType.hashCode()) * 31) + this.implementationTarget.hashCode()) * 31) + (this.ignoreFinalizer ? 1 : 0)) * 31) + (this.serializableProxy ? 1 : 0);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            TypeDescription register = context.register(new TypeProxy(this.proxiedType, this.implementationTarget, InvocationFactory.Default.SUPER_METHOD, this.ignoreFinalizer, this.serializableProxy));
            return new StackManipulation.Compound(MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.named(TypeProxy.REFLECTION_METHOD).and(ElementMatchers.takesArguments(0))).getOnly()), Duplication.SINGLE, MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription.InDefinedShape) register.getDeclaredFields().filter(ElementMatchers.named("target")).getOnly()).write()).apply(methodVisitor, context);
        }

        public ForSuperMethodByReflectionFactory(TypeDescription typeDescription, Implementation.Target target, boolean z, boolean z2) {
            this.proxiedType = typeDescription;
            this.implementationTarget = target;
            this.ignoreFinalizer = z;
            this.serializableProxy = z2;
        }
    }

    /* loaded from: classes.dex */
    public interface InvocationFactory {

        /* loaded from: classes.dex */
        public enum Default implements InvocationFactory {
            SUPER_METHOD { // from class: net.bytebuddy.implementation.auxiliary.TypeProxy.InvocationFactory.Default.1
                @Override // net.bytebuddy.implementation.auxiliary.TypeProxy.InvocationFactory
                public Implementation.SpecialMethodInvocation invoke(Implementation.Target target, TypeDescription typeDescription, MethodDescription methodDescription) {
                    return target.invokeDominant(methodDescription.asSignatureToken());
                }
            },
            DEFAULT_METHOD { // from class: net.bytebuddy.implementation.auxiliary.TypeProxy.InvocationFactory.Default.2
                @Override // net.bytebuddy.implementation.auxiliary.TypeProxy.InvocationFactory
                public Implementation.SpecialMethodInvocation invoke(Implementation.Target target, TypeDescription typeDescription, MethodDescription methodDescription) {
                    return target.invokeDefault(methodDescription.asSignatureToken(), typeDescription);
                }
            }
        }

        Implementation.SpecialMethodInvocation invoke(Implementation.Target target, TypeDescription typeDescription, MethodDescription methodDescription);
    }

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class MethodCall implements Implementation {
        private final MethodAccessorFactory methodAccessorFactory;

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Appender implements ByteCodeAppender {
            private final StackManipulation fieldLoadingInstruction;

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class AccessorMethodInvocation implements StackManipulation {
                private final MethodDescription instrumentedMethod;
                private final Implementation.SpecialMethodInvocation specialMethodInvocation;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        AccessorMethodInvocation accessorMethodInvocation = (AccessorMethodInvocation) obj;
                        return this.instrumentedMethod.equals(accessorMethodInvocation.instrumentedMethod) && this.specialMethodInvocation.equals(accessorMethodInvocation.specialMethodInvocation) && Appender.this.equals(Appender.this);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.instrumentedMethod.hashCode()) * 31) + this.specialMethodInvocation.hashCode()) * 31) + Appender.this.hashCode();
                }

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public boolean isValid() {
                    return this.specialMethodInvocation.isValid();
                }

                public AccessorMethodInvocation(MethodDescription methodDescription, Implementation.SpecialMethodInvocation specialMethodInvocation) {
                    this.instrumentedMethod = methodDescription;
                    this.specialMethodInvocation = specialMethodInvocation;
                }

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                    MethodDescription.InDefinedShape registerAccessorFor = MethodCall.this.methodAccessorFactory.registerAccessorFor(this.specialMethodInvocation, MethodAccessorFactory.AccessType.DEFAULT);
                    return new StackManipulation.Compound(MethodVariableAccess.loadThis(), Appender.this.fieldLoadingInstruction, MethodVariableAccess.allArgumentsOf(this.instrumentedMethod).asBridgeOf(registerAccessorFor), MethodInvocation.invoke(registerAccessorFor), MethodReturn.m14940of(this.instrumentedMethod.getReturnType())).apply(methodVisitor, context);
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Appender appender = (Appender) obj;
                    return this.fieldLoadingInstruction.equals(appender.fieldLoadingInstruction) && MethodCall.this.equals(MethodCall.this);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.fieldLoadingInstruction.hashCode()) * 31) + MethodCall.this.hashCode();
            }

            public Appender(TypeDescription typeDescription) {
                this.fieldLoadingInstruction = FieldAccess.forField((FieldDescription.InDefinedShape) typeDescription.getDeclaredFields().filter(ElementMatchers.named("target")).getOnly()).read();
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                StackManipulation stackManipulation;
                Implementation.SpecialMethodInvocation invoke = TypeProxy.this.invocationFactory.invoke(TypeProxy.this.implementationTarget, TypeProxy.this.proxiedType, methodDescription);
                if (invoke.isValid()) {
                    stackManipulation = new AccessorMethodInvocation(methodDescription, invoke);
                } else {
                    stackManipulation = AbstractMethodErrorThrow.INSTANCE;
                }
                return new ByteCodeAppender.Size(stackManipulation.apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
            }
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target.getInstrumentedType());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                MethodCall methodCall = (MethodCall) obj;
                return this.methodAccessorFactory.equals(methodCall.methodAccessorFactory) && TypeProxy.this.equals(TypeProxy.this);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.methodAccessorFactory.hashCode()) * 31) + TypeProxy.this.hashCode();
        }

        public MethodCall(MethodAccessorFactory methodAccessorFactory) {
            this.methodAccessorFactory = methodAccessorFactory;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType.withField(new FieldDescription.Token("target", 65, TypeProxy.this.implementationTarget.getInstrumentedType().asGenericType()));
        }
    }

    /* loaded from: classes.dex */
    public enum SilentConstruction implements Implementation {
        INSTANCE;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Appender implements ByteCodeAppender {
            public static final String GET_DECLARED_CONSTRUCTOR_METHOD_DESCRIPTOR = "([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;";
            public static final String GET_DECLARED_CONSTRUCTOR_METHOD_NAME = "getDeclaredConstructor";
            public static final String GET_REFLECTION_FACTORY_METHOD_DESCRIPTOR = "()Lsun/reflect/ReflectionFactory;";
            public static final String GET_REFLECTION_FACTORY_METHOD_NAME = "getReflectionFactory";
            public static final String JAVA_LANG_CLASS_INTERNAL_NAME = "java/lang/Class";
            public static final String JAVA_LANG_CONSTRUCTOR_INTERNAL_NAME = "java/lang/reflect/Constructor";
            public static final String JAVA_LANG_OBJECT_DESCRIPTOR = "Ljava/lang/Object;";
            public static final String JAVA_LANG_OBJECT_INTERNAL_NAME = "java/lang/Object";
            public static final String NEW_CONSTRUCTOR_FOR_SERIALIZATION_METHOD_DESCRIPTOR = "(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;";
            public static final String NEW_CONSTRUCTOR_FOR_SERIALIZATION_METHOD_NAME = "newConstructorForSerialization";
            public static final String NEW_INSTANCE_METHOD_DESCRIPTOR = "([Ljava/lang/Object;)Ljava/lang/Object;";
            public static final String NEW_INSTANCE_METHOD_NAME = "newInstance";
            public static final String REFLECTION_FACTORY_INTERNAL_NAME = "sun/reflect/ReflectionFactory";
            private final TypeDescription instrumentedType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((Appender) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            private Appender(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                methodVisitor.visitMethodInsn(184, REFLECTION_FACTORY_INTERNAL_NAME, GET_REFLECTION_FACTORY_METHOD_NAME, GET_REFLECTION_FACTORY_METHOD_DESCRIPTOR, false);
                methodVisitor.visitLdcInsn(Type.getType(this.instrumentedType.getDescriptor()));
                methodVisitor.visitLdcInsn(Type.getType(JAVA_LANG_OBJECT_DESCRIPTOR));
                methodVisitor.visitInsn(3);
                methodVisitor.visitTypeInsn(189, JAVA_LANG_CLASS_INTERNAL_NAME);
                methodVisitor.visitMethodInsn(182, JAVA_LANG_CLASS_INTERNAL_NAME, GET_DECLARED_CONSTRUCTOR_METHOD_NAME, GET_DECLARED_CONSTRUCTOR_METHOD_DESCRIPTOR, false);
                methodVisitor.visitMethodInsn(182, REFLECTION_FACTORY_INTERNAL_NAME, NEW_CONSTRUCTOR_FOR_SERIALIZATION_METHOD_NAME, NEW_CONSTRUCTOR_FOR_SERIALIZATION_METHOD_DESCRIPTOR, false);
                methodVisitor.visitInsn(3);
                methodVisitor.visitTypeInsn(189, JAVA_LANG_OBJECT_INTERNAL_NAME);
                methodVisitor.visitMethodInsn(182, JAVA_LANG_CONSTRUCTOR_INTERNAL_NAME, NEW_INSTANCE_METHOD_NAME, NEW_INSTANCE_METHOD_DESCRIPTOR, false);
                methodVisitor.visitTypeInsn(192, this.instrumentedType.getInternalName());
                methodVisitor.visitInsn(176);
                return new ByteCodeAppender.Size(4, 0);
            }
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target.getInstrumentedType());
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TypeProxy typeProxy = (TypeProxy) obj;
            return this.ignoreFinalizer == typeProxy.ignoreFinalizer && this.serializableProxy == typeProxy.serializableProxy && this.proxiedType.equals(typeProxy.proxiedType) && this.implementationTarget.equals(typeProxy.implementationTarget) && this.invocationFactory.equals(typeProxy.invocationFactory);
        }
        return false;
    }

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public String getSuffix() {
        StringBuilder sb = new StringBuilder();
        sb.append(RandomString.hashOf(this.proxiedType.hashCode()));
        sb.append(this.ignoreFinalizer ? "I" : "0");
        sb.append(this.serializableProxy ? "S" : "0");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((getClass().hashCode() * 31) + this.proxiedType.hashCode()) * 31) + this.implementationTarget.hashCode()) * 31) + this.invocationFactory.hashCode()) * 31) + (this.ignoreFinalizer ? 1 : 0)) * 31) + (this.serializableProxy ? 1 : 0);
    }

    /* loaded from: classes.dex */
    public enum AbstractMethodErrorThrow implements StackManipulation {
        INSTANCE;
        
        private final transient StackManipulation implementation;

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return this.implementation.apply(methodVisitor, context);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return this.implementation.isValid();
        }

        AbstractMethodErrorThrow() {
            TypeDescription m15196of = TypeDescription.ForLoadedType.m15196of(AbstractMethodError.class);
            this.implementation = new StackManipulation.Compound(TypeCreation.m14974of(m15196of), Duplication.SINGLE, MethodInvocation.invoke((MethodDescription) m15196of.getDeclaredMethods().filter(ElementMatchers.isConstructor().and(ElementMatchers.takesArguments(0))).getOnly()), Throw.INSTANCE);
        }
    }

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public DynamicType make(String str, ClassFileVersion classFileVersion, MethodAccessorFactory methodAccessorFactory) {
        ElementMatcher.Junction none;
        ByteBuddy with = new ByteBuddy(classFileVersion).with(TypeValidation.DISABLED);
        if (this.ignoreFinalizer) {
            none = ElementMatchers.isFinalizer();
        } else {
            none = ElementMatchers.none();
        }
        return with.ignore(none).subclass(this.proxiedType).name(str).modifiers(AuxiliaryType.DEFAULT_TYPE_MODIFIER).implement(this.serializableProxy ? new Class[]{Serializable.class} : new Class[0]).method(ElementMatchers.any()).intercept(new MethodCall(methodAccessorFactory)).defineMethod(REFLECTION_METHOD, TargetType.class, Ownership.STATIC).intercept(SilentConstruction.INSTANCE).make();
    }

    public TypeProxy(TypeDescription typeDescription, Implementation.Target target, InvocationFactory invocationFactory, boolean z, boolean z2) {
        this.proxiedType = typeDescription;
        this.implementationTarget = target;
        this.invocationFactory = invocationFactory;
        this.ignoreFinalizer = z;
        this.serializableProxy = z2;
    }
}
