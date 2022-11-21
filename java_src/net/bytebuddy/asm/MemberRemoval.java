package net.bytebuddy.asm;

import java.util.HashMap;
import java.util.Map;
import net.bytebuddy.asm.AsmVisitorWrapper;
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
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MemberRemoval extends AsmVisitorWrapper.AbstractBase {
    private final ElementMatcher.Junction<FieldDescription.InDefinedShape> fieldMatcher;
    private final ElementMatcher.Junction<MethodDescription> methodMatcher;

    /* loaded from: classes2.dex */
    public static class MemberRemovingClassVisitor extends ClassVisitor {
        private static final FieldVisitor REMOVE_FIELD = null;
        @AlwaysNull
        private static final MethodVisitor REMOVE_METHOD = null;
        private final ElementMatcher.Junction<FieldDescription.InDefinedShape> fieldMatcher;
        private final Map<String, FieldDescription.InDefinedShape> fields;
        private final ElementMatcher.Junction<MethodDescription> methodMatcher;
        private final Map<String, MethodDescription> methods;

        public MemberRemovingClassVisitor(ClassVisitor classVisitor, ElementMatcher.Junction<FieldDescription.InDefinedShape> junction, ElementMatcher.Junction<MethodDescription> junction2, Map<String, FieldDescription.InDefinedShape> map, Map<String, MethodDescription> map2) {
            super(OpenedClassReader.ASM_API, classVisitor);
            this.fieldMatcher = junction;
            this.methodMatcher = junction2;
            this.fields = map;
            this.methods = map2;
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @MaybeNull
        public FieldVisitor visitField(int i, String str, String str2, @MaybeNull String str3, @MaybeNull Object obj) {
            Map<String, FieldDescription.InDefinedShape> map = this.fields;
            FieldDescription.InDefinedShape inDefinedShape = map.get(str + str2);
            if (inDefinedShape != null && this.fieldMatcher.matches(inDefinedShape)) {
                return REMOVE_FIELD;
            }
            return super.visitField(i, str, str2, str3, obj);
        }

        @Override // net.bytebuddy.jar.asm.ClassVisitor
        @MaybeNull
        public MethodVisitor visitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
            Map<String, MethodDescription> map = this.methods;
            MethodDescription methodDescription = map.get(str + str2);
            if (methodDescription != null && this.methodMatcher.matches(methodDescription)) {
                return REMOVE_METHOD;
            }
            return super.visitMethod(i, str, str2, str3, strArr);
        }
    }

    public MemberRemoval() {
        this(ElementMatchers.none(), ElementMatchers.none());
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MemberRemoval memberRemoval = (MemberRemoval) obj;
            return this.fieldMatcher.equals(memberRemoval.fieldMatcher) && this.methodMatcher.equals(memberRemoval.methodMatcher);
        }
        return false;
    }

    public int hashCode() {
        return (((getClass().hashCode() * 31) + this.fieldMatcher.hashCode()) * 31) + this.methodMatcher.hashCode();
    }

    public MemberRemoval stripConstructors(ElementMatcher<? super MethodDescription> elementMatcher) {
        return stripInvokables(ElementMatchers.isConstructor().and(elementMatcher));
    }

    public MemberRemoval stripFields(ElementMatcher<? super FieldDescription.InDefinedShape> elementMatcher) {
        return new MemberRemoval(this.fieldMatcher.mo14830or(elementMatcher), this.methodMatcher);
    }

    public MemberRemoval stripInvokables(ElementMatcher<? super MethodDescription> elementMatcher) {
        return new MemberRemoval(this.fieldMatcher, this.methodMatcher.mo14830or(elementMatcher));
    }

    public MemberRemoval stripMethods(ElementMatcher<? super MethodDescription> elementMatcher) {
        return stripInvokables(ElementMatchers.isMethod().and(elementMatcher));
    }

    public MemberRemoval(ElementMatcher.Junction<FieldDescription.InDefinedShape> junction, ElementMatcher.Junction<MethodDescription> junction2) {
        this.fieldMatcher = junction;
        this.methodMatcher = junction2;
    }

    @Override // net.bytebuddy.asm.AsmVisitorWrapper
    public ClassVisitor wrap(TypeDescription typeDescription, ClassVisitor classVisitor, Implementation.Context context, TypePool typePool, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, int i, int i2) {
        HashMap hashMap = new HashMap();
        for (FieldDescription.InDefinedShape inDefinedShape : fieldList) {
            hashMap.put(inDefinedShape.getInternalName() + inDefinedShape.getDescriptor(), inDefinedShape);
        }
        HashMap hashMap2 = new HashMap();
        for (MethodDescription methodDescription : CompoundList.m14777of(methodList, new MethodDescription.Latent.TypeInitializer(typeDescription))) {
            hashMap2.put(methodDescription.getInternalName() + methodDescription.getDescriptor(), methodDescription);
        }
        return new MemberRemovingClassVisitor(classVisitor, this.fieldMatcher, this.methodMatcher, hashMap, hashMap2);
    }
}
