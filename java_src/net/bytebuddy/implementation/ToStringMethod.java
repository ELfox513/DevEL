package net.bytebuddy.implementation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.ArrayList;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ToStringMethod implements Implementation {
    private static final MethodDescription.InDefinedShape STRING_BUILDER_CONSTRUCTOR = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(StringBuilder.class).getDeclaredMethods().filter(ElementMatchers.isConstructor().and(ElementMatchers.takesArguments(String.class))).getOnly();
    private static final MethodDescription.InDefinedShape TO_STRING = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(StringBuilder.class).getDeclaredMethods().filter(ElementMatchers.isToString()).getOnly();
    private final String definer;
    private final String end;
    private final ElementMatcher.Junction<? super FieldDescription.InDefinedShape> ignored;
    private final PrefixResolver prefixResolver;
    private final String separator;
    private final String start;

    /* loaded from: classes.dex */
    public interface PrefixResolver {

        /* loaded from: classes.dex */
        public enum Default implements PrefixResolver {
            FULLY_QUALIFIED_CLASS_NAME { // from class: net.bytebuddy.implementation.ToStringMethod.PrefixResolver.Default.1
                @Override // net.bytebuddy.implementation.ToStringMethod.PrefixResolver
                public String resolve(TypeDescription typeDescription) {
                    return typeDescription.getName();
                }
            },
            CANONICAL_CLASS_NAME { // from class: net.bytebuddy.implementation.ToStringMethod.PrefixResolver.Default.2
                @Override // net.bytebuddy.implementation.ToStringMethod.PrefixResolver
                @MaybeNull
                public String resolve(TypeDescription typeDescription) {
                    return typeDescription.getCanonicalName();
                }
            },
            SIMPLE_CLASS_NAME { // from class: net.bytebuddy.implementation.ToStringMethod.PrefixResolver.Default.3
                @Override // net.bytebuddy.implementation.ToStringMethod.PrefixResolver
                public String resolve(TypeDescription typeDescription) {
                    return typeDescription.getSimpleName();
                }
            }
        }

        @MaybeNull
        String resolve(TypeDescription typeDescription);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForFixedValue implements PrefixResolver {
            private final String prefix;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.prefix.equals(((ForFixedValue) obj).prefix);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.prefix.hashCode();
            }

            @Override // net.bytebuddy.implementation.ToStringMethod.PrefixResolver
            public String resolve(TypeDescription typeDescription) {
                return this.prefix;
            }

            public ForFixedValue(String str) {
                this.prefix = str;
            }
        }
    }

    /* loaded from: classes.dex */
    public enum ValueConsumer implements StackManipulation {
        BOOLEAN { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.1
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Z)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        CHARACTER { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.2
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(C)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        INTEGER { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.3
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        LONG { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.4
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(J)Ljava/lang/StringBuilder;", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        FLOAT { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.5
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(F)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        DOUBLE { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.6
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(D)Ljava/lang/StringBuilder;", false);
                return new StackManipulation.Size(-1, 0);
            }
        },
        STRING { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.7
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        CHARACTER_SEQUENCE { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.8
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        OBJECT { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.9
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/Object;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        BOOLEAN_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.10
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([Z)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        BYTE_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.11
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([B)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        SHORT_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.12
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([S)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        CHARACTER_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.13
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([C)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        INTEGER_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.14
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([I)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        LONG_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.15
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([J)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        FLOAT_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.16
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([F)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        DOUBLE_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.17
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([D)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        REFERENCE_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.18
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "toString", "([Ljava/lang/Object;)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        },
        NESTED_ARRAY { // from class: net.bytebuddy.implementation.ToStringMethod.ValueConsumer.19
            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                methodVisitor.visitMethodInsn(184, "java/util/Arrays", "deepToString", "([Ljava/lang/Object;)Ljava/lang/String;", false);
                methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;", false);
                return StackManipulation.Size.ZERO;
            }
        };

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return true;
        }

        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        /* renamed from: of */
        public static StackManipulation m15021of(TypeDescription typeDescription) {
            if (typeDescription.represents(Boolean.TYPE)) {
                return BOOLEAN;
            }
            if (typeDescription.represents(Character.TYPE)) {
                return CHARACTER;
            }
            if (!typeDescription.represents(Byte.TYPE) && !typeDescription.represents(Short.TYPE) && !typeDescription.represents(Integer.TYPE)) {
                if (typeDescription.represents(Long.TYPE)) {
                    return LONG;
                }
                if (typeDescription.represents(Float.TYPE)) {
                    return FLOAT;
                }
                if (typeDescription.represents(Double.TYPE)) {
                    return DOUBLE;
                }
                if (typeDescription.represents(String.class)) {
                    return STRING;
                }
                if (typeDescription.isAssignableTo(CharSequence.class)) {
                    return CHARACTER_SEQUENCE;
                }
                if (typeDescription.represents(boolean[].class)) {
                    return BOOLEAN_ARRAY;
                }
                if (typeDescription.represents(byte[].class)) {
                    return BYTE_ARRAY;
                }
                if (typeDescription.represents(short[].class)) {
                    return SHORT_ARRAY;
                }
                if (typeDescription.represents(char[].class)) {
                    return CHARACTER_ARRAY;
                }
                if (typeDescription.represents(int[].class)) {
                    return INTEGER_ARRAY;
                }
                if (typeDescription.represents(long[].class)) {
                    return LONG_ARRAY;
                }
                if (typeDescription.represents(float[].class)) {
                    return FLOAT_ARRAY;
                }
                if (typeDescription.represents(double[].class)) {
                    return DOUBLE_ARRAY;
                }
                if (typeDescription.isArray()) {
                    if (typeDescription.getComponentType().isArray()) {
                        return NESTED_ARRAY;
                    }
                    return REFERENCE_ARRAY;
                }
                return OBJECT;
            }
            return INTEGER;
        }
    }

    public ToStringMethod(PrefixResolver prefixResolver) {
        this(prefixResolver, "{", "}", ", ", "=", ElementMatchers.none());
    }

    public static ToStringMethod prefixedBy(String str) {
        if (str != null) {
            return prefixedBy(new PrefixResolver.ForFixedValue(str));
        }
        throw new IllegalArgumentException("Prefix cannot be null");
    }

    public static ToStringMethod prefixedByCanonicalClassName() {
        return prefixedBy(PrefixResolver.Default.CANONICAL_CLASS_NAME);
    }

    public static ToStringMethod prefixedByFullyQualifiedClassName() {
        return prefixedBy(PrefixResolver.Default.FULLY_QUALIFIED_CLASS_NAME);
    }

    public static ToStringMethod prefixedBySimpleClassName() {
        return prefixedBy(PrefixResolver.Default.SIMPLE_CLASS_NAME);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ToStringMethod toStringMethod = (ToStringMethod) obj;
            return this.start.equals(toStringMethod.start) && this.end.equals(toStringMethod.end) && this.separator.equals(toStringMethod.separator) && this.definer.equals(toStringMethod.definer) && this.prefixResolver.equals(toStringMethod.prefixResolver) && this.ignored.equals(toStringMethod.ignored);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((getClass().hashCode() * 31) + this.prefixResolver.hashCode()) * 31) + this.start.hashCode()) * 31) + this.end.hashCode()) * 31) + this.separator.hashCode()) * 31) + this.definer.hashCode()) * 31) + this.ignored.hashCode();
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return instrumentedType;
    }

    public ToStringMethod withIgnoredFields(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
        return new ToStringMethod(this.prefixResolver, this.start, this.end, this.separator, this.definer, this.ignored.mo14830or(elementMatcher));
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Appender implements ByteCodeAppender {
        private final String definer;
        private final String end;
        private final List<? extends FieldDescription.InDefinedShape> fieldDescriptions;
        private final String prefix;
        private final String separator;
        private final String start;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.prefix.equals(appender.prefix) && this.start.equals(appender.start) && this.end.equals(appender.end) && this.separator.equals(appender.separator) && this.definer.equals(appender.definer) && this.fieldDescriptions.equals(appender.fieldDescriptions);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((getClass().hashCode() * 31) + this.prefix.hashCode()) * 31) + this.start.hashCode()) * 31) + this.end.hashCode()) * 31) + this.separator.hashCode()) * 31) + this.definer.hashCode()) * 31) + this.fieldDescriptions.hashCode();
        }

        public Appender(String str, String str2, String str3, String str4, String str5, List<? extends FieldDescription.InDefinedShape> list) {
            this.prefix = str;
            this.start = str2;
            this.end = str3;
            this.separator = str4;
            this.definer = str5;
            this.fieldDescriptions = list;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            if (!methodDescription.isStatic()) {
                if (methodDescription.getReturnType().asErasure().isAssignableFrom(String.class)) {
                    ArrayList arrayList = new ArrayList(Math.max(0, (this.fieldDescriptions.size() * 7) - 2) + 10);
                    arrayList.add(TypeCreation.m14974of(TypeDescription.ForLoadedType.m15196of(StringBuilder.class)));
                    arrayList.add(Duplication.SINGLE);
                    arrayList.add(new TextConstant(this.prefix));
                    arrayList.add(MethodInvocation.invoke(ToStringMethod.STRING_BUILDER_CONSTRUCTOR));
                    arrayList.add(new TextConstant(this.start));
                    arrayList.add(ValueConsumer.STRING);
                    boolean z = true;
                    for (FieldDescription.InDefinedShape inDefinedShape : this.fieldDescriptions) {
                        if (z) {
                            z = false;
                        } else {
                            arrayList.add(new TextConstant(this.separator));
                            arrayList.add(ValueConsumer.STRING);
                        }
                        arrayList.add(new TextConstant(inDefinedShape.getName() + this.definer));
                        arrayList.add(ValueConsumer.STRING);
                        arrayList.add(MethodVariableAccess.loadThis());
                        arrayList.add(FieldAccess.forField(inDefinedShape).read());
                        arrayList.add(ValueConsumer.m15021of(inDefinedShape.getType().asErasure()));
                    }
                    arrayList.add(new TextConstant(this.end));
                    arrayList.add(ValueConsumer.STRING);
                    arrayList.add(MethodInvocation.invoke(ToStringMethod.TO_STRING));
                    arrayList.add(MethodReturn.REFERENCE);
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(arrayList).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }
                throw new IllegalStateException("toString method does not return String-compatible type: " + methodDescription);
            }
            throw new IllegalStateException("toString method must not be static: " + methodDescription);
        }
    }

    private ToStringMethod(PrefixResolver prefixResolver, String str, String str2, String str3, String str4, ElementMatcher.Junction<? super FieldDescription.InDefinedShape> junction) {
        this.prefixResolver = prefixResolver;
        this.start = str;
        this.end = str2;
        this.separator = str3;
        this.definer = str4;
        this.ignored = junction;
    }

    @Override // net.bytebuddy.implementation.Implementation
    public Appender appender(Implementation.Target target) {
        if (!target.getInstrumentedType().isInterface()) {
            String resolve = this.prefixResolver.resolve(target.getInstrumentedType());
            if (resolve != null) {
                return new Appender(resolve, this.start, this.end, this.separator, this.definer, target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.not(ElementMatchers.isStatic().mo14830or(this.ignored))));
            }
            throw new IllegalStateException("Prefix for toString method cannot be null");
        }
        throw new IllegalStateException("Cannot implement meaningful toString method for " + target.getInstrumentedType());
    }

    public Implementation withTokens(String str, String str2, String str3, String str4) {
        if (str != null && str2 != null && str3 != null && str4 != null) {
            return new ToStringMethod(this.prefixResolver, str, str2, str3, str4, this.ignored);
        }
        throw new IllegalArgumentException("Token values cannot be null");
    }

    public static ToStringMethod prefixedBy(PrefixResolver prefixResolver) {
        return new ToStringMethod(prefixResolver);
    }
}
