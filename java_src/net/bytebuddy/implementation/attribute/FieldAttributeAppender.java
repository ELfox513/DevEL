package net.bytebuddy.implementation.attribute;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.attribute.AnnotationAppender;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface FieldAttributeAppender {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements FieldAttributeAppender {
        private final List<FieldAttributeAppender> fieldAttributeAppenders;

        public Compound(FieldAttributeAppender... fieldAttributeAppenderArr) {
            this(Arrays.asList(fieldAttributeAppenderArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.fieldAttributeAppenders.equals(((Compound) obj).fieldAttributeAppenders);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.fieldAttributeAppenders.hashCode();
        }

        public Compound(List<? extends FieldAttributeAppender> list) {
            this.fieldAttributeAppenders = new ArrayList();
            for (FieldAttributeAppender fieldAttributeAppender : list) {
                if (fieldAttributeAppender instanceof Compound) {
                    this.fieldAttributeAppenders.addAll(((Compound) fieldAttributeAppender).fieldAttributeAppenders);
                } else if (!(fieldAttributeAppender instanceof NoOp)) {
                    this.fieldAttributeAppenders.add(fieldAttributeAppender);
                }
            }
        }

        @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender
        public void apply(FieldVisitor fieldVisitor, FieldDescription fieldDescription, AnnotationValueFilter annotationValueFilter) {
            for (FieldAttributeAppender fieldAttributeAppender : this.fieldAttributeAppenders) {
                fieldAttributeAppender.apply(fieldVisitor, fieldDescription, annotationValueFilter);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Explicit implements FieldAttributeAppender, Factory {
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

        @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender.Factory
        public FieldAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender
        public void apply(FieldVisitor fieldVisitor, FieldDescription fieldDescription, AnnotationValueFilter annotationValueFilter) {
            AnnotationAppender annotationAppender = new AnnotationAppender.Default(new AnnotationAppender.Target.OnField(fieldVisitor));
            for (AnnotationDescription annotationDescription : this.annotations) {
                annotationAppender = annotationAppender.append(annotationDescription, annotationValueFilter);
            }
        }

        public Explicit(List<? extends AnnotationDescription> list) {
            this.annotations = list;
        }
    }

    /* loaded from: classes.dex */
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

            @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender.Factory
            public FieldAttributeAppender make(TypeDescription typeDescription) {
                ArrayList arrayList = new ArrayList(this.factories.size());
                for (Factory factory : this.factories) {
                    arrayList.add(factory.make(typeDescription));
                }
                return new Compound(arrayList);
            }
        }

        FieldAttributeAppender make(TypeDescription typeDescription);
    }

    /* loaded from: classes.dex */
    public enum ForInstrumentedField implements FieldAttributeAppender, Factory {
        INSTANCE;

        @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender.Factory
        public FieldAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender
        public void apply(FieldVisitor fieldVisitor, FieldDescription fieldDescription, AnnotationValueFilter annotationValueFilter) {
            AnnotationAppender annotationAppender = (AnnotationAppender) fieldDescription.getType().accept(AnnotationAppender.ForTypeAnnotations.ofFieldType(new AnnotationAppender.Default(new AnnotationAppender.Target.OnField(fieldVisitor)), annotationValueFilter));
            for (AnnotationDescription annotationDescription : fieldDescription.getDeclaredAnnotations()) {
                annotationAppender = annotationAppender.append(annotationDescription, annotationValueFilter);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum NoOp implements FieldAttributeAppender, Factory {
        INSTANCE;

        @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender
        public void apply(FieldVisitor fieldVisitor, FieldDescription fieldDescription, AnnotationValueFilter annotationValueFilter) {
        }

        @Override // net.bytebuddy.implementation.attribute.FieldAttributeAppender.Factory
        public FieldAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }
    }

    void apply(FieldVisitor fieldVisitor, FieldDescription fieldDescription, AnnotationValueFilter annotationValueFilter);
}
