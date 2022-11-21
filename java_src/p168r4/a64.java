package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.a64 */
/* loaded from: classes2.dex */
public final class a64 implements m54 {

    /* renamed from: a */
    public final C6423xb f20397a;

    /* renamed from: b */
    public final t04 f20398b;

    /* renamed from: c */
    public final String f20399c;

    /* renamed from: d */
    public d14 f20400d;

    /* renamed from: e */
    public String f20401e;

    /* renamed from: f */
    public int f20402f = 0;

    /* renamed from: g */
    public int f20403g;

    /* renamed from: h */
    public boolean f20404h;

    /* renamed from: i */
    public boolean f20405i;

    /* renamed from: j */
    public long f20406j;

    /* renamed from: k */
    public int f20407k;

    /* renamed from: l */
    public long f20408l;

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f20408l = j;
        }
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f20402f = 0;
        this.f20403g = 0;
        this.f20405i = false;
        this.f20408l = -9223372036854775807L;
    }

    @Override // p168r4.m54
    /* renamed from: b */
    public final void mo4424b(C6423xb c6423xb) {
        t04 t04Var;
        boolean z;
        boolean z2;
        C5903ja.m10370e(this.f20400d);
        while (c6423xb.m5407l() > 0) {
            int i = this.f20402f;
            if (i != 0) {
                if (i != 1) {
                    int min = Math.min(c6423xb.m5407l(), this.f20407k - this.f20403g);
                    b14.m12888b(this.f20400d, c6423xb, min);
                    int i2 = this.f20403g + min;
                    this.f20403g = i2;
                    int i3 = this.f20407k;
                    if (i2 >= i3) {
                        long j = this.f20408l;
                        if (j != -9223372036854775807L) {
                            this.f20400d.mo4005e(j, 1, i3, 0, null);
                            this.f20408l += this.f20406j;
                        }
                        this.f20403g = 0;
                        this.f20402f = 0;
                    }
                } else {
                    int min2 = Math.min(c6423xb.m5407l(), 4 - this.f20403g);
                    c6423xb.m5398u(this.f20397a.m5402q(), this.f20403g, min2);
                    int i4 = this.f20403g + min2;
                    this.f20403g = i4;
                    if (i4 >= 4) {
                        this.f20397a.m5403p(0);
                        if (!this.f20398b.m6936a(this.f20397a.m5423D())) {
                            this.f20403g = 0;
                            this.f20402f = 1;
                        } else {
                            this.f20407k = this.f20398b.f31608c;
                            if (!this.f20404h) {
                                this.f20406j = (t04Var.f31612g * 1000000) / t04Var.f31609d;
                                C5639c5 c5639c5 = new C5639c5();
                                c5639c5.m12579d(this.f20401e);
                                c5639c5.m12564n(this.f20398b.f31607b);
                                c5639c5.m12563o(4096);
                                c5639c5.m12610B(this.f20398b.f31610e);
                                c5639c5.m12609C(this.f20398b.f31609d);
                                c5639c5.m12573g(this.f20399c);
                                this.f20400d.mo4004f(c5639c5.m12603I());
                                this.f20404h = true;
                            }
                            this.f20397a.m5403p(0);
                            b14.m12888b(this.f20400d, this.f20397a, 4);
                            this.f20402f = 2;
                        }
                    }
                }
            } else {
                byte[] m5402q = c6423xb.m5402q();
                int m5404o = c6423xb.m5404o();
                int m5406m = c6423xb.m5406m();
                while (true) {
                    if (m5404o < m5406m) {
                        byte b = m5402q[m5404o];
                        if ((b & DefaultClassResolver.NAME) == 255) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (this.f20405i && (b & 224) == 224) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.f20405i = z;
                        if (z2) {
                            c6423xb.m5403p(m5404o + 1);
                            this.f20405i = false;
                            this.f20397a.m5402q()[1] = m5402q[m5404o];
                            this.f20403g = 2;
                            this.f20402f = 1;
                            break;
                        }
                        m5404o++;
                    } else {
                        c6423xb.m5403p(m5406m);
                        break;
                    }
                }
            }
        }
    }

    public a64(String str) {
        C6423xb c6423xb = new C6423xb(4);
        this.f20397a = c6423xb;
        c6423xb.m5402q()[0] = -1;
        this.f20398b = new t04();
        this.f20408l = -9223372036854775807L;
        this.f20399c = str;
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        this.f20401e = z64Var.m4414c();
        this.f20400d = d04Var.mo10795r(z64Var.m4415b(), 1);
    }
}
