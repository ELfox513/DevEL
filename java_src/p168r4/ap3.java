package p168r4;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: r4.ap3 */
/* loaded from: classes2.dex */
public final class ap3 implements Iterator<Map.Entry> {

    /* renamed from: a */
    public int f20576a = -1;

    /* renamed from: b */
    public boolean f20577b;

    /* renamed from: d */
    public Iterator<Map.Entry> f20578d;

    /* renamed from: k */
    public final /* synthetic */ dp3 f20579k;

    /* renamed from: a */
    public final Iterator<Map.Entry> m12978a() {
        Map map;
        if (this.f20578d == null) {
            map = this.f20579k.f22401d;
            this.f20578d = map.entrySet().iterator();
        }
        return this.f20578d;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        List list2;
        this.f20577b = true;
        int i = this.f20576a + 1;
        this.f20576a = i;
        list = this.f20579k.f22400b;
        if (i < list.size()) {
            list2 = this.f20579k.f22400b;
            return (Map.Entry) list2.get(this.f20576a);
        }
        return m12978a().next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f20576a + 1;
        list = this.f20579k.f22400b;
        if (i < list.size()) {
            return true;
        }
        map = this.f20579k.f22401d;
        if (!map.isEmpty() && m12978a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f20577b) {
            this.f20577b = false;
            this.f20579k.m12000m();
            int i = this.f20576a;
            list = this.f20579k.f22400b;
            if (i < list.size()) {
                dp3 dp3Var = this.f20579k;
                int i2 = this.f20576a;
                this.f20576a = i2 - 1;
                dp3Var.m12002k(i2);
                return;
            }
            m12978a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
