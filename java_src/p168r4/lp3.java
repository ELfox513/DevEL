package p168r4;

import java.util.Iterator;
/* renamed from: r4.lp3 */
/* loaded from: classes2.dex */
public final class lp3 implements Iterator<String> {

    /* renamed from: a */
    public final Iterator<String> f27314a;

    /* renamed from: b */
    public final /* synthetic */ mp3 f27315b;

    public lp3(mp3 mp3Var) {
        gn3 gn3Var;
        this.f27315b = mp3Var;
        gn3Var = mp3Var.f27849a;
        this.f27314a = gn3Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27314a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f27314a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
