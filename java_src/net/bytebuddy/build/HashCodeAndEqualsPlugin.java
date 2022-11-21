package net.bytebuddy.build;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Comparator;
import net.bytebuddy.build.Plugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.EqualsMethod;
import net.bytebuddy.implementation.HashCodeMethod;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.attribute.MethodAttributeAppender;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.nullability.MaybeNull;
@Enhance
/* loaded from: classes.dex */
public class HashCodeAndEqualsPlugin implements Plugin, Plugin.Factory, MethodAttributeAppender.Factory, MethodAttributeAppender {
    private static final MethodDescription.InDefinedShape ENHANCE_INCLUDE_SYNTHETIC_FIELDS;
    private static final MethodDescription.InDefinedShape ENHANCE_INVOKE_SUPER;
    private static final MethodDescription.InDefinedShape ENHANCE_PERMIT_SUBCLASS_EQUALITY;
    private static final MethodDescription.InDefinedShape ENHANCE_SIMPLE_COMPARISON_FIRST;
    private static final MethodDescription.InDefinedShape ENHANCE_USE_TYPE_HASH_CONSTANT;
    private static final MethodDescription.InDefinedShape SORTED_VALUE;
    private static final MethodDescription.InDefinedShape VALUE_HANDLING_VALUE;
    @MaybeNull
    @ValueHandling(ValueHandling.Sort.REVERSE_NULLABILITY)
    private final String annotationType;

    /* loaded from: classes2.dex */
    public enum AnnotationOrderComparator implements Comparator<FieldDescription.InDefinedShape> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(FieldDescription.InDefinedShape inDefinedShape, FieldDescription.InDefinedShape inDefinedShape2) {
            AnnotationDescription.Loadable ofType = inDefinedShape.getDeclaredAnnotations().ofType(Sorted.class);
            AnnotationDescription.Loadable ofType2 = inDefinedShape2.getDeclaredAnnotations().ofType(Sorted.class);
            int intValue = ofType == null ? 0 : ((Integer) ofType.getValue(HashCodeAndEqualsPlugin.SORTED_VALUE).resolve(Integer.class)).intValue();
            int intValue2 = ofType2 == null ? 0 : ((Integer) ofType2.getValue(HashCodeAndEqualsPlugin.SORTED_VALUE).resolve(Integer.class)).intValue();
            if (intValue > intValue2) {
                return -1;
            }
            return intValue < intValue2 ? 1 : 0;
        }
    }

    @Target({ElementType.TYPE})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Enhance {

        /* loaded from: classes.dex */
        public enum InvokeSuper {
            IF_DECLARED { // from class: net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper.1
                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public EqualsMethod equalsMethod(TypeDescription typeDescription) {
                    for (TypeDescription.Generic superClass = typeDescription.getSuperClass(); superClass != null && !superClass.represents(Object.class); superClass = superClass.getSuperClass()) {
                        if (superClass.asErasure().getDeclaredAnnotations().isAnnotationPresent(Enhance.class)) {
                            return EqualsMethod.requiringSuperClassEquality();
                        }
                        MethodList filter = superClass.getDeclaredMethods().filter(ElementMatchers.isHashCode());
                        if (!filter.isEmpty()) {
                            if (((MethodDescription) filter.getOnly()).isAbstract()) {
                                return EqualsMethod.isolated();
                            }
                            return EqualsMethod.requiringSuperClassEquality();
                        }
                    }
                    return EqualsMethod.isolated();
                }

                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public HashCodeMethod hashCodeMethod(TypeDescription typeDescription, boolean z, boolean z2) {
                    for (TypeDescription.Generic superClass = typeDescription.getSuperClass(); superClass != null && !superClass.represents(Object.class); superClass = superClass.getSuperClass()) {
                        if (superClass.asErasure().getDeclaredAnnotations().isAnnotationPresent(Enhance.class)) {
                            return HashCodeMethod.usingSuperClassOffset();
                        }
                        MethodList filter = superClass.getDeclaredMethods().filter(ElementMatchers.isHashCode());
                        if (!filter.isEmpty()) {
                            if (((MethodDescription) filter.getOnly()).isAbstract()) {
                                if (z) {
                                    return HashCodeMethod.usingTypeHashOffset(!z2);
                                }
                                return HashCodeMethod.usingDefaultOffset();
                            }
                            return HashCodeMethod.usingSuperClassOffset();
                        }
                    }
                    if (z) {
                        return HashCodeMethod.usingTypeHashOffset(!z2);
                    }
                    return HashCodeMethod.usingDefaultOffset();
                }
            },
            IF_ANNOTATED { // from class: net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper.2
                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public EqualsMethod equalsMethod(TypeDescription typeDescription) {
                    TypeDescription.Generic superClass = typeDescription.getSuperClass();
                    if (superClass != null && superClass.asErasure().getDeclaredAnnotations().isAnnotationPresent(Enhance.class)) {
                        return EqualsMethod.requiringSuperClassEquality();
                    }
                    return EqualsMethod.isolated();
                }

                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public HashCodeMethod hashCodeMethod(TypeDescription typeDescription, boolean z, boolean z2) {
                    TypeDescription.Generic superClass = typeDescription.getSuperClass();
                    if (superClass != null && superClass.asErasure().getDeclaredAnnotations().isAnnotationPresent(Enhance.class)) {
                        return HashCodeMethod.usingSuperClassOffset();
                    }
                    if (z) {
                        return HashCodeMethod.usingTypeHashOffset(!z2);
                    }
                    return HashCodeMethod.usingDefaultOffset();
                }
            },
            ALWAYS { // from class: net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper.3
                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public EqualsMethod equalsMethod(TypeDescription typeDescription) {
                    return EqualsMethod.requiringSuperClassEquality();
                }

                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public HashCodeMethod hashCodeMethod(TypeDescription typeDescription, boolean z, boolean z2) {
                    return HashCodeMethod.usingSuperClassOffset();
                }
            },
            NEVER { // from class: net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper.4
                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public EqualsMethod equalsMethod(TypeDescription typeDescription) {
                    return EqualsMethod.isolated();
                }

                @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin.Enhance.InvokeSuper
                public HashCodeMethod hashCodeMethod(TypeDescription typeDescription, boolean z, boolean z2) {
                    return z ? HashCodeMethod.usingTypeHashOffset(!z2) : HashCodeMethod.usingDefaultOffset();
                }
            };

            public abstract EqualsMethod equalsMethod(TypeDescription typeDescription);

            public abstract HashCodeMethod hashCodeMethod(TypeDescription typeDescription, boolean z, boolean z2);
        }

        boolean includeSyntheticFields() default false;

        InvokeSuper invokeSuper() default InvokeSuper.IF_DECLARED;

        boolean permitSubclassEquality() default false;

        boolean simpleComparisonsFirst() default true;

        boolean useTypeHashConstant() default true;
    }

    @Target({ElementType.FIELD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Sorted {
        public static final int DEFAULT = 0;

        int value();
    }

    @Target({ElementType.FIELD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface ValueHandling {

        /* loaded from: classes.dex */
        public enum Sort {
            IGNORE,
            REVERSE_NULLABILITY
        }

        Sort value();
    }

    @Enhance
    /* loaded from: classes.dex */
    public static class ValueMatcher extends ElementMatcher.Junction.ForNonNullValues<FieldDescription> {
        private final ValueHandling.Sort sort;

        @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.sort.equals(((ValueMatcher) obj).sort);
            }
            return false;
        }

        @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
        public int hashCode() {
            return (super.hashCode() * 31) + this.sort.hashCode();
        }

        @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
        public boolean doMatch(FieldDescription fieldDescription) {
            AnnotationDescription.Loadable ofType = fieldDescription.getDeclaredAnnotations().ofType(ValueHandling.class);
            return ofType != null && ofType.getValue(HashCodeAndEqualsPlugin.VALUE_HANDLING_VALUE).load(ValueHandling.class.getClassLoader()).resolve(ValueHandling.Sort.class) == this.sort;
        }

        public ValueMatcher(ValueHandling.Sort sort) {
            this.sort = sort;
        }
    }

    @Enhance
    /* loaded from: classes.dex */
    public static class WithNonNullableFields extends HashCodeAndEqualsPlugin {
        public WithNonNullableFields() {
            this(null);
        }

        @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass();
            }
            return false;
        }

        @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin
        public int hashCode() {
            return super.hashCode();
        }

        @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin, net.bytebuddy.matcher.ElementMatcher
        public /* bridge */ /* synthetic */ boolean matches(@MaybeNull TypeDescription typeDescription) {
            return super.matches(typeDescription);
        }

        @Override // net.bytebuddy.build.HashCodeAndEqualsPlugin
        public ElementMatcher<FieldDescription> nonNullable(ElementMatcher<FieldDescription> elementMatcher) {
            return ElementMatchers.not(elementMatcher);
        }

        public WithNonNullableFields(@MaybeNull String str) {
            super(str);
        }
    }

    public HashCodeAndEqualsPlugin() {
        this(null);
    }

    @Override // net.bytebuddy.build.Plugin
    @SuppressFBWarnings(justification = "Annotation presence is required by matcher.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
    public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        ElementMatcher.Junction isSynthetic;
        ElementMatcher.Junction isSynthetic2;
        AnnotationDescription.Loadable ofType = typeDescription.getDeclaredAnnotations().ofType(Enhance.class);
        if (typeDescription.getDeclaredMethods().filter(ElementMatchers.isHashCode()).isEmpty()) {
            DynamicType.Builder.MethodDefinition.ImplementationDefinition<?> method = builder.method(ElementMatchers.isHashCode());
            HashCodeMethod hashCodeMethod = ((Enhance.InvokeSuper) ofType.getValue(ENHANCE_INVOKE_SUPER).load(Enhance.class.getClassLoader()).resolve(Enhance.InvokeSuper.class)).hashCodeMethod(typeDescription, ((Boolean) ofType.getValue(ENHANCE_USE_TYPE_HASH_CONSTANT).resolve(Boolean.class)).booleanValue(), ((Boolean) ofType.getValue(ENHANCE_PERMIT_SUBCLASS_EQUALITY).resolve(Boolean.class)).booleanValue());
            if (((Boolean) ofType.getValue(ENHANCE_INCLUDE_SYNTHETIC_FIELDS).resolve(Boolean.class)).booleanValue()) {
                isSynthetic2 = ElementMatchers.none();
            } else {
                isSynthetic2 = ElementMatchers.isSynthetic();
            }
            builder = method.intercept(hashCodeMethod.withIgnoredFields(isSynthetic2).withIgnoredFields(new ValueMatcher(ValueHandling.Sort.IGNORE)).withNonNullableFields(nonNullable(new ValueMatcher(ValueHandling.Sort.REVERSE_NULLABILITY))));
        }
        if (typeDescription.getDeclaredMethods().filter(ElementMatchers.isEquals()).isEmpty()) {
            EqualsMethod equalsMethod = ((Enhance.InvokeSuper) ofType.getValue(ENHANCE_INVOKE_SUPER).load(Enhance.class.getClassLoader()).resolve(Enhance.InvokeSuper.class)).equalsMethod(typeDescription);
            if (((Boolean) ofType.getValue(ENHANCE_INCLUDE_SYNTHETIC_FIELDS).resolve(Boolean.class)).booleanValue()) {
                isSynthetic = ElementMatchers.none();
            } else {
                isSynthetic = ElementMatchers.isSynthetic();
            }
            EqualsMethod withFieldOrder = equalsMethod.withIgnoredFields(isSynthetic).withIgnoredFields(new ValueMatcher(ValueHandling.Sort.IGNORE)).withNonNullableFields(nonNullable(new ValueMatcher(ValueHandling.Sort.REVERSE_NULLABILITY))).withFieldOrder(AnnotationOrderComparator.INSTANCE);
            EqualsMethod equalsMethod2 = withFieldOrder;
            if (((Boolean) ofType.getValue(ENHANCE_SIMPLE_COMPARISON_FIRST).resolve(Boolean.class)).booleanValue()) {
                equalsMethod2 = withFieldOrder.withPrimitiveTypedFieldsFirst().withEnumerationTypedFieldsFirst().withPrimitiveWrapperTypedFieldsFirst().withStringTypedFieldsFirst();
            }
            DynamicType.Builder.MethodDefinition.ImplementationDefinition<?> method2 = builder.method(ElementMatchers.isEquals());
            Implementation implementation = equalsMethod2;
            if (((Boolean) ofType.getValue(ENHANCE_PERMIT_SUBCLASS_EQUALITY).resolve(Boolean.class)).booleanValue()) {
                implementation = equalsMethod2.withSubclassEquality();
            }
            return method2.intercept(implementation).attribute(this);
        }
        return builder;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0027 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            if (r4 != r5) goto L4
            return r0
        L4:
            r1 = 0
            if (r5 != 0) goto L8
            return r1
        L8:
            java.lang.Class r2 = r4.getClass()
            java.lang.Class r3 = r5.getClass()
            if (r2 == r3) goto L13
            return r1
        L13:
            java.lang.String r2 = r4.annotationType
            net.bytebuddy.build.HashCodeAndEqualsPlugin r5 = (net.bytebuddy.build.HashCodeAndEqualsPlugin) r5
            java.lang.String r5 = r5.annotationType
            if (r5 == 0) goto L24
            if (r2 == 0) goto L26
            boolean r5 = r2.equals(r5)
            if (r5 != 0) goto L27
            return r1
        L24:
            if (r2 == 0) goto L27
        L26:
            return r1
        L27:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.build.HashCodeAndEqualsPlugin.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode = getClass().hashCode() * 31;
        String str = this.annotationType;
        return str != null ? hashCode + str.hashCode() : hashCode;
    }

    @Override // net.bytebuddy.build.Plugin.Factory
    public Plugin make() {
        return this;
    }

    @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Factory
    public MethodAttributeAppender make(TypeDescription typeDescription) {
        return this;
    }

    public ElementMatcher<FieldDescription> nonNullable(ElementMatcher<FieldDescription> elementMatcher) {
        return elementMatcher;
    }

    static {
        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Enhance.class).getDeclaredMethods();
        ENHANCE_INVOKE_SUPER = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("invokeSuper")).getOnly();
        ENHANCE_SIMPLE_COMPARISON_FIRST = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("simpleComparisonsFirst")).getOnly();
        ENHANCE_INCLUDE_SYNTHETIC_FIELDS = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("includeSyntheticFields")).getOnly();
        ENHANCE_PERMIT_SUBCLASS_EQUALITY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("permitSubclassEquality")).getOnly();
        ENHANCE_USE_TYPE_HASH_CONSTANT = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("useTypeHashConstant")).getOnly();
        VALUE_HANDLING_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(ValueHandling.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
        SORTED_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Sorted.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
    }

    public HashCodeAndEqualsPlugin(@MaybeNull String str) {
        this.annotationType = str;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher
    public boolean matches(@MaybeNull TypeDescription typeDescription) {
        return typeDescription != null && typeDescription.getDeclaredAnnotations().isAnnotationPresent(Enhance.class);
    }

    @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender
    public void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter) {
        if (this.annotationType != null) {
            AnnotationVisitor visitParameterAnnotation = methodVisitor.visitParameterAnnotation(0, "L" + this.annotationType.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ";", true);
            if (visitParameterAnnotation != null) {
                visitParameterAnnotation.visitEnd();
            }
        }
    }
}
