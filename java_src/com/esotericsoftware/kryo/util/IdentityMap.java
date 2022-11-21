package com.esotericsoftware.kryo.util;
/* loaded from: classes.dex */
public class IdentityMap<K, V> extends ObjectMap<K, V> {
    public IdentityMap() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.util.ObjectMap
    public <T extends K> V get(T t) {
        int place = place(t);
        while (true) {
            K k = this.f7440a[place];
            if (k == null) {
                return null;
            }
            if (k == t) {
                return this.f7441b[place];
            }
            place = (place + 1) & this.mask;
        }
    }

    @Override // com.esotericsoftware.kryo.util.ObjectMap
    public int place(K k) {
        return System.identityHashCode(k) & this.mask;
    }

    public IdentityMap(int i) {
        super(i);
    }

    @Override // com.esotericsoftware.kryo.util.ObjectMap
    /* renamed from: d */
    public int mo23165d(K k) {
        if (k != null) {
            K[] kArr = this.f7440a;
            int place = place(k);
            while (true) {
                K k2 = kArr[place];
                if (k2 == null) {
                    return -(place + 1);
                }
                if (k2 == k) {
                    return place;
                }
                place = (place + 1) & this.mask;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    @Override // com.esotericsoftware.kryo.util.ObjectMap
    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f7440a;
        V[] vArr = this.f7441b;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            if (k != null) {
                i += System.identityHashCode(k);
                V v = vArr[i2];
                if (v != null) {
                    i += v.hashCode();
                }
            }
        }
        return i;
    }

    public IdentityMap(int i, float f) {
        super(i, f);
    }

    public IdentityMap(IdentityMap<K, V> identityMap) {
        super(identityMap);
    }

    @Override // com.esotericsoftware.kryo.util.ObjectMap
    public V get(K k, V v) {
        int place = place(k);
        while (true) {
            K k2 = this.f7440a[place];
            if (k2 == null) {
                return v;
            }
            if (k2 == k) {
                return this.f7441b[place];
            }
            place = (place + 1) & this.mask;
        }
    }
}
