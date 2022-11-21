package net.bytebuddy.matcher;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.nullability.UnknownNull;
/* loaded from: classes.dex */
public interface ElementMatcher<T> {

    /* loaded from: classes.dex */
    public interface Junction<S> extends ElementMatcher<S> {

        /* loaded from: classes.dex */
        public static abstract class AbstractBase<V> implements Junction<V> {
            @Override // net.bytebuddy.matcher.ElementMatcher.Junction
            public <U extends V> Junction<U> and(ElementMatcher<? super U> elementMatcher) {
                return new Conjunction(this, elementMatcher);
            }

            @Override // net.bytebuddy.matcher.ElementMatcher.Junction
            /* renamed from: or */
            public <U extends V> Junction<U> mo14830or(ElementMatcher<? super U> elementMatcher) {
                return new Disjunction(this, elementMatcher);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Conjunction<W> extends AbstractBase<W> {
            private final List<ElementMatcher<? super W>> matchers;

            public Conjunction(ElementMatcher<? super W>... elementMatcherArr) {
                this(Arrays.asList(elementMatcherArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Conjunction) obj).matchers);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.matchers.hashCode();
            }

            public Conjunction(List<ElementMatcher<? super W>> list) {
                this.matchers = new ArrayList(list.size());
                for (ElementMatcher<? super W> elementMatcher : list) {
                    if (elementMatcher instanceof Conjunction) {
                        this.matchers.addAll(((Conjunction) elementMatcher).matchers);
                    } else {
                        this.matchers.add(elementMatcher);
                    }
                }
            }

            @Override // net.bytebuddy.matcher.ElementMatcher
            public boolean matches(@UnknownNull W w) {
                for (ElementMatcher<? super W> elementMatcher : this.matchers) {
                    if (!elementMatcher.matches(w)) {
                        return false;
                    }
                }
                return true;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("(");
                boolean z = true;
                for (ElementMatcher<? super W> elementMatcher : this.matchers) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(" and ");
                    }
                    sb.append(elementMatcher);
                }
                sb.append(")");
                return sb.toString();
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Disjunction<W> extends AbstractBase<W> {
            private final List<ElementMatcher<? super W>> matchers;

            public Disjunction(ElementMatcher<? super W>... elementMatcherArr) {
                this(Arrays.asList(elementMatcherArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Disjunction) obj).matchers);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.matchers.hashCode();
            }

            public Disjunction(List<ElementMatcher<? super W>> list) {
                this.matchers = new ArrayList(list.size());
                for (ElementMatcher<? super W> elementMatcher : list) {
                    if (elementMatcher instanceof Disjunction) {
                        this.matchers.addAll(((Disjunction) elementMatcher).matchers);
                    } else {
                        this.matchers.add(elementMatcher);
                    }
                }
            }

            @Override // net.bytebuddy.matcher.ElementMatcher
            public boolean matches(@UnknownNull W w) {
                for (ElementMatcher<? super W> elementMatcher : this.matchers) {
                    if (elementMatcher.matches(w)) {
                        return true;
                    }
                }
                return false;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("(");
                boolean z = true;
                for (ElementMatcher<? super W> elementMatcher : this.matchers) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(" or ");
                    }
                    sb.append(elementMatcher);
                }
                sb.append(")");
                return sb.toString();
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class ForNonNullValues<W> extends AbstractBase<W> {
            public abstract boolean doMatch(W w);

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass();
            }

            public int hashCode() {
                return getClass().hashCode();
            }

            @Override // net.bytebuddy.matcher.ElementMatcher
            public boolean matches(@MaybeNull W w) {
                return w != null && doMatch(w);
            }
        }

        <U extends S> Junction<U> and(ElementMatcher<? super U> elementMatcher);

        /* renamed from: or */
        <U extends S> Junction<U> mo14830or(ElementMatcher<? super U> elementMatcher);
    }

    boolean matches(@UnknownNull T t);
}
