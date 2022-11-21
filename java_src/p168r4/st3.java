package p168r4;
/* renamed from: r4.st3 */
/* loaded from: classes2.dex */
public final class st3 implements vu3 {

    /* renamed from: a */
    public final vu3 f31511a;

    /* renamed from: b */
    public final long f31512b;

    public st3(vu3 vu3Var, long j) {
        this.f31511a = vu3Var;
        this.f31512b = j;
    }

    @Override // p168r4.vu3
    /* renamed from: a */
    public final boolean mo6000a() {
        return this.f31511a.mo6000a();
    }

    @Override // p168r4.vu3
    /* renamed from: b */
    public final void mo5999b() {
        this.f31511a.mo5999b();
    }

    @Override // p168r4.vu3
    /* renamed from: c */
    public final int mo5998c(long j) {
        return this.f31511a.mo5998c(j - this.f31512b);
    }

    /* renamed from: e */
    public final vu3 m6995e() {
        return this.f31511a;
    }

    @Override // p168r4.vu3
    /* renamed from: d */
    public final int mo5997d(C5751f5 c5751f5, C5861i4 c5861i4, int i) {
        int mo5997d = this.f31511a.mo5997d(c5751f5, c5861i4, i);
        if (mo5997d == -4) {
            c5861i4.f24960e = Math.max(0L, c5861i4.f24960e + this.f31512b);
            return -4;
        }
        return mo5997d;
    }
}
