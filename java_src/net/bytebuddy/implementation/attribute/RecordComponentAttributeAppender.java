package net.bytebuddy.implementation.attribute;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.attribute.AnnotationAppender;
import net.bytebuddy.jar.asm.RecordComponentVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface RecordComponentAttributeAppender {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements RecordComponentAttributeAppender {
        private final List<RecordComponentAttributeAppender> recordComponentAttributeAppenders;

        public Compound(RecordComponentAttributeAppender... recordComponentAttributeAppenderArr) {
            this(Arrays.asList(recordComponentAttributeAppenderArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.recordComponentAttributeAppenders.equals(((Compound) obj).recordComponentAttributeAppenders);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.recordComponentAttributeAppenders.hashCode();
        }

        public Compound(List<? extends RecordComponentAttributeAppender> list) {
            this.recordComponentAttributeAppenders = new ArrayList();
            for (RecordComponentAttributeAppender recordComponentAttributeAppender : list) {
                if (recordComponentAttributeAppender instanceof Compound) {
                    this.recordComponentAttributeAppenders.addAll(((Compound) recordComponentAttributeAppender).recordComponentAttributeAppenders);
                } else if (!(recordComponentAttributeAppender instanceof NoOp)) {
                    this.recordComponentAttributeAppenders.add(recordComponentAttributeAppender);
                }
            }
        }

        @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender
        public void apply(RecordComponentVisitor recordComponentVisitor, RecordComponentDescription recordComponentDescription, AnnotationValueFilter annotationValueFilter) {
            for (RecordComponentAttributeAppender recordComponentAttributeAppender : this.recordComponentAttributeAppenders) {
                recordComponentAttributeAppender.apply(recordComponentVisitor, recordComponentDescription, annotationValueFilter);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Explicit implements RecordComponentAttributeAppender, Factory {
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

        @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender.Factory
        public RecordComponentAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender
        public void apply(RecordComponentVisitor recordComponentVisitor, RecordComponentDescription recordComponentDescription, AnnotationValueFilter annotationValueFilter) {
            AnnotationAppender annotationAppender = new AnnotationAppender.Default(new AnnotationAppender.Target.OnRecordComponent(recordComponentVisitor));
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

            @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender.Factory
            public RecordComponentAttributeAppender make(TypeDescription typeDescription) {
                ArrayList arrayList = new ArrayList(this.factories.size());
                for (Factory factory : this.factories) {
                    arrayList.add(factory.make(typeDescription));
                }
                return new Compound(arrayList);
            }
        }

        RecordComponentAttributeAppender make(TypeDescription typeDescription);
    }

    /* loaded from: classes.dex */
    public enum ForInstrumentedRecordComponent implements RecordComponentAttributeAppender, Factory {
        INSTANCE;

        @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender.Factory
        public RecordComponentAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender
        public void apply(RecordComponentVisitor recordComponentVisitor, RecordComponentDescription recordComponentDescription, AnnotationValueFilter annotationValueFilter) {
            AnnotationAppender annotationAppender = (AnnotationAppender) recordComponentDescription.getType().accept(AnnotationAppender.ForTypeAnnotations.ofFieldType(new AnnotationAppender.Default(new AnnotationAppender.Target.OnRecordComponent(recordComponentVisitor)), annotationValueFilter));
            for (AnnotationDescription annotationDescription : recordComponentDescription.getDeclaredAnnotations()) {
                annotationAppender = annotationAppender.append(annotationDescription, annotationValueFilter);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum NoOp implements RecordComponentAttributeAppender, Factory {
        INSTANCE;

        @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender
        public void apply(RecordComponentVisitor recordComponentVisitor, RecordComponentDescription recordComponentDescription, AnnotationValueFilter annotationValueFilter) {
        }

        @Override // net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender.Factory
        public RecordComponentAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }
    }

    void apply(RecordComponentVisitor recordComponentVisitor, RecordComponentDescription recordComponentDescription, AnnotationValueFilter annotationValueFilter);
}
