package p168r4;
/* renamed from: r4.qq3 */
/* loaded from: classes2.dex */
public final class qq3 extends pm3<qq3, oq3> implements bo3 {
    private static final qq3 zzh;
    private int zzb;
    private int zze;
    private String zzf = "";
    private ll3 zzg = ll3.f27255b;

    /* renamed from: C */
    public static oq3 m7697C() {
        return zzh.m8252v();
    }

    /* renamed from: D */
    public static /* synthetic */ qq3 m7696D() {
        return zzh;
    }

    /* renamed from: E */
    public static /* synthetic */ void m7695E(qq3 qq3Var, String str) {
        qq3Var.zzb |= 2;
        qq3Var.zzf = "image/png";
    }

    /* renamed from: I */
    public static /* synthetic */ void m7694I(qq3 qq3Var, ll3 ll3Var) {
        ll3Var.getClass();
        qq3Var.zzb |= 4;
        qq3Var.zzg = ll3Var;
    }

    /* renamed from: J */
    public static /* synthetic */ void m7693J(qq3 qq3Var, int i) {
        qq3Var.zze = 1;
        qq3Var.zzb = 1 | qq3Var.zzb;
    }

    static {
        qq3 qq3Var = new qq3();
        zzh = qq3Var;
        pm3.m8248z(qq3.class, qq3Var);
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
                        return zzh;
                    }
                    return new oq3(null);
                }
                return new qq3();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", pq3.f29562a, "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
