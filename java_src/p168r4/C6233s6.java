package p168r4;
/* renamed from: r4.s6 */
/* loaded from: classes2.dex */
public final class C6233s6 {

    /* renamed from: a */
    public final C6274ta f31264a = new C6274ta();

    /* renamed from: a */
    public final C6233s6 m7206a(int i) {
        this.f31264a.m6894a(i);
        return this;
    }

    /* renamed from: b */
    public final C6233s6 m7205b(int i, boolean z) {
        C6274ta c6274ta = this.f31264a;
        if (z) {
            c6274ta.m6894a(i);
        }
        return this;
    }

    /* renamed from: e */
    public final C6270t6 m7202e() {
        return new C6270t6(this.f31264a.m6893b(), null);
    }

    /* renamed from: c */
    public final C6233s6 m7204c(int... iArr) {
        C6274ta c6274ta = this.f31264a;
        for (int i : iArr) {
            c6274ta.m6894a(i);
        }
        return this;
    }

    /* renamed from: d */
    public final C6233s6 m7203d(C6270t6 c6270t6) {
        C6348va c6348va;
        C6274ta c6274ta = this.f31264a;
        c6348va = c6270t6.f31716a;
        for (int i = 0; i < c6348va.m6195a(); i++) {
            c6274ta.m6894a(c6348va.m6194b(i));
        }
        return this;
    }
}
