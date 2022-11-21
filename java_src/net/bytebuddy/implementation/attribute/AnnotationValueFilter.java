package net.bytebuddy.implementation.attribute;

import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.TypeDescription;
/* loaded from: classes.dex */
public interface AnnotationValueFilter {

    /* loaded from: classes.dex */
    public enum Default implements AnnotationValueFilter, Factory {
        SKIP_DEFAULTS { // from class: net.bytebuddy.implementation.attribute.AnnotationValueFilter.Default.1
            @Override // net.bytebuddy.implementation.attribute.AnnotationValueFilter
            public boolean isRelevant(AnnotationDescription annotationDescription, MethodDescription.InDefinedShape inDefinedShape) {
                AnnotationValue<?, ?> defaultValue = inDefinedShape.getDefaultValue();
                if (defaultValue != null && defaultValue.equals(annotationDescription.getValue(inDefinedShape))) {
                    return false;
                }
                return true;
            }
        },
        APPEND_DEFAULTS { // from class: net.bytebuddy.implementation.attribute.AnnotationValueFilter.Default.2
            @Override // net.bytebuddy.implementation.attribute.AnnotationValueFilter
            public boolean isRelevant(AnnotationDescription annotationDescription, MethodDescription.InDefinedShape inDefinedShape) {
                return true;
            }
        };

        @Override // net.bytebuddy.implementation.attribute.AnnotationValueFilter.Factory
        /* renamed from: on */
        public AnnotationValueFilter mo15019on(FieldDescription fieldDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.AnnotationValueFilter.Factory
        /* renamed from: on */
        public AnnotationValueFilter mo15018on(MethodDescription methodDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.AnnotationValueFilter.Factory
        /* renamed from: on */
        public AnnotationValueFilter mo15017on(RecordComponentDescription recordComponentDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.AnnotationValueFilter.Factory
        /* renamed from: on */
        public AnnotationValueFilter mo15016on(TypeDescription typeDescription) {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface Factory {
        /* renamed from: on */
        AnnotationValueFilter mo15019on(FieldDescription fieldDescription);

        /* renamed from: on */
        AnnotationValueFilter mo15018on(MethodDescription methodDescription);

        /* renamed from: on */
        AnnotationValueFilter mo15017on(RecordComponentDescription recordComponentDescription);

        /* renamed from: on */
        AnnotationValueFilter mo15016on(TypeDescription typeDescription);
    }

    boolean isRelevant(AnnotationDescription annotationDescription, MethodDescription.InDefinedShape inDefinedShape);
}
