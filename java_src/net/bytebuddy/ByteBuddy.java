package net.bytebuddy;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.modifier.EnumerationState;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Ownership;
import net.bytebuddy.description.modifier.TypeManifestation;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.PackageDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.TargetType;
import net.bytebuddy.dynamic.Transformer;
import net.bytebuddy.dynamic.VisibilityBridgeStrategy;
import net.bytebuddy.dynamic.scaffold.ClassWriterStrategy;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.MethodRegistry;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.inline.DecoratingDynamicTypeBuilder;
import net.bytebuddy.dynamic.scaffold.inline.MethodNameTransformer;
import net.bytebuddy.dynamic.scaffold.inline.RebaseDynamicTypeBuilder;
import net.bytebuddy.dynamic.scaffold.inline.RedefinitionDynamicTypeBuilder;
import net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy;
import net.bytebuddy.dynamic.scaffold.subclass.SubclassDynamicTypeBuilder;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.MethodCall;
import net.bytebuddy.implementation.SuperMethodCall;
import net.bytebuddy.implementation.attribute.AnnotationRetention;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.attribute.MethodAttributeAppender;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ByteBuddy {
    private static final boolean ACCESS_CONTROLLER;
    private static final String BYTE_BUDDY_DEFAULT_CONTEXT_NAME = "synthetic";
    private static final String BYTE_BUDDY_DEFAULT_PREFIX = "ByteBuddy";
    private static final String BYTE_BUDDY_DEFAULT_SUFFIX = "auxiliary";
    @MaybeNull
    private static final AuxiliaryType.NamingStrategy DEFAULT_AUXILIARY_NAMING_STRATEGY;
    @MaybeNull
    private static final Implementation.Context.Factory DEFAULT_IMPLEMENTATION_CONTEXT_FACTORY;
    public static final String DEFAULT_NAMING_PROPERTY = "net.bytebuddy.naming";
    @MaybeNull
    private static final NamingStrategy DEFAULT_NAMING_STRATEGY;
    public final AnnotationRetention annotationRetention;
    public final AnnotationValueFilter.Factory annotationValueFilterFactory;
    public final AuxiliaryType.NamingStrategy auxiliaryTypeNamingStrategy;
    public final ClassFileVersion classFileVersion;
    public final ClassWriterStrategy classWriterStrategy;
    public final LatentMatcher<? super MethodDescription> ignoredMethods;
    public final Implementation.Context.Factory implementationContextFactory;
    public final InstrumentedType.Factory instrumentedTypeFactory;
    public final MethodGraph.Compiler methodGraphCompiler;
    public final NamingStrategy namingStrategy;
    public final TypeValidation typeValidation;
    public final VisibilityBridgeStrategy visibilityBridgeStrategy;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class EnumerationImplementation implements Implementation {
        public static final String CLONE_METHOD_NAME = "clone";
        private static final int ENUM_FIELD_MODIFIERS = 25;
        private static final String ENUM_VALUES = "$VALUES";
        public static final String ENUM_VALUES_METHOD_NAME = "values";
        public static final String ENUM_VALUE_OF_METHOD_NAME = "valueOf";
        private final List<String> values;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ValuesMethodAppender implements ByteCodeAppender {
            private final TypeDescription instrumentedType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ValuesMethodAppender) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                FieldDescription fieldDescription = (FieldDescription) this.instrumentedType.getDeclaredFields().filter(ElementMatchers.named(EnumerationImplementation.ENUM_VALUES)).getOnly();
                return new ByteCodeAppender.Size(new StackManipulation.Compound(FieldAccess.forField(fieldDescription).read(), MethodInvocation.invoke((MethodDescription) TypeDescription.Generic.OBJECT.getDeclaredMethods().filter(ElementMatchers.named(EnumerationImplementation.CLONE_METHOD_NAME)).getOnly()).virtual(fieldDescription.getType().asErasure()), TypeCasting.m14971to(fieldDescription.getType().asErasure()), MethodReturn.REFERENCE).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
            }

            public ValuesMethodAppender(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new ValuesMethodAppender(target.getInstrumentedType());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.values.equals(((EnumerationImplementation) obj).values);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.values.hashCode();
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class InitializationAppender implements ByteCodeAppender {
            private final List<String> values;

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                TypeDescription asErasure = methodDescription.getDeclaringType().asErasure();
                MethodDescription methodDescription2 = (MethodDescription) asErasure.getDeclaredMethods().filter(ElementMatchers.isConstructor().and(ElementMatchers.takesArguments(String.class, Integer.TYPE))).getOnly();
                StackManipulation stackManipulation = StackManipulation.Trivial.INSTANCE;
                ArrayList<FieldDescription> arrayList = new ArrayList(this.values.size());
                int i = 0;
                for (String str : this.values) {
                    FieldDescription fieldDescription = (FieldDescription) asErasure.getDeclaredFields().filter(ElementMatchers.named(str)).getOnly();
                    StackManipulation compound = new StackManipulation.Compound(stackManipulation, TypeCreation.m14974of(asErasure), Duplication.SINGLE, new TextConstant(str), IntegerConstant.forValue(i), MethodInvocation.invoke(methodDescription2), FieldAccess.forField(fieldDescription).write());
                    arrayList.add(fieldDescription);
                    i++;
                    stackManipulation = compound;
                }
                ArrayList arrayList2 = new ArrayList(this.values.size());
                for (FieldDescription fieldDescription2 : arrayList) {
                    arrayList2.add(FieldAccess.forField(fieldDescription2).read());
                }
                return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulation, ArrayFactory.forType(asErasure.asGenericType()).withValues(arrayList2), FieldAccess.forField((FieldDescription.InDefinedShape) asErasure.getDeclaredFields().filter(ElementMatchers.named(EnumerationImplementation.ENUM_VALUES)).getOnly()).write()).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.values.equals(((InitializationAppender) obj).values);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.values.hashCode();
            }

            public InitializationAppender(List<String> list) {
                this.values = list;
            }
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            for (String str : this.values) {
                instrumentedType = instrumentedType.withField(new FieldDescription.Token(str, 16409, TargetType.DESCRIPTION.asGenericType()));
            }
            return instrumentedType.withField(new FieldDescription.Token(ENUM_VALUES, 4121, TypeDescription.ArrayProjection.m15199of(TargetType.DESCRIPTION).asGenericType())).withInitializer(new InitializationAppender(this.values));
        }

        public EnumerationImplementation(List<String> list) {
            this.values = list;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public enum RecordConstructorStrategy implements ConstructorStrategy, Implementation {
        INSTANCE;

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target.getInstrumentedType());
        }

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

            public Appender(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                int i = 1;
                if (methodDescription.isMethod()) {
                    return new ByteCodeAppender.Simple(MethodVariableAccess.loadThis(), FieldAccess.forField((FieldDescription.InDefinedShape) this.instrumentedType.getDeclaredFields().filter(ElementMatchers.named(methodDescription.getName())).getOnly()).read(), MethodReturn.m14940of(methodDescription.getReturnType())).apply(methodVisitor, context, methodDescription);
                }
                ArrayList arrayList = new ArrayList((this.instrumentedType.getRecordComponents().size() * 3) + 2);
                arrayList.add(MethodVariableAccess.loadThis());
                arrayList.add(MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.Latent(JavaType.RECORD.getTypeStub(), new MethodDescription.Token(1))));
                for (RecordComponentDescription.InDefinedShape inDefinedShape : this.instrumentedType.getRecordComponents()) {
                    arrayList.add(MethodVariableAccess.loadThis());
                    arrayList.add(MethodVariableAccess.m14936of(inDefinedShape.getType()).loadFrom(i));
                    arrayList.add(FieldAccess.forField((FieldDescription.InDefinedShape) this.instrumentedType.getDeclaredFields().filter(ElementMatchers.named(inDefinedShape.getActualName())).getOnly()).write());
                    i += inDefinedShape.getType().getStackSize().getSize();
                }
                arrayList.add(MethodReturn.VOID);
                return new ByteCodeAppender.Simple(arrayList).apply(methodVisitor, context, methodDescription);
            }
        }

        @Override // net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy
        public List<MethodDescription.Token> extractConstructors(TypeDescription typeDescription) {
            ArrayList arrayList = new ArrayList(typeDescription.getRecordComponents().size());
            for (RecordComponentDescription.InDefinedShape inDefinedShape : typeDescription.getRecordComponents()) {
                arrayList.add(new ParameterDescription.Token(inDefinedShape.getType(), inDefinedShape.getDeclaredAnnotations().filter(ElementMatchers.targetsElement(ElementType.CONSTRUCTOR)), inDefinedShape.getActualName(), 0));
            }
            return Collections.singletonList(new MethodDescription.Token(MethodDescription.CONSTRUCTOR_INTERNAL_NAME, 1, Collections.emptyList(), TypeDescription.Generic.VOID, arrayList, Collections.emptyList(), Collections.emptyList(), AnnotationValue.UNDEFINED, TypeDescription.Generic.UNDEFINED));
        }

        @Override // net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy
        public MethodRegistry inject(TypeDescription typeDescription, MethodRegistry methodRegistry) {
            return methodRegistry.prepend(new LatentMatcher.Resolved(ElementMatchers.isConstructor().and(ElementMatchers.takesGenericArguments(typeDescription.getRecordComponents().asTypeList()))), new MethodRegistry.Handler.ForImplementation(this), MethodAttributeAppender.ForInstrumentedMethod.EXCLUDING_RECEIVER, Transformer.NoOp.make());
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            for (RecordComponentDescription.InDefinedShape inDefinedShape : instrumentedType.getRecordComponents()) {
                instrumentedType = instrumentedType.withField(new FieldDescription.Token(inDefinedShape.getActualName(), 18, inDefinedShape.getType(), inDefinedShape.getDeclaredAnnotations().filter(ElementMatchers.targetsElement(ElementType.FIELD)))).withMethod(new MethodDescription.Token(inDefinedShape.getActualName(), 1, Collections.emptyList(), inDefinedShape.getType(), Collections.emptyList(), Collections.emptyList(), inDefinedShape.getDeclaredAnnotations().filter(ElementMatchers.targetsElement(ElementType.METHOD)), AnnotationValue.UNDEFINED, TypeDescription.Generic.UNDEFINED));
            }
            return instrumentedType;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum HASH_CODE uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static final class RecordObjectMethod implements Implementation {
        private static final /* synthetic */ RecordObjectMethod[] $VALUES;
        public static final RecordObjectMethod EQUALS;
        public static final RecordObjectMethod HASH_CODE;
        public static final RecordObjectMethod TO_STRING;
        private final List<? extends TypeDescription> arguments;
        private final String name;
        private final TypeDescription returnType;
        private final StackManipulation stackManipulation;

        public static RecordObjectMethod valueOf(String str) {
            return (RecordObjectMethod) Enum.valueOf(RecordObjectMethod.class, str);
        }

        public static RecordObjectMethod[] values() {
            return (RecordObjectMethod[]) $VALUES.clone();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        static {
            StackManipulation.Trivial trivial = StackManipulation.Trivial.INSTANCE;
            RecordObjectMethod recordObjectMethod = new RecordObjectMethod("HASH_CODE", 0, "hashCode", trivial, Integer.TYPE, new Class[0]);
            HASH_CODE = recordObjectMethod;
            RecordObjectMethod recordObjectMethod2 = new RecordObjectMethod("EQUALS", 1, "equals", MethodVariableAccess.REFERENCE.loadFrom(1), Boolean.TYPE, Object.class);
            EQUALS = recordObjectMethod2;
            RecordObjectMethod recordObjectMethod3 = new RecordObjectMethod("TO_STRING", 2, "toString", trivial, String.class, new Class[0]);
            TO_STRING = recordObjectMethod3;
            $VALUES = new RecordObjectMethod[]{recordObjectMethod, recordObjectMethod2, recordObjectMethod3};
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = new ArrayList(target.getInstrumentedType().getRecordComponents().size());
            for (RecordComponentDescription.InDefinedShape inDefinedShape : target.getInstrumentedType().getRecordComponents()) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(inDefinedShape.getActualName());
                arrayList.add(JavaConstant.MethodHandle.ofGetter((FieldDescription.InDefinedShape) target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.named(inDefinedShape.getActualName())).getOnly()));
            }
            TypeDescription typeStub = JavaType.OBJECT_METHODS.getTypeStub();
            TypeDescription.Generic generic = TypeDescription.Generic.OBJECT;
            TypeDescription typeDescription = TypeDescription.STRING;
            return new ByteCodeAppender.Simple(MethodVariableAccess.loadThis(), this.stackManipulation, MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.Latent(typeStub, new MethodDescription.Token("bootstrap", 9, generic, Arrays.asList(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub().asGenericType(), typeDescription.asGenericType(), JavaType.TYPE_DESCRIPTOR.getTypeStub().asGenericType(), TypeDescription.CLASS.asGenericType(), typeDescription.asGenericType(), TypeDescription.ArrayProjection.m15199of(JavaType.METHOD_HANDLE.getTypeStub()).asGenericType())))).dynamic(this.name, this.returnType, CompoundList.m14778of(target.getInstrumentedType(), this.arguments), CompoundList.m14776of(Arrays.asList(JavaConstant.Simple.m14762of(target.getInstrumentedType()), JavaConstant.Simple.ofLoaded(sb.toString())), (List) arrayList)), MethodReturn.m14940of(this.returnType));
        }

        private RecordObjectMethod(String str, int i, String str2, StackManipulation stackManipulation, Class cls, Class... clsArr) {
            this.name = str2;
            this.stackManipulation = stackManipulation;
            this.returnType = TypeDescription.ForLoadedType.m15196of(cls);
            this.arguments = new TypeList.ForLoadedTypes(clsArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    static {
        /*
            r0 = 0
            r1 = 0
            java.lang.String r2 = "java.security.AccessController"
            java.lang.Class.forName(r2, r0, r1)     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
            java.lang.String r2 = "net.bytebuddy.securitymanager"
            java.lang.String r3 = "true"
            java.lang.String r2 = java.lang.System.getProperty(r2, r3)     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
            boolean r2 = java.lang.Boolean.parseBoolean(r2)     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
            net.bytebuddy.ByteBuddy.ACCESS_CONTROLLER = r2     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
            goto L19
        L16:
            r0 = 1
        L17:
            net.bytebuddy.ByteBuddy.ACCESS_CONTROLLER = r0
        L19:
            net.bytebuddy.utility.privilege.GetSystemPropertyAction r0 = new net.bytebuddy.utility.privilege.GetSystemPropertyAction
            java.lang.String r2 = "net.bytebuddy.naming"
            r0.<init>(r2)
            java.lang.Object r0 = doPrivileged(r0)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r2 = "synthetic"
            java.lang.String r3 = "auxiliary"
            java.lang.String r4 = "net.bytebuddy.renamed"
            java.lang.String r5 = "ByteBuddy"
            if (r0 != 0) goto L54
            net.bytebuddy.utility.GraalImageCode r0 = net.bytebuddy.utility.GraalImageCode.getCurrent()
            boolean r0 = r0.isDefined()
            if (r0 == 0) goto L51
            net.bytebuddy.NamingStrategy$Suffixing r1 = new net.bytebuddy.NamingStrategy$Suffixing
            net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix r0 = new net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix
            net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType r6 = net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForUnnamedType.INSTANCE
            r0.<init>(r6)
            r1.<init>(r5, r0, r4)
            net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing r0 = new net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing
            r0.<init>(r3)
            net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix r3 = new net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix
            r3.<init>(r2)
            goto Lb1
        L51:
            r0 = r1
            r3 = r0
            goto Lb1
        L54:
            java.lang.String r1 = "fixed"
            boolean r1 = r0.equalsIgnoreCase(r1)
            if (r1 == 0) goto L6e
            net.bytebuddy.NamingStrategy$Suffixing r1 = new net.bytebuddy.NamingStrategy$Suffixing
            net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType r0 = net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForUnnamedType.INSTANCE
            r1.<init>(r5, r0, r4)
            net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing r0 = new net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing
            r0.<init>(r3)
            net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix r3 = new net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix
            r3.<init>(r2)
            goto Lb1
        L6e:
            java.lang.String r1 = "caller"
            boolean r1 = r0.equalsIgnoreCase(r1)
            if (r1 == 0) goto L8d
            net.bytebuddy.NamingStrategy$Suffixing r1 = new net.bytebuddy.NamingStrategy$Suffixing
            net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix r0 = new net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix
            net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType r6 = net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForUnnamedType.INSTANCE
            r0.<init>(r6)
            r1.<init>(r5, r0, r4)
            net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing r0 = new net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing
            r0.<init>(r3)
            net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix r3 = new net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix
            r3.<init>(r2)
            goto Lb1
        L8d:
            long r0 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Exception -> Lb8
            net.bytebuddy.NamingStrategy$SuffixingRandom r6 = new net.bytebuddy.NamingStrategy$SuffixingRandom
            net.bytebuddy.NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType r7 = net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForUnnamedType.INSTANCE
            net.bytebuddy.utility.RandomString r8 = new net.bytebuddy.utility.RandomString
            r9 = 8
            java.util.Random r10 = new java.util.Random
            r10.<init>(r0)
            r8.<init>(r9, r10)
            r6.<init>(r5, r7, r4, r8)
            net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing r1 = new net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$Suffixing
            r1.<init>(r3)
            net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix r0 = new net.bytebuddy.implementation.Implementation$Context$Default$Factory$WithFixedSuffix
            r0.<init>(r2)
            r3 = r0
            r0 = r1
            r1 = r6
        Lb1:
            net.bytebuddy.ByteBuddy.DEFAULT_NAMING_STRATEGY = r1
            net.bytebuddy.ByteBuddy.DEFAULT_AUXILIARY_NAMING_STRATEGY = r0
            net.bytebuddy.ByteBuddy.DEFAULT_IMPLEMENTATION_CONTEXT_FACTORY = r3
            return
        Lb8:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "'net.bytebuddy.naming' is set to an unknown, non-numeric value: "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.ByteBuddy.<clinit>():void");
    }

    public ByteBuddy() {
        this(ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5));
    }

    @MaybeNull
    @AccessControllerPlugin.Enhance
    private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
    }

    public <T> DynamicType.Builder<T> decorate(Class<T> cls) {
        return decorate(cls, ClassFileLocator.ForClassLoader.m15176of(cls.getClassLoader()));
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ByteBuddy byteBuddy = (ByteBuddy) obj;
            return this.annotationRetention.equals(byteBuddy.annotationRetention) && this.typeValidation.equals(byteBuddy.typeValidation) && this.classFileVersion.equals(byteBuddy.classFileVersion) && this.namingStrategy.equals(byteBuddy.namingStrategy) && this.auxiliaryTypeNamingStrategy.equals(byteBuddy.auxiliaryTypeNamingStrategy) && this.annotationValueFilterFactory.equals(byteBuddy.annotationValueFilterFactory) && this.implementationContextFactory.equals(byteBuddy.implementationContextFactory) && this.methodGraphCompiler.equals(byteBuddy.methodGraphCompiler) && this.instrumentedTypeFactory.equals(byteBuddy.instrumentedTypeFactory) && this.ignoredMethods.equals(byteBuddy.ignoredMethods) && this.visibilityBridgeStrategy.equals(byteBuddy.visibilityBridgeStrategy) && this.classWriterStrategy.equals(byteBuddy.classWriterStrategy);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((((((getClass().hashCode() * 31) + this.classFileVersion.hashCode()) * 31) + this.namingStrategy.hashCode()) * 31) + this.auxiliaryTypeNamingStrategy.hashCode()) * 31) + this.annotationValueFilterFactory.hashCode()) * 31) + this.annotationRetention.hashCode()) * 31) + this.implementationContextFactory.hashCode()) * 31) + this.methodGraphCompiler.hashCode()) * 31) + this.instrumentedTypeFactory.hashCode()) * 31) + this.ignoredMethods.hashCode()) * 31) + this.typeValidation.hashCode()) * 31) + this.visibilityBridgeStrategy.hashCode()) * 31) + this.classWriterStrategy.hashCode();
    }

    public ByteBuddy ignore(ElementMatcher<? super MethodDescription> elementMatcher) {
        return ignore(new LatentMatcher.Resolved(elementMatcher));
    }

    public DynamicType.Builder<? extends Enum<?>> makeEnumeration(String... strArr) {
        return makeEnumeration(Arrays.asList(strArr));
    }

    public DynamicType.Builder<?> makeInterface() {
        return makeInterface((Collection<? extends TypeDefinition>) Collections.emptyList());
    }

    public DynamicType.Builder<?> makePackage(String str) {
        InstrumentedType.Factory factory = this.instrumentedTypeFactory;
        return new SubclassDynamicTypeBuilder(factory.subclass(str + "." + PackageDescription.PACKAGE_CLASS_NAME, PackageDescription.PACKAGE_MODIFIERS, TypeDescription.Generic.OBJECT), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, ConstructorStrategy.Default.NO_CONSTRUCTORS);
    }

    public <T> DynamicType.Builder<T> rebase(Class<T> cls) {
        return rebase(cls, ClassFileLocator.ForClassLoader.m15176of(cls.getClassLoader()));
    }

    public <T> DynamicType.Builder<T> redefine(Class<T> cls) {
        return redefine(cls, ClassFileLocator.ForClassLoader.m15176of(cls.getClassLoader()));
    }

    public <T> DynamicType.Builder<T> subclass(Class<T> cls) {
        return (DynamicType.Builder<T>) subclass(TypeDescription.ForLoadedType.m15196of(cls));
    }

    public ByteBuddy with(ClassFileVersion classFileVersion) {
        return new ByteBuddy(classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ByteBuddy(net.bytebuddy.ClassFileVersion r16) {
        /*
            r15 = this;
            net.bytebuddy.NamingStrategy r0 = net.bytebuddy.ByteBuddy.DEFAULT_NAMING_STRATEGY
            if (r0 != 0) goto Lb
            net.bytebuddy.NamingStrategy$SuffixingRandom r0 = new net.bytebuddy.NamingStrategy$SuffixingRandom
            java.lang.String r1 = "ByteBuddy"
            r0.<init>(r1)
        Lb:
            r4 = r0
            net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy r0 = net.bytebuddy.ByteBuddy.DEFAULT_AUXILIARY_NAMING_STRATEGY
            if (r0 != 0) goto L17
            net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$SuffixingRandom r0 = new net.bytebuddy.implementation.auxiliary.AuxiliaryType$NamingStrategy$SuffixingRandom
            java.lang.String r1 = "auxiliary"
            r0.<init>(r1)
        L17:
            r5 = r0
            net.bytebuddy.implementation.attribute.AnnotationValueFilter$Default r6 = net.bytebuddy.implementation.attribute.AnnotationValueFilter.Default.APPEND_DEFAULTS
            net.bytebuddy.implementation.attribute.AnnotationRetention r7 = net.bytebuddy.implementation.attribute.AnnotationRetention.ENABLED
            net.bytebuddy.implementation.Implementation$Context$Factory r0 = net.bytebuddy.ByteBuddy.DEFAULT_IMPLEMENTATION_CONTEXT_FACTORY
            if (r0 != 0) goto L22
            net.bytebuddy.implementation.Implementation$Context$Default$Factory r0 = net.bytebuddy.implementation.Implementation.Context.Default.Factory.INSTANCE
        L22:
            r8 = r0
            net.bytebuddy.dynamic.scaffold.MethodGraph$Compiler r9 = net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.DEFAULT
            net.bytebuddy.dynamic.scaffold.InstrumentedType$Factory$Default r10 = net.bytebuddy.dynamic.scaffold.InstrumentedType.Factory.Default.MODIFIABLE
            net.bytebuddy.dynamic.scaffold.TypeValidation r11 = net.bytebuddy.dynamic.scaffold.TypeValidation.ENABLED
            net.bytebuddy.dynamic.VisibilityBridgeStrategy$Default r12 = net.bytebuddy.dynamic.VisibilityBridgeStrategy.Default.ALWAYS
            net.bytebuddy.dynamic.scaffold.ClassWriterStrategy$Default r13 = net.bytebuddy.dynamic.scaffold.ClassWriterStrategy.Default.CONSTANT_POOL_RETAINING
            net.bytebuddy.matcher.LatentMatcher$Resolved r14 = new net.bytebuddy.matcher.LatentMatcher$Resolved
            net.bytebuddy.matcher.ElementMatcher$Junction r0 = net.bytebuddy.matcher.ElementMatchers.isSynthetic()
            net.bytebuddy.matcher.ElementMatcher$Junction r1 = net.bytebuddy.matcher.ElementMatchers.isDefaultFinalizer()
            net.bytebuddy.matcher.ElementMatcher$Junction r0 = r0.mo14830or(r1)
            r14.<init>(r0)
            r2 = r15
            r3 = r16
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.ByteBuddy.<init>(net.bytebuddy.ClassFileVersion):void");
    }

    public <T> DynamicType.Builder<T> decorate(Class<T> cls, ClassFileLocator classFileLocator) {
        return decorate(TypeDescription.ForLoadedType.m15196of(cls), classFileLocator);
    }

    public ByteBuddy ignore(LatentMatcher<? super MethodDescription> latentMatcher) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, latentMatcher);
    }

    public DynamicType.Builder<? extends Annotation> makeAnnotation() {
        InstrumentedType.Factory factory = this.instrumentedTypeFactory;
        NamingStrategy namingStrategy = this.namingStrategy;
        TypeDescription.Generic generic = TypeDescription.Generic.ANNOTATION;
        return new SubclassDynamicTypeBuilder(factory.subclass(namingStrategy.subclass(generic), ModifierContributor.Resolver.m15201of(Visibility.PUBLIC, TypeManifestation.ANNOTATION).resolve(), TypeDescription.Generic.OBJECT).withInterfaces((TypeList.Generic) new TypeList.Generic.Explicit(generic)), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, ConstructorStrategy.Default.NO_CONSTRUCTORS);
    }

    public DynamicType.Builder<? extends Enum<?>> makeEnumeration(Collection<? extends String> collection) {
        if (!collection.isEmpty()) {
            TypeDescription.Generic build = TypeDescription.Generic.Builder.parameterizedType(Enum.class, TargetType.class).build();
            InstrumentedType.Factory factory = this.instrumentedTypeFactory;
            String subclass = this.namingStrategy.subclass(build);
            Visibility visibility = Visibility.PUBLIC;
            DynamicType.Builder intercept = new SubclassDynamicTypeBuilder(factory.subclass(subclass, ModifierContributor.Resolver.m15201of(visibility, TypeManifestation.FINAL, EnumerationState.ENUMERATION).resolve(), build), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, ConstructorStrategy.Default.NO_CONSTRUCTORS).defineConstructor(Visibility.PRIVATE).withParameters(String.class, Integer.TYPE).intercept(SuperMethodCall.INSTANCE);
            Ownership ownership = Ownership.STATIC;
            return intercept.defineMethod(EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, TargetType.class, visibility, ownership).withParameters(String.class).intercept(MethodCall.invoke((MethodDescription) build.getDeclaredMethods().filter(ElementMatchers.named(EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME).and(ElementMatchers.takesArguments(Class.class, String.class))).getOnly()).withOwnType().withArgument(0).withAssigner(Assigner.DEFAULT, Assigner.Typing.DYNAMIC)).defineMethod(EnumerationImplementation.ENUM_VALUES_METHOD_NAME, TargetType[].class, visibility, ownership).intercept(new EnumerationImplementation(new ArrayList(collection)));
        }
        throw new IllegalArgumentException("Require at least one enumeration constant");
    }

    public <T> DynamicType.Builder<T> makeInterface(Class<T> cls) {
        return (DynamicType.Builder<T>) makeInterface(Collections.singletonList(cls));
    }

    public DynamicType.Builder<?> makeRecord() {
        String name = JavaType.RECORD.getTypeStub().getName();
        TypeDescription.Generic generic = TypeDescription.Generic.OBJECT;
        TypeDescription.Generic asGenericType = InstrumentedType.Default.m15137of(name, generic, Visibility.PUBLIC).withMethod(new MethodDescription.Token(4)).withMethod(new MethodDescription.Token("hashCode", 1025, TypeDescription.ForLoadedType.m15196of(Integer.TYPE).asGenericType())).withMethod(new MethodDescription.Token("equals", 1025, TypeDescription.ForLoadedType.m15196of(Boolean.TYPE).asGenericType(), Collections.singletonList(generic))).withMethod(new MethodDescription.Token("toString", 1025, TypeDescription.ForLoadedType.m15196of(String.class).asGenericType())).asGenericType();
        return new SubclassDynamicTypeBuilder(this.instrumentedTypeFactory.subclass(this.namingStrategy.subclass(asGenericType), 17, asGenericType).withRecord(true), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, RecordConstructorStrategy.INSTANCE).method(ElementMatchers.isHashCode()).intercept(RecordObjectMethod.HASH_CODE).method(ElementMatchers.isEquals()).intercept(RecordObjectMethod.EQUALS).method(ElementMatchers.isToString()).intercept(RecordObjectMethod.TO_STRING);
    }

    public <T> DynamicType.Builder<T> rebase(Class<T> cls, ClassFileLocator classFileLocator) {
        return rebase(TypeDescription.ForLoadedType.m15196of(cls), classFileLocator);
    }

    public <T> DynamicType.Builder<T> redefine(Class<T> cls, ClassFileLocator classFileLocator) {
        return redefine(TypeDescription.ForLoadedType.m15196of(cls), classFileLocator);
    }

    public <T> DynamicType.Builder<T> subclass(Class<T> cls, ConstructorStrategy constructorStrategy) {
        return (DynamicType.Builder<T>) subclass(TypeDescription.ForLoadedType.m15196of(cls), constructorStrategy);
    }

    public ByteBuddy with(NamingStrategy namingStrategy) {
        return new ByteBuddy(this.classFileVersion, namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public <T> DynamicType.Builder<T> decorate(TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        if (!typeDescription.isArray() && !typeDescription.isPrimitive()) {
            return new DecoratingDynamicTypeBuilder(typeDescription, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.classWriterStrategy, this.ignoredMethods, classFileLocator);
        }
        throw new IllegalArgumentException("Cannot decorate array or primitive type: " + typeDescription);
    }

    public DynamicType.Builder<?> makeInterface(Type... typeArr) {
        return makeInterface(Arrays.asList(typeArr));
    }

    public <T> DynamicType.Builder<T> rebase(Class<T> cls, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer) {
        return rebase(TypeDescription.ForLoadedType.m15196of(cls), classFileLocator, methodNameTransformer);
    }

    public <T> DynamicType.Builder<T> redefine(TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        if (!typeDescription.isArray() && !typeDescription.isPrimitive()) {
            return new RedefinitionDynamicTypeBuilder(this.instrumentedTypeFactory.represent(typeDescription), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, typeDescription, classFileLocator);
        }
        throw new IllegalArgumentException("Cannot redefine array or primitive type: " + typeDescription);
    }

    public DynamicType.Builder<?> subclass(Type type) {
        return subclass(TypeDefinition.Sort.describe(type));
    }

    public ByteBuddy with(AuxiliaryType.NamingStrategy namingStrategy) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, namingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public DynamicType.Builder<?> makeInterface(List<? extends Type> list) {
        return makeInterface((Collection<? extends TypeDefinition>) new TypeList.Generic.ForLoadedTypes(list));
    }

    public <T> DynamicType.Builder<T> rebase(TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        return rebase(typeDescription, classFileLocator, MethodNameTransformer.Suffixing.withRandomSuffix());
    }

    public DynamicType.Builder<?> subclass(Type type, ConstructorStrategy constructorStrategy) {
        return subclass(TypeDefinition.Sort.describe(type), constructorStrategy);
    }

    public ByteBuddy with(AnnotationValueFilter.Factory factory) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, factory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public ByteBuddy(ClassFileVersion classFileVersion, NamingStrategy namingStrategy, AuxiliaryType.NamingStrategy namingStrategy2, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, Implementation.Context.Factory factory2, MethodGraph.Compiler compiler, InstrumentedType.Factory factory3, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, ClassWriterStrategy classWriterStrategy, LatentMatcher<? super MethodDescription> latentMatcher) {
        this.classFileVersion = classFileVersion;
        this.namingStrategy = namingStrategy;
        this.auxiliaryTypeNamingStrategy = namingStrategy2;
        this.annotationValueFilterFactory = factory;
        this.annotationRetention = annotationRetention;
        this.implementationContextFactory = factory2;
        this.methodGraphCompiler = compiler;
        this.instrumentedTypeFactory = factory3;
        this.typeValidation = typeValidation;
        this.visibilityBridgeStrategy = visibilityBridgeStrategy;
        this.classWriterStrategy = classWriterStrategy;
        this.ignoredMethods = latentMatcher;
    }

    public DynamicType.Builder<?> makeInterface(TypeDefinition... typeDefinitionArr) {
        return makeInterface((Collection<? extends TypeDefinition>) Arrays.asList(typeDefinitionArr));
    }

    public <T> DynamicType.Builder<T> rebase(TypeDescription typeDescription, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer) {
        if (!typeDescription.isArray() && !typeDescription.isPrimitive()) {
            return new RebaseDynamicTypeBuilder(this.instrumentedTypeFactory.represent(typeDescription), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, typeDescription, classFileLocator, methodNameTransformer);
        }
        throw new IllegalArgumentException("Cannot rebase array or primitive type: " + typeDescription);
    }

    public DynamicType.Builder<?> subclass(TypeDefinition typeDefinition) {
        return subclass(typeDefinition, ConstructorStrategy.Default.IMITATE_SUPER_CLASS_OPENING);
    }

    public ByteBuddy with(AnnotationRetention annotationRetention) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public DynamicType.Builder<?> makeInterface(Collection<? extends TypeDefinition> collection) {
        return subclass(Object.class, (ConstructorStrategy) ConstructorStrategy.Default.NO_CONSTRUCTORS).implement(collection).modifiers(TypeManifestation.INTERFACE, Visibility.PUBLIC);
    }

    public DynamicType.Builder<?> subclass(TypeDefinition typeDefinition, ConstructorStrategy constructorStrategy) {
        TypeDescription.Generic asGenericType;
        TypeList.Generic empty;
        if (!typeDefinition.isPrimitive() && !typeDefinition.isArray() && !typeDefinition.isFinal()) {
            if (typeDefinition.isInterface()) {
                asGenericType = TypeDescription.Generic.OBJECT;
                empty = new TypeList.Generic.Explicit(typeDefinition);
            } else {
                asGenericType = typeDefinition.asGenericType();
                empty = new TypeList.Generic.Empty();
            }
            return new SubclassDynamicTypeBuilder(this.instrumentedTypeFactory.subclass(this.namingStrategy.subclass(typeDefinition.asGenericType()), ModifierContributor.Resolver.m15201of(Visibility.PUBLIC, TypeManifestation.PLAIN).resolve(typeDefinition.getModifiers()), asGenericType).withInterfaces(empty), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, constructorStrategy);
        }
        throw new IllegalArgumentException("Cannot subclass primitive, array or final types: " + typeDefinition);
    }

    public ByteBuddy with(Implementation.Context.Factory factory) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, factory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public ByteBuddy with(MethodGraph.Compiler compiler) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, compiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public DynamicType.Builder<?> rebase(Package r2, ClassFileLocator classFileLocator) {
        return rebase(new PackageDescription.ForLoadedPackage(r2), classFileLocator);
    }

    public ByteBuddy with(InstrumentedType.Factory factory) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, factory, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public DynamicType.Builder<?> rebase(PackageDescription packageDescription, ClassFileLocator classFileLocator) {
        return rebase(new TypeDescription.ForPackageDescription(packageDescription), classFileLocator);
    }

    public ByteBuddy with(TypeValidation typeValidation) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public ByteBuddy with(VisibilityBridgeStrategy visibilityBridgeStrategy) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods);
    }

    public ByteBuddy with(ClassWriterStrategy classWriterStrategy) {
        return new ByteBuddy(this.classFileVersion, this.namingStrategy, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.instrumentedTypeFactory, this.typeValidation, this.visibilityBridgeStrategy, classWriterStrategy, this.ignoredMethods);
    }
}
