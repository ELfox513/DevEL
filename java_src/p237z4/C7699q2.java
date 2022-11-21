package p237z4;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: z4.q2 */
/* loaded from: classes2.dex */
public final class C7699q2 implements Iterator {

    /* renamed from: a */
    public int f37845a;

    /* renamed from: b */
    public boolean f37846b;

    /* renamed from: d */
    public Iterator f37847d;

    /* renamed from: k */
    public final /* synthetic */ C7655i2 f37848k;

    public C7699q2(C7655i2 c7655i2) {
        this.f37848k = c7655i2;
        this.f37845a = -1;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f37846b = true;
        int i = this.f37845a + 1;
        this.f37845a = i;
        list = this.f37848k.f37763b;
        if (i < list.size()) {
            list2 = this.f37848k.f37763b;
            return (Map.Entry) list2.get(this.f37845a);
        }
        return (Map.Entry) m615a().next();
    }

    /* renamed from: a */
    public final Iterator m615a() {
        Map map;
        if (this.f37847d == null) {
            map = this.f37848k.f37764d;
            this.f37847d = map.entrySet().iterator();
        }
        return this.f37847d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f37845a + 1;
        list = this.f37848k.f37763b;
        if (i >= list.size()) {
            map = this.f37848k.f37764d;
            if (map.isEmpty() || !m615a().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f37846b) {
            this.f37846b = false;
            this.f37848k.m681p();
            int i = this.f37845a;
            list = this.f37848k.f37763b;
            if (i < list.size()) {
                C7655i2 c7655i2 = this.f37848k;
                int i2 = this.f37845a;
                this.f37845a = i2 - 1;
                c7655i2.m688h(i2);
                return;
            }
            m615a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    public /* synthetic */ C7699q2(C7655i2 c7655i2, C7660j2 c7660j2) {
        this(c7655i2);
    }
}
