package p168r4;
/* renamed from: r4.g34 */
/* loaded from: classes2.dex */
public final class g34 {

    /* renamed from: a */
    public final int f23862a;

    /* renamed from: b */
    public int f23863b;

    /* renamed from: c */
    public int f23864c;

    /* renamed from: d */
    public long f23865d;

    /* renamed from: e */
    public final boolean f23866e;

    /* renamed from: f */
    public final C6423xb f23867f;

    /* renamed from: g */
    public final C6423xb f23868g;

    /* renamed from: h */
    public int f23869h;

    /* renamed from: i */
    public int f23870i;

    /* renamed from: a */
    public final boolean m11296a() {
        long m5425B;
        int i = this.f23863b + 1;
        this.f23863b = i;
        if (i == this.f23862a) {
            return false;
        }
        if (this.f23866e) {
            m5425B = this.f23867f.m5415d();
        } else {
            m5425B = this.f23867f.m5425B();
        }
        this.f23865d = m5425B;
        if (this.f23863b == this.f23869h) {
            this.f23864c = this.f23868g.m5417b();
            this.f23868g.m5400s(4);
            int i2 = -1;
            int i3 = this.f23870i - 1;
            this.f23870i = i3;
            if (i3 > 0) {
                i2 = (-1) + this.f23868g.m5417b();
            }
            this.f23869h = i2;
        }
        return true;
    }

    public g34(C6423xb c6423xb, C6423xb c6423xb2, boolean z) {
        this.f23868g = c6423xb;
        this.f23867f = c6423xb2;
        this.f23866e = z;
        c6423xb2.m5403p(12);
        this.f23862a = c6423xb2.m5417b();
        c6423xb.m5403p(12);
        this.f23870i = c6423xb.m5417b();
        e04.m11889a(c6423xb.m5423D() == 1, "first_chunk must be 1");
        this.f23863b = -1;
    }
}
