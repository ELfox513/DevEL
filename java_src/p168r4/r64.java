package p168r4;

import android.util.Log;
/* renamed from: r4.r64 */
/* loaded from: classes2.dex */
public final class r64 {

    /* renamed from: c */
    public boolean f30477c;

    /* renamed from: d */
    public boolean f30478d;

    /* renamed from: e */
    public boolean f30479e;

    /* renamed from: a */
    public final C5758fc f30475a = new C5758fc(0);

    /* renamed from: f */
    public long f30480f = -9223372036854775807L;

    /* renamed from: g */
    public long f30481g = -9223372036854775807L;

    /* renamed from: h */
    public long f30482h = -9223372036854775807L;

    /* renamed from: b */
    public final C6423xb f30476b = new C6423xb();

    /* renamed from: a */
    public final boolean m7603a() {
        return this.f30477c;
    }

    /* renamed from: b */
    public final int m7602b(b04 b04Var, w04 w04Var, int i) {
        if (i <= 0) {
            m7599e(b04Var);
            return 0;
        }
        long j = -9223372036854775807L;
        if (!this.f30479e) {
            long mo5953q = b04Var.mo5953q();
            int min = (int) Math.min(112800L, mo5953q);
            long j2 = mo5953q - min;
            if (b04Var.mo5954p() != j2) {
                w04Var.f33004a = j2;
                return 1;
            }
            this.f30476b.m5410i(min);
            b04Var.mo5959k();
            ((vz3) b04Var).mo5960i(this.f30476b.m5402q(), 0, min, false);
            C6423xb c6423xb = this.f30476b;
            int m5404o = c6423xb.m5404o();
            int m5406m = c6423xb.m5406m();
            int i2 = m5406m - 188;
            while (true) {
                if (i2 < m5404o) {
                    break;
                }
                byte[] m5402q = c6423xb.m5402q();
                int i3 = -4;
                int i4 = 0;
                while (true) {
                    if (i3 > 4) {
                        break;
                    }
                    int i5 = (i3 * 188) + i2;
                    if (i5 >= m5404o && i5 < m5406m && m5402q[i5] == 71) {
                        i4++;
                        if (i4 == 5) {
                            long m12858b = b74.m12858b(c6423xb, i2, i);
                            if (m12858b != -9223372036854775807L) {
                                j = m12858b;
                                break;
                            }
                        }
                    } else {
                        i4 = 0;
                    }
                    i3++;
                }
                i2--;
            }
            this.f30481g = j;
            this.f30479e = true;
            return 0;
        } else if (this.f30481g == -9223372036854775807L) {
            m7599e(b04Var);
            return 0;
        } else if (!this.f30478d) {
            int min2 = (int) Math.min(112800L, b04Var.mo5953q());
            if (b04Var.mo5954p() != 0) {
                w04Var.f33004a = 0L;
                return 1;
            }
            this.f30476b.m5410i(min2);
            b04Var.mo5959k();
            ((vz3) b04Var).mo5960i(this.f30476b.m5402q(), 0, min2, false);
            C6423xb c6423xb2 = this.f30476b;
            int m5404o2 = c6423xb2.m5404o();
            int m5406m2 = c6423xb2.m5406m();
            while (true) {
                if (m5404o2 >= m5406m2) {
                    break;
                }
                if (c6423xb2.m5402q()[m5404o2] == 71) {
                    long m12858b2 = b74.m12858b(c6423xb2, m5404o2, i);
                    if (m12858b2 != -9223372036854775807L) {
                        j = m12858b2;
                        break;
                    }
                }
                m5404o2++;
            }
            this.f30480f = j;
            this.f30478d = true;
            return 0;
        } else {
            long j3 = this.f30480f;
            if (j3 == -9223372036854775807L) {
                m7599e(b04Var);
                return 0;
            }
            long m11580e = this.f30475a.m11580e(this.f30481g) - this.f30475a.m11580e(j3);
            this.f30482h = m11580e;
            if (m11580e < 0) {
                StringBuilder sb = new StringBuilder(65);
                sb.append("Invalid duration: ");
                sb.append(m11580e);
                sb.append(". Using TIME_UNSET instead.");
                Log.w("TsDurationReader", sb.toString());
                this.f30482h = -9223372036854775807L;
            }
            m7599e(b04Var);
            return 0;
        }
    }

    /* renamed from: c */
    public final long m7601c() {
        return this.f30482h;
    }

    /* renamed from: d */
    public final C5758fc m7600d() {
        return this.f30475a;
    }

    /* renamed from: e */
    public final int m7599e(b04 b04Var) {
        C6423xb c6423xb = this.f30476b;
        byte[] bArr = C5979lc.f27169f;
        int length = bArr.length;
        c6423xb.m5409j(bArr, 0);
        this.f30477c = true;
        b04Var.mo5959k();
        return 0;
    }

    public r64(int i) {
    }
}
