package p168r4;
/* renamed from: r4.fy2 */
/* loaded from: classes2.dex */
public final class fy2 extends pm3<fy2, ey2> implements bo3 {
    private static final vm3<Integer, Object> zzf = new cy2();
    private static final fy2 zzj;
    private int zzb;
    private um3 zze = pm3.m8262j();
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    /* renamed from: C */
    public static ey2 m11330C() {
        return zzj.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m11328E(fy2 fy2Var, String str) {
        str.getClass();
        fy2Var.zzb |= 1;
        fy2Var.zzg = str;
    }

    static {
        fy2 fy2Var = new fy2();
        zzj = fy2Var;
        pm3.m8248z(fy2.class, fy2Var);
    }

    /* renamed from: I */
    public static /* synthetic */ void m11327I(fy2 fy2Var, int i) {
        um3 um3Var = fy2Var.zze;
        if (!um3Var.zza()) {
            fy2Var.zze = pm3.m8261k(um3Var);
        }
        fy2Var.zze.mo6483Y(2);
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
                        return zzj;
                    }
                    return new ey2(null);
                }
                return new fy2();
            }
            return pm3.m8270A(zzj, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzb", "zze", dy2.f22687a, "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
