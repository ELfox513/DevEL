package net.bytebuddy.implementation.auxiliary;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.MethodAccessorFactory;
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
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MethodCallProxy implements AuxiliaryType {
    private static final String FIELD_NAME_PREFIX = "argument";
    private final Assigner assigner;
    private final boolean serializableProxy;
    private final Implementation.SpecialMethodInvocation specialMethodInvocation;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class AssignableSignatureCall extends StackManipulation.AbstractBase {
        private final boolean serializable;
        private final Implementation.SpecialMethodInvocation specialMethodInvocation;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                AssignableSignatureCall assignableSignatureCall = (AssignableSignatureCall) obj;
                return this.serializable == assignableSignatureCall.serializable && this.specialMethodInvocation.equals(assignableSignatureCall.specialMethodInvocation);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.specialMethodInvocation.hashCode()) * 31) + (this.serializable ? 1 : 0);
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            TypeDescription register = context.register(new MethodCallProxy(this.specialMethodInvocation, this.serializable));
            return new StackManipulation.Compound(TypeCreation.m14974of(register), Duplication.SINGLE, MethodVariableAccess.allArgumentsOf(this.specialMethodInvocation.getMethodDescription()).prependThisReference(), MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly())).apply(methodVisitor, context);
        }

        public AssignableSignatureCall(Implementation.SpecialMethodInvocation specialMethodInvocation, boolean z) {
            this.specialMethodInvocation = specialMethodInvocation;
            this.serializable = z;
        }
    }

    /* loaded from: classes.dex */
    public enum PrecomputedMethodGraph implements MethodGraph.Compiler {
        INSTANCE;
        
        private final transient MethodGraph.Linked methodGraph;

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        public MethodGraph.Linked compile(TypeDefinition typeDefinition) {
            return this.methodGraph;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        @Deprecated
        public MethodGraph.Linked compile(TypeDescription typeDescription) {
            return this.methodGraph;
        }

        PrecomputedMethodGraph() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            TypeDescription m15196of = TypeDescription.ForLoadedType.m15196of(Callable.class);
            List emptyList = Collections.emptyList();
            TypeDescription.Generic generic = TypeDescription.Generic.OBJECT;
            List emptyList2 = Collections.emptyList();
            List singletonList = Collections.singletonList(TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(Exception.class));
            List emptyList3 = Collections.emptyList();
            AnnotationValue<?, ?> annotationValue = AnnotationValue.UNDEFINED;
            TypeDescription.Generic generic2 = TypeDescription.Generic.UNDEFINED;
            MethodDescription.Latent latent = new MethodDescription.Latent(m15196of, "call", 1025, emptyList, generic, emptyList2, singletonList, emptyList3, annotationValue, generic2);
            linkedHashMap.put(latent.asSignatureToken(), new MethodGraph.Node.Simple(latent));
            MethodDescription.Latent latent2 = new MethodDescription.Latent(TypeDescription.ForLoadedType.m15196of(Runnable.class), "run", 1025, Collections.emptyList(), TypeDescription.Generic.VOID, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), annotationValue, generic2);
            linkedHashMap.put(latent2.asSignatureToken(), new MethodGraph.Node.Simple(latent2));
            MethodGraph.Simple simple = new MethodGraph.Simple(linkedHashMap);
            this.methodGraph = new MethodGraph.Linked.Delegation(simple, simple, Collections.emptyMap());
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        public MethodGraph.Linked compile(TypeDefinition typeDefinition, TypeDescription typeDescription) {
            return this.methodGraph;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        @Deprecated
        public MethodGraph.Linked compile(TypeDescription typeDescription, TypeDescription typeDescription2) {
            return this.methodGraph;
        }
    }

    public MethodCallProxy(Implementation.SpecialMethodInvocation specialMethodInvocation, boolean z) {
        this(specialMethodInvocation, z, Assigner.DEFAULT);
    }

    private static String fieldName(int i) {
        return FIELD_NAME_PREFIX + i;
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MethodCallProxy methodCallProxy = (MethodCallProxy) obj;
            return this.serializableProxy == methodCallProxy.serializableProxy && this.specialMethodInvocation.equals(methodCallProxy.specialMethodInvocation) && this.assigner.equals(methodCallProxy.assigner);
        }
        return false;
    }

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public String getSuffix() {
        StringBuilder sb = new StringBuilder();
        sb.append(RandomString.hashOf(this.specialMethodInvocation.getMethodDescription().hashCode()));
        sb.append(this.serializableProxy ? "S" : "0");
        return sb.toString();
    }

    public int hashCode() {
        return (((((getClass().hashCode() * 31) + this.specialMethodInvocation.hashCode()) * 31) + (this.serializableProxy ? 1 : 0)) * 31) + this.assigner.hashCode();
    }

    /* loaded from: classes.dex */
    public enum ConstructorCall implements Implementation {
        INSTANCE;
        
        private final MethodDescription objectTypeDefaultConstructor = (MethodDescription) TypeDescription.OBJECT.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly();

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

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class MethodCall implements Implementation {
        private final MethodDescription accessorMethod;
        private final Assigner assigner;

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
                ArrayList arrayList = new ArrayList(declaredFields.size());
                Iterator<T> it = declaredFields.iterator();
                while (it.hasNext()) {
                    arrayList.add(new StackManipulation.Compound(MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription) it.next()).read()));
                }
                return new ByteCodeAppender.Size(new StackManipulation.Compound(new StackManipulation.Compound(arrayList), MethodInvocation.invoke(MethodCall.this.accessorMethod), MethodCall.this.assigner.assign(MethodCall.this.accessorMethod.getReturnType(), methodDescription.getReturnType(), Assigner.Typing.DYNAMIC), MethodReturn.m14940of(methodDescription.getReturnType())).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
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
                return this.accessorMethod.equals(methodCall.accessorMethod) && this.assigner.equals(methodCall.assigner);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.accessorMethod.hashCode()) * 31) + this.assigner.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        public MethodCall(MethodDescription methodDescription, Assigner assigner) {
            this.accessorMethod = methodDescription;
            this.assigner = assigner;
        }
    }

    public MethodCallProxy(Implementation.SpecialMethodInvocation specialMethodInvocation, boolean z, Assigner assigner) {
        this.specialMethodInvocation = specialMethodInvocation;
        this.serializableProxy = z;
        this.assigner = assigner;
    }

    private static LinkedHashMap<String, TypeDescription> extractFields(MethodDescription methodDescription) {
        LinkedHashMap<String, TypeDescription> linkedHashMap = new LinkedHashMap<>();
        int i = 0;
        if (!methodDescription.isStatic()) {
            linkedHashMap.put(fieldName(0), methodDescription.getDeclaringType().asErasure());
            i = 1;
        }
        Iterator<T> it = methodDescription.getParameters().iterator();
        while (it.hasNext()) {
            linkedHashMap.put(fieldName(i), ((ParameterDescription) it.next()).getType().asErasure());
            i++;
        }
        return linkedHashMap;
    }

    @Override // net.bytebuddy.implementation.auxiliary.AuxiliaryType
    public DynamicType make(String str, ClassFileVersion classFileVersion, MethodAccessorFactory methodAccessorFactory) {
        MethodDescription.InDefinedShape registerAccessorFor = methodAccessorFactory.registerAccessorFor(this.specialMethodInvocation, MethodAccessorFactory.AccessType.DEFAULT);
        LinkedHashMap<String, TypeDescription> extractFields = extractFields(registerAccessorFor);
        DynamicType.Builder intercept = new ByteBuddy(classFileVersion).with(TypeValidation.DISABLED).with(PrecomputedMethodGraph.INSTANCE).subclass(Object.class, (ConstructorStrategy) ConstructorStrategy.Default.NO_CONSTRUCTORS).name(str).modifiers(AuxiliaryType.DEFAULT_TYPE_MODIFIER).implement(Runnable.class, Callable.class).intercept(new MethodCall(registerAccessorFor, this.assigner)).implement(this.serializableProxy ? new Class[]{Serializable.class} : new Class[0]).defineConstructor(new ModifierContributor.ForMethod[0]).withParameters(extractFields.values()).intercept(ConstructorCall.INSTANCE);
        for (Map.Entry<String, TypeDescription> entry : extractFields.entrySet()) {
            intercept = intercept.defineField(entry.getKey(), entry.getValue(), Visibility.PRIVATE);
        }
        return intercept.make();
    }
}
