package net.bytebuddy.asm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface AsmVisitorWrapper {
    public static final int NO_FLAGS = 0;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements AsmVisitorWrapper {
        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeReader(int i) {
            return i;
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeWriter(int i) {
            return i;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements AsmVisitorWrapper {
        private final List<AsmVisitorWrapper> asmVisitorWrappers;

        public Compound(AsmVisitorWrapper... asmVisitorWrapperArr) {
            this(Arrays.asList(asmVisitorWrapperArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.asmVisitorWrappers.equals(((Compound) obj).asmVisitorWrappers);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.asmVisitorWrappers.hashCode();
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public ClassVisitor wrap(TypeDescription typeDescription, ClassVisitor classVisitor, Implementation.Context context, TypePool typePool, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, int i, int i2) {
            ClassVisitor classVisitor2 = classVisitor;
            for (AsmVisitorWrapper asmVisitorWrapper : this.asmVisitorWrappers) {
                classVisitor2 = asmVisitorWrapper.wrap(typeDescription, classVisitor2, context, typePool, fieldList, methodList, i, i2);
            }
            return classVisitor2;
        }

        public Compound(List<? extends AsmVisitorWrapper> list) {
            this.asmVisitorWrappers = new ArrayList();
            for (AsmVisitorWrapper asmVisitorWrapper : list) {
                if (asmVisitorWrapper instanceof Compound) {
                    this.asmVisitorWrappers.addAll(((Compound) asmVisitorWrapper).asmVisitorWrappers);
                } else if (!(asmVisitorWrapper instanceof NoOp)) {
                    this.asmVisitorWrappers.add(asmVisitorWrapper);
                }
            }
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeReader(int i) {
            for (AsmVisitorWrapper asmVisitorWrapper : this.asmVisitorWrappers) {
                i = asmVisitorWrapper.mergeReader(i);
            }
            return i;
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeWriter(int i) {
            for (AsmVisitorWrapper asmVisitorWrapper : this.asmVisitorWrappers) {
                i = asmVisitorWrapper.mergeWriter(i);
            }
            return i;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForDeclaredFields extends AbstractBase {
        private final List<Entry> entries;

        /* loaded from: classes2.dex */
        public class DispatchingVisitor extends ClassVisitor {
            private final Map<String, FieldDescription.InDefinedShape> fields;
            private final TypeDescription instrumentedType;

            public DispatchingVisitor(ClassVisitor classVisitor, TypeDescription typeDescription, Map<String, FieldDescription.InDefinedShape> map) {
                super(OpenedClassReader.ASM_API, classVisitor);
                this.instrumentedType = typeDescription;
                this.fields = map;
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @MaybeNull
            public FieldVisitor visitField(int i, String str, String str2, @MaybeNull String str3, @MaybeNull Object obj) {
                FieldVisitor visitField = super.visitField(i, str, str2, str3, obj);
                Map<String, FieldDescription.InDefinedShape> map = this.fields;
                FieldDescription.InDefinedShape inDefinedShape = map.get(str + str2);
                if (visitField != null && inDefinedShape != null) {
                    for (Entry entry : ForDeclaredFields.this.entries) {
                        if (entry.matches(inDefinedShape)) {
                            visitField = entry.wrap(this.instrumentedType, inDefinedShape, visitField);
                        }
                    }
                }
                return visitField;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Entry implements ElementMatcher<FieldDescription.InDefinedShape>, FieldVisitorWrapper {
            private final List<? extends FieldVisitorWrapper> fieldVisitorWrappers;
            private final ElementMatcher<? super FieldDescription.InDefinedShape> matcher;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Entry entry = (Entry) obj;
                    return this.matcher.equals(entry.matcher) && this.fieldVisitorWrappers.equals(entry.fieldVisitorWrappers);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.fieldVisitorWrappers.hashCode();
            }

            @Override // net.bytebuddy.matcher.ElementMatcher
            public boolean matches(@MaybeNull FieldDescription.InDefinedShape inDefinedShape) {
                return this.matcher.matches(inDefinedShape);
            }

            @Override // net.bytebuddy.asm.AsmVisitorWrapper.ForDeclaredFields.FieldVisitorWrapper
            public FieldVisitor wrap(TypeDescription typeDescription, FieldDescription.InDefinedShape inDefinedShape, FieldVisitor fieldVisitor) {
                for (FieldVisitorWrapper fieldVisitorWrapper : this.fieldVisitorWrappers) {
                    fieldVisitor = fieldVisitorWrapper.wrap(typeDescription, inDefinedShape, fieldVisitor);
                }
                return fieldVisitor;
            }

            public Entry(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher, List<? extends FieldVisitorWrapper> list) {
                this.matcher = elementMatcher;
                this.fieldVisitorWrappers = list;
            }
        }

        /* loaded from: classes2.dex */
        public interface FieldVisitorWrapper {
            FieldVisitor wrap(TypeDescription typeDescription, FieldDescription.InDefinedShape inDefinedShape, FieldVisitor fieldVisitor);
        }

        public ForDeclaredFields() {
            this(Collections.emptyList());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.entries.equals(((ForDeclaredFields) obj).entries);
        }

        public ForDeclaredFields field(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher, FieldVisitorWrapper... fieldVisitorWrapperArr) {
            return field(elementMatcher, Arrays.asList(fieldVisitorWrapperArr));
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.entries.hashCode();
        }

        public ForDeclaredFields(List<Entry> list) {
            this.entries = list;
        }

        public ForDeclaredFields field(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher, List<? extends FieldVisitorWrapper> list) {
            return new ForDeclaredFields(CompoundList.m14777of(this.entries, new Entry(elementMatcher, list)));
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public ClassVisitor wrap(TypeDescription typeDescription, ClassVisitor classVisitor, Implementation.Context context, TypePool typePool, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, int i, int i2) {
            HashMap hashMap = new HashMap();
            for (FieldDescription.InDefinedShape inDefinedShape : fieldList) {
                hashMap.put(inDefinedShape.getInternalName() + inDefinedShape.getDescriptor(), inDefinedShape);
            }
            return new DispatchingVisitor(classVisitor, typeDescription, hashMap);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForDeclaredMethods implements AsmVisitorWrapper {
        private final List<Entry> entries;
        private final int readerFlags;
        private final int writerFlags;

        /* loaded from: classes2.dex */
        public class DispatchingVisitor extends ClassVisitor {
            private final Implementation.Context implementationContext;
            private final TypeDescription instrumentedType;
            private final Map<String, MethodDescription> methods;
            private final int readerFlags;
            private final TypePool typePool;
            private final int writerFlags;

            public DispatchingVisitor(ClassVisitor classVisitor, TypeDescription typeDescription, Implementation.Context context, TypePool typePool, Map<String, MethodDescription> map, int i, int i2) {
                super(OpenedClassReader.ASM_API, classVisitor);
                this.instrumentedType = typeDescription;
                this.implementationContext = context;
                this.typePool = typePool;
                this.methods = map;
                this.writerFlags = i;
                this.readerFlags = i2;
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @MaybeNull
            public MethodVisitor visitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                MethodVisitor visitMethod = super.visitMethod(i, str, str2, str3, strArr);
                Map<String, MethodDescription> map = this.methods;
                MethodDescription methodDescription = map.get(str + str2);
                if (visitMethod != null && methodDescription != null) {
                    MethodVisitor methodVisitor = visitMethod;
                    for (Entry entry : ForDeclaredMethods.this.entries) {
                        if (entry.matches(methodDescription)) {
                            methodVisitor = entry.wrap(this.instrumentedType, methodDescription, methodVisitor, this.implementationContext, this.typePool, this.writerFlags, this.readerFlags);
                        }
                    }
                    return methodVisitor;
                }
                return visitMethod;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Entry implements ElementMatcher<MethodDescription>, MethodVisitorWrapper {
            private final ElementMatcher<? super MethodDescription> matcher;
            private final List<? extends MethodVisitorWrapper> methodVisitorWrappers;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Entry entry = (Entry) obj;
                    return this.matcher.equals(entry.matcher) && this.methodVisitorWrappers.equals(entry.methodVisitorWrappers);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.methodVisitorWrappers.hashCode();
            }

            @Override // net.bytebuddy.asm.AsmVisitorWrapper.ForDeclaredMethods.MethodVisitorWrapper
            public MethodVisitor wrap(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, TypePool typePool, int i, int i2) {
                MethodVisitor methodVisitor2 = methodVisitor;
                for (MethodVisitorWrapper methodVisitorWrapper : this.methodVisitorWrappers) {
                    methodVisitor2 = methodVisitorWrapper.wrap(typeDescription, methodDescription, methodVisitor2, context, typePool, i, i2);
                }
                return methodVisitor2;
            }

            @Override // net.bytebuddy.matcher.ElementMatcher
            public boolean matches(@MaybeNull MethodDescription methodDescription) {
                return this.matcher.matches(methodDescription);
            }

            public Entry(ElementMatcher<? super MethodDescription> elementMatcher, List<? extends MethodVisitorWrapper> list) {
                this.matcher = elementMatcher;
                this.methodVisitorWrappers = list;
            }
        }

        /* loaded from: classes2.dex */
        public interface MethodVisitorWrapper {
            MethodVisitor wrap(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, TypePool typePool, int i, int i2);
        }

        public ForDeclaredMethods() {
            this(Collections.emptyList(), 0, 0);
        }

        public ForDeclaredMethods constructor(ElementMatcher<? super MethodDescription> elementMatcher, MethodVisitorWrapper... methodVisitorWrapperArr) {
            return constructor(elementMatcher, Arrays.asList(methodVisitorWrapperArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForDeclaredMethods forDeclaredMethods = (ForDeclaredMethods) obj;
                return this.writerFlags == forDeclaredMethods.writerFlags && this.readerFlags == forDeclaredMethods.readerFlags && this.entries.equals(forDeclaredMethods.entries);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.entries.hashCode()) * 31) + this.writerFlags) * 31) + this.readerFlags;
        }

        public ForDeclaredMethods invokable(ElementMatcher<? super MethodDescription> elementMatcher, MethodVisitorWrapper... methodVisitorWrapperArr) {
            return invokable(elementMatcher, Arrays.asList(methodVisitorWrapperArr));
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeReader(int i) {
            return i | this.readerFlags;
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeWriter(int i) {
            return i | this.writerFlags;
        }

        public ForDeclaredMethods method(ElementMatcher<? super MethodDescription> elementMatcher, MethodVisitorWrapper... methodVisitorWrapperArr) {
            return method(elementMatcher, Arrays.asList(methodVisitorWrapperArr));
        }

        public ForDeclaredMethods readerFlags(int i) {
            return new ForDeclaredMethods(this.entries, this.writerFlags, i | this.readerFlags);
        }

        public ForDeclaredMethods writerFlags(int i) {
            return new ForDeclaredMethods(this.entries, i | this.writerFlags, this.readerFlags);
        }

        public ForDeclaredMethods(List<Entry> list, int i, int i2) {
            this.entries = list;
            this.writerFlags = i;
            this.readerFlags = i2;
        }

        public ForDeclaredMethods constructor(ElementMatcher<? super MethodDescription> elementMatcher, List<? extends MethodVisitorWrapper> list) {
            return invokable(ElementMatchers.isConstructor().and(elementMatcher), list);
        }

        public ForDeclaredMethods invokable(ElementMatcher<? super MethodDescription> elementMatcher, List<? extends MethodVisitorWrapper> list) {
            return new ForDeclaredMethods(CompoundList.m14777of(this.entries, new Entry(elementMatcher, list)), this.writerFlags, this.readerFlags);
        }

        public ForDeclaredMethods method(ElementMatcher<? super MethodDescription> elementMatcher, List<? extends MethodVisitorWrapper> list) {
            return invokable(ElementMatchers.isMethod().and(elementMatcher), list);
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public ClassVisitor wrap(TypeDescription typeDescription, ClassVisitor classVisitor, Implementation.Context context, TypePool typePool, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, int i, int i2) {
            HashMap hashMap = new HashMap();
            for (MethodDescription methodDescription : CompoundList.m14777of(methodList, new MethodDescription.Latent.TypeInitializer(typeDescription))) {
                hashMap.put(methodDescription.getInternalName() + methodDescription.getDescriptor(), methodDescription);
            }
            return new DispatchingVisitor(classVisitor, typeDescription, context, typePool, hashMap, i, i2);
        }
    }

    /* loaded from: classes2.dex */
    public enum NoOp implements AsmVisitorWrapper {
        INSTANCE;

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeReader(int i) {
            return i;
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public int mergeWriter(int i) {
            return i;
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper
        public ClassVisitor wrap(TypeDescription typeDescription, ClassVisitor classVisitor, Implementation.Context context, TypePool typePool, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, int i, int i2) {
            return classVisitor;
        }
    }

    int mergeReader(int i);

    int mergeWriter(int i);

    ClassVisitor wrap(TypeDescription typeDescription, ClassVisitor classVisitor, Implementation.Context context, TypePool typePool, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, int i, int i2);
}
