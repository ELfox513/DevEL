package p168r4;
/* renamed from: r4.wd */
/* loaded from: classes2.dex */
public final class C6388wd implements InterfaceC5974l7 {

    /* renamed from: b */
    public InterfaceC5844ho f33172b;

    /* renamed from: c */
    public String f33173c;

    /* renamed from: f */
    public boolean f33176f;

    /* renamed from: a */
    public final C5804gl f33171a = new C5804gl();

    /* renamed from: d */
    public int f33174d = 8000;

    /* renamed from: e */
    public int f33175e = 8000;

    /* renamed from: a */
    public final C6388wd m5767a(String str) {
        this.f33173c = str;
        return this;
    }

    /* renamed from: b */
    public final C6388wd m5766b(int i) {
        this.f33174d = i;
        return this;
    }

    /* renamed from: c */
    public final C6388wd m5765c(int i) {
        this.f33175e = i;
        return this;
    }

    /* renamed from: d */
    public final C6388wd m5764d(boolean z) {
        this.f33176f = true;
        return this;
    }

    /* renamed from: e */
    public final C6388wd m5763e(InterfaceC5844ho interfaceC5844ho) {
        this.f33172b = interfaceC5844ho;
        return this;
    }

    @Override // p168r4.InterfaceC5974l7
    /* renamed from: f */
    public final C5614bg zza() {
        C5614bg c5614bg = new C5614bg(this.f33173c, this.f33174d, this.f33175e, this.f33176f, this.f33171a, null, false, null);
        InterfaceC5844ho interfaceC5844ho = this.f33172b;
        if (interfaceC5844ho != null) {
            c5614bg.mo5984c(interfaceC5844ho);
        }
        return c5614bg;
    }
}
