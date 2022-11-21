package p168r4;
/* renamed from: r4.zq3 */
/* loaded from: classes2.dex */
public final class zq3 extends pm3<zq3, yq3> implements bo3 {
    private static final zq3 zzh;
    private int zzb;
    private String zze = "";
    private long zzf;
    private boolean zzg;

    /* renamed from: C */
    public static yq3 m4096C() {
        return zzh.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m4094E(zq3 zq3Var, String str) {
        zq3Var.zzb |= 1;
        zq3Var.zze = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m4093I(zq3 zq3Var, long j) {
        zq3Var.zzb |= 2;
        zq3Var.zzf = j;
    }

    /* renamed from: J */
    public static /* synthetic */ void m4092J(zq3 zq3Var, boolean z) {
        zq3Var.zzb |= 4;
        zq3Var.zzg = z;
    }

    static {
        zq3 zq3Var = new zq3();
        zzh = zq3Var;
        pm3.m8248z(zq3.class, zq3Var);
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
                    return new yq3(null);
                }
                return new zq3();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
