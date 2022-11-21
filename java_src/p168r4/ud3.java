package p168r4;
/* renamed from: r4.ud3 */
/* loaded from: classes2.dex */
public final class ud3 extends pm3<ud3, td3> implements bo3 {
    private static final ud3 zzg;
    private int zzb;
    private be3 zze;
    private ll3 zzf = ll3.f27255b;

    /* renamed from: I */
    public static ud3 m6542I(ll3 ll3Var, bm3 bm3Var) {
        return (ud3) pm3.m8255r(zzg, ll3Var, bm3Var);
    }

    /* renamed from: J */
    public static td3 m6541J() {
        return zzg.m8252v();
    }

    /* renamed from: K */
    public static ud3 m6540K() {
        return zzg;
    }

    /* renamed from: N */
    public static /* synthetic */ void m6537N(ud3 ud3Var, be3 be3Var) {
        be3Var.getClass();
        ud3Var.zze = be3Var;
    }

    /* renamed from: C */
    public final int m6545C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final be3 m6544D() {
        be3 be3Var = this.zze;
        return be3Var == null ? be3.m12788E() : be3Var;
    }

    /* renamed from: E */
    public final ll3 m6543E() {
        return this.zzf;
    }

    static {
        ud3 ud3Var = new ud3();
        zzg = ud3Var;
        pm3.m8248z(ud3.class, ud3Var);
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
                    return new td3(null);
                }
                return new ud3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
