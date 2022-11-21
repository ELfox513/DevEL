package p168r4;
/* renamed from: r4.xh3 */
/* loaded from: classes2.dex */
public final class xh3 extends pm3<xh3, wh3> implements bo3 {
    private static final xh3 zzf;
    private int zzb;
    private ai3 zze;

    /* renamed from: E */
    public static xh3 m5310E(ll3 ll3Var, bm3 bm3Var) {
        return (xh3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static wh3 m5309I() {
        return zzf.m8252v();
    }

    /* renamed from: L */
    public static /* synthetic */ void m5306L(xh3 xh3Var, ai3 ai3Var) {
        ai3Var.getClass();
        xh3Var.zze = ai3Var;
    }

    /* renamed from: C */
    public final int m5312C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ai3 m5311D() {
        ai3 ai3Var = this.zze;
        return ai3Var == null ? ai3.m13012J() : ai3Var;
    }

    static {
        xh3 xh3Var = new xh3();
        zzf = xh3Var;
        pm3.m8248z(xh3.class, xh3Var);
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
                        return zzf;
                    }
                    return new wh3(null);
                }
                return new xh3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
