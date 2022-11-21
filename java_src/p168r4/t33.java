package p168r4;

import java.util.Iterator;
/* renamed from: r4.t33 */
/* loaded from: classes2.dex */
public final class t33 extends r53 {

    /* renamed from: a */
    public final Iterator<? extends j33> f31640a;

    /* renamed from: b */
    public Iterator f31641b = a43.f20370k;

    /* renamed from: d */
    public final /* synthetic */ w33 f31642d;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31641b.hasNext() || this.f31640a.hasNext();
    }

    public t33(w33 w33Var) {
        this.f31642d = w33Var;
        this.f31640a = ((o33) w33Var.f33052k.values()).listIterator(0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f31641b.hasNext()) {
            this.f31641b = this.f31640a.next().iterator();
        }
        return this.f31641b.next();
    }
}
