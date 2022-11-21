package net.bytebuddy.implementation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.ArrayList;
import java.util.List;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.Addition;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Multiplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class HashCodeMethod implements Implementation {
    private static final int DEFAULT_MULTIPLIER = 31;
    private static final int DEFAULT_OFFSET = 17;
    private final ElementMatcher.Junction<? super FieldDescription.InDefinedShape> ignored;
    private final int multiplier;
    private final ElementMatcher.Junction<? super FieldDescription.InDefinedShape> nonNullable;
    private final OffsetProvider offsetProvider;
    private static final MethodDescription.InDefinedShape HASH_CODE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Object.class).getDeclaredMethods().filter(ElementMatchers.isHashCode()).getOnly();
    private static final MethodDescription.InDefinedShape GET_CLASS = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Object.class).getDeclaredMethods().filter(ElementMatchers.named("getClass").and(ElementMatchers.takesArguments(0))).getOnly();

    /* loaded from: classes.dex */
    public interface NullValueGuard {

        /* loaded from: classes.dex */
        public enum NoOp implements NullValueGuard {
            INSTANCE;

            @Override // net.bytebuddy.implementation.HashCodeMethod.NullValueGuard
            public StackManipulation after() {
                return StackManipulation.Trivial.INSTANCE;
            }

            @Override // net.bytebuddy.implementation.HashCodeMethod.NullValueGuard
            public StackManipulation before() {
                return StackManipulation.Trivial.INSTANCE;
            }

            @Override // net.bytebuddy.implementation.HashCodeMethod.NullValueGuard
            public int getRequiredVariablePadding() {
                return StackSize.ZERO.getSize();
            }
        }

        StackManipulation after();

        StackManipulation before();

        int getRequiredVariablePadding();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class UsingJump implements NullValueGuard {
            private static final Object[] EMPTY = new Object[0];
            private static final Object[] INTEGER = {Opcodes.INTEGER};
            private final MethodDescription instrumentedMethod;
            private final Label label = new Label();

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class AfterInstruction extends StackManipulation.AbstractBase {
                public AfterInstruction() {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && UsingJump.this.equals(UsingJump.this);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + UsingJump.this.hashCode();
                }

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                    methodVisitor.visitLabel(UsingJump.this.label);
                    if (context.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V6)) {
                        methodVisitor.visitFrame(4, UsingJump.EMPTY.length, UsingJump.EMPTY, UsingJump.INTEGER.length, UsingJump.INTEGER);
                    }
                    return StackManipulation.Size.ZERO;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class BeforeInstruction extends StackManipulation.AbstractBase {
                public BeforeInstruction() {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && UsingJump.this.equals(UsingJump.this);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + UsingJump.this.hashCode();
                }

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                    methodVisitor.visitVarInsn(58, UsingJump.this.instrumentedMethod.getStackSize());
                    methodVisitor.visitVarInsn(25, UsingJump.this.instrumentedMethod.getStackSize());
                    methodVisitor.visitJumpInsn(198, UsingJump.this.label);
                    methodVisitor.visitVarInsn(25, UsingJump.this.instrumentedMethod.getStackSize());
                    return StackManipulation.Size.ZERO;
                }
            }

            @Override // net.bytebuddy.implementation.HashCodeMethod.NullValueGuard
            public StackManipulation after() {
                return new AfterInstruction();
            }

            @Override // net.bytebuddy.implementation.HashCodeMethod.NullValueGuard
            public StackManipulation before() {
                return new BeforeInstruction();
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    UsingJump usingJump = (UsingJump) obj;
                    return this.instrumentedMethod.equals(usingJump.instrumentedMethod) && this.label.equals(usingJump.label);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.HashCodeMethod.NullValueGuard
            public int getRequiredVariablePadding() {
                return 1;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.instrumentedMethod.hashCode()) * 31) + this.label.hashCode();
            }

            public UsingJump(MethodDescription methodDescription) {
                this.instrumentedMethod = methodDescription;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OffsetProvider {

        /* loaded from: classes.dex */
        public enum ForDynamicTypeHash implements OffsetProvider {
            INSTANCE;

            @Override // net.bytebuddy.implementation.HashCodeMethod.OffsetProvider
            public StackManipulation resolve(TypeDescription typeDescription) {
                return new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodInvocation.invoke(HashCodeMethod.GET_CLASS).virtual(typeDescription), MethodInvocation.invoke(HashCodeMethod.HASH_CODE).virtual(TypeDescription.CLASS));
            }
        }

        /* loaded from: classes.dex */
        public enum ForStaticTypeHash implements OffsetProvider {
            INSTANCE;

            @Override // net.bytebuddy.implementation.HashCodeMethod.OffsetProvider
            public StackManipulation resolve(TypeDescription typeDescription) {
                return new StackManipulation.Compound(ClassConstant.m14958of(typeDescription), MethodInvocation.invoke(HashCodeMethod.HASH_CODE).virtual(TypeDescription.CLASS));
            }
        }

        StackManipulation resolve(TypeDescription typeDescription);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForFixedValue implements OffsetProvider {
            private final int value;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.value == ((ForFixedValue) obj).value;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.value;
            }

            @Override // net.bytebuddy.implementation.HashCodeMethod.OffsetProvider
            public StackManipulation resolve(TypeDescription typeDescription) {
                return IntegerConstant.forValue(this.value);
            }

            public ForFixedValue(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum ForSuperMethodCall implements OffsetProvider {
            INSTANCE;

            @Override // net.bytebuddy.implementation.HashCodeMethod.OffsetProvider
            public StackManipulation resolve(TypeDescription typeDescription) {
                TypeDescription.Generic superClass = typeDescription.getSuperClass();
                if (superClass != null) {
                    return new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodInvocation.invoke(HashCodeMethod.HASH_CODE).special(superClass.asErasure()));
                }
                throw new IllegalStateException(typeDescription + " does not declare a super class");
            }
        }
    }

    /* loaded from: classes.dex */
    public enum ValueTransformer implements StackManipulation {
        LONG { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.1
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(92);
                methodVisitor.visitIntInsn(16, 32);
                methodVisitor.visitInsn(125);
                methodVisitor.visitInsn(131);
                methodVisitor.visitInsn(136);
                return new StackManipulation.Size(-1, 3);
            }
        },
        FLOAT { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.2
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/lang/Float", "floatToIntBits", "(F)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        DOUBLE { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.3
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/lang/Double", "doubleToLongBits", "(D)J", false);
                methodVisitor.visitInsn(92);
                methodVisitor.visitIntInsn(16, 32);
                methodVisitor.visitInsn(125);
                methodVisitor.visitInsn(131);
                methodVisitor.visitInsn(136);
                return new StackManipulation.Size(-1, 3);
            }
        },
        BOOLEAN_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.4
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([Z)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        BYTE_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.5
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([B)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        SHORT_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.6
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([S)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        CHARACTER_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.7
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([C)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        INTEGER_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.8
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([I)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        LONG_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.9
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([J)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        FLOAT_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.10
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([F)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        DOUBLE_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.11
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([D)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        REFERENCE_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.12
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "hashCode", "([Ljava/lang/Object;)I", false);
                return StackManipulation.Size.ZERO;
            }
        },
        NESTED_ARRAY { // from class: net.bytebuddy.implementation.HashCodeMethod.ValueTransformer.13
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "deepHashCode", "([Ljava/lang/Object;)I", false);
                return StackManipulation.Size.ZERO;
            }
        };

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return true;
        }

        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        /* renamed from: of */
        public static StackManipulation m15081of(TypeDefinition typeDefinition) {
            if (!typeDefinition.represents(Boolean.TYPE) && !typeDefinition.represents(Byte.TYPE) && !typeDefinition.represents(Short.TYPE) && !typeDefinition.represents(Character.TYPE) && !typeDefinition.represents(Integer.TYPE)) {
                if (typeDefinition.represents(Long.TYPE)) {
                    return LONG;
                }
                if (typeDefinition.represents(Float.TYPE)) {
                    return FLOAT;
                }
                if (typeDefinition.represents(Double.TYPE)) {
                    return DOUBLE;
                }
                if (typeDefinition.represents(boolean[].class)) {
                    return BOOLEAN_ARRAY;
                }
                if (typeDefinition.represents(byte[].class)) {
                    return BYTE_ARRAY;
                }
                if (typeDefinition.represents(short[].class)) {
                    return SHORT_ARRAY;
                }
                if (typeDefinition.represents(char[].class)) {
                    return CHARACTER_ARRAY;
                }
                if (typeDefinition.represents(int[].class)) {
                    return INTEGER_ARRAY;
                }
                if (typeDefinition.represents(long[].class)) {
                    return LONG_ARRAY;
                }
                if (typeDefinition.represents(float[].class)) {
                    return FLOAT_ARRAY;
                }
                if (typeDefinition.represents(double[].class)) {
                    return DOUBLE_ARRAY;
                }
                if (typeDefinition.isArray()) {
                    if (typeDefinition.getComponentType().isArray()) {
                        return NESTED_ARRAY;
                    }
                    return REFERENCE_ARRAY;
                }
                return MethodInvocation.invoke(HashCodeMethod.HASH_CODE).virtual(typeDefinition.asErasure());
            }
            return StackManipulation.Trivial.INSTANCE;
        }
    }

    public HashCodeMethod(OffsetProvider offsetProvider) {
        this(offsetProvider, 31, ElementMatchers.none(), ElementMatchers.none());
    }

    public static HashCodeMethod usingDefaultOffset() {
        return usingOffset(17);
    }

    public static HashCodeMethod usingOffset(int i) {
        return new HashCodeMethod(new OffsetProvider.ForFixedValue(i));
    }

    public static HashCodeMethod usingSuperClassOffset() {
        return new HashCodeMethod(OffsetProvider.ForSuperMethodCall.INSTANCE);
    }

    public static HashCodeMethod usingTypeHashOffset(boolean z) {
        return new HashCodeMethod(z ? OffsetProvider.ForDynamicTypeHash.INSTANCE : OffsetProvider.ForStaticTypeHash.INSTANCE);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            HashCodeMethod hashCodeMethod = (HashCodeMethod) obj;
            return this.multiplier == hashCodeMethod.multiplier && this.offsetProvider.equals(hashCodeMethod.offsetProvider) && this.ignored.equals(hashCodeMethod.ignored) && this.nonNullable.equals(hashCodeMethod.nonNullable);
        }
        return false;
    }

    public int hashCode() {
        return (((((((getClass().hashCode() * 31) + this.offsetProvider.hashCode()) * 31) + this.multiplier) * 31) + this.ignored.hashCode()) * 31) + this.nonNullable.hashCode();
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return instrumentedType;
    }

    public HashCodeMethod withIgnoredFields(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
        return new HashCodeMethod(this.offsetProvider, this.multiplier, this.ignored.mo14830or(elementMatcher), this.nonNullable);
    }

    public HashCodeMethod withNonNullableFields(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
        return new HashCodeMethod(this.offsetProvider, this.multiplier, this.ignored, this.nonNullable.mo14830or(elementMatcher));
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Appender implements ByteCodeAppender {
        private final List<FieldDescription.InDefinedShape> fieldDescriptions;
        private final StackManipulation initialValue;
        private final int multiplier;
        private final ElementMatcher<? super FieldDescription.InDefinedShape> nonNullable;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.multiplier == appender.multiplier && this.initialValue.equals(appender.initialValue) && this.fieldDescriptions.equals(appender.fieldDescriptions) && this.nonNullable.equals(appender.nonNullable);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.initialValue.hashCode()) * 31) + this.multiplier) * 31) + this.fieldDescriptions.hashCode()) * 31) + this.nonNullable.hashCode();
        }

        public Appender(StackManipulation stackManipulation, int i, List<FieldDescription.InDefinedShape> list, ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
            this.initialValue = stackManipulation;
            this.multiplier = i;
            this.fieldDescriptions = list;
            this.nonNullable = elementMatcher;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            NullValueGuard nullValueGuard;
            if (!methodDescription.isStatic()) {
                if (methodDescription.getReturnType().represents(Integer.TYPE)) {
                    ArrayList arrayList = new ArrayList((this.fieldDescriptions.size() * 8) + 2);
                    arrayList.add(this.initialValue);
                    int i = 0;
                    for (FieldDescription.InDefinedShape inDefinedShape : this.fieldDescriptions) {
                        arrayList.add(IntegerConstant.forValue(this.multiplier));
                        arrayList.add(Multiplication.INTEGER);
                        arrayList.add(MethodVariableAccess.loadThis());
                        arrayList.add(FieldAccess.forField(inDefinedShape).read());
                        if (!inDefinedShape.getType().isPrimitive() && !inDefinedShape.getType().isArray() && !this.nonNullable.matches(inDefinedShape)) {
                            nullValueGuard = new NullValueGuard.UsingJump(methodDescription);
                        } else {
                            nullValueGuard = NullValueGuard.NoOp.INSTANCE;
                        }
                        arrayList.add(nullValueGuard.before());
                        arrayList.add(ValueTransformer.m15081of(inDefinedShape.getType()));
                        arrayList.add(Addition.INTEGER);
                        arrayList.add(nullValueGuard.after());
                        i = Math.max(i, nullValueGuard.getRequiredVariablePadding());
                    }
                    arrayList.add(MethodReturn.INTEGER);
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(arrayList).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize() + i);
                }
                throw new IllegalStateException("Hash code method does not return primitive integer: " + methodDescription);
            }
            throw new IllegalStateException("Hash code method must not be static: " + methodDescription);
        }
    }

    private HashCodeMethod(OffsetProvider offsetProvider, int i, ElementMatcher.Junction<? super FieldDescription.InDefinedShape> junction, ElementMatcher.Junction<? super FieldDescription.InDefinedShape> junction2) {
        this.offsetProvider = offsetProvider;
        this.multiplier = i;
        this.ignored = junction;
        this.nonNullable = junction2;
    }

    public Implementation withMultiplier(int i) {
        if (i != 0) {
            return new HashCodeMethod(this.offsetProvider, i, this.ignored, this.nonNullable);
        }
        throw new IllegalArgumentException("Hash code multiplier must not be zero");
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        if (!target.getInstrumentedType().isInterface()) {
            return new Appender(this.offsetProvider.resolve(target.getInstrumentedType()), this.multiplier, target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.not(ElementMatchers.isStatic().mo14830or(this.ignored))), this.nonNullable);
        }
        throw new IllegalStateException("Cannot implement meaningful hash code method for " + target.getInstrumentedType());
    }
}
