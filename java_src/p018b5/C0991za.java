package p018b5;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: b5.za */
/* loaded from: classes2.dex */
public final class C0991za implements Iterator<Map.Entry> {

    /* renamed from: a */
    public int f2466a = -1;

    /* renamed from: b */
    public boolean f2467b;

    /* renamed from: d */
    public Iterator<Map.Entry> f2468d;

    /* renamed from: k */
    public final /* synthetic */ C0618db f2469k;

    public /* synthetic */ C0991za(C0618db c0618db, C0957xa c0957xa) {
        this.f2469k = c0618db;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry> m24858a() {
        Map map;
        if (this.f2468d == null) {
            map = this.f2469k.f1780d;
            this.f2468d = map.entrySet().iterator();
        }
        return this.f2468d;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        List list2;
        this.f2467b = true;
        int i = this.f2466a + 1;
        this.f2466a = i;
        list = this.f2469k.f1779b;
        if (i < list.size()) {
            list2 = this.f2469k.f1779b;
            return (Map.Entry) list2.get(this.f2466a);
        }
        return m24858a().next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f2466a + 1;
        list = this.f2469k.f1779b;
        if (i < list.size()) {
            return true;
        }
        map = this.f2469k.f1780d;
        if (!map.isEmpty() && m24858a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f2467b) {
            this.f2467b = false;
            this.f2469k.m26040n();
            int i = this.f2466a;
            list = this.f2469k.f1779b;
            if (i < list.size()) {
                C0618db c0618db = this.f2469k;
                int i2 = this.f2466a;
                this.f2466a = i2 - 1;
                c0618db.m26042l(i2);
                return;
            }
            m24858a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
