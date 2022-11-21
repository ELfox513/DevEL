package p168r4;
/* renamed from: r4.xf3 */
/* loaded from: classes2.dex */
public final class xf3 extends pm3<xf3, wf3> implements bo3 {
    private static final xf3 zzg;
    private int zzb;
    private ag3 zze;
    private ll3 zzf = ll3.f27255b;

    /* renamed from: I */
    public static xf3 m5326I(ll3 ll3Var, bm3 bm3Var) {
        return (xf3) pm3.m8255r(zzg, ll3Var, bm3Var);
    }

    /* renamed from: J */
    public static wf3 m5325J() {
        return zzg.m8252v();
    }

    /* renamed from: M */
    public static /* synthetic */ void m5322M(xf3 xf3Var, ag3 ag3Var) {
        ag3Var.getClass();
        xf3Var.zze = ag3Var;
    }

    /* renamed from: C */
    public final int m5329C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ag3 m5328D() {
        ag3 ag3Var = this.zze;
        return ag3Var == null ? ag3.m13024L() : ag3Var;
    }

    /* renamed from: E */
    public final ll3 m5327E() {
        return this.zzf;
    }

    static {
        xf3 xf3Var = new xf3();
        zzg = xf3Var;
        pm3.m8248z(xf3.class, xf3Var);
    }

    @Override // p168r4.pm3
    /* renamed from: B */
    public final Object mo4087B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzg;
                    }
                    return new wf3(null);
                }
                return new xf3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
