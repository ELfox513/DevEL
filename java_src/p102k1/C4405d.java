package p102k1;
/* renamed from: k1.d */
/* loaded from: classes.dex */
public final class C4405d {

    /* renamed from: a */
    public final C4409f f18337a;

    /* renamed from: b */
    public final int f18338b;

    /* renamed from: c */
    public final int f18339c;

    /* renamed from: d */
    public final int f18340d;

    /* renamed from: e */
    public final int f18341e;

    /* renamed from: f */
    public final int f18342f;

    /* renamed from: g */
    public final int f18343g;

    /* renamed from: h */
    public final int f18344h;

    /* renamed from: i */
    public final int f18345i;

    /* renamed from: j */
    public final int f18346j;

    /* renamed from: a */
    public int m16664a() {
        return this.f18340d;
    }

    /* renamed from: b */
    public int m16663b() {
        return this.f18344h;
    }

    /* renamed from: c */
    public int m16662c() {
        return this.f18345i;
    }

    /* renamed from: d */
    public short[] m16661d() {
        return this.f18337a.m16620u(this.f18342f).m16486d();
    }

    /* renamed from: e */
    public int m16660e() {
        return this.f18342f;
    }

    /* renamed from: f */
    public int m16659f() {
        return this.f18338b;
    }

    /* renamed from: g */
    public int m16658g() {
        return this.f18343g;
    }

    /* renamed from: h */
    public int m16657h() {
        return this.f18346j;
    }

    /* renamed from: i */
    public int m16656i() {
        return this.f18341e;
    }

    /* renamed from: j */
    public int m16655j() {
        return this.f18339c;
    }

    public String toString() {
        if (this.f18337a == null) {
            return this.f18339c + " " + this.f18341e;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18337a.m16618w().get(this.f18339c));
        if (this.f18341e != -1) {
            sb.append(" extends ");
            sb.append(this.f18337a.m16618w().get(this.f18341e));
        }
        return sb.toString();
    }

    public C4405d(C4409f c4409f, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f18337a = c4409f;
        this.f18338b = i;
        this.f18339c = i2;
        this.f18340d = i3;
        this.f18341e = i4;
        this.f18342f = i5;
        this.f18343g = i6;
        this.f18344h = i7;
        this.f18345i = i8;
        this.f18346j = i9;
    }
}
