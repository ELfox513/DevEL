package net.bytebuddy.implementation.attribute;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Array;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.RecordComponentVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.jar.asm.TypePath;
import net.bytebuddy.jar.asm.TypeReference;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface AnnotationAppender {
    @AlwaysNull
    public static final String NO_NAME = null;

    /* renamed from: net.bytebuddy.implementation.attribute.AnnotationAppender$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C50021 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19146a;

        static {
            int[] iArr = new int[RetentionPolicy.values().length];
            f19146a = iArr;
            try {
                iArr[RetentionPolicy.RUNTIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19146a[RetentionPolicy.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19146a[RetentionPolicy.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForTypeAnnotations implements TypeDescription.Generic.Visitor<AnnotationAppender> {
        private static final char COMPONENT_TYPE_PATH = '[';
        private static final String EMPTY_TYPE_PATH = "";
        private static final char INDEXED_TYPE_DELIMITER = ';';
        private static final char INNER_CLASS_PATH = '.';
        private static final int SUPER_CLASS_INDEX = -1;
        public static final boolean VARIABLE_ON_INVOKEABLE = false;
        public static final boolean VARIABLE_ON_TYPE = true;
        private static final char WILDCARD_TYPE_PATH = '*';
        private final AnnotationAppender annotationAppender;
        private final AnnotationValueFilter annotationValueFilter;
        private final String typePath;
        private final int typeReference;

        public ForTypeAnnotations(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, TypeReference typeReference) {
            this(annotationAppender, annotationValueFilter, typeReference.getValue(), "");
        }

        public static TypeDescription.Generic.Visitor<AnnotationAppender> ofExceptionType(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, int i) {
            return new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newExceptionReference(i));
        }

        public static TypeDescription.Generic.Visitor<AnnotationAppender> ofFieldType(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter) {
            return new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newTypeReference(19));
        }

        public static TypeDescription.Generic.Visitor<AnnotationAppender> ofInterfaceType(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, int i) {
            return new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newSuperTypeReference(i));
        }

        public static TypeDescription.Generic.Visitor<AnnotationAppender> ofMethodParameterType(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, int i) {
            return new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newFormalParameterReference(i));
        }

        public static TypeDescription.Generic.Visitor<AnnotationAppender> ofMethodReturnType(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter) {
            return new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newTypeReference(20));
        }

        public static TypeDescription.Generic.Visitor<AnnotationAppender> ofReceiverType(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter) {
            return new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newTypeReference(21));
        }

        public static TypeDescription.Generic.Visitor<AnnotationAppender> ofSuperClass(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter) {
            return new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newSuperTypeReference(-1));
        }

        public static AnnotationAppender ofTypeVariable(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, boolean z, List<? extends TypeDescription.Generic> list) {
            return ofTypeVariable(annotationAppender, annotationValueFilter, z, 0, list);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForTypeAnnotations forTypeAnnotations = (ForTypeAnnotations) obj;
                return this.typeReference == forTypeAnnotations.typeReference && this.typePath.equals(forTypeAnnotations.typePath) && this.annotationAppender.equals(forTypeAnnotations.annotationAppender) && this.annotationValueFilter.equals(forTypeAnnotations.annotationValueFilter);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.annotationAppender.hashCode()) * 31) + this.annotationValueFilter.hashCode()) * 31) + this.typeReference) * 31) + this.typePath.hashCode();
        }

        public ForTypeAnnotations(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, int i, String str) {
            this.annotationAppender = annotationAppender;
            this.annotationValueFilter = annotationValueFilter;
            this.typeReference = i;
            this.typePath = str;
        }

        private AnnotationAppender apply(TypeDescription.Generic generic, String str) {
            AnnotationAppender annotationAppender = this.annotationAppender;
            for (AnnotationDescription annotationDescription : generic.getDeclaredAnnotations()) {
                annotationAppender = annotationAppender.append(annotationDescription, this.annotationValueFilter, this.typeReference, str);
            }
            return annotationAppender;
        }

        public static AnnotationAppender ofTypeVariable(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, boolean z, int i, List<? extends TypeDescription.Generic> list) {
            int i2;
            int i3;
            if (z) {
                i2 = 17;
                i3 = 0;
            } else {
                i2 = 18;
                i3 = 1;
            }
            for (TypeDescription.Generic generic : list.subList(i, list.size())) {
                int value = TypeReference.newTypeParameterReference(i3, i).getValue();
                for (AnnotationDescription annotationDescription : generic.getDeclaredAnnotations()) {
                    annotationAppender = annotationAppender.append(annotationDescription, annotationValueFilter, value, "");
                }
                int i4 = (generic.getUpperBounds().get(0).getSort().isTypeVariable() || !generic.getUpperBounds().get(0).isInterface()) ? 0 : 1;
                for (TypeDescription.Generic generic2 : generic.getUpperBounds()) {
                    annotationAppender = (AnnotationAppender) generic2.accept(new ForTypeAnnotations(annotationAppender, annotationValueFilter, TypeReference.newTypeParameterBoundReference(i2, i, i4)));
                    i4++;
                }
                i++;
            }
            return annotationAppender;
        }

        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public AnnotationAppender onGenericArray(TypeDescription.Generic generic) {
            TypeDescription.Generic componentType = generic.getComponentType();
            AnnotationAppender apply = apply(generic, this.typePath);
            AnnotationValueFilter annotationValueFilter = this.annotationValueFilter;
            int i = this.typeReference;
            return (AnnotationAppender) componentType.accept(new ForTypeAnnotations(apply, annotationValueFilter, i, this.typePath + '['));
        }

        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public AnnotationAppender onNonGenericType(TypeDescription.Generic generic) {
            StringBuilder sb = new StringBuilder(this.typePath);
            for (int i = 0; i < generic.asErasure().getInnerClassCount(); i++) {
                sb.append('.');
            }
            AnnotationAppender apply = apply(generic, sb.toString());
            TypeDescription.Generic componentType = generic.getComponentType();
            if (componentType != null) {
                AnnotationValueFilter annotationValueFilter = this.annotationValueFilter;
                int i2 = this.typeReference;
                return (AnnotationAppender) componentType.accept(new ForTypeAnnotations(apply, annotationValueFilter, i2, this.typePath + '['));
            }
            return apply;
        }

        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public AnnotationAppender onParameterizedType(TypeDescription.Generic generic) {
            StringBuilder sb = new StringBuilder(this.typePath);
            int i = 0;
            for (int i2 = 0; i2 < generic.asErasure().getInnerClassCount(); i2++) {
                sb.append('.');
            }
            AnnotationAppender apply = apply(generic, sb.toString());
            TypeDescription.Generic ownerType = generic.getOwnerType();
            if (ownerType != null) {
                apply = (AnnotationAppender) ownerType.accept(new ForTypeAnnotations(apply, this.annotationValueFilter, this.typeReference, this.typePath));
            }
            for (TypeDescription.Generic generic2 : generic.getTypeArguments()) {
                AnnotationValueFilter annotationValueFilter = this.annotationValueFilter;
                int i3 = this.typeReference;
                apply = (AnnotationAppender) generic2.accept(new ForTypeAnnotations(apply, annotationValueFilter, i3, sb.toString() + i + ';'));
                i++;
            }
            return apply;
        }

        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public AnnotationAppender onTypeVariable(TypeDescription.Generic generic) {
            return apply(generic, this.typePath);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public AnnotationAppender onWildcard(TypeDescription.Generic generic) {
            TypeDescription.Generic only;
            TypeList.Generic lowerBounds = generic.getLowerBounds();
            if (lowerBounds.isEmpty()) {
                only = generic.getUpperBounds().getOnly();
            } else {
                only = lowerBounds.getOnly();
            }
            AnnotationAppender apply = apply(generic, this.typePath);
            AnnotationValueFilter annotationValueFilter = this.annotationValueFilter;
            int i = this.typeReference;
            return (AnnotationAppender) only.accept(new ForTypeAnnotations(apply, annotationValueFilter, i, this.typePath + '*'));
        }
    }

    /* loaded from: classes.dex */
    public interface Target {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OnField implements Target {
            private final FieldVisitor fieldVisitor;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldVisitor.equals(((OnField) obj).fieldVisitor);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldVisitor.hashCode();
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z) {
                return this.fieldVisitor.visitAnnotation(str, z);
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z, int i, String str2) {
                return this.fieldVisitor.visitTypeAnnotation(i, TypePath.fromString(str2), str, z);
            }

            public OnField(FieldVisitor fieldVisitor) {
                this.fieldVisitor = fieldVisitor;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OnMethod implements Target {
            private final MethodVisitor methodVisitor;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.methodVisitor.equals(((OnMethod) obj).methodVisitor);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.methodVisitor.hashCode();
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z) {
                return this.methodVisitor.visitAnnotation(str, z);
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z, int i, String str2) {
                return this.methodVisitor.visitTypeAnnotation(i, TypePath.fromString(str2), str, z);
            }

            public OnMethod(MethodVisitor methodVisitor) {
                this.methodVisitor = methodVisitor;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OnMethodParameter implements Target {
            private final MethodVisitor methodVisitor;
            private final int parameterIndex;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    OnMethodParameter onMethodParameter = (OnMethodParameter) obj;
                    return this.parameterIndex == onMethodParameter.parameterIndex && this.methodVisitor.equals(onMethodParameter.methodVisitor);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.methodVisitor.hashCode()) * 31) + this.parameterIndex;
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z) {
                return this.methodVisitor.visitParameterAnnotation(this.parameterIndex, str, z);
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z, int i, String str2) {
                return this.methodVisitor.visitTypeAnnotation(i, TypePath.fromString(str2), str, z);
            }

            public OnMethodParameter(MethodVisitor methodVisitor, int i) {
                this.methodVisitor = methodVisitor;
                this.parameterIndex = i;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OnRecordComponent implements Target {
            private final RecordComponentVisitor recordComponentVisitor;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.recordComponentVisitor.equals(((OnRecordComponent) obj).recordComponentVisitor);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.recordComponentVisitor.hashCode();
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z) {
                return this.recordComponentVisitor.visitAnnotation(str, z);
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z, int i, String str2) {
                return this.recordComponentVisitor.visitTypeAnnotation(i, TypePath.fromString(str2), str, z);
            }

            public OnRecordComponent(RecordComponentVisitor recordComponentVisitor) {
                this.recordComponentVisitor = recordComponentVisitor;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OnType implements Target {
            private final ClassVisitor classVisitor;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.classVisitor.equals(((OnType) obj).classVisitor);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.classVisitor.hashCode();
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z) {
                return this.classVisitor.visitAnnotation(str, z);
            }

            @Override // net.bytebuddy.implementation.attribute.AnnotationAppender.Target
            @MaybeNull
            public AnnotationVisitor visit(String str, boolean z, int i, String str2) {
                return this.classVisitor.visitTypeAnnotation(i, TypePath.fromString(str2), str, z);
            }

            public OnType(ClassVisitor classVisitor) {
                this.classVisitor = classVisitor;
            }
        }

        @MaybeNull
        AnnotationVisitor visit(String str, boolean z);

        @MaybeNull
        AnnotationVisitor visit(String str, boolean z, int i, String str2);
    }

    AnnotationAppender append(AnnotationDescription annotationDescription, AnnotationValueFilter annotationValueFilter);

    AnnotationAppender append(AnnotationDescription annotationDescription, AnnotationValueFilter annotationValueFilter, int i, String str);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default implements AnnotationAppender {
        private final Target target;

        private void doAppend(AnnotationDescription annotationDescription, boolean z, AnnotationValueFilter annotationValueFilter) {
            AnnotationVisitor visit = this.target.visit(annotationDescription.getAnnotationType().getDescriptor(), z);
            if (visit != null) {
                handle(visit, annotationDescription, annotationValueFilter);
            }
        }

        @Override // net.bytebuddy.implementation.attribute.AnnotationAppender
        public AnnotationAppender append(AnnotationDescription annotationDescription, AnnotationValueFilter annotationValueFilter) {
            int i = C50021.f19146a[annotationDescription.getRetention().ordinal()];
            if (i == 1) {
                doAppend(annotationDescription, true, annotationValueFilter);
            } else if (i == 2) {
                doAppend(annotationDescription, false, annotationValueFilter);
            } else if (i != 3) {
                throw new IllegalStateException("Unexpected retention policy: " + annotationDescription.getRetention());
            }
            return this;
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.target.equals(((Default) obj).target);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.target.hashCode();
        }

        public Default(Target target) {
            this.target = target;
        }

        public static void apply(AnnotationVisitor annotationVisitor, TypeDescription typeDescription, @MaybeNull String str, Object obj) {
            if (typeDescription.isArray()) {
                AnnotationVisitor visitArray = annotationVisitor.visitArray(str);
                int length = Array.getLength(obj);
                TypeDescription componentType = typeDescription.getComponentType();
                for (int i = 0; i < length; i++) {
                    apply(visitArray, componentType, AnnotationAppender.NO_NAME, Array.get(obj, i));
                }
                visitArray.visitEnd();
            } else if (typeDescription.isAnnotation()) {
                handle(annotationVisitor.visitAnnotation(str, typeDescription.getDescriptor()), (AnnotationDescription) obj, AnnotationValueFilter.Default.APPEND_DEFAULTS);
            } else if (typeDescription.isEnum()) {
                annotationVisitor.visitEnum(str, typeDescription.getDescriptor(), ((EnumerationDescription) obj).getValue());
            } else if (typeDescription.represents(Class.class)) {
                annotationVisitor.visit(str, Type.getType(((TypeDescription) obj).getDescriptor()));
            } else {
                annotationVisitor.visit(str, obj);
            }
        }

        private void doAppend(AnnotationDescription annotationDescription, boolean z, AnnotationValueFilter annotationValueFilter, int i, String str) {
            AnnotationVisitor visit = this.target.visit(annotationDescription.getAnnotationType().getDescriptor(), z, i, str);
            if (visit != null) {
                handle(visit, annotationDescription, annotationValueFilter);
            }
        }

        private static void handle(AnnotationVisitor annotationVisitor, AnnotationDescription annotationDescription, AnnotationValueFilter annotationValueFilter) {
            for (MethodDescription.InDefinedShape inDefinedShape : annotationDescription.getAnnotationType().getDeclaredMethods()) {
                if (annotationValueFilter.isRelevant(annotationDescription, inDefinedShape)) {
                    apply(annotationVisitor, inDefinedShape.getReturnType().asErasure(), inDefinedShape.getName(), annotationDescription.getValue(inDefinedShape).resolve());
                }
            }
            annotationVisitor.visitEnd();
        }

        @Override // net.bytebuddy.implementation.attribute.AnnotationAppender
        public AnnotationAppender append(AnnotationDescription annotationDescription, AnnotationValueFilter annotationValueFilter, int i, String str) {
            int i2 = C50021.f19146a[annotationDescription.getRetention().ordinal()];
            if (i2 == 1) {
                doAppend(annotationDescription, true, annotationValueFilter, i, str);
            } else if (i2 == 2) {
                doAppend(annotationDescription, false, annotationValueFilter, i, str);
            } else if (i2 != 3) {
                throw new IllegalStateException("Unexpected retention policy: " + annotationDescription.getRetention());
            }
            return this;
        }
    }
}
