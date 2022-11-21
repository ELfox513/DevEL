package p237z4;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: z4.k2 */
/* loaded from: classes2.dex */
public final class C7665k2 implements Iterator {

    /* renamed from: a */
    public int f37780a;

    /* renamed from: b */
    public Iterator f37781b;

    /* renamed from: d */
    public final /* synthetic */ C7655i2 f37782d;

    public C7665k2(C7655i2 c7655i2) {
        List list;
        this.f37782d = c7655i2;
        list = c7655i2.f37763b;
        this.f37780a = list.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f37780a;
        if (i > 0) {
            list = this.f37782d.f37763b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m673a().hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final Iterator m673a() {
        Map map;
        if (this.f37781b == null) {
            map = this.f37782d.f37767q;
            this.f37781b = map.entrySet().iterator();
        }
        return this.f37781b;
    }

    public /* synthetic */ C7665k2(C7655i2 c7655i2, C7660j2 c7660j2) {
        this(c7655i2);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m673a().hasNext()) {
            return (Map.Entry) m673a().next();
        }
        list = this.f37782d.f37763b;
        int i = this.f37780a - 1;
        this.f37780a = i;
        return (Map.Entry) list.get(i);
    }
}
