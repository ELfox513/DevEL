package p144o7;

import java.util.Iterator;
import java.util.Map;
/* renamed from: o7.e0 */
/* loaded from: classes2.dex */
public class C5126e0 extends C5132f0 {

    /* renamed from: f */
    public final InterfaceC5210s0 f19401f;

    /* renamed from: o7.e0$b */
    /* loaded from: classes2.dex */
    public static class C5128b<K> implements Map.Entry<K, Object> {

        /* renamed from: a */
        public Map.Entry<K, C5126e0> f19402a;

        /* renamed from: a */
        public C5126e0 m14594a() {
            return this.f19402a.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f19402a.getKey();
        }

        public C5128b(Map.Entry<K, C5126e0> entry) {
            this.f19402a = entry;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            C5126e0 value = this.f19402a.getValue();
            if (value == null) {
                return null;
            }
            return value.m14595f();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof InterfaceC5210s0) {
                return this.f19402a.getValue().m14572d((InterfaceC5210s0) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    /* renamed from: o7.e0$c */
    /* loaded from: classes2.dex */
    public static class C5129c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a */
        public Iterator<Map.Entry<K, Object>> f19403a;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19403a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f19403a.remove();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f19403a.next();
            if (next.getValue() instanceof C5126e0) {
                return new C5128b(next);
            }
            return next;
        }

        public C5129c(Iterator<Map.Entry<K, Object>> it) {
            this.f19403a = it;
        }
    }

    @Override // p144o7.C5132f0
    public boolean equals(Object obj) {
        return m14595f().equals(obj);
    }

    /* renamed from: f */
    public InterfaceC5210s0 m14595f() {
        return m14573c(this.f19401f);
    }

    @Override // p144o7.C5132f0
    public int hashCode() {
        return m14595f().hashCode();
    }

    public String toString() {
        return m14595f().toString();
    }
}
