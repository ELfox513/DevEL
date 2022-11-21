package p168r4;
/* renamed from: r4.y14 */
/* loaded from: classes2.dex */
public final class y14 extends x14 {

    /* renamed from: b */
    public final C6423xb f33839b;

    /* renamed from: c */
    public final C6423xb f33840c;

    /* renamed from: d */
    public int f33841d;

    /* renamed from: e */
    public boolean f33842e;

    /* renamed from: f */
    public boolean f33843f;

    /* renamed from: g */
    public int f33844g;

    public y14(d14 d14Var) {
        super(d14Var);
        this.f33839b = new C6423xb(C6053nb.f28240a);
        this.f33840c = new C6423xb(4);
    }

    @Override // p168r4.x14
    /* renamed from: a */
    public final boolean mo4931a(C6423xb c6423xb) {
        int m5397v = c6423xb.m5397v();
        int i = m5397v >> 4;
        int i2 = m5397v & 15;
        if (i2 == 7) {
            this.f33844g = i;
            if (i != 5) {
                return true;
            }
            return false;
        }
        StringBuilder sb = new StringBuilder(39);
        sb.append("Video format not supported: ");
        sb.append(i2);
        throw new w14(sb.toString());
    }

    @Override // p168r4.x14
    /* renamed from: b */
    public final boolean mo4930b(C6423xb c6423xb, long j) {
        int i;
        int m5397v = c6423xb.m5397v();
        long m5426A = j + (c6423xb.m5426A() * 1000);
        if (m5397v == 0) {
            if (!this.f33842e) {
                C6423xb c6423xb2 = new C6423xb(new byte[c6423xb.m5407l()]);
                c6423xb.m5398u(c6423xb2.m5402q(), 0, c6423xb.m5407l());
                kz3 m9821a = kz3.m9821a(c6423xb2);
                this.f33841d = m9821a.f26999b;
                C5639c5 c5639c5 = new C5639c5();
                c5639c5.m12564n("video/avc");
                c5639c5.m12567k(m9821a.f27003f);
                c5639c5.m12559s(m9821a.f27000c);
                c5639c5.m12558t(m9821a.f27001d);
                c5639c5.m12555w(m9821a.f27002e);
                c5639c5.m12562p(m9821a.f26998a);
                this.f33412a.mo4004f(c5639c5.m12603I());
                this.f33842e = true;
                return false;
            }
        } else if (m5397v == 1 && this.f33842e) {
            if (this.f33844g == 1) {
                i = 1;
            } else {
                i = 0;
            }
            if (!this.f33843f && i == 0) {
                return false;
            }
            byte[] m5402q = this.f33840c.m5402q();
            m5402q[0] = 0;
            m5402q[1] = 0;
            m5402q[2] = 0;
            int i2 = 4 - this.f33841d;
            int i3 = 0;
            while (c6423xb.m5407l() > 0) {
                c6423xb.m5398u(this.f33840c.m5402q(), i2, this.f33841d);
                this.f33840c.m5403p(0);
                int m5417b = this.f33840c.m5417b();
                this.f33839b.m5403p(0);
                this.f33412a.mo4009a(this.f33839b, 4);
                this.f33412a.mo4009a(c6423xb, m5417b);
                i3 = i3 + 4 + m5417b;
            }
            this.f33412a.mo4005e(m5426A, i, i3, 0, null);
            this.f33843f = true;
            return true;
        }
        return false;
    }
}
