package net.bytebuddy.implementation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.assign.InstanceCheck;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class EqualsMethod implements Implementation {
    private static final MethodDescription.InDefinedShape EQUALS = (MethodDescription.InDefinedShape) TypeDescription.OBJECT.getDeclaredMethods().filter(ElementMatchers.isEquals()).getOnly();
    private final Comparator<? super FieldDescription.InDefinedShape> comparator;
    private final ElementMatcher.Junction<? super FieldDescription.InDefinedShape> ignored;
    private final ElementMatcher.Junction<? super FieldDescription.InDefinedShape> nonNullable;
    private final SuperClassCheck superClassCheck;
    private final TypeCompatibilityCheck typeCompatibilityCheck;

    @SuppressFBWarnings(justification = "Not used within a serializable instance", value = {"SE_COMPARATOR_SHOULD_BE_SERIALIZABLE"})
    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class CompoundComparator implements Comparator<FieldDescription.InDefinedShape> {
        private final List<Comparator<? super FieldDescription.InDefinedShape>> comparators;

        public CompoundComparator(Comparator<? super FieldDescription.InDefinedShape>... comparatorArr) {
            this(Arrays.asList(comparatorArr));
        }

        @Override // java.util.Comparator
        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.comparators.equals(((CompoundComparator) obj).comparators);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.comparators.hashCode();
        }

        public CompoundComparator(List<? extends Comparator<? super FieldDescription.InDefinedShape>> list) {
            this.comparators = new ArrayList();
            for (Comparator<? super FieldDescription.InDefinedShape> comparator : list) {
                if (comparator instanceof CompoundComparator) {
                    this.comparators.addAll(((CompoundComparator) comparator).comparators);
                } else if (!(comparator instanceof NaturalOrderComparator)) {
                    this.comparators.add(comparator);
                }
            }
        }

        @Override // java.util.Comparator
        public int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
            for (Comparator<? super FieldDescription.InDefinedShape> comparator : this.comparators) {
                int compare = comparator.compare(inDefinedShape, inDefinedShape2);
                if (compare != 0) {
                    return compare;
                }
            }
            return 0;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ConditionalReturn extends StackManipulation.AbstractBase {
        private static final Object[] EMPTY = new Object[0];
        private final int jumpCondition;
        private final int value;

        public ConditionalReturn(int i) {
            this(i, 3);
        }

        public static ConditionalReturn onIdentity() {
            return new ConditionalReturn(166);
        }

        public static ConditionalReturn onNonEqualInteger() {
            return new ConditionalReturn(159);
        }

        public static ConditionalReturn onNonIdentity() {
            return new ConditionalReturn(165);
        }

        public static ConditionalReturn onNonZeroInteger() {
            return new ConditionalReturn(153);
        }

        public static ConditionalReturn onNullValue() {
            return new ConditionalReturn(199);
        }

        public static ConditionalReturn onZeroInteger() {
            return new ConditionalReturn(154);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ConditionalReturn conditionalReturn = (ConditionalReturn) obj;
                return this.jumpCondition == conditionalReturn.jumpCondition && this.value == conditionalReturn.value;
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.jumpCondition) * 31) + this.value;
        }

        public StackManipulation returningTrue() {
            return new ConditionalReturn(this.jumpCondition, 4);
        }

        private ConditionalReturn(int i, int i2) {
            this.jumpCondition = i;
            this.value = i2;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            Label label = new Label();
            methodVisitor.visitJumpInsn(this.jumpCondition, label);
            methodVisitor.visitInsn(this.value);
            methodVisitor.visitInsn(172);
            methodVisitor.visitLabel(label);
            if (context.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V6)) {
                Object[] objArr = EMPTY;
                methodVisitor.visitFrame(3, objArr.length, objArr, objArr.length, objArr);
            }
            return new StackManipulation.Size(-1, 1);
        }
    }

    /* loaded from: classes.dex */
    public enum NaturalOrderComparator implements Comparator<FieldDescription.InDefinedShape> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
            return 0;
        }
    }

    /* loaded from: classes.dex */
    public interface NullValueGuard {

        /* loaded from: classes.dex */
        public enum NoOp implements NullValueGuard {
            INSTANCE;

            @Override // net.bytebuddy.implementation.EqualsMethod.NullValueGuard
            public StackManipulation after() {
                return StackManipulation.Trivial.INSTANCE;
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.NullValueGuard
            public StackManipulation before() {
                return StackManipulation.Trivial.INSTANCE;
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.NullValueGuard
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
            private static final Object[] REFERENCE = {Type.getInternalName(Object.class)};
            private final MethodDescription instrumentedMethod;
            private final Label firstValueNull = new Label();
            private final Label secondValueNull = new Label();
            private final Label endOfBlock = new Label();

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
                    methodVisitor.visitJumpInsn(167, UsingJump.this.endOfBlock);
                    methodVisitor.visitLabel(UsingJump.this.secondValueNull);
                    ClassFileVersion classFileVersion = context.getClassFileVersion();
                    ClassFileVersion classFileVersion2 = ClassFileVersion.JAVA_V6;
                    if (classFileVersion.isAtLeast(classFileVersion2)) {
                        methodVisitor.visitFrame(4, UsingJump.EMPTY.length, UsingJump.EMPTY, UsingJump.REFERENCE.length, UsingJump.REFERENCE);
                    }
                    methodVisitor.visitJumpInsn(198, UsingJump.this.endOfBlock);
                    methodVisitor.visitLabel(UsingJump.this.firstValueNull);
                    if (context.getClassFileVersion().isAtLeast(classFileVersion2)) {
                        methodVisitor.visitFrame(3, UsingJump.EMPTY.length, UsingJump.EMPTY, UsingJump.EMPTY.length, UsingJump.EMPTY);
                    }
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitInsn(172);
                    methodVisitor.visitLabel(UsingJump.this.endOfBlock);
                    if (context.getClassFileVersion().isAtLeast(classFileVersion2)) {
                        methodVisitor.visitFrame(3, UsingJump.EMPTY.length, UsingJump.EMPTY, UsingJump.EMPTY.length, UsingJump.EMPTY);
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
                    methodVisitor.visitVarInsn(58, UsingJump.this.instrumentedMethod.getStackSize() + 1);
                    methodVisitor.visitVarInsn(25, UsingJump.this.instrumentedMethod.getStackSize() + 1);
                    methodVisitor.visitVarInsn(25, UsingJump.this.instrumentedMethod.getStackSize());
                    methodVisitor.visitJumpInsn(198, UsingJump.this.secondValueNull);
                    methodVisitor.visitJumpInsn(198, UsingJump.this.firstValueNull);
                    methodVisitor.visitVarInsn(25, UsingJump.this.instrumentedMethod.getStackSize() + 1);
                    methodVisitor.visitVarInsn(25, UsingJump.this.instrumentedMethod.getStackSize());
                    return StackManipulation.Size.ZERO;
                }
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.NullValueGuard
            public StackManipulation after() {
                return new AfterInstruction();
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.NullValueGuard
            public StackManipulation before() {
                return new BeforeInstruction();
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    UsingJump usingJump = (UsingJump) obj;
                    return this.instrumentedMethod.equals(usingJump.instrumentedMethod) && this.firstValueNull.equals(usingJump.firstValueNull) && this.secondValueNull.equals(usingJump.secondValueNull) && this.endOfBlock.equals(usingJump.endOfBlock);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.NullValueGuard
            public int getRequiredVariablePadding() {
                return 2;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.instrumentedMethod.hashCode()) * 31) + this.firstValueNull.hashCode()) * 31) + this.secondValueNull.hashCode()) * 31) + this.endOfBlock.hashCode();
            }

            public UsingJump(MethodDescription methodDescription) {
                this.instrumentedMethod = methodDescription;
            }
        }
    }

    /* loaded from: classes.dex */
    public enum SuperClassCheck {
        DISABLED { // from class: net.bytebuddy.implementation.EqualsMethod.SuperClassCheck.1
            @Override // net.bytebuddy.implementation.EqualsMethod.SuperClassCheck
            public StackManipulation resolve(TypeDescription typeDescription) {
                return StackManipulation.Trivial.INSTANCE;
            }
        },
        ENABLED { // from class: net.bytebuddy.implementation.EqualsMethod.SuperClassCheck.2
            @Override // net.bytebuddy.implementation.EqualsMethod.SuperClassCheck
            public StackManipulation resolve(TypeDescription typeDescription) {
                TypeDescription.Generic superClass = typeDescription.getSuperClass();
                if (superClass != null) {
                    return new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodVariableAccess.REFERENCE.loadFrom(1), MethodInvocation.invoke(EqualsMethod.EQUALS).special(superClass.asErasure()), ConditionalReturn.onZeroInteger());
                }
                throw new IllegalStateException(typeDescription + " does not declare a super class");
            }
        };

        public abstract StackManipulation resolve(TypeDescription typeDescription);
    }

    /* loaded from: classes.dex */
    public enum TypeCompatibilityCheck {
        EXACT { // from class: net.bytebuddy.implementation.EqualsMethod.TypeCompatibilityCheck.1
            @Override // net.bytebuddy.implementation.EqualsMethod.TypeCompatibilityCheck
            public StackManipulation resolve(TypeDescription typeDescription) {
                MethodVariableAccess methodVariableAccess = MethodVariableAccess.REFERENCE;
                MethodDescription.InDefinedShape inDefinedShape = TypeCompatibilityCheck.GET_CLASS;
                return new StackManipulation.Compound(methodVariableAccess.loadFrom(1), ConditionalReturn.onNullValue(), methodVariableAccess.loadFrom(0), MethodInvocation.invoke(inDefinedShape), methodVariableAccess.loadFrom(1), MethodInvocation.invoke(inDefinedShape), ConditionalReturn.onNonIdentity());
            }
        },
        SUBCLASS { // from class: net.bytebuddy.implementation.EqualsMethod.TypeCompatibilityCheck.2
            @Override // net.bytebuddy.implementation.EqualsMethod.TypeCompatibilityCheck
            public StackManipulation resolve(TypeDescription typeDescription) {
                return new StackManipulation.Compound(MethodVariableAccess.REFERENCE.loadFrom(1), InstanceCheck.m14972of(typeDescription), ConditionalReturn.onZeroInteger());
            }
        };
        
        public static final MethodDescription.InDefinedShape GET_CLASS = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Object.class).getDeclaredMethods().filter(ElementMatchers.named("getClass")).getOnly();

        public abstract StackManipulation resolve(TypeDescription typeDescription);
    }

    /* loaded from: classes.dex */
    public enum TypePropertyComparator implements Comparator<FieldDescription.InDefinedShape> {
        FOR_PRIMITIVE_TYPES { // from class: net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator.1
            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator, java.util.Comparator
            public /* bridge */ /* synthetic */ int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
                return super.compare(inDefinedShape, inDefinedShape2);
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator
            public boolean resolve(TypeDefinition typeDefinition) {
                return typeDefinition.isPrimitive();
            }
        },
        FOR_ENUMERATION_TYPES { // from class: net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator.2
            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator, java.util.Comparator
            public /* bridge */ /* synthetic */ int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
                return super.compare(inDefinedShape, inDefinedShape2);
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator
            public boolean resolve(TypeDefinition typeDefinition) {
                return typeDefinition.isEnum();
            }
        },
        FOR_STRING_TYPES { // from class: net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator.3
            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator, java.util.Comparator
            public /* bridge */ /* synthetic */ int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
                return super.compare(inDefinedShape, inDefinedShape2);
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator
            public boolean resolve(TypeDefinition typeDefinition) {
                return typeDefinition.represents(String.class);
            }
        },
        FOR_PRIMITIVE_WRAPPER_TYPES { // from class: net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator.4
            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator, java.util.Comparator
            public /* bridge */ /* synthetic */ int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
                return super.compare(inDefinedShape, inDefinedShape2);
            }

            @Override // net.bytebuddy.implementation.EqualsMethod.TypePropertyComparator
            public boolean resolve(TypeDefinition typeDefinition) {
                return typeDefinition.asErasure().isPrimitiveWrapper();
            }
        };

        public abstract boolean resolve(TypeDefinition typeDefinition);

        @Override // java.util.Comparator
        public int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
            if (!resolve(inDefinedShape.getType()) || resolve(inDefinedShape2.getType())) {
                return (resolve(inDefinedShape.getType()) || !resolve(inDefinedShape2.getType())) ? 0 : 1;
            }
            return -1;
        }
    }

    /* loaded from: classes.dex */
    public enum ValueComparator implements StackManipulation {
        LONG { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.1
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitInsn(148);
                return new StackManipulation.Size(-2, 0);
            }
        },
        FLOAT { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.2
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/lang/Float", "compare", "(FF)I", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        DOUBLE { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.3
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/lang/Double", "compare", "(DD)I", false);
                return new StackManipulation.Size(-2, 0);
            }
        },
        BOOLEAN_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.4
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([Z[Z)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        BYTE_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.5
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([B[B)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        SHORT_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.6
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([S[S)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        CHARACTER_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.7
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([C[C)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        INTEGER_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.8
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([I[I)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        LONG_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.9
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([J[J)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        FLOAT_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.10
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([F[F)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        DOUBLE_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.11
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([D[D)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        REFERENCE_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.12
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "equals", "([Ljava/lang/Object;[Ljava/lang/Object;)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        NESTED_ARRAY { // from class: net.bytebuddy.implementation.EqualsMethod.ValueComparator.13
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "deepEquals", "([Ljava/lang/Object;[Ljava/lang/Object;)Z", false);
                return new StackManipulation.Size(-1, 0);
            }
        };

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return true;
        }

        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        /* renamed from: of */
        public static StackManipulation m15097of(TypeDefinition typeDefinition) {
            ValueComparator valueComparator;
            if (!typeDefinition.represents(Boolean.TYPE) && !typeDefinition.represents(Byte.TYPE) && !typeDefinition.represents(Short.TYPE) && !typeDefinition.represents(Character.TYPE) && !typeDefinition.represents(Integer.TYPE)) {
                if (typeDefinition.represents(Long.TYPE)) {
                    return new StackManipulation.Compound(LONG, ConditionalReturn.onNonZeroInteger());
                }
                if (typeDefinition.represents(Float.TYPE)) {
                    return new StackManipulation.Compound(FLOAT, ConditionalReturn.onNonZeroInteger());
                }
                if (typeDefinition.represents(Double.TYPE)) {
                    return new StackManipulation.Compound(DOUBLE, ConditionalReturn.onNonZeroInteger());
                }
                if (typeDefinition.represents(boolean[].class)) {
                    return new StackManipulation.Compound(BOOLEAN_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.represents(byte[].class)) {
                    return new StackManipulation.Compound(BYTE_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.represents(short[].class)) {
                    return new StackManipulation.Compound(SHORT_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.represents(char[].class)) {
                    return new StackManipulation.Compound(CHARACTER_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.represents(int[].class)) {
                    return new StackManipulation.Compound(INTEGER_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.represents(long[].class)) {
                    return new StackManipulation.Compound(LONG_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.represents(float[].class)) {
                    return new StackManipulation.Compound(FLOAT_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.represents(double[].class)) {
                    return new StackManipulation.Compound(DOUBLE_ARRAY, ConditionalReturn.onZeroInteger());
                }
                if (typeDefinition.isArray()) {
                    StackManipulation[] stackManipulationArr = new StackManipulation[2];
                    if (typeDefinition.getComponentType().isArray()) {
                        valueComparator = NESTED_ARRAY;
                    } else {
                        valueComparator = REFERENCE_ARRAY;
                    }
                    stackManipulationArr[0] = valueComparator;
                    stackManipulationArr[1] = ConditionalReturn.onZeroInteger();
                    return new StackManipulation.Compound(stackManipulationArr);
                }
                return new StackManipulation.Compound(MethodInvocation.invoke(EqualsMethod.EQUALS).virtual(typeDefinition.asErasure()), ConditionalReturn.onZeroInteger());
            }
            return ConditionalReturn.onNonEqualInteger();
        }
    }

    public EqualsMethod(SuperClassCheck superClassCheck) {
        this(superClassCheck, TypeCompatibilityCheck.EXACT, ElementMatchers.none(), ElementMatchers.none(), NaturalOrderComparator.INSTANCE);
    }

    public static EqualsMethod isolated() {
        return new EqualsMethod(SuperClassCheck.DISABLED);
    }

    public static EqualsMethod requiringSuperClassEquality() {
        return new EqualsMethod(SuperClassCheck.ENABLED);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            EqualsMethod equalsMethod = (EqualsMethod) obj;
            return this.superClassCheck.equals(equalsMethod.superClassCheck) && this.typeCompatibilityCheck.equals(equalsMethod.typeCompatibilityCheck) && this.ignored.equals(equalsMethod.ignored) && this.nonNullable.equals(equalsMethod.nonNullable) && this.comparator.equals(equalsMethod.comparator);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((getClass().hashCode() * 31) + this.superClassCheck.hashCode()) * 31) + this.typeCompatibilityCheck.hashCode()) * 31) + this.ignored.hashCode()) * 31) + this.nonNullable.hashCode()) * 31) + this.comparator.hashCode();
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return instrumentedType;
    }

    public EqualsMethod withEnumerationTypedFieldsFirst() {
        return withFieldOrder(TypePropertyComparator.FOR_ENUMERATION_TYPES);
    }

    public EqualsMethod withFieldOrder(Comparator<? super FieldDescription.InDefinedShape> comparator) {
        return new EqualsMethod(this.superClassCheck, this.typeCompatibilityCheck, this.ignored, this.nonNullable, new CompoundComparator(this.comparator, comparator));
    }

    public EqualsMethod withIgnoredFields(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
        return new EqualsMethod(this.superClassCheck, this.typeCompatibilityCheck, this.ignored.mo14830or(elementMatcher), this.nonNullable, this.comparator);
    }

    public EqualsMethod withNonNullableFields(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
        return new EqualsMethod(this.superClassCheck, this.typeCompatibilityCheck, this.ignored, this.nonNullable.mo14830or(elementMatcher), this.comparator);
    }

    public EqualsMethod withPrimitiveTypedFieldsFirst() {
        return withFieldOrder(TypePropertyComparator.FOR_PRIMITIVE_TYPES);
    }

    public EqualsMethod withPrimitiveWrapperTypedFieldsFirst() {
        return withFieldOrder(TypePropertyComparator.FOR_PRIMITIVE_WRAPPER_TYPES);
    }

    public EqualsMethod withStringTypedFieldsFirst() {
        return withFieldOrder(TypePropertyComparator.FOR_STRING_TYPES);
    }

    public Implementation withSubclassEquality() {
        return new EqualsMethod(this.superClassCheck, TypeCompatibilityCheck.SUBCLASS, this.ignored, this.nonNullable, this.comparator);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Appender implements ByteCodeAppender {
        private final StackManipulation baseline;
        private final List<FieldDescription.InDefinedShape> fieldDescriptions;
        private final TypeDescription instrumentedType;
        private final ElementMatcher<? super FieldDescription.InDefinedShape> nonNullable;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.instrumentedType.equals(appender.instrumentedType) && this.baseline.equals(appender.baseline) && this.fieldDescriptions.equals(appender.fieldDescriptions) && this.nonNullable.equals(appender.nonNullable);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.baseline.hashCode()) * 31) + this.fieldDescriptions.hashCode()) * 31) + this.nonNullable.hashCode();
        }

        public Appender(TypeDescription typeDescription, StackManipulation stackManipulation, List<FieldDescription.InDefinedShape> list, ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
            this.instrumentedType = typeDescription;
            this.baseline = stackManipulation;
            this.fieldDescriptions = list;
            this.nonNullable = elementMatcher;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            NullValueGuard nullValueGuard;
            if (!methodDescription.isStatic()) {
                if (methodDescription.getParameters().size() == 1 && !((ParameterDescription) methodDescription.getParameters().getOnly()).getType().isPrimitive()) {
                    if (methodDescription.getReturnType().represents(Boolean.TYPE)) {
                        ArrayList arrayList = new ArrayList((this.fieldDescriptions.size() * 8) + 3);
                        arrayList.add(this.baseline);
                        int i = 0;
                        for (FieldDescription.InDefinedShape inDefinedShape : this.fieldDescriptions) {
                            arrayList.add(MethodVariableAccess.loadThis());
                            arrayList.add(FieldAccess.forField(inDefinedShape).read());
                            arrayList.add(MethodVariableAccess.REFERENCE.loadFrom(1));
                            arrayList.add(TypeCasting.m14971to(this.instrumentedType));
                            arrayList.add(FieldAccess.forField(inDefinedShape).read());
                            if (!inDefinedShape.getType().isPrimitive() && !inDefinedShape.getType().isArray() && !this.nonNullable.matches(inDefinedShape)) {
                                nullValueGuard = new NullValueGuard.UsingJump(methodDescription);
                            } else {
                                nullValueGuard = NullValueGuard.NoOp.INSTANCE;
                            }
                            arrayList.add(nullValueGuard.before());
                            arrayList.add(ValueComparator.m15097of(inDefinedShape.getType()));
                            arrayList.add(nullValueGuard.after());
                            i = Math.max(i, nullValueGuard.getRequiredVariablePadding());
                        }
                        arrayList.add(IntegerConstant.forValue(true));
                        arrayList.add(MethodReturn.INTEGER);
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(arrayList).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize() + i);
                    }
                    throw new IllegalStateException("Hash code method does not return primitive boolean: " + methodDescription);
                }
                throw new IllegalStateException();
            }
            throw new IllegalStateException("Hash code method must not be static: " + methodDescription);
        }
    }

    private EqualsMethod(SuperClassCheck superClassCheck, TypeCompatibilityCheck typeCompatibilityCheck, ElementMatcher.Junction<? super FieldDescription.InDefinedShape> junction, ElementMatcher.Junction<? super FieldDescription.InDefinedShape> junction2, Comparator<? super FieldDescription.InDefinedShape> comparator) {
        this.superClassCheck = superClassCheck;
        this.typeCompatibilityCheck = typeCompatibilityCheck;
        this.ignored = junction;
        this.nonNullable = junction2;
        this.comparator = comparator;
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        if (!target.getInstrumentedType().isInterface()) {
            ArrayList arrayList = new ArrayList(target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.not(ElementMatchers.isStatic().mo14830or(this.ignored))));
            Collections.sort(arrayList, this.comparator);
            return new Appender(target.getInstrumentedType(), new StackManipulation.Compound(this.superClassCheck.resolve(target.getInstrumentedType()), MethodVariableAccess.loadThis(), MethodVariableAccess.REFERENCE.loadFrom(1), ConditionalReturn.onIdentity().returningTrue(), this.typeCompatibilityCheck.resolve(target.getInstrumentedType())), arrayList, this.nonNullable);
        }
        throw new IllegalStateException("Cannot implement meaningful equals method for " + target.getInstrumentedType());
    }
}
