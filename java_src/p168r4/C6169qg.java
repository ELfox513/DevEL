package p168r4;
/* renamed from: r4.qg */
/* loaded from: classes2.dex */
public final class C6169qg implements InterfaceC6095og {

    /* renamed from: a */
    public final int f30107a;

    /* renamed from: b */
    public final int f30108b;

    /* renamed from: c */
    public final C5692dl f30109c;

    @Override // p168r4.InterfaceC6095og
    /* renamed from: a */
    public final int mo7514a() {
        int i = this.f30107a;
        return i == 0 ? this.f30109c.m12102u() : i;
    }

    @Override // p168r4.InterfaceC6095og
    /* renamed from: b */
    public final boolean mo7513b() {
        return this.f30107a != 0;
    }

    @Override // p168r4.InterfaceC6095og
    public final int zza() {
        return this.f30108b;
    }

    public C6169qg(C5983lg c5983lg) {
        C5692dl c5692dl = c5983lg.f27207P0;
        this.f30109c = c5692dl;
        c5692dl.m12114i(12);
        this.f30107a = c5692dl.m12102u();
        this.f30108b = c5692dl.m12102u();
    }
}
