package p168r4;
/* renamed from: r4.zg3 */
/* loaded from: classes2.dex */
public final class zg3 extends pm3<zg3, yg3> implements bo3 {
    private static final zg3 zzg;
    private String zzb = "";
    private ll3 zze = ll3.f27255b;
    private int zzf;

    /* renamed from: E */
    public static yg3 m4254E() {
        return zzg.m8252v();
    }

    /* renamed from: I */
    public static zg3 m4253I() {
        return zzg;
    }

    /* renamed from: J */
    public static /* synthetic */ zg3 m4252J() {
        return zzg;
    }

    /* renamed from: K */
    public static /* synthetic */ void m4251K(zg3 zg3Var, String str) {
        str.getClass();
        zg3Var.zzb = str;
    }

    /* renamed from: L */
    public static /* synthetic */ void m4250L(zg3 zg3Var, ll3 ll3Var) {
        zg3Var.zze = ll3Var;
    }

    /* renamed from: N */
    public static /* synthetic */ void m4248N(zg3 zg3Var, int i) {
        zg3Var.zzf = ci3.m12459a(i);
    }

    /* renamed from: C */
    public final String m4256C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m4255D() {
        return this.zze;
    }

    /* renamed from: M */
    public final int m4249M() {
        int m12458b = ci3.m12458b(this.zzf);
        if (m12458b == 0) {
            return 1;
        }
        return m12458b;
    }

    static {
        zg3 zg3Var = new zg3();
        zzg = zg3Var;
        pm3.m8248z(zg3.class, zg3Var);
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
                    return new yg3(null);
                }
                return new zg3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
