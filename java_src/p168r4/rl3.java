package p168r4;
/* renamed from: r4.rl3 */
/* loaded from: classes2.dex */
public abstract class rl3 {

    /* renamed from: d */
    public static volatile int f30625d = 100;

    /* renamed from: a */
    public int f30626a;

    /* renamed from: b */
    public final int f30627b = f30625d;

    /* renamed from: c */
    public sl3 f30628c;

    public /* synthetic */ rl3(pl3 pl3Var) {
    }

    /* renamed from: e */
    public static int m7459e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: f */
    public static long m7458f(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: A */
    public abstract int mo7464A(int i);

    /* renamed from: a */
    public abstract void mo7463a(int i);

    /* renamed from: b */
    public abstract boolean mo7462b();

    /* renamed from: c */
    public abstract int mo7461c();

    /* renamed from: g */
    public abstract int mo7457g();

    /* renamed from: h */
    public abstract void mo7456h(int i);

    /* renamed from: i */
    public abstract boolean mo7455i(int i);

    /* renamed from: j */
    public abstract double mo7454j();

    /* renamed from: k */
    public abstract float mo7453k();

    /* renamed from: l */
    public abstract long mo7452l();

    /* renamed from: m */
    public abstract long mo7451m();

    /* renamed from: n */
    public abstract int mo7450n();

    /* renamed from: o */
    public abstract long mo7449o();

    /* renamed from: p */
    public abstract int mo7448p();

    /* renamed from: q */
    public abstract boolean mo7447q();

    /* renamed from: r */
    public abstract String mo7446r();

    /* renamed from: s */
    public abstract String mo7445s();

    /* renamed from: t */
    public abstract ll3 mo7444t();

    /* renamed from: u */
    public abstract int mo7443u();

    /* renamed from: v */
    public abstract int mo7442v();

    /* renamed from: w */
    public abstract int mo7441w();

    /* renamed from: x */
    public abstract long mo7440x();

    /* renamed from: y */
    public abstract int mo7439y();

    /* renamed from: z */
    public abstract long mo7438z();

    /* renamed from: d */
    public static rl3 m7460d(byte[] bArr, int i, int i2, boolean z) {
        ml3 ml3Var = new ml3(bArr, i, i2, z, null);
        try {
            ml3Var.mo7464A(i2);
            return ml3Var;
        } catch (bn3 e) {
            throw new IllegalArgumentException(e);
        }
    }
}
