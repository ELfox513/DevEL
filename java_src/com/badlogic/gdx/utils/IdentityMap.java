package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class IdentityMap<K, V> extends ObjectMap<K, V> {
    public IdentityMap() {
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    /* renamed from: e */
    public int mo23570e(K k) {
        return (int) ((System.identityHashCode(k) * (-7046029254386353131L)) >>> this.f6659p);
    }

    public IdentityMap(int i) {
        super(i);
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    /* renamed from: d */
    public int mo23571d(K k) {
        if (k != null) {
            K[] kArr = this.f6655a;
            int mo23570e = mo23570e(k);
            while (true) {
                K k2 = kArr[mo23570e];
                if (k2 == null) {
                    return -(mo23570e + 1);
                }
                if (k2 == k) {
                    return mo23570e;
                }
                mo23570e = (mo23570e + 1) & this.f6660q;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f6655a;
        V[] vArr = this.f6656b;
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
}
