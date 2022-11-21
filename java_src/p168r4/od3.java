package p168r4;
/* renamed from: r4.od3 */
/* loaded from: classes2.dex */
public final class od3 extends pm3<od3, nd3> implements bo3 {
    private static final od3 zzg;
    private int zzb;
    private ud3 zze;
    private ng3 zzf;

    /* renamed from: I */
    public static od3 m8824I(ll3 ll3Var, bm3 bm3Var) {
        return (od3) pm3.m8255r(zzg, ll3Var, bm3Var);
    }

    /* renamed from: J */
    public static nd3 m8823J() {
        return zzg.m8252v();
    }

    /* renamed from: M */
    public static /* synthetic */ void m8820M(od3 od3Var, ud3 ud3Var) {
        ud3Var.getClass();
        od3Var.zze = ud3Var;
    }

    /* renamed from: N */
    public static /* synthetic */ void m8819N(od3 od3Var, ng3 ng3Var) {
        ng3Var.getClass();
        od3Var.zzf = ng3Var;
    }

    /* renamed from: C */
    public final int m8827C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ud3 m8826D() {
        ud3 ud3Var = this.zze;
        return ud3Var == null ? ud3.m6540K() : ud3Var;
    }

    /* renamed from: E */
    public final ng3 m8825E() {
        ng3 ng3Var = this.zzf;
        return ng3Var == null ? ng3.m9100K() : ng3Var;
    }

    static {
        od3 od3Var = new od3();
        zzg = od3Var;
        pm3.m8248z(od3.class, od3Var);
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
                    return new nd3(null);
                }
                return new od3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
