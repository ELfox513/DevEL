package p168r4;
/* renamed from: r4.qe3 */
/* loaded from: classes2.dex */
public final class qe3 extends pm3<qe3, pe3> implements bo3 {
    private static final qe3 zzf;
    private int zzb;
    private int zze;

    /* renamed from: D */
    public static qe3 m7871D(ll3 ll3Var, bm3 bm3Var) {
        return (qe3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: E */
    public static pe3 m7870E() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m7872C() {
        return this.zzb;
    }

    static {
        qe3 qe3Var = new qe3();
        zzf = qe3Var;
        pm3.m8248z(qe3.class, qe3Var);
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
                    return new pe3(null);
                }
                return new qe3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
