package p168r4;

import java.io.Serializable;
/* renamed from: r4.k33 */
/* loaded from: classes2.dex */
public final class k33<K, V> extends i23<K, V> implements Serializable {

    /* renamed from: a */
    public final K f26274a;

    /* renamed from: b */
    public final V f26275b;

    public k33(K k, V v) {
        this.f26274a = k;
        this.f26275b = v;
    }

    @Override // p168r4.i23, java.util.Map.Entry
    public final K getKey() {
        return this.f26274a;
    }

    @Override // p168r4.i23, java.util.Map.Entry
    public final V getValue() {
        return this.f26275b;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
