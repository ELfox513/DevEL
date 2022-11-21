package net.bytebuddy.matcher;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance(permitSubclassEquality = true)
/* loaded from: classes.dex */
public class CachingMatcher<T> extends ElementMatcher.Junction.AbstractBase<T> {
    private static final Object NULL_VALUE = new Object();
    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
    public final ConcurrentMap<? super T, Boolean> map;
    private final ElementMatcher<? super T> matcher;

    @SuppressFBWarnings(justification = "Equality does not consider eviction size.", value = {"EQ_DOESNT_OVERRIDE_EQUALS"})
    /* loaded from: classes.dex */
    public static class WithInlineEviction<S> extends CachingMatcher<S> {
        private final int evictionSize;

        @Override // net.bytebuddy.matcher.CachingMatcher
        public boolean onCacheMiss(@MaybeNull S s) {
            if (this.map.size() >= this.evictionSize) {
                Iterator<Map.Entry<? super T, Boolean>> it = this.map.entrySet().iterator();
                it.next();
                it.remove();
            }
            return super.onCacheMiss(s);
        }

        public WithInlineEviction(ElementMatcher<? super S> elementMatcher, ConcurrentMap<? super S, Boolean> concurrentMap, int i) {
            super(elementMatcher, concurrentMap);
            this.evictionSize = i;
        }
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CachingMatcher) && this.matcher.equals(((CachingMatcher) obj).matcher);
    }

    public int hashCode() {
        return (CachingMatcher.class.hashCode() * 31) + this.matcher.hashCode();
    }

    public String toString() {
        return "cached(" + this.matcher + ")";
    }

    @Override // net.bytebuddy.matcher.ElementMatcher
    public boolean matches(@MaybeNull T t) {
        Object obj;
        ConcurrentMap<? super T, Boolean> concurrentMap = this.map;
        if (t == null) {
            obj = NULL_VALUE;
        } else {
            obj = t;
        }
        Boolean bool = concurrentMap.get(obj);
        if (bool == null) {
            bool = Boolean.valueOf(onCacheMiss(t));
        }
        return bool.booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCacheMiss(@MaybeNull T t) {
        boolean matches = this.matcher.matches(t);
        ConcurrentMap<? super T, Boolean> concurrentMap = this.map;
        Object obj = t;
        if (t == null) {
            obj = (Object) NULL_VALUE;
        }
        concurrentMap.put(obj, Boolean.valueOf(matches));
        return matches;
    }

    public CachingMatcher(ElementMatcher<? super T> elementMatcher, ConcurrentMap<? super T, Boolean> concurrentMap) {
        this.matcher = elementMatcher;
        this.map = concurrentMap;
    }
}
