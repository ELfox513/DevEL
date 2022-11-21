package p168r4;
/* renamed from: r4.jy2 */
/* loaded from: classes2.dex */
public final class jy2 extends pm3<jy2, hy2> implements bo3 {
    private static final jy2 zzi;
    private int zzb;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private fy2 zzh;

    /* renamed from: C */
    public static hy2 m10150C() {
        return zzi.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m10148E(jy2 jy2Var, String str) {
        str.getClass();
        jy2Var.zzb |= 2;
        jy2Var.zzf = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m10147I(jy2 jy2Var, fy2 fy2Var) {
        fy2Var.getClass();
        jy2Var.zzh = fy2Var;
        jy2Var.zzb |= 8;
    }

    /* renamed from: J */
    public static /* synthetic */ void m10146J(jy2 jy2Var, int i) {
        jy2Var.zze = 1;
        jy2Var.zzb = 1 | jy2Var.zzb;
    }

    static {
        jy2 jy2Var = new jy2();
        zzi = jy2Var;
        pm3.m8248z(jy2.class, jy2Var);
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
                        return zzi;
                    }
                    return new hy2(null);
                }
                return new jy2();
            }
            return pm3.m8270A(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzb", "zze", iy2.f25640a, "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
