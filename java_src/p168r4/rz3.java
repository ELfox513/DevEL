package p168r4;
/* renamed from: r4.rz3 */
/* loaded from: classes2.dex */
public class rz3 {

    /* renamed from: a */
    public final lz3 f31184a;

    /* renamed from: b */
    public final qz3 f31185b;

    /* renamed from: c */
    public nz3 f31186c;

    /* renamed from: d */
    public final int f31187d;

    public rz3(oz3 oz3Var, qz3 qz3Var, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f31185b = qz3Var;
        this.f31187d = i;
        this.f31184a = new lz3(oz3Var, j, 0L, j3, j4, j5, j6);
    }

    /* renamed from: f */
    public static final int m7266f(b04 b04Var, long j, w04 w04Var) {
        if (j == b04Var.mo5954p()) {
            return 0;
        }
        w04Var.f33004a = j;
        return 1;
    }

    /* renamed from: g */
    public static final boolean m7265g(b04 b04Var, long j) {
        long mo5954p = j - b04Var.mo5954p();
        if (mo5954p < 0 || mo5954p > 262144) {
            return false;
        }
        ((vz3) b04Var).m5956n((int) mo5954p, false);
        return true;
    }

    /* renamed from: a */
    public final z04 m7271a() {
        return this.f31184a;
    }

    /* renamed from: b */
    public final void m7270b(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        nz3 nz3Var = this.f31186c;
        if (nz3Var != null) {
            j6 = nz3Var.f28747a;
            if (j6 == j) {
                return;
            }
        }
        long m9527j = this.f31184a.m9527j(j);
        j2 = this.f31184a.f27431c;
        j3 = this.f31184a.f27432d;
        j4 = this.f31184a.f27433e;
        j5 = this.f31184a.f27434f;
        this.f31186c = new nz3(j, m9527j, 0L, j2, j3, j4, j5);
    }

    /* renamed from: c */
    public final boolean m7269c() {
        return this.f31186c != null;
    }

    /* renamed from: e */
    public final void m7267e(boolean z, long j) {
        this.f31186c = null;
        this.f31185b.mo7637a();
    }

    /* renamed from: d */
    public final int m7268d(b04 b04Var, w04 w04Var) {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        while (true) {
            nz3 nz3Var = this.f31186c;
            C5903ja.m10370e(nz3Var);
            j = nz3Var.f28752f;
            j2 = nz3Var.f28753g;
            j3 = nz3Var.f28754h;
            if (j2 - j <= this.f31187d) {
                m7267e(false, j);
                return m7266f(b04Var, j, w04Var);
            } else if (!m7265g(b04Var, j3)) {
                return m7266f(b04Var, j3, w04Var);
            } else {
                b04Var.mo5959k();
                qz3 qz3Var = this.f31185b;
                j4 = nz3Var.f28748b;
                pz3 mo7636b = qz3Var.mo7636b(b04Var, j4);
                i = mo7636b.f29867a;
                if (i != -3) {
                    if (i != -2) {
                        if (i != -1) {
                            j5 = mo7636b.f29869c;
                            m7265g(b04Var, j5);
                            j6 = mo7636b.f29869c;
                            m7267e(true, j6);
                            j7 = mo7636b.f29869c;
                            return m7266f(b04Var, j7, w04Var);
                        }
                        j8 = mo7636b.f29868b;
                        j9 = mo7636b.f29869c;
                        nz3.m8948g(nz3Var, j8, j9);
                    } else {
                        j10 = mo7636b.f29868b;
                        j11 = mo7636b.f29869c;
                        nz3.m8949f(nz3Var, j10, j11);
                    }
                } else {
                    m7267e(false, j3);
                    return m7266f(b04Var, j3, w04Var);
                }
            }
        }
    }
}
