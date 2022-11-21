package p168r4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.q23 */
/* loaded from: classes2.dex */
public final class q23 extends AbstractSet<Map.Entry> {

    /* renamed from: a */
    public final /* synthetic */ w23 f29897a;

    public q23(w23 w23Var) {
        this.f29897a = w23Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f29897a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f29897a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int m5930B;
        Map m5919j = this.f29897a.m5919j();
        if (m5919j != null) {
            return m5919j.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            m5930B = this.f29897a.m5930B(entry.getKey());
            if (m5930B != -1 && v03.m6257a(w23.m5906w(this.f29897a, m5930B), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        w23 w23Var = this.f29897a;
        Map m5919j = w23Var.m5919j();
        if (m5919j != null) {
            return m5919j.entrySet().iterator();
        }
        return new o23(w23Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int m5903z;
        int[] m5928a;
        Object[] m5927b;
        Object[] m5926c;
        int i;
        Map m5919j = this.f29897a.m5919j();
        if (m5919j != null) {
            return m5919j.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.f29897a.m5920i()) {
            return false;
        }
        m5903z = this.f29897a.m5903z();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object m5911r = w23.m5911r(this.f29897a);
        m5928a = this.f29897a.m5928a();
        m5927b = this.f29897a.m5927b();
        m5926c = this.f29897a.m5926c();
        int m5516e = x23.m5516e(key, value, m5903z, m5911r, m5928a, m5927b, m5926c);
        if (m5516e == -1) {
            return false;
        }
        this.f29897a.m5914o(m5516e, m5903z);
        w23 w23Var = this.f29897a;
        i = w23Var.f33035q;
        w23Var.f33035q = i - 1;
        this.f29897a.m5917l();
        return true;
    }
}
