package net.bytebuddy.asm;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.ConstantDynamic;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.RecordComponentVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.jar.asm.TypePath;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class TypeReferenceAdjustment extends AsmVisitorWrapper.AbstractBase {
    private final ElementMatcher.Junction<? super TypeDescription> filter;
    private final boolean strict;

    /* loaded from: classes2.dex */
    public static class TypeReferenceClassVisitor extends ClassVisitor {
        @AlwaysNull
        private static final AnnotationVisitor IGNORE_ANNOTATION = null;
        @AlwaysNull
        private static final FieldVisitor IGNORE_FIELD = null;
        @AlwaysNull
        private static final MethodVisitor IGNORE_METHOD = null;
        private final ElementMatcher<? super TypeDescription> filter;
        private final Set<String> observedTypes;
        private final boolean strict;
        private final TypePool typePool;
        private final Set<String> visitedInnerTypes;

        /* loaded from: classes2.dex */
        public class TypeReferenceAnnotationVisitor extends AnnotationVisitor {
            public TypeReferenceAnnotationVisitor(AnnotationVisitor annotationVisitor) {
                super(OpenedClassReader.ASM_API, annotationVisitor);
            }

            @Override // net.bytebuddy.jar.asm.AnnotationVisitor
            public void visit(String str, Object obj) {
                TypeReferenceClassVisitor.this.resolve(obj);
                super.visit(str, obj);
            }

            @Override // net.bytebuddy.jar.asm.AnnotationVisitor
            @MaybeNull
            public AnnotationVisitor visitAnnotation(String str, String str2) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str2).getInternalName());
                AnnotationVisitor visitAnnotation = super.visitAnnotation(str, str2);
                if (visitAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }

            @Override // net.bytebuddy.jar.asm.AnnotationVisitor
            public void visitEnum(String str, String str2, String str3) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str2).getInternalName());
                super.visitEnum(str, str2, str3);
            }

            @Override // net.bytebuddy.jar.asm.AnnotationVisitor
            @MaybeNull
            public AnnotationVisitor visitArray(String str) {
                AnnotationVisitor visitArray = super.visitArray(str);
                if (visitArray != null) {
                    return new TypeReferenceAnnotationVisitor(visitArray);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }
        }

        /* loaded from: classes2.dex */
        public class TypeReferenceFieldVisitor extends FieldVisitor {
            public TypeReferenceFieldVisitor(FieldVisitor fieldVisitor) {
                super(OpenedClassReader.ASM_API, fieldVisitor);
            }

            @Override // net.bytebuddy.jar.asm.FieldVisitor
            @MaybeNull
            public AnnotationVisitor visitAnnotation(String str, boolean z) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str).getInternalName());
                AnnotationVisitor visitAnnotation = super.visitAnnotation(str, z);
                if (visitAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }
        }

        /* loaded from: classes2.dex */
        public class TypeReferenceMethodVisitor extends MethodVisitor {
            public TypeReferenceMethodVisitor(MethodVisitor methodVisitor) {
                super(OpenedClassReader.ASM_API, methodVisitor);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @MaybeNull
            public AnnotationVisitor visitAnnotation(String str, boolean z) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str).getInternalName());
                AnnotationVisitor visitAnnotation = super.visitAnnotation(str, z);
                if (visitAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitFieldInsn(int i, String str, String str2, String str3) {
                TypeReferenceClassVisitor.this.observeInternalName(str);
                TypeReferenceClassVisitor.this.resolve(Type.getType(str3));
                super.visitFieldInsn(i, str, str2, str3);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @MaybeNull
            public AnnotationVisitor visitInsnAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str).getInternalName());
                AnnotationVisitor visitInsnAnnotation = super.visitInsnAnnotation(i, typePath, str, z);
                if (visitInsnAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitInsnAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
                TypeReferenceClassVisitor.this.resolve(Type.getType(str2));
                TypeReferenceClassVisitor.this.resolve(handle);
                for (Object obj : objArr) {
                    TypeReferenceClassVisitor.this.resolve(obj);
                }
                super.visitInvokeDynamicInsn(str, str2, handle, objArr);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitLdcInsn(Object obj) {
                TypeReferenceClassVisitor.this.resolve(obj);
                super.visitLdcInsn(obj);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @MaybeNull
            public AnnotationVisitor visitLocalVariableAnnotation(int i, @MaybeNull TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str).getInternalName());
                AnnotationVisitor visitLocalVariableAnnotation = super.visitLocalVariableAnnotation(i, typePath, labelArr, labelArr2, iArr, str, z);
                if (visitLocalVariableAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitLocalVariableAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
                TypeReferenceClassVisitor.this.observeInternalName(str);
                TypeReferenceClassVisitor.this.resolve(Type.getType(str3));
                super.visitMethodInsn(i, str, str2, str3, z);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitMultiANewArrayInsn(String str, int i) {
                TypeReferenceClassVisitor.this.resolve(Type.getType(str));
                super.visitMultiANewArrayInsn(str, i);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @MaybeNull
            public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str).getInternalName());
                AnnotationVisitor visitParameterAnnotation = super.visitParameterAnnotation(i, str, z);
                if (visitParameterAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitParameterAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @MaybeNull
            public AnnotationVisitor visitTryCatchAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str).getInternalName());
                AnnotationVisitor visitTryCatchAnnotation = super.visitTryCatchAnnotation(i, typePath, str, z);
                if (visitTryCatchAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitTryCatchAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitTryCatchBlock(Label label, Label label2, Label label3, @MaybeNull String str) {
                if (str != null) {
                    TypeReferenceClassVisitor.this.observedTypes.add(str);
                }
                super.visitTryCatchBlock(label, label2, label3, str);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @MaybeNull
            public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                TypeReferenceClassVisitor.this.observedTypes.add(Type.getType(str).getInternalName());
                AnnotationVisitor visitTypeAnnotation = super.visitTypeAnnotation(i, typePath, str, z);
                if (visitTypeAnnotation != null) {
                    return new TypeReferenceAnnotationVisitor(visitTypeAnnotation);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitTypeInsn(int i, String str) {
                TypeReferenceClassVisitor.this.observeInternalName(str);
                super.visitTypeInsn(i, str);
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            @MaybeNull
            public AnnotationVisitor visitAnnotationDefault() {
                AnnotationVisitor visitAnnotationDefault = super.visitAnnotationDefault();
                if (visitAnnotationDefault != null) {
                    return new TypeReferenceAnnotationVisitor(visitAnnotationDefault);
                }
                return TypeReferenceClassVisitor.IGNORE_ANNOTATION;
            }
        }

        public void resolve(Type type) {
            if (type.getSort() == 11) {
                resolve(type.getReturnType());
                for (Type type2 : type.getArgumentTypes()) {
                    resolve(type2);
                }
                return;
            }
            while (type.getSort() == 9) {
                type = type.getElementType();
            }
            if (type.getSort() == 10) {
                this.observedTypes.add(type.getInternalName());
            }
        }

        public TypeReferenceClassVisitor(ClassVisitor classVisitor, boolean z, ElementMatcher<? super TypeDescription> elementMatcher, TypePool typePool) {
            super(OpenedClassReader.ASM_API, classVisitor);
            this.typePool = typePool;
            this.strict = z;
            this.filter = elementMatcher;
            this.observedTypes = new HashSet();
            this.visitedInnerTypes = new HashSet();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void observeInternalName(String str) {
            int lastIndexOf = str.lastIndexOf(91);
            if (lastIndexOf != -1) {
                str = str.substring(lastIndexOf + 2, str.length() - 1);
            }
            this.observedTypes.add(str);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        public void visit(int i, int i2, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
            if (str3 != null) {
                this.observedTypes.add(str3);
            }
            if (strArr != null) {
                this.observedTypes.addAll(Arrays.asList(strArr));
            }
            super.visit(i, i2, str, str2, str3, strArr);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @MaybeNull
        public AnnotationVisitor visitAnnotation(String str, boolean z) {
            this.observedTypes.add(Type.getType(str).getInternalName());
            AnnotationVisitor visitAnnotation = super.visitAnnotation(str, z);
            if (visitAnnotation != null) {
                return new TypeReferenceAnnotationVisitor(visitAnnotation);
            }
            return IGNORE_ANNOTATION;
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public void visitEnd() {
            String str;
            for (String str2 : this.observedTypes) {
                if (this.visitedInnerTypes.add(str2)) {
                    TypePool.Resolution describe = this.typePool.describe(str2.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH));
                    if (describe.isResolved()) {
                        TypeDescription resolve = describe.resolve();
                        if (this.filter.matches(resolve)) {
                            continue;
                        } else {
                            while (resolve != null && resolve.isNestedClass()) {
                                String internalName = resolve.getInternalName();
                                String str3 = null;
                                if (resolve.isMemberType()) {
                                    str = resolve.getDeclaringType().getInternalName();
                                } else {
                                    str = null;
                                }
                                if (!resolve.isAnonymousType()) {
                                    str3 = resolve.getSimpleName();
                                }
                                super.visitInnerClass(internalName, str, str3, resolve.getModifiers());
                                do {
                                    try {
                                        resolve = resolve.getEnclosingType();
                                        if (resolve != null) {
                                        }
                                    } catch (RuntimeException e) {
                                        if (this.strict) {
                                            throw e;
                                        }
                                    }
                                } while (!this.visitedInnerTypes.add(resolve.getInternalName()));
                            }
                        }
                    } else if (this.strict) {
                        throw new IllegalStateException("Could not locate type for: " + str2.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH));
                    }
                }
            }
            super.visitEnd();
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        public void visitInnerClass(String str, String str2, String str3, int i) {
            this.visitedInnerTypes.add(str);
            super.visitInnerClass(str, str2, str3, i);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        public void visitNestHost(String str) {
            this.observedTypes.add(str);
            super.visitNestHost(str);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        public void visitNestMember(String str) {
            this.observedTypes.add(str);
            super.visitNestMember(str);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        public void visitOuterClass(String str, String str2, String str3) {
            this.observedTypes.add(str);
            super.visitOuterClass(str, str2, str3);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @MaybeNull
        public RecordComponentVisitor visitRecordComponent(String str, String str2, @MaybeNull String str3) {
            this.observedTypes.add(Type.getType(str2).getInternalName());
            return super.visitRecordComponent(str, str2, str3);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @MaybeNull
        public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
            this.observedTypes.add(Type.getType(str).getInternalName());
            AnnotationVisitor visitTypeAnnotation = super.visitTypeAnnotation(i, typePath, str, z);
            if (visitTypeAnnotation != null) {
                return new TypeReferenceAnnotationVisitor(visitTypeAnnotation);
            }
            return IGNORE_ANNOTATION;
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @MaybeNull
        public FieldVisitor visitField(int i, String str, String str2, @MaybeNull String str3, @MaybeNull Object obj) {
            FieldVisitor visitField = super.visitField(i, str, str2, str3, obj);
            if (visitField != null) {
                resolve(Type.getType(str2));
                return new TypeReferenceFieldVisitor(visitField);
            }
            return IGNORE_FIELD;
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @MaybeNull
        public MethodVisitor visitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
            MethodVisitor visitMethod = super.visitMethod(i, str, str2, str3, strArr);
            if (visitMethod != null) {
                resolve(Type.getType(str2));
                if (strArr != null) {
                    this.observedTypes.addAll(Arrays.asList(strArr));
                }
                return new TypeReferenceMethodVisitor(visitMethod);
            }
            return IGNORE_METHOD;
        }

        public void resolve(Handle handle) {
            this.observedTypes.add(handle.getOwner());
            Type type = Type.getType(handle.getDesc());
            resolve(type.getReturnType());
            for (Type type2 : type.getArgumentTypes()) {
                resolve(type2);
            }
        }

        public void resolve(ConstantDynamic constantDynamic) {
            Type type = Type.getType(constantDynamic.getDescriptor());
            resolve(type.getReturnType());
            for (Type type2 : type.getArgumentTypes()) {
                resolve(type2);
            }
            resolve(constantDynamic.getBootstrapMethod());
            for (int i = 0; i < constantDynamic.getBootstrapMethodArgumentCount(); i++) {
                resolve(constantDynamic.getBootstrapMethodArgument(i));
            }
        }

        public void resolve(Object obj) {
            if (obj instanceof Type) {
                resolve((Type) obj);
            } else if (obj instanceof Handle) {
                resolve((Handle) obj);
            } else if (obj instanceof ConstantDynamic) {
                resolve((ConstantDynamic) obj);
            }
        }
    }

    public static TypeReferenceAdjustment relaxed() {
        return new TypeReferenceAdjustment(false, ElementMatchers.none());
    }

    public static TypeReferenceAdjustment strict() {
        return new TypeReferenceAdjustment(true, ElementMatchers.none());
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TypeReferenceAdjustment typeReferenceAdjustment = (TypeReferenceAdjustment) obj;
            return this.strict == typeReferenceAdjustment.strict && this.filter.equals(typeReferenceAdjustment.filter);
        }
        return false;
    }

    public TypeReferenceAdjustment filter(ElementMatcher<? super TypeDescription> elementMatcher) {
        return new TypeReferenceAdjustment(this.strict, this.filter.mo14830or(elementMatcher));
    }

    public int hashCode() {
        return (((getClass().hashCode() * 31) + (this.strict ? 1 : 0)) * 31) + this.filter.hashCode();
    }

    @Override // net.bytebuddy.asm.AsmVisitorWrapper
    public ClassVisitor wrap(TypeDescription typeDescription, ClassVisitor classVisitor, Implementation.Context context, TypePool typePool, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, int i, int i2) {
        return new TypeReferenceClassVisitor(classVisitor, this.strict, this.filter, typePool);
    }

    public TypeReferenceAdjustment(boolean z, ElementMatcher.Junction<? super TypeDescription> junction) {
        this.strict = z;
        this.filter = junction;
    }
}
