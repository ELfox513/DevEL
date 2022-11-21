package p168r4;
/* renamed from: r4.rg */
/* loaded from: classes2.dex */
public final class C6206rg implements InterfaceC6095og {

    /* renamed from: a */
    public final C5692dl f30553a;

    /* renamed from: b */
    public final int f30554b;

    /* renamed from: c */
    public final int f30555c;

    /* renamed from: d */
    public int f30556d;

    /* renamed from: e */
    public int f30557e;

    @Override // p168r4.InterfaceC6095og
    /* renamed from: b */
    public final boolean mo7513b() {
        return false;
    }

    @Override // p168r4.InterfaceC6095og
    public final int zza() {
        return this.f30554b;
    }

    @Override // p168r4.InterfaceC6095og
    /* renamed from: a */
    public final int mo7514a() {
        int i = this.f30555c;
        if (i == 8) {
            return this.f30553a.m12111l();
        }
        if (i == 16) {
            return this.f30553a.m12110m();
        }
        int i2 = this.f30556d;
        this.f30556d = i2 + 1;
        if (i2 % 2 == 0) {
            int m12111l = this.f30553a.m12111l();
            this.f30557e = m12111l;
            return (m12111l & 240) >> 4;
        }
        return this.f30557e & 15;
    }

    public C6206rg(C5983lg c5983lg) {
        C5692dl c5692dl = c5983lg.f27207P0;
        this.f30553a = c5692dl;
        c5692dl.m12114i(12);
        this.f30555c = c5692dl.m12102u() & 255;
        this.f30554b = c5692dl.m12102u();
    }
}
