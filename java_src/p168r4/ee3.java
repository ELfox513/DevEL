package p168r4;
/* renamed from: r4.ee3 */
/* loaded from: classes2.dex */
public final class ee3 extends pm3<ee3, de3> implements bo3 {
    private static final ee3 zzg;
    private int zzb;
    private ke3 zze;
    private ll3 zzf = ll3.f27255b;

    /* renamed from: I */
    public static ee3 m11805I(ll3 ll3Var, bm3 bm3Var) {
        return (ee3) pm3.m8255r(zzg, ll3Var, bm3Var);
    }

    /* renamed from: J */
    public static de3 m11804J() {
        return zzg.m8252v();
    }

    /* renamed from: M */
    public static /* synthetic */ void m11801M(ee3 ee3Var, ke3 ke3Var) {
        ke3Var.getClass();
        ee3Var.zze = ke3Var;
    }

    /* renamed from: C */
    public final int m11808C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ke3 m11807D() {
        ke3 ke3Var = this.zze;
        return ke3Var == null ? ke3.m10049E() : ke3Var;
    }

    /* renamed from: E */
    public final ll3 m11806E() {
        return this.zzf;
    }

    static {
        ee3 ee3Var = new ee3();
        zzg = ee3Var;
        pm3.m8248z(ee3.class, ee3Var);
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
                    return new de3(null);
                }
                return new ee3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
