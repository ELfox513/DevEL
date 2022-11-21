package com.esotericsoftware.kryo.util;
/* loaded from: classes.dex */
public class IdentityObjectIntMap<K> extends ObjectIntMap<K> {
    public IdentityObjectIntMap() {
    }

    @Override // com.esotericsoftware.kryo.util.ObjectIntMap
    public int place(K k) {
        return System.identityHashCode(k) & this.mask;
    }

    public IdentityObjectIntMap(int i) {
        super(i);
    }

    @Override // com.esotericsoftware.kryo.util.ObjectIntMap
    /* renamed from: d */
    public int mo23170d(K k) {
        if (k != null) {
            K[] kArr = this.f7430a;
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

    @Override // com.esotericsoftware.kryo.util.ObjectIntMap
    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            if (k != null) {
                i += System.identityHashCode(k) + iArr[i2];
            }
        }
        return i;
    }

    public IdentityObjectIntMap(int i, float f) {
        super(i, f);
    }

    @Override // com.esotericsoftware.kryo.util.ObjectIntMap
    public int get(K k, int i) {
        int place = place(k);
        while (true) {
            K k2 = this.f7430a[place];
            if (k2 == null) {
                return i;
            }
            if (k2 == k) {
                return this.f7431b[place];
            }
            place = (place + 1) & this.mask;
        }
    }

    public IdentityObjectIntMap(IdentityObjectIntMap<K> identityObjectIntMap) {
        super(identityObjectIntMap);
    }
}
