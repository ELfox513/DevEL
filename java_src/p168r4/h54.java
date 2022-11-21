package p168r4;

import android.util.Log;
import com.badlogic.gdx.graphics.GL20;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: r4.h54 */
/* loaded from: classes2.dex */
public final class h54 implements m54 {

    /* renamed from: v */
    public static final byte[] f24452v = {73, 68, 51};

    /* renamed from: a */
    public final boolean f24453a;

    /* renamed from: b */
    public final C6386wb f24454b = new C6386wb(new byte[7], 7);

    /* renamed from: c */
    public final C6423xb f24455c = new C6423xb(Arrays.copyOf(f24452v, 10));

    /* renamed from: d */
    public final String f24456d;

    /* renamed from: e */
    public String f24457e;

    /* renamed from: f */
    public d14 f24458f;

    /* renamed from: g */
    public d14 f24459g;

    /* renamed from: h */
    public int f24460h;

    /* renamed from: i */
    public int f24461i;

    /* renamed from: j */
    public int f24462j;

    /* renamed from: k */
    public boolean f24463k;

    /* renamed from: l */
    public boolean f24464l;

    /* renamed from: m */
    public int f24465m;

    /* renamed from: n */
    public int f24466n;

    /* renamed from: o */
    public int f24467o;

    /* renamed from: p */
    public boolean f24468p;

    /* renamed from: q */
    public long f24469q;

    /* renamed from: r */
    public int f24470r;

    /* renamed from: s */
    public long f24471s;

    /* renamed from: t */
    public d14 f24472t;

    /* renamed from: u */
    public long f24473u;

    /* renamed from: e */
    public static boolean m10981e(int i) {
        return (i & 65526) == 65520;
    }

    /* renamed from: k */
    public static final boolean m10975k(byte b, byte b2) {
        return m10981e((b2 & DefaultClassResolver.NAME) | 65280);
    }

    /* renamed from: l */
    public static final boolean m10974l(C6423xb c6423xb, byte[] bArr, int i) {
        if (c6423xb.m5407l() < i) {
            return false;
        }
        c6423xb.m5398u(bArr, 0, i);
        return true;
    }

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f24471s = j;
        }
    }

    /* renamed from: f */
    public final void m10980f() {
        this.f24464l = false;
        m10978h();
    }

    /* renamed from: h */
    public final void m10978h() {
        this.f24460h = 0;
        this.f24461i = 0;
        this.f24462j = 256;
    }

    /* renamed from: i */
    public final void m10977i(d14 d14Var, long j, int i, int i2) {
        this.f24460h = 4;
        this.f24461i = i;
        this.f24472t = d14Var;
        this.f24473u = j;
        this.f24470r = i2;
    }

    /* renamed from: j */
    public final void m10976j() {
        this.f24460h = 3;
        this.f24461i = 0;
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f24471s = -9223372036854775807L;
        m10980f();
    }

    @Override // p168r4.m54
    /* renamed from: b */
    public final void mo4424b(C6423xb c6423xb) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        this.f24458f.getClass();
        int i5 = C5979lc.f27164a;
        while (c6423xb.m5407l() > 0) {
            int i6 = this.f24460h;
            int i7 = 13;
            int i8 = 2;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            int min = Math.min(c6423xb.m5407l(), this.f24470r - this.f24461i);
                            this.f24472t.mo4009a(c6423xb, min);
                            int i9 = this.f24461i + min;
                            this.f24461i = i9;
                            int i10 = this.f24470r;
                            if (i9 == i10) {
                                long j = this.f24471s;
                                if (j != -9223372036854775807L) {
                                    this.f24472t.mo4005e(j, 1, i10, 0, null);
                                    this.f24471s += this.f24473u;
                                }
                                m10978h();
                            }
                        } else {
                            if (true != this.f24463k) {
                                i = 5;
                            } else {
                                i = 7;
                            }
                            if (m10979g(c6423xb, this.f24454b.f33149a, i)) {
                                this.f24454b.m5789d(0);
                                if (!this.f24468p) {
                                    int m5785h = this.f24454b.m5785h(2) + 1;
                                    if (m5785h != 2) {
                                        StringBuilder sb = new StringBuilder(61);
                                        sb.append("Detected audio object type: ");
                                        sb.append(m5785h);
                                        sb.append(", but assuming AAC LC.");
                                        Log.w("AdtsReader", sb.toString());
                                    }
                                    this.f24454b.m5787f(5);
                                    int m5785h2 = this.f24454b.m5785h(3);
                                    int i11 = this.f24466n;
                                    byte[] bArr = {(byte) (((i11 >> 1) & 7) | 16), (byte) (((m5785h2 << 3) & 120) | ((i11 << 7) & 128))};
                                    az3 m12253a = cz3.m12253a(bArr);
                                    C5639c5 c5639c5 = new C5639c5();
                                    c5639c5.m12579d(this.f24457e);
                                    c5639c5.m12564n("audio/mp4a-latm");
                                    c5639c5.m12567k(m12253a.f20785c);
                                    c5639c5.m12610B(m12253a.f20784b);
                                    c5639c5.m12609C(m12253a.f20783a);
                                    c5639c5.m12562p(Collections.singletonList(bArr));
                                    c5639c5.m12573g(this.f24456d);
                                    C5713e5 m12603I = c5639c5.m12603I();
                                    this.f24469q = 1024000000 / m12603I.f22828z;
                                    this.f24458f.mo4004f(m12603I);
                                    this.f24468p = true;
                                } else {
                                    this.f24454b.m5787f(10);
                                }
                                this.f24454b.m5787f(4);
                                int m5785h3 = this.f24454b.m5785h(13) - 7;
                                if (this.f24463k) {
                                    m5785h3 -= 2;
                                }
                                m10977i(this.f24458f, this.f24469q, 0, m5785h3);
                            }
                        }
                    } else if (m10979g(c6423xb, this.f24455c.m5402q(), 10)) {
                        this.f24459g.mo4009a(this.f24455c, 10);
                        this.f24455c.m5403p(6);
                        m10977i(this.f24459g, 0L, 10, 10 + this.f24455c.m5418a());
                    }
                } else if (c6423xb.m5407l() != 0) {
                    this.f24454b.f33149a[0] = c6423xb.m5402q()[c6423xb.m5404o()];
                    this.f24454b.m5789d(2);
                    int m5785h4 = this.f24454b.m5785h(4);
                    int i12 = this.f24466n;
                    if (i12 != -1 && m5785h4 != i12) {
                        m10980f();
                    } else {
                        if (!this.f24464l) {
                            this.f24464l = true;
                            this.f24465m = this.f24467o;
                            this.f24466n = m5785h4;
                        }
                        m10976j();
                    }
                }
            } else {
                byte[] m5402q = c6423xb.m5402q();
                int m5404o = c6423xb.m5404o();
                int m5406m = c6423xb.m5406m();
                while (true) {
                    if (m5404o < m5406m) {
                        i2 = m5404o + 1;
                        i3 = m5402q[m5404o] & DefaultClassResolver.NAME;
                        if (this.f24462j == 512 && m10975k((byte) -1, (byte) i3)) {
                            if (!this.f24464l) {
                                int i13 = i2 - 2;
                                c6423xb.m5403p(i13 + 1);
                                if (m10974l(c6423xb, this.f24454b.f33149a, 1)) {
                                    this.f24454b.m5789d(4);
                                    int m5785h5 = this.f24454b.m5785h(1);
                                    int i14 = this.f24465m;
                                    if (i14 == -1 || m5785h5 == i14) {
                                        if (this.f24466n != -1) {
                                            if (!m10974l(c6423xb, this.f24454b.f33149a, 1)) {
                                                break;
                                            }
                                            this.f24454b.m5789d(i8);
                                            if (this.f24454b.m5785h(4) == this.f24466n) {
                                                c6423xb.m5403p(i13 + 2);
                                            }
                                        }
                                        if (!m10974l(c6423xb, this.f24454b.f33149a, 4)) {
                                            break;
                                        }
                                        this.f24454b.m5789d(14);
                                        int m5785h6 = this.f24454b.m5785h(i7);
                                        if (m5785h6 >= 7) {
                                            byte[] m5402q2 = c6423xb.m5402q();
                                            int m5406m2 = c6423xb.m5406m();
                                            int i15 = i13 + m5785h6;
                                            if (i15 >= m5406m2) {
                                                break;
                                            } else if ((r8 = m5402q2[i15]) == -1) {
                                            }
                                        }
                                    }
                                }
                            } else {
                                break;
                            }
                        }
                        int i16 = this.f24462j;
                        int i17 = i16 | i3;
                        if (i17 != 329) {
                            if (i17 != 511) {
                                if (i17 != 836) {
                                    if (i17 != 1075) {
                                        if (i16 != 256) {
                                            this.f24462j = 256;
                                            m5404o = i2 - 1;
                                            i7 = 13;
                                            i8 = 2;
                                        } else {
                                            m5404o = i2;
                                            i7 = 13;
                                            i8 = 2;
                                        }
                                    } else {
                                        this.f24460h = 2;
                                        this.f24461i = 3;
                                        this.f24470r = 0;
                                        this.f24455c.m5403p(0);
                                        c6423xb.m5403p(i2);
                                        break;
                                    }
                                } else {
                                    i4 = 1024;
                                }
                            } else {
                                i4 = 512;
                            }
                        } else {
                            i4 = GL20.GL_SRC_COLOR;
                        }
                        this.f24462j = i4;
                        m5404o = i2;
                        i7 = 13;
                        i8 = 2;
                    } else {
                        c6423xb.m5403p(m5404o);
                        break;
                    }
                }
                this.f24467o = (i3 & 8) >> 3;
                if (1 != ((i3 & 1) ^ 1)) {
                    z = false;
                } else {
                    z = true;
                }
                this.f24463k = z;
                if (!this.f24464l) {
                    this.f24460h = 1;
                    this.f24461i = 0;
                } else {
                    m10976j();
                }
                c6423xb.m5403p(i2);
            }
        }
    }

    public h54(boolean z, String str) {
        m10978h();
        this.f24465m = -1;
        this.f24466n = -1;
        this.f24469q = -9223372036854775807L;
        this.f24471s = -9223372036854775807L;
        this.f24453a = z;
        this.f24456d = str;
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        this.f24457e = z64Var.m4414c();
        d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 1);
        this.f24458f = mo10795r;
        this.f24472t = mo10795r;
        if (this.f24453a) {
            z64Var.m4416a();
            d14 mo10795r2 = d04Var.mo10795r(z64Var.m4415b(), 5);
            this.f24459g = mo10795r2;
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12579d(z64Var.m4414c());
            c5639c5.m12564n("application/id3");
            mo10795r2.mo4004f(c5639c5.m12603I());
            return;
        }
        this.f24459g = new zz3();
    }

    /* renamed from: g */
    public final boolean m10979g(C6423xb c6423xb, byte[] bArr, int i) {
        int min = Math.min(c6423xb.m5407l(), i - this.f24461i);
        c6423xb.m5398u(bArr, this.f24461i, min);
        int i2 = this.f24461i + min;
        this.f24461i = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }
}
