package p168r4;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.r33 */
/* loaded from: classes2.dex */
public final class r33<K, V> {

    /* renamed from: a */
    public Object[] f30434a;

    /* renamed from: b */
    public int f30435b;

    public r33() {
        this(4);
    }

    /* renamed from: c */
    public final s33<K, V> m7615c() {
        return i53.m10723h(this.f30435b, this.f30434a);
    }

    /* renamed from: d */
    public final void m7614d(int i) {
        int i2 = i + i;
        Object[] objArr = this.f30434a;
        int length = objArr.length;
        if (i2 > length) {
            this.f30434a = Arrays.copyOf(objArr, i33.m10729b(length, i2));
        }
    }

    public r33(int i) {
        this.f30434a = new Object[i + i];
        this.f30435b = 0;
    }

    /* renamed from: a */
    public final r33<K, V> m7617a(K k, V v) {
        m7614d(this.f30435b + 1);
        m23.m9514a(k, v);
        Object[] objArr = this.f30434a;
        int i = this.f30435b;
        int i2 = i + i;
        objArr[i2] = k;
        objArr[i2 + 1] = v;
        this.f30435b = i + 1;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final r33<K, V> m7616b(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        if (iterable instanceof Collection) {
            m7614d(this.f30435b + iterable.size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            m7617a(entry.getKey(), entry.getValue());
        }
        return this;
    }
}
