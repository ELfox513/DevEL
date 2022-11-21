package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.s13 */
/* loaded from: classes2.dex */
public final class s13 implements Iterator<Map.Entry> {

    /* renamed from: a */
    public final Iterator<Map.Entry> f31213a;

    /* renamed from: b */
    public Collection f31214b;

    /* renamed from: d */
    public final /* synthetic */ t13 f31215d;

    public s13(t13 t13Var) {
        this.f31215d = t13Var;
        this.f31213a = t13Var.f31619d.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31213a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        Map.Entry next = this.f31213a.next();
        this.f31214b = (Collection) next.getValue();
        return this.f31215d.m6933b(next);
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        int i;
        if (this.f31214b != null) {
            z = true;
        } else {
            z = false;
        }
        z03.m4495b(z, "no calls to next() since the last call to remove()");
        this.f31213a.remove();
        h23 h23Var = this.f31215d.f31620k;
        i = h23Var.f24414p;
        h23Var.f24414p = i - this.f31214b.size();
        this.f31214b.clear();
        this.f31214b = null;
    }
}
