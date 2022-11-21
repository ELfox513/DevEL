package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MethodSortMatcher<T extends MethodDescription> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final Sort sort;

    /* loaded from: classes.dex */
    public enum Sort {
        METHOD("isMethod()") { // from class: net.bytebuddy.matcher.MethodSortMatcher.Sort.1
            @Override // net.bytebuddy.matcher.MethodSortMatcher.Sort
            public boolean isSort(MethodDescription methodDescription) {
                return methodDescription.isMethod();
            }
        },
        CONSTRUCTOR("isConstructor()") { // from class: net.bytebuddy.matcher.MethodSortMatcher.Sort.2
            @Override // net.bytebuddy.matcher.MethodSortMatcher.Sort
            public boolean isSort(MethodDescription methodDescription) {
                return methodDescription.isConstructor();
            }
        },
        TYPE_INITIALIZER("isTypeInitializer()") { // from class: net.bytebuddy.matcher.MethodSortMatcher.Sort.3
            @Override // net.bytebuddy.matcher.MethodSortMatcher.Sort
            public boolean isSort(MethodDescription methodDescription) {
                return methodDescription.isTypeInitializer();
            }
        },
        VIRTUAL("isVirtual()") { // from class: net.bytebuddy.matcher.MethodSortMatcher.Sort.4
            @Override // net.bytebuddy.matcher.MethodSortMatcher.Sort
            public boolean isSort(MethodDescription methodDescription) {
                return methodDescription.isVirtual();
            }
        },
        DEFAULT_METHOD("isDefaultMethod()") { // from class: net.bytebuddy.matcher.MethodSortMatcher.Sort.5
            @Override // net.bytebuddy.matcher.MethodSortMatcher.Sort
            public boolean isSort(MethodDescription methodDescription) {
                return methodDescription.isDefaultMethod();
            }
        };
        
        private final String description;
        private final MethodSortMatcher<?> matcher;

        public String getDescription() {
            return this.description;
        }

        public MethodSortMatcher<?> getMatcher() {
            return this.matcher;
        }

        public abstract boolean isSort(MethodDescription methodDescription);

        Sort(String str) {
            this.description = str;
            this.matcher = new MethodSortMatcher<>(this);
        }
    }

    /* renamed from: of */
    public static <T extends MethodDescription> ElementMatcher.Junction<T> m14820of(Sort sort) {
        return sort.getMatcher();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((MethodSortMatcher<T>) ((MethodDescription) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.sort.equals(((MethodSortMatcher) obj).sort);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.sort.hashCode();
    }

    public String toString() {
        return this.sort.getDescription();
    }

    public boolean doMatch(T t) {
        return this.sort.isSort(t);
    }

    public MethodSortMatcher(Sort sort) {
        this.sort = sort;
    }
}
