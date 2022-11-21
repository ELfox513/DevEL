package p168r4;
/* renamed from: r4.rf3 */
/* loaded from: classes2.dex */
public final class rf3 extends pm3<rf3, qf3> implements bo3 {
    private static final rf3 zze;
    private uf3 zzb;

    /* renamed from: D */
    public static rf3 m7518D(ll3 ll3Var, bm3 bm3Var) {
        return (rf3) pm3.m8255r(zze, ll3Var, bm3Var);
    }

    /* renamed from: E */
    public static qf3 m7517E() {
        return zze.m8252v();
    }

    /* renamed from: J */
    public static /* synthetic */ void m7515J(rf3 rf3Var, uf3 uf3Var) {
        uf3Var.getClass();
        rf3Var.zzb = uf3Var;
    }

    /* renamed from: C */
    public final uf3 m7519C() {
        uf3 uf3Var = this.zzb;
        return uf3Var == null ? uf3.m6528I() : uf3Var;
    }

    static {
        rf3 rf3Var = new rf3();
        zze = rf3Var;
        pm3.m8248z(rf3.class, rf3Var);
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
                        return zze;
                    }
                    return new qf3(null);
                }
                return new rf3();
            }
            return pm3.m8270A(zze, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
