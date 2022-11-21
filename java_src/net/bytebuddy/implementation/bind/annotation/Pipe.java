package net.bytebuddy.implementation.bind.annotation;

import java.io.Serializable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Pipe {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<Pipe> {
        private static final MethodDescription.InDefinedShape SERIALIZABLE_PROXY = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Pipe.class).getDeclaredMethods().filter(ElementMatchers.named("serializableProxy")).getOnly();
        private final MethodDescription forwardingMethod;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class RedirectionProxy extends StackManipulation.AbstractBase implements AuxiliaryType {
            private static final String FIELD_NAME_PREFIX = "argument";
            private final Assigner assigner;
            private final TypeDescription forwardingType;
            private final boolean serializableProxy;
            private final MethodDescription sourceMethod;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class MethodCall implements Implementation {
                private final Assigner assigner;
                private final MethodDescription redirectedMethod;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class Appender implements ByteCodeAppender {
                    private final TypeDescription instrumentedType;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Appender appender = (Appender) obj;
                            return this.instrumentedType.equals(appender.instrumentedType) && MethodCall.this.equals(MethodCall.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + MethodCall.this.hashCode();
                    }

                    private Appender(TypeDescription typeDescription) {
                        this.instrumentedType = typeDescription;
                    }

                    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                        FieldList<FieldDescription.InDefinedShape> declaredFields = this.instrumentedType.getDeclaredFields();
                        StackManipulation[] stackManipulationArr = new StackManipulation[declaredFields.size()];
                        Iterator<T> it = declaredFields.iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            stackManipulationArr[i] = new StackManipulation.Compound(MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription) it.next()).read());
                            i++;
                        }
                        Assigner assigner = MethodCall.this.assigner;
                        TypeDescription.Generic generic = TypeDescription.Generic.OBJECT;
                        TypeDescription.Generic asGenericType = MethodCall.this.redirectedMethod.getDeclaringType().asGenericType();
                        Assigner.Typing typing = Assigner.Typing.DYNAMIC;
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.REFERENCE.loadFrom(1), assigner.assign(generic, asGenericType, typing), new StackManipulation.Compound(stackManipulationArr), MethodInvocation.invoke(MethodCall.this.redirectedMethod), MethodCall.this.assigner.assign(MethodCall.this.redirectedMethod.getReturnType(), methodDescription.getReturnType(), typing), MethodReturn.REFERENCE).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        MethodCall methodCall = (MethodCall) obj;
                        return this.redirectedMethod.equals(methodCall.redirectedMethod) && this.assigner.equals(methodCall.assigner);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.redirectedMethod.hashCode()) * 31) + this.assigner.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                private MethodCall(MethodDescription methodDescription, Assigner assigner) {
                    this.redirectedMethod = methodDescription;
                    this.assigner = assigner;
                }

                @Override // net.bytebuddy.implementation.Implementation
                public ByteCodeAppender appender(Implementation.Target target) {
                    if (this.redirectedMethod.isAccessibleTo(target.getInstrumentedType())) {
                        return new Appender(target.getInstrumentedType());
                    }
                    throw new IllegalStateException("Cannot invoke " + this.redirectedMethod + " from outside of class via @Pipe proxy");
                }
            }

            private static String fieldName(int i) {
                return FIELD_NAME_PREFIX + i;
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    RedirectionProxy redirectionProxy = (RedirectionProxy) obj;
                    return this.serializableProxy == redirectionProxy.serializableProxy && this.forwardingType.equals(redirectionProxy.forwardingType) && this.sourceMethod.equals(redirectionProxy.sourceMethod) && this.assigner.equals(redirectionProxy.assigner);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.forwardingType.hashCode()) * 31) + this.sourceMethod.hashCode()) * 31) + this.assigner.hashCode()) * 31) + (this.serializableProxy ? 1 : 0);
            }

            /* loaded from: classes.dex */
            public enum ConstructorCall implements Implementation {
                INSTANCE;
                
                private final transient MethodDescription.InDefinedShape objectTypeDefaultConstructor = (MethodDescription.InDefinedShape) TypeDescription.OBJECT.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly();

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Appender implements ByteCodeAppender {
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
                        FieldList<FieldDescription.InDefinedShape> declaredFields = this.instrumentedType.getDeclaredFields();
                        StackManipulation[] stackManipulationArr = new StackManipulation[declaredFields.size()];
                        Iterator<T> it = declaredFields.iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            stackManipulationArr[i] = new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodVariableAccess.load((ParameterDescription) methodDescription.getParameters().get(i)), FieldAccess.forField((FieldDescription) it.next()).write());
                            i++;
                        }
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodInvocation.invoke(ConstructorCall.INSTANCE.objectTypeDefaultConstructor), new StackManipulation.Compound(stackManipulationArr), MethodReturn.VOID).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
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

                ConstructorCall() {
                }
            }

            @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
            public String getSuffix() {
                String str;
                StringBuilder sb = new StringBuilder();
                sb.append(RandomString.hashOf(this.forwardingType.hashCode()));
                sb.append(RandomString.hashOf(this.sourceMethod.hashCode()));
                if (this.serializableProxy) {
                    str = "S";
                } else {
                    str = "0";
                }
                sb.append(str);
                return sb.toString();
            }

            @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
            public DynamicType make(String str, ClassFileVersion classFileVersion, MethodAccessorFactory methodAccessorFactory) {
                LinkedHashMap<String, TypeDescription> extractFields = extractFields(this.sourceMethod);
                DynamicType.Builder intercept = new ByteBuddy(classFileVersion).with(TypeValidation.DISABLED).subclass(this.forwardingType, ConstructorStrategy.Default.NO_CONSTRUCTORS).name(str).modifiers(AuxiliaryType.DEFAULT_TYPE_MODIFIER).implement(this.serializableProxy ? new Class[]{Serializable.class} : new Class[0]).method(ElementMatchers.isAbstract().and(ElementMatchers.isDeclaredBy(this.forwardingType))).intercept(new MethodCall(this.sourceMethod, this.assigner)).defineConstructor(new ModifierContributor.ForMethod[0]).withParameters(extractFields.values()).intercept(ConstructorCall.INSTANCE);
                for (Map.Entry<String, TypeDescription> entry : extractFields.entrySet()) {
                    intercept = intercept.defineField(entry.getKey(), entry.getValue(), Visibility.PRIVATE);
                }
                return intercept.make();
            }

            public RedirectionProxy(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, boolean z) {
                this.forwardingType = typeDescription;
                this.sourceMethod = methodDescription;
                this.assigner = assigner;
                this.serializableProxy = z;
            }

            private static LinkedHashMap<String, TypeDescription> extractFields(MethodDescription methodDescription) {
                TypeList<TypeDescription> asErasures = methodDescription.getParameters().asTypeList().asErasures();
                LinkedHashMap<String, TypeDescription> linkedHashMap = new LinkedHashMap<>();
                int i = 0;
                for (TypeDescription typeDescription : asErasures) {
                    int i2 = i + 1;
                    linkedHashMap.put(fieldName(i), typeDescription);
                    i = i2;
                }
                return linkedHashMap;
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                TypeDescription register = context.register(this);
                return new StackManipulation.Compound(TypeCreation.m14974of(register), Duplication.SINGLE, MethodVariableAccess.allArgumentsOf(this.sourceMethod), MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly())).apply(methodVisitor, context);
            }
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<Pipe> install(Class<?> cls) {
            return install(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.forwardingMethod.equals(((Binder) obj).forwardingMethod);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<Pipe> getHandledType() {
            return Pipe.class;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.forwardingMethod.hashCode();
        }

        public static TargetMethodAnnotationDrivenBinder.ParameterBinder<Pipe> install(TypeDescription typeDescription) {
            return new Binder(onlyMethod(typeDescription));
        }

        private static MethodDescription onlyMethod(TypeDescription typeDescription) {
            if (typeDescription.isInterface()) {
                if (typeDescription.getInterfaces().isEmpty()) {
                    if (typeDescription.isPublic()) {
                        MethodList filter = typeDescription.getDeclaredMethods().filter(ElementMatchers.isAbstract());
                        if (filter.size() == 1) {
                            MethodDescription methodDescription = (MethodDescription) filter.getOnly();
                            if (methodDescription.getReturnType().asErasure().represents(Object.class)) {
                                if (methodDescription.getParameters().size() == 1 && ((ParameterDescription) methodDescription.getParameters().getOnly()).getType().asErasure().represents(Object.class)) {
                                    return methodDescription;
                                }
                                throw new IllegalArgumentException(methodDescription + " does not take a single Object-typed argument");
                            }
                            throw new IllegalArgumentException(methodDescription + " does not return an Object-type");
                        }
                        throw new IllegalArgumentException(typeDescription + " must declare exactly one abstract method");
                    }
                    throw new IllegalArgumentException(typeDescription + " is mot public");
                }
                throw new IllegalArgumentException(typeDescription + " must not extend other interfaces");
            }
            throw new IllegalArgumentException(typeDescription + " is not an interface");
        }

        public Binder(MethodDescription methodDescription) {
            this.forwardingMethod = methodDescription;
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<Pipe> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            if (parameterDescription.getType().asErasure().equals(this.forwardingMethod.getDeclaringType())) {
                if (methodDescription.isStatic()) {
                    return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
                }
                return new MethodDelegationBinder.ParameterBinding.Anonymous(new RedirectionProxy(this.forwardingMethod.getDeclaringType().asErasure(), methodDescription, assigner, ((Boolean) loadable.getValue(SERIALIZABLE_PROXY).resolve(Boolean.class)).booleanValue()));
            }
            throw new IllegalStateException("Illegal use of @Pipe for " + parameterDescription + " which was installed for " + this.forwardingMethod.getDeclaringType());
        }
    }

    boolean serializableProxy() default false;
}
