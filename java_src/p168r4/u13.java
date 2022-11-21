package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.u13 */
/* loaded from: classes2.dex */
public class u13<T> implements Iterator<T> {

    /* renamed from: a */
    public final Iterator<Map.Entry> f32124a;

    /* renamed from: b */
    public Object f32125b;

    /* renamed from: d */
    public Collection f32126d;

    /* renamed from: k */
    public Iterator f32127k;

    /* renamed from: p */
    public final /* synthetic */ h23 f32128p;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f32124a.hasNext() || this.f32127k.hasNext();
    }

    public u13(h23 h23Var) {
        Map map;
        this.f32128p = h23Var;
        map = h23Var.f24413k;
        this.f32124a = map.entrySet().iterator();
        this.f32125b = null;
        this.f32126d = null;
        this.f32127k = b43.INSTANCE;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!this.f32127k.hasNext()) {
            Map.Entry next = this.f32124a.next();
            this.f32125b = next.getKey();
            Collection collection = (Collection) next.getValue();
            this.f32126d = collection;
            this.f32127k = collection.iterator();
        }
        return (T) this.f32127k.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.f32127k.remove();
        Collection collection = this.f32126d;
        collection.getClass();
        if (collection.isEmpty()) {
            this.f32124a.remove();
        }
        h23 h23Var = this.f32128p;
        i = h23Var.f24414p;
        h23Var.f24414p = i - 1;
    }
}
