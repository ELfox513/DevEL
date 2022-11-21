package p168r4;
/* renamed from: r4.ng3 */
/* loaded from: classes2.dex */
public final class ng3 extends pm3<ng3, mg3> implements bo3 {
    private static final ng3 zzg;
    private int zzb;
    private tg3 zze;
    private ll3 zzf = ll3.f27255b;

    /* renamed from: I */
    public static ng3 m9102I(ll3 ll3Var, bm3 bm3Var) {
        return (ng3) pm3.m8255r(zzg, ll3Var, bm3Var);
    }

    /* renamed from: J */
    public static mg3 m9101J() {
        return zzg.m8252v();
    }

    /* renamed from: K */
    public static ng3 m9100K() {
        return zzg;
    }

    /* renamed from: N */
    public static /* synthetic */ void m9097N(ng3 ng3Var, tg3 tg3Var) {
        tg3Var.getClass();
        ng3Var.zze = tg3Var;
    }

    /* renamed from: C */
    public final int m9105C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final tg3 m9104D() {
        tg3 tg3Var = this.zze;
        return tg3Var == null ? tg3.m6817E() : tg3Var;
    }

    /* renamed from: E */
    public final ll3 m9103E() {
        return this.zzf;
    }

    static {
        ng3 ng3Var = new ng3();
        zzg = ng3Var;
        pm3.m8248z(ng3.class, ng3Var);
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
                    return new mg3(null);
                }
                return new ng3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
