package net.bytebuddy.description.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.FilterableList;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface AnnotationList extends FilterableList<AnnotationDescription, AnnotationList> {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase extends FilterableList.AbstractBase<AnnotationDescription, AnnotationList> implements AnnotationList {
        @Override // net.bytebuddy.description.annotation.AnnotationList
        public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
            Iterator<AnnotationDescription> it = iterator();
            while (it.hasNext()) {
                if (it.next().getAnnotationType().represents(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        @MaybeNull
        public <T extends Annotation> AnnotationDescription.Loadable<T> ofType(Class<T> cls) {
            Iterator<AnnotationDescription> it = iterator();
            while (it.hasNext()) {
                AnnotationDescription next = it.next();
                if (next.getAnnotationType().represents(cls)) {
                    return next.prepare(cls);
                }
            }
            return (AnnotationDescription.Loadable<T>) AnnotationDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public TypeList asTypeList() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<AnnotationDescription> it = iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getAnnotationType());
            }
            return new TypeList.Explicit(arrayList);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public AnnotationList inherited(Set<? extends TypeDescription> set) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<AnnotationDescription> it = iterator();
            while (it.hasNext()) {
                AnnotationDescription next = it.next();
                if (!set.contains(next.getAnnotationType()) && next.isInherited()) {
                    arrayList.add(next);
                }
            }
            return wrap((List<AnnotationDescription>) arrayList);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public AnnotationList visibility(ElementMatcher<? super RetentionPolicy> elementMatcher) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<AnnotationDescription> it = iterator();
            while (it.hasNext()) {
                AnnotationDescription next = it.next();
                if (elementMatcher.matches(next.getRetention())) {
                    arrayList.add(next);
                }
            }
            return wrap((List<AnnotationDescription>) arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
        public AnnotationList wrap(List<AnnotationDescription> list) {
            return new Explicit(list);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public boolean isAnnotationPresent(TypeDescription typeDescription) {
            Iterator<AnnotationDescription> it = iterator();
            while (it.hasNext()) {
                if (it.next().getAnnotationType().equals(typeDescription)) {
                    return true;
                }
            }
            return false;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        @MaybeNull
        public AnnotationDescription ofType(TypeDescription typeDescription) {
            Iterator<AnnotationDescription> it = iterator();
            while (it.hasNext()) {
                AnnotationDescription next = it.next();
                if (next.getAnnotationType().equals(typeDescription)) {
                    return next;
                }
            }
            return AnnotationDescription.UNDEFINED;
        }
    }

    /* loaded from: classes2.dex */
    public static class Empty extends FilterableList.Empty<AnnotationDescription, AnnotationList> implements AnnotationList {
        @Override // net.bytebuddy.description.annotation.AnnotationList
        public TypeList asTypeList() {
            return new TypeList.Empty();
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public AnnotationList inherited(Set<? extends TypeDescription> set) {
            return this;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
            return false;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public boolean isAnnotationPresent(TypeDescription typeDescription) {
            return false;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        @AlwaysNull
        public <T extends Annotation> AnnotationDescription.Loadable<T> ofType(Class<T> cls) {
            return (AnnotationDescription.Loadable<T>) AnnotationDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        public AnnotationList visibility(ElementMatcher<? super RetentionPolicy> elementMatcher) {
            return this;
        }

        public static List<AnnotationList> asList(int i) {
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(new Empty());
            }
            return arrayList;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationList
        @AlwaysNull
        public AnnotationDescription ofType(TypeDescription typeDescription) {
            return AnnotationDescription.UNDEFINED;
        }
    }

    /* loaded from: classes2.dex */
    public static class Explicit extends AbstractBase {
        private final List<? extends AnnotationDescription> annotationDescriptions;

        public Explicit(AnnotationDescription... annotationDescriptionArr) {
            this(Arrays.asList(annotationDescriptionArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.annotationDescriptions.size();
        }

        public Explicit(List<? extends AnnotationDescription> list) {
            this.annotationDescriptions = list;
        }

        public static List<AnnotationList> asList(List<? extends List<? extends AnnotationDescription>> list) {
            ArrayList arrayList = new ArrayList(list.size());
            for (List<? extends AnnotationDescription> list2 : list) {
                arrayList.add(new Explicit(list2));
            }
            return arrayList;
        }

        @Override // java.util.AbstractList, java.util.List
        public AnnotationDescription get(int i) {
            return this.annotationDescriptions.get(i);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedAnnotations extends AbstractBase {
        private final List<? extends Annotation> annotations;

        public ForLoadedAnnotations(Annotation... annotationArr) {
            this(Arrays.asList(annotationArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.annotations.size();
        }

        public ForLoadedAnnotations(List<? extends Annotation> list) {
            this.annotations = list;
        }

        public static List<AnnotationList> asList(Annotation[][] annotationArr) {
            ArrayList arrayList = new ArrayList(annotationArr.length);
            for (Annotation[] annotationArr2 : annotationArr) {
                arrayList.add(new ForLoadedAnnotations(annotationArr2));
            }
            return arrayList;
        }

        @Override // java.util.AbstractList, java.util.List
        public AnnotationDescription get(int i) {
            return AnnotationDescription.ForLoadedAnnotation.m15237of(this.annotations.get(i));
        }
    }

    TypeList asTypeList();

    AnnotationList inherited(Set<? extends TypeDescription> set);

    boolean isAnnotationPresent(Class<? extends Annotation> cls);

    boolean isAnnotationPresent(TypeDescription typeDescription);

    @MaybeNull
    <T extends Annotation> AnnotationDescription.Loadable<T> ofType(Class<T> cls);

    AnnotationDescription ofType(TypeDescription typeDescription);

    AnnotationList visibility(ElementMatcher<? super RetentionPolicy> elementMatcher);
}
