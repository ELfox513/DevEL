package p168r4;

import android.util.Log;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.h64 */
/* loaded from: classes2.dex */
public final class h64 {

    /* renamed from: c */
    public boolean f24489c;

    /* renamed from: d */
    public boolean f24490d;

    /* renamed from: e */
    public boolean f24491e;

    /* renamed from: a */
    public final C5758fc f24487a = new C5758fc(0);

    /* renamed from: f */
    public long f24492f = -9223372036854775807L;

    /* renamed from: g */
    public long f24493g = -9223372036854775807L;

    /* renamed from: h */
    public long f24494h = -9223372036854775807L;

    /* renamed from: b */
    public final C6423xb f24488b = new C6423xb();

    /* renamed from: g */
    public static final int m10966g(byte[] bArr, int i) {
        return (bArr[i + 3] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 24) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: a */
    public final boolean m10972a() {
        return this.f24489c;
    }

    /* renamed from: b */
    public final C5758fc m10971b() {
        return this.f24487a;
    }

    /* renamed from: d */
    public final long m10969d() {
        return this.f24494h;
    }

    /* renamed from: e */
    public static long m10968e(C6423xb c6423xb) {
        int m5404o = c6423xb.m5404o();
        if (c6423xb.m5407l() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c6423xb.m5398u(bArr, 0, 9);
        c6423xb.m5403p(m5404o);
        byte b = bArr[0];
        if ((b & 196) == 68) {
            byte b2 = bArr[2];
            if ((b2 & 4) == 4) {
                byte b3 = bArr[4];
                if ((b3 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j = b;
                    long j2 = b2;
                    return ((bArr[1] & 255) << 20) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | (((j2 & 248) >> 3) << 15) | ((j2 & 3) << 13) | ((bArr[3] & 255) << 5) | ((248 & b3) >> 3);
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: c */
    public final int m10970c(b04 b04Var, w04 w04Var) {
        long j = -9223372036854775807L;
        if (!this.f24491e) {
            long mo5953q = b04Var.mo5953q();
            int min = (int) Math.min(20000L, mo5953q);
            long j2 = mo5953q - min;
            if (b04Var.mo5954p() != j2) {
                w04Var.f33004a = j2;
                return 1;
            }
            this.f24488b.m5410i(min);
            b04Var.mo5959k();
            ((vz3) b04Var).mo5960i(this.f24488b.m5402q(), 0, min, false);
            C6423xb c6423xb = this.f24488b;
            int m5404o = c6423xb.m5404o();
            int m5406m = c6423xb.m5406m() - 4;
            while (true) {
                if (m5406m < m5404o) {
                    break;
                }
                if (m10966g(c6423xb.m5402q(), m5406m) == 442) {
                    c6423xb.m5403p(m5406m + 4);
                    long m10968e = m10968e(c6423xb);
                    if (m10968e != -9223372036854775807L) {
                        j = m10968e;
                        break;
                    }
                }
                m5406m--;
            }
            this.f24493g = j;
            this.f24491e = true;
            return 0;
        } else if (this.f24493g == -9223372036854775807L) {
            m10967f(b04Var);
            return 0;
        } else if (!this.f24490d) {
            int min2 = (int) Math.min(20000L, b04Var.mo5953q());
            if (b04Var.mo5954p() != 0) {
                w04Var.f33004a = 0L;
                return 1;
            }
            this.f24488b.m5410i(min2);
            b04Var.mo5959k();
            ((vz3) b04Var).mo5960i(this.f24488b.m5402q(), 0, min2, false);
            C6423xb c6423xb2 = this.f24488b;
            int m5404o2 = c6423xb2.m5404o();
            int m5406m2 = c6423xb2.m5406m();
            while (true) {
                if (m5404o2 >= m5406m2 - 3) {
                    break;
                }
                if (m10966g(c6423xb2.m5402q(), m5404o2) == 442) {
                    c6423xb2.m5403p(m5404o2 + 4);
                    long m10968e2 = m10968e(c6423xb2);
                    if (m10968e2 != -9223372036854775807L) {
                        j = m10968e2;
                        break;
                    }
                }
                m5404o2++;
            }
            this.f24492f = j;
            this.f24490d = true;
            return 0;
        } else {
            long j3 = this.f24492f;
            if (j3 == -9223372036854775807L) {
                m10967f(b04Var);
                return 0;
            }
            long m11580e = this.f24487a.m11580e(this.f24493g) - this.f24487a.m11580e(j3);
            this.f24494h = m11580e;
            if (m11580e < 0) {
                StringBuilder sb = new StringBuilder(65);
                sb.append("Invalid duration: ");
                sb.append(m11580e);
                sb.append(". Using TIME_UNSET instead.");
                Log.w("PsDurationReader", sb.toString());
                this.f24494h = -9223372036854775807L;
            }
            m10967f(b04Var);
            return 0;
        }
    }

    /* renamed from: f */
    public final int m10967f(b04 b04Var) {
        C6423xb c6423xb = this.f24488b;
        byte[] bArr = C5979lc.f27169f;
        int length = bArr.length;
        c6423xb.m5409j(bArr, 0);
        this.f24489c = true;
        b04Var.mo5959k();
        return 0;
    }
}
