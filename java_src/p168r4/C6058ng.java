package p168r4;
/* renamed from: r4.ng */
/* loaded from: classes2.dex */
public final class C6058ng {

    /* renamed from: a */
    public final int f28273a;

    /* renamed from: b */
    public int f28274b;

    /* renamed from: c */
    public int f28275c;

    /* renamed from: d */
    public long f28276d;

    /* renamed from: e */
    public final boolean f28277e;

    /* renamed from: f */
    public final C5692dl f28278f;

    /* renamed from: g */
    public final C5692dl f28279g;

    /* renamed from: h */
    public int f28280h;

    /* renamed from: i */
    public int f28281i;

    /* renamed from: a */
    public final boolean m9107a() {
        long m12107p;
        int i = this.f28274b + 1;
        this.f28274b = i;
        if (i == this.f28273a) {
            return false;
        }
        if (this.f28277e) {
            m12107p = this.f28278f.m12101v();
        } else {
            m12107p = this.f28278f.m12107p();
        }
        this.f28276d = m12107p;
        if (this.f28274b == this.f28280h) {
            this.f28275c = this.f28279g.m12102u();
            this.f28279g.m12113j(4);
            int i2 = -1;
            int i3 = this.f28281i - 1;
            this.f28281i = i3;
            if (i3 > 0) {
                i2 = (-1) + this.f28279g.m12102u();
            }
            this.f28280h = i2;
        }
        return true;
    }

    public C6058ng(C5692dl c5692dl, C5692dl c5692dl2, boolean z) {
        this.f28279g = c5692dl;
        this.f28278f = c5692dl2;
        this.f28277e = z;
        c5692dl2.m12114i(12);
        this.f28273a = c5692dl2.m12102u();
        c5692dl.m12114i(12);
        this.f28281i = c5692dl.m12102u();
        C6358vk.m6136e(c5692dl.m12105r() == 1, "first_chunk must be 1");
        this.f28274b = -1;
    }
}
