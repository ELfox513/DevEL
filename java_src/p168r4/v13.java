package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.v13 */
/* loaded from: classes2.dex */
public final class v13 implements Iterator {

    /* renamed from: a */
    public Map.Entry f32543a;

    /* renamed from: b */
    public final /* synthetic */ Iterator f32544b;

    /* renamed from: d */
    public final /* synthetic */ w13 f32545d;

    public v13(w13 w13Var, Iterator it) {
        this.f32545d = w13Var;
        this.f32544b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f32544b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f32544b.next();
        this.f32543a = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        int i;
        if (this.f32543a != null) {
            z = true;
        } else {
            z = false;
        }
        z03.m4495b(z, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.f32543a.getValue();
        this.f32544b.remove();
        h23 h23Var = this.f32545d.f33021b;
        i = h23Var.f24414p;
        h23Var.f24414p = i - collection.size();
        collection.clear();
        this.f32543a = null;
    }
}
