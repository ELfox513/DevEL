package net.bytebuddy.asm;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.visitor.LocalVariableAwareMethodVisitor;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MemberSubstitution implements AsmVisitorWrapper.ForDeclaredMethods.MethodVisitorWrapper {
    private final MethodGraph.Compiler methodGraphCompiler;
    private final Replacement.Factory replacementFactory;
    private final boolean strict;
    private final TypePoolResolver typePoolResolver;

    /* renamed from: net.bytebuddy.asm.MemberSubstitution$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C48311 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19089a;

        static {
            int[] iArr = new int[Replacement.InvocationType.values().length];
            f19089a = iArr;
            try {
                iArr[Replacement.InvocationType.VIRTUAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19089a[Replacement.InvocationType.SUPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface Replacement {

        /* loaded from: classes2.dex */
        public interface Binding {

            /* loaded from: classes2.dex */
            public enum Unresolved implements Binding {
                INSTANCE;

                @Override // net.bytebuddy.asm.MemberSubstitution.Replacement.Binding
                public boolean isBound() {
                    return false;
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Replacement.Binding
                public StackManipulation make(TypeList.Generic generic, TypeDescription.Generic generic2, int i) {
                    throw new IllegalStateException("Cannot resolve unresolved binding");
                }
            }

            boolean isBound();

            StackManipulation make(TypeList.Generic generic, TypeDescription.Generic generic2, int i);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Resolved implements Binding {
                private final Substitution substitution;
                private final ByteCodeElement target;
                private final TypeDescription targetType;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Resolved resolved = (Resolved) obj;
                        return this.targetType.equals(resolved.targetType) && this.target.equals(resolved.target) && this.substitution.equals(resolved.substitution);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.targetType.hashCode()) * 31) + this.target.hashCode()) * 31) + this.substitution.hashCode();
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Replacement.Binding
                public boolean isBound() {
                    return true;
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Replacement.Binding
                public StackManipulation make(TypeList.Generic generic, TypeDescription.Generic generic2, int i) {
                    return this.substitution.resolve(this.targetType, this.target, generic, generic2, i);
                }

                public Resolved(TypeDescription typeDescription, ByteCodeElement byteCodeElement, Substitution substitution) {
                    this.targetType = typeDescription;
                    this.target = byteCodeElement;
                    this.substitution = substitution;
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface Factory {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Compound implements Factory {
                private final List<Factory> factories;

                public Compound(Factory... factoryArr) {
                    this(Arrays.asList(factoryArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.factories.equals(((Compound) obj).factories);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.factories.hashCode();
                }

                public Compound(List<? extends Factory> list) {
                    this.factories = new ArrayList();
                    for (Factory factory : list) {
                        if (factory instanceof Compound) {
                            this.factories.addAll(((Compound) factory).factories);
                        } else if (!(factory instanceof NoOp)) {
                            this.factories.add(factory);
                        }
                    }
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Replacement.Factory
                public Replacement make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    ArrayList arrayList = new ArrayList();
                    for (Factory factory : this.factories) {
                        arrayList.add(factory.make(typeDescription, methodDescription, typePool));
                    }
                    return new ForFirstBinding(arrayList);
                }
            }

            Replacement make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool);
        }

        /* loaded from: classes2.dex */
        public enum InvocationType {
            VIRTUAL,
            SUPER,
            OTHER;

            public boolean matches(boolean z, boolean z2) {
                int i = C48311.f19089a[ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    return z2;
                }
                return z;
            }

            /* renamed from: of */
            public static InvocationType m15263of(int i, MethodDescription methodDescription) {
                if (i != 182) {
                    if (i != 183) {
                        if (i != 185) {
                            return OTHER;
                        }
                    } else if (methodDescription.isVirtual()) {
                        return SUPER;
                    } else {
                        return OTHER;
                    }
                }
                return VIRTUAL;
            }
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements Replacement, Factory {
            INSTANCE;

            @Override // net.bytebuddy.asm.MemberSubstitution.Replacement
            public Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, FieldDescription.InDefinedShape inDefinedShape, boolean z) {
                return Binding.Unresolved.INSTANCE;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Replacement.Factory
            public Replacement make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                return this;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Replacement
            public Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, TypeDescription typeDescription2, MethodDescription methodDescription2, InvocationType invocationType) {
                return Binding.Unresolved.INSTANCE;
            }
        }

        Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, FieldDescription.InDefinedShape inDefinedShape, boolean z);

        Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, TypeDescription typeDescription2, MethodDescription methodDescription2, InvocationType invocationType);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForElementMatchers implements Replacement {
            private final ElementMatcher<? super FieldDescription.InDefinedShape> fieldMatcher;
            private final boolean includeSuperCalls;
            private final boolean includeVirtualCalls;
            private final boolean matchFieldRead;
            private final boolean matchFieldWrite;
            private final ElementMatcher<? super MethodDescription> methodMatcher;
            private final Substitution substitution;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private final ElementMatcher<? super FieldDescription.InDefinedShape> fieldMatcher;
                private final boolean includeSuperCalls;
                private final boolean includeVirtualCalls;
                private final boolean matchFieldRead;
                private final boolean matchFieldWrite;
                private final ElementMatcher<? super MethodDescription> methodMatcher;
                private final Substitution.Factory substitutionFactory;

                /* renamed from: of */
                public static Factory m15264of(ElementMatcher<? super ByteCodeElement> elementMatcher, Substitution.Factory factory) {
                    return new Factory(elementMatcher, elementMatcher, true, true, true, true, factory);
                }

                public static Factory ofField(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher, boolean z, boolean z2, Substitution.Factory factory) {
                    return new Factory(elementMatcher, ElementMatchers.none(), z, z2, false, false, factory);
                }

                public static Factory ofMethod(ElementMatcher<? super MethodDescription> elementMatcher, boolean z, boolean z2, Substitution.Factory factory) {
                    return new Factory(ElementMatchers.none(), elementMatcher, false, false, z, z2, factory);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Factory factory = (Factory) obj;
                        return this.matchFieldRead == factory.matchFieldRead && this.matchFieldWrite == factory.matchFieldWrite && this.includeVirtualCalls == factory.includeVirtualCalls && this.includeSuperCalls == factory.includeSuperCalls && this.fieldMatcher.equals(factory.fieldMatcher) && this.methodMatcher.equals(factory.methodMatcher) && this.substitutionFactory.equals(factory.substitutionFactory);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((((((getClass().hashCode() * 31) + this.fieldMatcher.hashCode()) * 31) + this.methodMatcher.hashCode()) * 31) + (this.matchFieldRead ? 1 : 0)) * 31) + (this.matchFieldWrite ? 1 : 0)) * 31) + (this.includeVirtualCalls ? 1 : 0)) * 31) + (this.includeSuperCalls ? 1 : 0)) * 31) + this.substitutionFactory.hashCode();
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Replacement.Factory
                public Replacement make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    return new ForElementMatchers(this.fieldMatcher, this.methodMatcher, this.matchFieldRead, this.matchFieldWrite, this.includeVirtualCalls, this.includeSuperCalls, this.substitutionFactory.make(typeDescription, methodDescription, typePool));
                }

                public Factory(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher, ElementMatcher<? super MethodDescription> elementMatcher2, boolean z, boolean z2, boolean z3, boolean z4, Substitution.Factory factory) {
                    this.fieldMatcher = elementMatcher;
                    this.methodMatcher = elementMatcher2;
                    this.matchFieldRead = z;
                    this.matchFieldWrite = z2;
                    this.includeVirtualCalls = z3;
                    this.includeSuperCalls = z4;
                    this.substitutionFactory = factory;
                }
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Replacement
            public Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, FieldDescription.InDefinedShape inDefinedShape, boolean z) {
                if (!z ? this.matchFieldRead : this.matchFieldWrite) {
                    if (this.fieldMatcher.matches(inDefinedShape)) {
                        return new Binding.Resolved(inDefinedShape.getDeclaringType(), inDefinedShape, this.substitution);
                    }
                }
                return Binding.Unresolved.INSTANCE;
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForElementMatchers forElementMatchers = (ForElementMatchers) obj;
                    return this.matchFieldRead == forElementMatchers.matchFieldRead && this.matchFieldWrite == forElementMatchers.matchFieldWrite && this.includeVirtualCalls == forElementMatchers.includeVirtualCalls && this.includeSuperCalls == forElementMatchers.includeSuperCalls && this.fieldMatcher.equals(forElementMatchers.fieldMatcher) && this.methodMatcher.equals(forElementMatchers.methodMatcher) && this.substitution.equals(forElementMatchers.substitution);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((getClass().hashCode() * 31) + this.fieldMatcher.hashCode()) * 31) + this.methodMatcher.hashCode()) * 31) + (this.matchFieldRead ? 1 : 0)) * 31) + (this.matchFieldWrite ? 1 : 0)) * 31) + (this.includeVirtualCalls ? 1 : 0)) * 31) + (this.includeSuperCalls ? 1 : 0)) * 31) + this.substitution.hashCode();
            }

            public ForElementMatchers(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher, ElementMatcher<? super MethodDescription> elementMatcher2, boolean z, boolean z2, boolean z3, boolean z4, Substitution substitution) {
                this.fieldMatcher = elementMatcher;
                this.methodMatcher = elementMatcher2;
                this.matchFieldRead = z;
                this.matchFieldWrite = z2;
                this.includeVirtualCalls = z3;
                this.includeSuperCalls = z4;
                this.substitution = substitution;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Replacement
            public Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, TypeDescription typeDescription2, MethodDescription methodDescription2, InvocationType invocationType) {
                return (invocationType.matches(this.includeVirtualCalls, this.includeSuperCalls) && this.methodMatcher.matches(methodDescription2)) ? new Binding.Resolved(typeDescription2, methodDescription2, this.substitution) : Binding.Unresolved.INSTANCE;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForFirstBinding implements Replacement {
            private final List<? extends Replacement> replacements;

            @Override // net.bytebuddy.asm.MemberSubstitution.Replacement
            public Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, FieldDescription.InDefinedShape inDefinedShape, boolean z) {
                for (Replacement replacement : this.replacements) {
                    Binding bind = replacement.bind(typeDescription, methodDescription, inDefinedShape, z);
                    if (bind.isBound()) {
                        return bind;
                    }
                }
                return Binding.Unresolved.INSTANCE;
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.replacements.equals(((ForFirstBinding) obj).replacements);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.replacements.hashCode();
            }

            public ForFirstBinding(List<? extends Replacement> list) {
                this.replacements = list;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Replacement
            public Binding bind(TypeDescription typeDescription, MethodDescription methodDescription, TypeDescription typeDescription2, MethodDescription methodDescription2, InvocationType invocationType) {
                for (Replacement replacement : this.replacements) {
                    Binding bind = replacement.bind(typeDescription, methodDescription, typeDescription2, methodDescription2, invocationType);
                    if (bind.isBound()) {
                        return bind;
                    }
                }
                return Binding.Unresolved.INSTANCE;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class SubstitutingMethodVisitor extends LocalVariableAwareMethodVisitor {
        private final Implementation.Context implementationContext;
        private final MethodDescription instrumentedMethod;
        private final TypeDescription instrumentedType;
        private int localVariableExtension;
        private final MethodGraph.Compiler methodGraphCompiler;
        private final Replacement replacement;
        private int stackSizeBuffer;
        private final boolean strict;
        private final TypePool typePool;
        private final boolean virtualPrivateCalls;

        /* loaded from: classes2.dex */
        public class LocalVariableTracingMethodVisitor extends MethodVisitor {
            public /* synthetic */ LocalVariableTracingMethodVisitor(SubstitutingMethodVisitor substitutingMethodVisitor, MethodVisitor methodVisitor, C48311 c48311) {
                this(methodVisitor);
            }

            private LocalVariableTracingMethodVisitor(MethodVisitor methodVisitor) {
                super(OpenedClassReader.ASM_API, methodVisitor);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @SuppressFBWarnings(justification = "No action required on default option.", value = {"SF_SWITCH_NO_DEFAULT"})
            public void visitVarInsn(int i, int i2) {
                switch (i) {
                    case 54:
                    case 56:
                    case 58:
                        SubstitutingMethodVisitor substitutingMethodVisitor = SubstitutingMethodVisitor.this;
                        substitutingMethodVisitor.localVariableExtension = Math.max(substitutingMethodVisitor.localVariableExtension, i2 + 1);
                        break;
                    case 55:
                    case 57:
                        SubstitutingMethodVisitor substitutingMethodVisitor2 = SubstitutingMethodVisitor.this;
                        substitutingMethodVisitor2.localVariableExtension = Math.max(substitutingMethodVisitor2.localVariableExtension, i2 + 2);
                        break;
                }
                super.visitVarInsn(i, i2);
            }
        }

        @Override // net.bytebuddy.jar.asm.MethodVisitor
        public void visitMaxs(int i, int i2) {
            super.visitMaxs(i + this.stackSizeBuffer, Math.max(this.localVariableExtension, i2));
        }

        @Override // net.bytebuddy.jar.asm.MethodVisitor
        public void visitFieldInsn(int i, String str, String str2, String str3) {
            ElementMatcher.Junction failSafe;
            boolean z;
            TypeList.Generic empty;
            TypeDescription.Generic type;
            TypePool.Resolution describe = this.typePool.describe(str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH));
            if (describe.isResolved()) {
                FieldList<FieldDescription.InDefinedShape> declaredFields = describe.resolve().getDeclaredFields();
                if (this.strict) {
                    failSafe = ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3));
                } else {
                    failSafe = ElementMatchers.failSafe(ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3)));
                }
                FieldList filter = declaredFields.filter(failSafe);
                if (!filter.isEmpty()) {
                    Replacement replacement = this.replacement;
                    TypeDescription typeDescription = this.instrumentedType;
                    MethodDescription methodDescription = this.instrumentedMethod;
                    FieldDescription.InDefinedShape inDefinedShape = (FieldDescription.InDefinedShape) filter.getOnly();
                    if (i != 181 && i != 179) {
                        z = false;
                    } else {
                        z = true;
                    }
                    Replacement.Binding bind = replacement.bind(typeDescription, methodDescription, inDefinedShape, z);
                    if (bind.isBound()) {
                        switch (i) {
                            case 178:
                                empty = new TypeList.Generic.Empty();
                                type = ((FieldDescription.InDefinedShape) filter.getOnly()).getType();
                                break;
                            case 179:
                                empty = new TypeList.Generic.Explicit(((FieldDescription.InDefinedShape) filter.getOnly()).getType());
                                type = TypeDescription.Generic.VOID;
                                break;
                            case 180:
                                empty = new TypeList.Generic.Explicit(((FieldDescription.InDefinedShape) filter.getOnly()).getDeclaringType());
                                type = ((FieldDescription.InDefinedShape) filter.getOnly()).getType();
                                break;
                            case 181:
                                empty = new TypeList.Generic.Explicit(((FieldDescription.InDefinedShape) filter.getOnly()).getDeclaringType(), ((FieldDescription.InDefinedShape) filter.getOnly()).getType());
                                type = TypeDescription.Generic.VOID;
                                break;
                            default:
                                throw new IllegalStateException("Unexpected opcode: " + i);
                        }
                        this.stackSizeBuffer = Math.max(this.stackSizeBuffer, bind.make(empty, type, getFreeOffset()).apply(new LocalVariableTracingMethodVisitor(this, this.f19219mv, null), this.implementationContext).getMaximalSize() - type.getStackSize().getSize());
                        return;
                    }
                } else if (this.strict) {
                    throw new IllegalStateException("Could not resolve " + str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH) + "." + str2 + str3 + " using " + this.typePool);
                }
            } else if (this.strict) {
                throw new IllegalStateException("Could not resolve " + str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH) + " using " + this.typePool);
            }
            super.visitFieldInsn(i, str, str2, str3);
        }

        @Override // net.bytebuddy.jar.asm.MethodVisitor
        public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
            ElementMatcher.Junction failSafe;
            MethodList filter;
            ElementMatcher.Junction failSafe2;
            ElementMatcher.Junction failSafe3;
            ElementMatcher.Junction failSafe4;
            TypeList.Generic asTypeList;
            TypeDescription.Generic returnType;
            StackSize stackSize;
            ElementMatcher.Junction failSafe5;
            TypePool.Resolution describe = this.typePool.describe(str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH));
            if (describe.isResolved()) {
                if (i == 183 && str2.equals(MethodDescription.CONSTRUCTOR_INTERNAL_NAME)) {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods = describe.resolve().getDeclaredMethods();
                    if (this.strict) {
                        failSafe5 = ElementMatchers.isConstructor().and(ElementMatchers.hasDescriptor(str3));
                    } else {
                        failSafe5 = ElementMatchers.failSafe(ElementMatchers.isConstructor().and(ElementMatchers.hasDescriptor(str3)));
                    }
                    filter = declaredMethods.filter(failSafe5);
                } else if (i != 184 && i != 183) {
                    if (this.virtualPrivateCalls) {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods2 = describe.resolve().getDeclaredMethods();
                        if (this.strict) {
                            failSafe3 = ElementMatchers.isPrivate().and(ElementMatchers.not(ElementMatchers.isStatic())).and(ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3)));
                        } else {
                            failSafe3 = ElementMatchers.failSafe(ElementMatchers.isPrivate().and(ElementMatchers.not(ElementMatchers.isStatic())).and(ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3))));
                        }
                        filter = declaredMethods2.filter(failSafe3);
                        if (filter.isEmpty()) {
                            MethodList<?> asMethodList = this.methodGraphCompiler.compile((TypeDefinition) describe.resolve(), this.instrumentedType).listNodes().asMethodList();
                            if (this.strict) {
                                failSafe4 = ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3));
                            } else {
                                failSafe4 = ElementMatchers.failSafe(ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3)));
                            }
                            filter = (MethodList) asMethodList.filter(failSafe4);
                        }
                    } else {
                        MethodList<?> asMethodList2 = this.methodGraphCompiler.compile((TypeDefinition) describe.resolve(), this.instrumentedType).listNodes().asMethodList();
                        if (this.strict) {
                            failSafe2 = ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3));
                        } else {
                            failSafe2 = ElementMatchers.failSafe(ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3)));
                        }
                        filter = (MethodList) asMethodList2.filter(failSafe2);
                    }
                } else {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods3 = describe.resolve().getDeclaredMethods();
                    if (this.strict) {
                        failSafe = ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3));
                    } else {
                        failSafe = ElementMatchers.failSafe(ElementMatchers.named(str2).and(ElementMatchers.hasDescriptor(str3)));
                    }
                    filter = declaredMethods3.filter(failSafe);
                }
                if (!filter.isEmpty()) {
                    Replacement.Binding bind = this.replacement.bind(this.instrumentedType, this.instrumentedMethod, describe.resolve(), (MethodDescription) filter.getOnly(), Replacement.InvocationType.m15263of(i, (MethodDescription) filter.getOnly()));
                    if (bind.isBound()) {
                        int i2 = this.stackSizeBuffer;
                        if (!((MethodDescription) filter.getOnly()).isStatic() && !((MethodDescription) filter.getOnly()).isConstructor()) {
                            asTypeList = new TypeList.Generic.Explicit(CompoundList.m14778of(describe.resolve(), ((MethodDescription) filter.getOnly()).getParameters().asTypeList()));
                        } else {
                            asTypeList = ((MethodDescription) filter.getOnly()).getParameters().asTypeList();
                        }
                        if (((MethodDescription) filter.getOnly()).isConstructor()) {
                            returnType = ((MethodDescription) filter.getOnly()).getDeclaringType().asGenericType();
                        } else {
                            returnType = ((MethodDescription) filter.getOnly()).getReturnType();
                        }
                        int maximalSize = bind.make(asTypeList, returnType, getFreeOffset()).apply(new LocalVariableTracingMethodVisitor(this, this.f19219mv, null), this.implementationContext).getMaximalSize();
                        if (((MethodDescription) filter.getOnly()).isConstructor()) {
                            stackSize = StackSize.SINGLE;
                        } else {
                            stackSize = ((MethodDescription) filter.getOnly()).getReturnType().getStackSize();
                        }
                        this.stackSizeBuffer = Math.max(i2, maximalSize - stackSize.getSize());
                        if (((MethodDescription) filter.getOnly()).isConstructor()) {
                            int i3 = this.stackSizeBuffer;
                            Duplication duplication = Duplication.SINGLE;
                            TypeDescription typeDescription = TypeDescription.OBJECT;
                            Removal removal = Removal.SINGLE;
                            this.stackSizeBuffer = Math.max(i3, new StackManipulation.Compound(duplication.flipOver(typeDescription), removal, removal, duplication.flipOver(typeDescription), removal, removal).apply(this.f19219mv, this.implementationContext).getMaximalSize() + StackSize.SINGLE.getSize());
                            return;
                        }
                        return;
                    }
                } else if (this.strict) {
                    throw new IllegalStateException("Could not resolve " + str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH) + "." + str2 + str3 + " using " + this.typePool);
                }
            } else if (this.strict) {
                throw new IllegalStateException("Could not resolve " + str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH) + " using " + this.typePool);
            }
            super.visitMethodInsn(i, str, str2, str3, z);
        }

        public SubstitutingMethodVisitor(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodDescription methodDescription, MethodGraph.Compiler compiler, boolean z, Replacement replacement, Implementation.Context context, TypePool typePool, boolean z2) {
            super(methodVisitor, methodDescription);
            this.instrumentedType = typeDescription;
            this.instrumentedMethod = methodDescription;
            this.methodGraphCompiler = compiler;
            this.strict = z;
            this.replacement = replacement;
            this.implementationContext = context;
            this.typePool = typePool;
            this.virtualPrivateCalls = z2;
            this.stackSizeBuffer = 0;
            this.localVariableExtension = 0;
        }
    }

    /* loaded from: classes2.dex */
    public interface Substitution {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Chain implements Substitution {
            private final Assigner assigner;
            private final List<Step> steps;
            private final Assigner.Typing typing;

            /* loaded from: classes2.dex */
            public static class Factory implements Factory {
                private final Assigner assigner;
                private final List<Step.Factory> steps;
                private final Assigner.Typing typing;

                public Factory executing(Step.Factory... factoryArr) {
                    return executing(Arrays.asList(factoryArr));
                }

                public Factory executing(List<? extends Step.Factory> list) {
                    return new Factory(this.assigner, this.typing, CompoundList.m14776of((List) this.steps, (List) list));
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Factory
                public Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    if (this.steps.isEmpty()) {
                        return Stubbing.INSTANCE;
                    }
                    ArrayList arrayList = new ArrayList(this.steps.size());
                    for (Step.Factory factory : this.steps) {
                        arrayList.add(factory.make(this.assigner, this.typing, typeDescription, methodDescription));
                    }
                    return new Chain(this.assigner, this.typing, arrayList);
                }

                public Factory(Assigner assigner, Assigner.Typing typing, List<Step.Factory> list) {
                    this.assigner = assigner;
                    this.typing = typing;
                    this.steps = list;
                }
            }

            /* loaded from: classes2.dex */
            public interface Step {

                /* loaded from: classes2.dex */
                public interface Factory {
                    Step make(Assigner assigner, Assigner.Typing typing, TypeDescription typeDescription, MethodDescription methodDescription);
                }

                /* loaded from: classes2.dex */
                public interface Resolution {
                    TypeDescription.Generic getResultType();

                    StackManipulation getStackManipulation();
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple implements Step, Resolution, Factory {
                    private final TypeDescription.Generic resultType;
                    private final StackManipulation stackManipulation;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Simple simple = (Simple) obj;
                            return this.stackManipulation.equals(simple.stackManipulation) && this.resultType.equals(simple.resultType);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Chain.Step.Resolution
                    public TypeDescription.Generic getResultType() {
                        return this.resultType;
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Chain.Step.Resolution
                    public StackManipulation getStackManipulation() {
                        return this.stackManipulation;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + this.resultType.hashCode();
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Chain.Step.Factory
                    public Step make(Assigner assigner, Assigner.Typing typing, TypeDescription typeDescription, MethodDescription methodDescription) {
                        return this;
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Chain.Step
                    public Resolution resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2, Map<Integer, Integer> map, int i) {
                        if (typeDescription.represents(Void.TYPE)) {
                            return this;
                        }
                        return new Simple(new StackManipulation.Compound(Removal.m14979of(typeDescription), this.stackManipulation), this.resultType);
                    }

                    public Simple(StackManipulation stackManipulation, TypeDescription.Generic generic) {
                        this.stackManipulation = stackManipulation;
                        this.resultType = generic;
                    }
                }

                Resolution resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2, Map<Integer, Integer> map, int i);
            }

            public static Factory with(Assigner assigner, Assigner.Typing typing) {
                return new Factory(assigner, typing, Collections.emptyList());
            }

            public static Factory withDefaultAssigner() {
                return with(Assigner.DEFAULT, Assigner.Typing.STATIC);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Chain chain = (Chain) obj;
                    return this.typing.equals(chain.typing) && this.assigner.equals(chain.assigner) && this.steps.equals(chain.steps);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.assigner.hashCode()) * 31) + this.typing.hashCode()) * 31) + this.steps.hashCode();
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Substitution
            public StackManipulation resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2, int i) {
                int i2 = 2;
                int size = generic.size() + 1 + (this.steps.size() * 2);
                if (generic2.represents(Void.TYPE)) {
                    i2 = 0;
                }
                ArrayList arrayList = new ArrayList(size + i2);
                HashMap hashMap = new HashMap();
                for (int size2 = generic.size() - 1; size2 >= 0; size2--) {
                    arrayList.add(MethodVariableAccess.m14936of(generic.get(size2)).storeAt(i));
                    hashMap.put(Integer.valueOf(size2), Integer.valueOf(i));
                    i += generic.get(size2).getStackSize().getSize();
                }
                arrayList.add(DefaultValue.m14957of(generic2));
                TypeDescription.Generic generic3 = generic2;
                for (Step step : this.steps) {
                    Step.Resolution resolve = step.resolve(typeDescription, byteCodeElement, generic, generic3, hashMap, i);
                    arrayList.add(resolve.getStackManipulation());
                    generic3 = resolve.getResultType();
                }
                arrayList.add(this.assigner.assign(generic3, generic2, this.typing));
                return new StackManipulation.Compound(arrayList);
            }

            public Chain(Assigner assigner, Assigner.Typing typing, List<Step> list) {
                this.assigner = assigner;
                this.typing = typing;
                this.steps = list;
            }
        }

        /* loaded from: classes2.dex */
        public interface Factory {
            Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForFieldAccess implements Substitution {
            private final FieldResolver fieldResolver;
            private final TypeDescription instrumentedType;

            /* loaded from: classes2.dex */
            public interface FieldResolver {
                FieldDescription resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForElementMatcher implements FieldResolver {
                    private final TypeDescription instrumentedType;
                    private final ElementMatcher<? super FieldDescription> matcher;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForElementMatcher forElementMatcher = (ForElementMatcher) obj;
                            return this.instrumentedType.equals(forElementMatcher.instrumentedType) && this.matcher.equals(forElementMatcher.matcher);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.matcher.hashCode();
                    }

                    public ForElementMatcher(TypeDescription typeDescription, ElementMatcher<? super FieldDescription> elementMatcher) {
                        this.instrumentedType = typeDescription;
                        this.matcher = elementMatcher;
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.ForFieldAccess.FieldResolver
                    public FieldDescription resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2) {
                        if (!generic.isEmpty()) {
                            if (!generic.get(0).isPrimitive() && !generic.get(0).isArray()) {
                                TypeDefinition typeDefinition = (TypeDefinition) generic.get(0).accept(new TypeDescription.Generic.Visitor.Substitutor.ForReplacement(this.instrumentedType));
                                do {
                                    FieldList filter = typeDefinition.getDeclaredFields().filter(ElementMatchers.not(ElementMatchers.isStatic()).and(ElementMatchers.isVisibleTo(this.instrumentedType)).and(this.matcher));
                                    if (filter.size() == 1) {
                                        return (FieldDescription) filter.getOnly();
                                    }
                                    if (filter.size() <= 1) {
                                        typeDefinition = typeDefinition.getSuperClass();
                                    } else {
                                        throw new IllegalStateException("Ambiguous field location of " + filter);
                                    }
                                } while (typeDefinition != null);
                                throw new IllegalStateException("Cannot locate field matching " + this.matcher + " on " + typeDescription);
                            }
                            throw new IllegalStateException("Cannot access field on primitive or array type for " + byteCodeElement);
                        }
                        throw new IllegalStateException("Cannot substitute parameterless instruction with " + byteCodeElement);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple implements FieldResolver {
                    private final FieldDescription fieldDescription;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((Simple) obj).fieldDescription);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.ForFieldAccess.FieldResolver
                    public FieldDescription resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2) {
                        return this.fieldDescription;
                    }

                    public Simple(FieldDescription fieldDescription) {
                        this.fieldDescription = fieldDescription;
                    }
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForFieldAccess forFieldAccess = (ForFieldAccess) obj;
                    return this.instrumentedType.equals(forFieldAccess.instrumentedType) && this.fieldResolver.equals(forFieldAccess.fieldResolver);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.fieldResolver.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfGivenField implements Factory {
                private final FieldDescription fieldDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((OfGivenField) obj).fieldDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Factory
                public Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    return new ForFieldAccess(typeDescription, new FieldResolver.Simple(this.fieldDescription));
                }

                public OfGivenField(FieldDescription fieldDescription) {
                    this.fieldDescription = fieldDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfMatchedField implements Factory {
                private final ElementMatcher<? super FieldDescription> matcher;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matcher.equals(((OfMatchedField) obj).matcher);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matcher.hashCode();
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Factory
                public Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    return new ForFieldAccess(typeDescription, new FieldResolver.ForElementMatcher(typeDescription, this.matcher));
                }

                public OfMatchedField(ElementMatcher<? super FieldDescription> elementMatcher) {
                    this.matcher = elementMatcher;
                }
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Substitution
            @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public StackManipulation resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2, int i) {
                int i2;
                FieldDescription resolve = this.fieldResolver.resolve(typeDescription, byteCodeElement, generic, generic2);
                if (resolve.isAccessibleTo(this.instrumentedType)) {
                    if (generic2.represents(Void.TYPE)) {
                        int size = generic.size();
                        if (resolve.isStatic()) {
                            i2 = 1;
                        } else {
                            i2 = 2;
                        }
                        if (size == i2) {
                            if (!resolve.isStatic() && !generic.get(0).asErasure().isAssignableTo(resolve.getDeclaringType().asErasure())) {
                                throw new IllegalStateException("Cannot set " + resolve + " on " + generic.get(0));
                            } else if (generic.get(!resolve.isStatic()).asErasure().isAssignableTo(resolve.getType().asErasure())) {
                                return FieldAccess.forField(resolve).write();
                            } else {
                                throw new IllegalStateException("Cannot set " + resolve + " to " + generic.get(!resolve.isStatic()));
                            }
                        }
                        throw new IllegalStateException("Cannot set " + resolve + " with " + generic);
                    } else if (generic.size() == (true ^ resolve.isStatic())) {
                        if (!resolve.isStatic() && !generic.get(0).asErasure().isAssignableTo(resolve.getDeclaringType().asErasure())) {
                            throw new IllegalStateException("Cannot get " + resolve + " on " + generic.get(0));
                        } else if (resolve.getType().asErasure().isAssignableTo(generic2.asErasure())) {
                            return FieldAccess.forField(resolve).read();
                        } else {
                            throw new IllegalStateException("Cannot get " + resolve + " as " + generic2);
                        }
                    } else {
                        throw new IllegalStateException("Cannot set " + resolve + " with " + generic);
                    }
                }
                throw new IllegalStateException(this.instrumentedType + " cannot access " + resolve);
            }

            public ForFieldAccess(TypeDescription typeDescription, FieldResolver fieldResolver) {
                this.instrumentedType = typeDescription;
                this.fieldResolver = fieldResolver;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodInvocation implements Substitution {
            private static final int THIS_REFERENCE = 0;
            private final TypeDescription instrumentedType;
            private final MethodResolver methodResolver;

            /* loaded from: classes2.dex */
            public interface MethodResolver {
                MethodDescription resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Matching implements MethodResolver {
                    private final TypeDescription instrumentedType;
                    private final ElementMatcher<? super MethodDescription> matcher;
                    private final MethodGraph.Compiler methodGraphCompiler;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Matching matching = (Matching) obj;
                            return this.instrumentedType.equals(matching.instrumentedType) && this.methodGraphCompiler.equals(matching.methodGraphCompiler) && this.matcher.equals(matching.matcher);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.methodGraphCompiler.hashCode()) * 31) + this.matcher.hashCode();
                    }

                    public Matching(TypeDescription typeDescription, MethodGraph.Compiler compiler, ElementMatcher<? super MethodDescription> elementMatcher) {
                        this.instrumentedType = typeDescription;
                        this.methodGraphCompiler = compiler;
                        this.matcher = elementMatcher;
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.ForMethodInvocation.MethodResolver
                    public MethodDescription resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2) {
                        if (!generic.isEmpty()) {
                            if (!generic.get(0).isPrimitive() && !generic.get(0).isArray()) {
                                TypeDefinition typeDefinition = (TypeDefinition) generic.get(0).accept(new TypeDescription.Generic.Visitor.Substitutor.ForReplacement(this.instrumentedType));
                                List m14776of = CompoundList.m14776of(this.methodGraphCompiler.compile(typeDefinition, this.instrumentedType).listNodes().asMethodList().filter(this.matcher), typeDefinition.getDeclaredMethods().filter(ElementMatchers.isPrivate().and(ElementMatchers.isVisibleTo(this.instrumentedType)).and(this.matcher)));
                                if (m14776of.size() == 1) {
                                    return (MethodDescription) m14776of.get(0);
                                }
                                throw new IllegalStateException("Not exactly one method that matches " + this.matcher + ": " + m14776of);
                            }
                            throw new IllegalStateException("Cannot invoke method on primitive or array type for " + byteCodeElement);
                        }
                        throw new IllegalStateException("Cannot substitute parameterless instruction with " + byteCodeElement);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple implements MethodResolver {
                    private final MethodDescription methodDescription;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.methodDescription.equals(((Simple) obj).methodDescription);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.methodDescription.hashCode();
                    }

                    @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.ForMethodInvocation.MethodResolver
                    public MethodDescription resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2) {
                        return this.methodDescription;
                    }

                    public Simple(MethodDescription methodDescription) {
                        this.methodDescription = methodDescription;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public enum OfInstrumentedMethod implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Factory
                public Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    return new ForMethodInvocation(typeDescription, new MethodResolver.Simple(methodDescription));
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForMethodInvocation forMethodInvocation = (ForMethodInvocation) obj;
                    return this.instrumentedType.equals(forMethodInvocation.instrumentedType) && this.methodResolver.equals(forMethodInvocation.methodResolver);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.methodResolver.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfGivenMethod implements Factory {
                private final MethodDescription methodDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.methodDescription.equals(((OfGivenMethod) obj).methodDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.methodDescription.hashCode();
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Factory
                public Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    return new ForMethodInvocation(typeDescription, new MethodResolver.Simple(this.methodDescription));
                }

                public OfGivenMethod(MethodDescription methodDescription) {
                    this.methodDescription = methodDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfMatchedMethod implements Factory {
                private final ElementMatcher<? super MethodDescription> matcher;
                private final MethodGraph.Compiler methodGraphCompiler;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        OfMatchedMethod ofMatchedMethod = (OfMatchedMethod) obj;
                        return this.matcher.equals(ofMatchedMethod.matcher) && this.methodGraphCompiler.equals(ofMatchedMethod.methodGraphCompiler);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.methodGraphCompiler.hashCode();
                }

                @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Factory
                public Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                    return new ForMethodInvocation(typeDescription, new MethodResolver.Matching(typeDescription, this.methodGraphCompiler, this.matcher));
                }

                public OfMatchedMethod(ElementMatcher<? super MethodDescription> elementMatcher, MethodGraph.Compiler compiler) {
                    this.matcher = elementMatcher;
                    this.methodGraphCompiler = compiler;
                }
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Substitution
            public StackManipulation resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2, int i) {
                List explicit;
                MethodDescription resolve = this.methodResolver.resolve(typeDescription, byteCodeElement, generic, generic2);
                if (resolve.isAccessibleTo(this.instrumentedType)) {
                    if (resolve.isStatic()) {
                        explicit = resolve.getParameters().asTypeList();
                    } else {
                        explicit = new TypeList.Generic.Explicit(CompoundList.m14778of(resolve.getDeclaringType(), resolve.getParameters().asTypeList()));
                    }
                    if (resolve.getReturnType().asErasure().isAssignableTo(generic2.asErasure())) {
                        if (explicit.size() == generic.size()) {
                            for (int i2 = 0; i2 < explicit.size(); i2++) {
                                if (!generic.get(i2).asErasure().isAssignableTo(((TypeDescription.Generic) explicit.get(i2)).asErasure())) {
                                    throw new IllegalStateException("Cannot invoke " + resolve + " on parameter " + i2 + " of type " + generic.get(i2));
                                }
                            }
                            if (resolve.isVirtual()) {
                                return MethodInvocation.invoke(resolve).virtual(((TypeDescription.Generic) explicit.get(0)).asErasure());
                            }
                            return MethodInvocation.invoke(resolve);
                        }
                        throw new IllegalStateException("Cannot invoke " + resolve + " on " + generic.size() + " parameters");
                    }
                    throw new IllegalStateException("Cannot assign return value of " + resolve + " to " + generic2);
                }
                throw new IllegalStateException(this.instrumentedType + " cannot access " + resolve);
            }

            public ForMethodInvocation(TypeDescription typeDescription, MethodResolver methodResolver) {
                this.instrumentedType = typeDescription;
                this.methodResolver = methodResolver;
            }
        }

        /* loaded from: classes2.dex */
        public enum Stubbing implements Substitution, Factory {
            INSTANCE;

            @Override // net.bytebuddy.asm.MemberSubstitution.Substitution.Factory
            public Substitution make(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                return this;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.Substitution
            public StackManipulation resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2, int i) {
                ArrayList arrayList = new ArrayList(generic.size());
                for (int size = generic.size() - 1; size >= 0; size--) {
                    arrayList.add(Removal.m14979of(generic.get(size)));
                }
                return new StackManipulation.Compound(CompoundList.m14777of(arrayList, DefaultValue.m14957of(generic2.asErasure())));
            }
        }

        StackManipulation resolve(TypeDescription typeDescription, ByteCodeElement byteCodeElement, TypeList.Generic generic, TypeDescription.Generic generic2, int i);
    }

    /* loaded from: classes2.dex */
    public interface TypePoolResolver {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForClassFileLocator implements TypePoolResolver {
            private final ClassFileLocator classFileLocator;
            private final TypePool.Default.ReaderMode readerMode;

            public ForClassFileLocator(ClassFileLocator classFileLocator) {
                this(classFileLocator, TypePool.Default.ReaderMode.FAST);
            }

            /* renamed from: of */
            public static TypePoolResolver m15260of(@MaybeNull ClassLoader classLoader) {
                return new ForClassFileLocator(ClassFileLocator.ForClassLoader.m15176of(classLoader));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForClassFileLocator forClassFileLocator = (ForClassFileLocator) obj;
                    return this.readerMode.equals(forClassFileLocator.readerMode) && this.classFileLocator.equals(forClassFileLocator.classFileLocator);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.classFileLocator.hashCode()) * 31) + this.readerMode.hashCode();
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.TypePoolResolver
            public TypePool resolve(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                return new TypePool.Default(new TypePool.CacheProvider.Simple(), this.classFileLocator, this.readerMode, typePool);
            }

            public ForClassFileLocator(ClassFileLocator classFileLocator, TypePool.Default.ReaderMode readerMode) {
                this.classFileLocator = classFileLocator;
                this.readerMode = readerMode;
            }
        }

        /* loaded from: classes2.dex */
        public enum OfImplicitPool implements TypePoolResolver {
            INSTANCE;

            @Override // net.bytebuddy.asm.MemberSubstitution.TypePoolResolver
            public TypePool resolve(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                return typePool;
            }
        }

        TypePool resolve(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForExplicitPool implements TypePoolResolver {
            private final TypePool typePool;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typePool.equals(((ForExplicitPool) obj).typePool);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.typePool.hashCode();
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.TypePoolResolver
            public TypePool resolve(TypeDescription typeDescription, MethodDescription methodDescription, TypePool typePool) {
                return this.typePool;
            }

            public ForExplicitPool(TypePool typePool) {
                this.typePool = typePool;
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class WithoutSpecification {
        public final MethodGraph.Compiler methodGraphCompiler;
        public final Replacement.Factory replacementFactory;
        public final boolean strict;
        public final TypePoolResolver typePoolResolver;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMatchedByteCodeElement extends WithoutSpecification {
            private final ElementMatcher<? super ByteCodeElement> matcher;

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matcher.equals(((ForMatchedByteCodeElement) obj).matcher);
                }
                return false;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public int hashCode() {
                return (super.hashCode() * 31) + this.matcher.hashCode();
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public MemberSubstitution replaceWith(Substitution.Factory factory) {
                return new MemberSubstitution(this.methodGraphCompiler, this.typePoolResolver, this.strict, new Replacement.Factory.Compound(this.replacementFactory, Replacement.ForElementMatchers.Factory.m15264of(this.matcher, factory)));
            }

            public ForMatchedByteCodeElement(MethodGraph.Compiler compiler, TypePoolResolver typePoolResolver, boolean z, Replacement.Factory factory, ElementMatcher<? super ByteCodeElement> elementMatcher) {
                super(compiler, typePoolResolver, z, factory);
                this.matcher = elementMatcher;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMatchedField extends WithoutSpecification {
            private final boolean matchRead;
            private final boolean matchWrite;
            private final ElementMatcher<? super FieldDescription.InDefinedShape> matcher;

            public ForMatchedField(MethodGraph.Compiler compiler, TypePoolResolver typePoolResolver, boolean z, Replacement.Factory factory, ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
                this(compiler, typePoolResolver, z, factory, elementMatcher, true, true);
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForMatchedField forMatchedField = (ForMatchedField) obj;
                        return this.matchRead == forMatchedField.matchRead && this.matchWrite == forMatchedField.matchWrite && this.matcher.equals(forMatchedField.matcher);
                    }
                    return false;
                }
                return false;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public int hashCode() {
                return (((((super.hashCode() * 31) + this.matcher.hashCode()) * 31) + (this.matchRead ? 1 : 0)) * 31) + (this.matchWrite ? 1 : 0);
            }

            public WithoutSpecification onRead() {
                return new ForMatchedField(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, this.matcher, true, false);
            }

            public WithoutSpecification onWrite() {
                return new ForMatchedField(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, this.matcher, false, true);
            }

            public ForMatchedField(MethodGraph.Compiler compiler, TypePoolResolver typePoolResolver, boolean z, Replacement.Factory factory, ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher, boolean z2, boolean z3) {
                super(compiler, typePoolResolver, z, factory);
                this.matcher = elementMatcher;
                this.matchRead = z2;
                this.matchWrite = z3;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public MemberSubstitution replaceWith(Substitution.Factory factory) {
                return new MemberSubstitution(this.methodGraphCompiler, this.typePoolResolver, this.strict, new Replacement.Factory.Compound(this.replacementFactory, Replacement.ForElementMatchers.Factory.ofField(this.matcher, this.matchRead, this.matchWrite, factory)));
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMatchedMethod extends WithoutSpecification {
            private final boolean includeSuperCalls;
            private final boolean includeVirtualCalls;
            private final ElementMatcher<? super MethodDescription> matcher;

            public ForMatchedMethod(MethodGraph.Compiler compiler, TypePoolResolver typePoolResolver, boolean z, Replacement.Factory factory, ElementMatcher<? super MethodDescription> elementMatcher) {
                this(compiler, typePoolResolver, z, factory, elementMatcher, true, true);
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForMatchedMethod forMatchedMethod = (ForMatchedMethod) obj;
                        return this.includeVirtualCalls == forMatchedMethod.includeVirtualCalls && this.includeSuperCalls == forMatchedMethod.includeSuperCalls && this.matcher.equals(forMatchedMethod.matcher);
                    }
                    return false;
                }
                return false;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public int hashCode() {
                return (((((super.hashCode() * 31) + this.matcher.hashCode()) * 31) + (this.includeVirtualCalls ? 1 : 0)) * 31) + (this.includeSuperCalls ? 1 : 0);
            }

            public WithoutSpecification onSuperCall() {
                return new ForMatchedMethod(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, ElementMatchers.isVirtual().and(this.matcher), false, true);
            }

            public WithoutSpecification onVirtualCall() {
                return new ForMatchedMethod(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, ElementMatchers.isVirtual().and(this.matcher), true, false);
            }

            public ForMatchedMethod(MethodGraph.Compiler compiler, TypePoolResolver typePoolResolver, boolean z, Replacement.Factory factory, ElementMatcher<? super MethodDescription> elementMatcher, boolean z2, boolean z3) {
                super(compiler, typePoolResolver, z, factory);
                this.matcher = elementMatcher;
                this.includeVirtualCalls = z2;
                this.includeSuperCalls = z3;
            }

            @Override // net.bytebuddy.asm.MemberSubstitution.WithoutSpecification
            public MemberSubstitution replaceWith(Substitution.Factory factory) {
                return new MemberSubstitution(this.methodGraphCompiler, this.typePoolResolver, this.strict, new Replacement.Factory.Compound(this.replacementFactory, Replacement.ForElementMatchers.Factory.ofMethod(this.matcher, this.includeVirtualCalls, this.includeSuperCalls, factory)));
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                WithoutSpecification withoutSpecification = (WithoutSpecification) obj;
                return this.strict == withoutSpecification.strict && this.methodGraphCompiler.equals(withoutSpecification.methodGraphCompiler) && this.typePoolResolver.equals(withoutSpecification.typePoolResolver) && this.replacementFactory.equals(withoutSpecification.replacementFactory);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.methodGraphCompiler.hashCode()) * 31) + this.typePoolResolver.hashCode()) * 31) + (this.strict ? 1 : 0)) * 31) + this.replacementFactory.hashCode();
        }

        public MemberSubstitution replaceWith(Field field) {
            return replaceWith(new FieldDescription.ForLoadedField(field));
        }

        public abstract MemberSubstitution replaceWith(Substitution.Factory factory);

        public MemberSubstitution replaceWithChain(Substitution.Chain.Step.Factory... factoryArr) {
            return replaceWithChain(Arrays.asList(factoryArr));
        }

        public MemberSubstitution replaceWithField(ElementMatcher<? super FieldDescription> elementMatcher) {
            return replaceWith(new Substitution.ForFieldAccess.OfMatchedField(elementMatcher));
        }

        public MemberSubstitution replaceWithInstrumentedMethod() {
            return replaceWith(Substitution.ForMethodInvocation.OfInstrumentedMethod.INSTANCE);
        }

        public MemberSubstitution replaceWithMethod(ElementMatcher<? super MethodDescription> elementMatcher) {
            return replaceWithMethod(elementMatcher, this.methodGraphCompiler);
        }

        public MemberSubstitution stub() {
            return replaceWith(Substitution.Stubbing.INSTANCE);
        }

        public MemberSubstitution replaceWith(FieldDescription fieldDescription) {
            return replaceWith(new Substitution.ForFieldAccess.OfGivenField(fieldDescription));
        }

        public MemberSubstitution replaceWithChain(List<? extends Substitution.Chain.Step.Factory> list) {
            return replaceWith(Substitution.Chain.withDefaultAssigner().executing(list));
        }

        public MemberSubstitution replaceWithMethod(ElementMatcher<? super MethodDescription> elementMatcher, MethodGraph.Compiler compiler) {
            return replaceWith(new Substitution.ForMethodInvocation.OfMatchedMethod(elementMatcher, compiler));
        }

        public WithoutSpecification(MethodGraph.Compiler compiler, TypePoolResolver typePoolResolver, boolean z, Replacement.Factory factory) {
            this.methodGraphCompiler = compiler;
            this.typePoolResolver = typePoolResolver;
            this.strict = z;
            this.replacementFactory = factory;
        }

        public MemberSubstitution replaceWith(Method method) {
            return replaceWith(new MethodDescription.ForLoadedMethod(method));
        }

        public MemberSubstitution replaceWith(MethodDescription methodDescription) {
            if (methodDescription.isMethod()) {
                return replaceWith(new Substitution.ForMethodInvocation.OfGivenMethod(methodDescription));
            }
            throw new IllegalArgumentException("Cannot use " + methodDescription + " as a replacement");
        }
    }

    public MemberSubstitution(boolean z) {
        this(MethodGraph.Compiler.DEFAULT, TypePoolResolver.OfImplicitPool.INSTANCE, z, Replacement.NoOp.INSTANCE);
    }

    public static MemberSubstitution relaxed() {
        return new MemberSubstitution(false);
    }

    public static MemberSubstitution strict() {
        return new MemberSubstitution(true);
    }

    public WithoutSpecification constructor(ElementMatcher<? super MethodDescription> elementMatcher) {
        return invokable(ElementMatchers.isConstructor().and(elementMatcher));
    }

    public WithoutSpecification element(ElementMatcher<? super ByteCodeElement> elementMatcher) {
        return new WithoutSpecification.ForMatchedByteCodeElement(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, elementMatcher);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MemberSubstitution memberSubstitution = (MemberSubstitution) obj;
            return this.strict == memberSubstitution.strict && this.methodGraphCompiler.equals(memberSubstitution.methodGraphCompiler) && this.typePoolResolver.equals(memberSubstitution.typePoolResolver) && this.replacementFactory.equals(memberSubstitution.replacementFactory);
        }
        return false;
    }

    public WithoutSpecification.ForMatchedField field(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
        return new WithoutSpecification.ForMatchedField(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, elementMatcher);
    }

    public int hashCode() {
        return (((((((getClass().hashCode() * 31) + this.methodGraphCompiler.hashCode()) * 31) + (this.strict ? 1 : 0)) * 31) + this.typePoolResolver.hashCode()) * 31) + this.replacementFactory.hashCode();
    }

    public WithoutSpecification invokable(ElementMatcher<? super MethodDescription> elementMatcher) {
        return new WithoutSpecification.ForMatchedMethod(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, elementMatcher);
    }

    public WithoutSpecification.ForMatchedMethod method(ElementMatcher<? super MethodDescription> elementMatcher) {
        return new WithoutSpecification.ForMatchedMethod(this.methodGraphCompiler, this.typePoolResolver, this.strict, this.replacementFactory, elementMatcher);
    }

    /* renamed from: on */
    public AsmVisitorWrapper.ForDeclaredMethods m15265on(ElementMatcher<? super MethodDescription> elementMatcher) {
        return new AsmVisitorWrapper.ForDeclaredMethods().invokable(elementMatcher, this);
    }

    public MemberSubstitution with(MethodGraph.Compiler compiler) {
        return new MemberSubstitution(compiler, this.typePoolResolver, this.strict, this.replacementFactory);
    }

    @Override // net.bytebuddy.asm.AsmVisitorWrapper.ForDeclaredMethods.MethodVisitorWrapper
    public MethodVisitor wrap(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, TypePool typePool, int i, int i2) {
        TypePool resolve = this.typePoolResolver.resolve(typeDescription, methodDescription, typePool);
        return new SubstitutingMethodVisitor(methodVisitor, typeDescription, methodDescription, this.methodGraphCompiler, this.strict, this.replacementFactory.make(typeDescription, methodDescription, resolve), context, resolve, context.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V11));
    }

    public MemberSubstitution(MethodGraph.Compiler compiler, TypePoolResolver typePoolResolver, boolean z, Replacement.Factory factory) {
        this.methodGraphCompiler = compiler;
        this.typePoolResolver = typePoolResolver;
        this.strict = z;
        this.replacementFactory = factory;
    }

    public MemberSubstitution with(TypePoolResolver typePoolResolver) {
        return new MemberSubstitution(this.methodGraphCompiler, typePoolResolver, this.strict, this.replacementFactory);
    }
}
