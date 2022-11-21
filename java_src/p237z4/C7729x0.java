package p237z4;

import java.util.Iterator;
import java.util.Map;
/* renamed from: z4.x0 */
/* loaded from: classes2.dex */
public final class C7729x0<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f37920a;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f37920a.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f37920a.remove();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f37920a.next();
        if (next.getValue() instanceof C7715u0) {
            return new C7723w0(next);
        }
        return next;
    }

    public C7729x0(Iterator<Map.Entry<K, Object>> it) {
        this.f37920a = it;
    }
}
