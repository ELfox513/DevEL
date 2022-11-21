package net.bytebuddy.implementation.attribute;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.implementation.attribute.AnnotationAppender;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface TypeAttributeAppender {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements TypeAttributeAppender {
        private final List<TypeAttributeAppender> typeAttributeAppenders;

        public Compound(TypeAttributeAppender... typeAttributeAppenderArr) {
            this(Arrays.asList(typeAttributeAppenderArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.typeAttributeAppenders.equals(((Compound) obj).typeAttributeAppenders);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.typeAttributeAppenders.hashCode();
        }

        public Compound(List<? extends TypeAttributeAppender> list) {
            this.typeAttributeAppenders = new ArrayList();
            for (TypeAttributeAppender typeAttributeAppender : list) {
                if (typeAttributeAppender instanceof Compound) {
                    this.typeAttributeAppenders.addAll(((Compound) typeAttributeAppender).typeAttributeAppenders);
                } else if (!(typeAttributeAppender instanceof NoOp)) {
                    this.typeAttributeAppenders.add(typeAttributeAppender);
                }
            }
        }

        @Override // net.bytebuddy.implementation.attribute.TypeAttributeAppender
        public void apply(ClassVisitor classVisitor, TypeDescription typeDescription, AnnotationValueFilter annotationValueFilter) {
            for (TypeAttributeAppender typeAttributeAppender : this.typeAttributeAppenders) {
                typeAttributeAppender.apply(classVisitor, typeDescription, annotationValueFilter);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Explicit implements TypeAttributeAppender {
        private final List<? extends AnnotationDescription> annotations;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.annotations.equals(((Explicit) obj).annotations);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.annotations.hashCode();
        }

        @Override // net.bytebuddy.implementation.attribute.TypeAttributeAppender
        public void apply(ClassVisitor classVisitor, TypeDescription typeDescription, AnnotationValueFilter annotationValueFilter) {
            AnnotationAppender annotationAppender = new AnnotationAppender.Default(new AnnotationAppender.Target.OnType(classVisitor));
            for (AnnotationDescription annotationDescription : this.annotations) {
                annotationAppender = annotationAppender.append(annotationDescription, annotationValueFilter);
            }
        }

        public Explicit(List<? extends AnnotationDescription> list) {
            this.annotations = list;
        }
    }

    /* loaded from: classes.dex */
    public enum ForInstrumentedType implements TypeAttributeAppender {
        INSTANCE;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Differentiating implements TypeAttributeAppender {
            private final int annotationIndex;
            private final int interfaceTypeIndex;
            private final int typeVariableIndex;

            public Differentiating(TypeDescription typeDescription) {
                this(typeDescription.getDeclaredAnnotations().size(), typeDescription.getTypeVariables().size(), typeDescription.getInterfaces().size());
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Differentiating differentiating = (Differentiating) obj;
                    return this.annotationIndex == differentiating.annotationIndex && this.typeVariableIndex == differentiating.typeVariableIndex && this.interfaceTypeIndex == differentiating.interfaceTypeIndex;
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.annotationIndex) * 31) + this.typeVariableIndex) * 31) + this.interfaceTypeIndex;
            }

            public Differentiating(int i, int i2, int i3) {
                this.annotationIndex = i;
                this.typeVariableIndex = i2;
                this.interfaceTypeIndex = i3;
            }

            @Override // net.bytebuddy.implementation.attribute.TypeAttributeAppender
            public void apply(ClassVisitor classVisitor, TypeDescription typeDescription, AnnotationValueFilter annotationValueFilter) {
                AnnotationAppender annotationAppender = new AnnotationAppender.Default(new AnnotationAppender.Target.OnType(classVisitor));
                AnnotationAppender.ForTypeAnnotations.ofTypeVariable(annotationAppender, annotationValueFilter, true, this.typeVariableIndex, typeDescription.getTypeVariables());
                TypeList.Generic interfaces = typeDescription.getInterfaces();
                int i = this.interfaceTypeIndex;
                for (TypeDescription.Generic generic : interfaces.subList(i, interfaces.size())) {
                    annotationAppender = (AnnotationAppender) generic.accept(AnnotationAppender.ForTypeAnnotations.ofInterfaceType(annotationAppender, annotationValueFilter, i));
                    i++;
                }
                AnnotationList declaredAnnotations = typeDescription.getDeclaredAnnotations();
                for (AnnotationDescription annotationDescription : declaredAnnotations.subList(this.annotationIndex, declaredAnnotations.size())) {
                    annotationAppender = annotationAppender.append(annotationDescription, annotationValueFilter);
                }
            }
        }

        @Override // net.bytebuddy.implementation.attribute.TypeAttributeAppender
        public void apply(ClassVisitor classVisitor, TypeDescription typeDescription, AnnotationValueFilter annotationValueFilter) {
            AnnotationAppender ofTypeVariable = AnnotationAppender.ForTypeAnnotations.ofTypeVariable(new AnnotationAppender.Default(new AnnotationAppender.Target.OnType(classVisitor)), annotationValueFilter, true, typeDescription.getTypeVariables());
            TypeDescription.Generic superClass = typeDescription.getSuperClass();
            if (superClass != null) {
                ofTypeVariable = (AnnotationAppender) superClass.accept(AnnotationAppender.ForTypeAnnotations.ofSuperClass(ofTypeVariable, annotationValueFilter));
            }
            int i = 0;
            for (TypeDescription.Generic generic : typeDescription.getInterfaces()) {
                ofTypeVariable = (AnnotationAppender) generic.accept(AnnotationAppender.ForTypeAnnotations.ofInterfaceType(ofTypeVariable, annotationValueFilter, i));
                i++;
            }
            for (AnnotationDescription annotationDescription : typeDescription.getDeclaredAnnotations()) {
                ofTypeVariable = ofTypeVariable.append(annotationDescription, annotationValueFilter);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum NoOp implements TypeAttributeAppender {
        INSTANCE;

        @Override // net.bytebuddy.implementation.attribute.TypeAttributeAppender
        public void apply(ClassVisitor classVisitor, TypeDescription typeDescription, AnnotationValueFilter annotationValueFilter) {
        }
    }

    void apply(ClassVisitor classVisitor, TypeDescription typeDescription, AnnotationValueFilter annotationValueFilter);
}
