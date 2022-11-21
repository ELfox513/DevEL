package p168r4;
/* renamed from: r4.xr */
/* loaded from: classes2.dex */
public final class C6439xr extends pm3<C6439xr, C6291tr> implements bo3 {
    private static final C6439xr zzl;
    private int zzb;
    private int zzf;
    private int zzg;
    private long zzh;
    private long zzk;
    private ym3<C6254sr> zze = pm3.m8259m();
    private String zzi = "";
    private String zzj = "";

    /* renamed from: C */
    public static C6291tr m5152C() {
        return zzl.m8252v();
    }

    /* renamed from: I */
    public static /* synthetic */ void m5149I(C6439xr c6439xr, int i) {
        c6439xr.zzb |= 1;
        c6439xr.zzf = i;
    }

    /* renamed from: J */
    public static /* synthetic */ void m5148J(C6439xr c6439xr, int i) {
        c6439xr.zzb |= 2;
        c6439xr.zzg = i;
    }

    /* renamed from: K */
    public static /* synthetic */ void m5147K(C6439xr c6439xr, long j) {
        c6439xr.zzb |= 4;
        c6439xr.zzh = j;
    }

    /* renamed from: L */
    public static /* synthetic */ void m5146L(C6439xr c6439xr, String str) {
        str.getClass();
        c6439xr.zzb |= 8;
        c6439xr.zzi = str;
    }

    /* renamed from: M */
    public static /* synthetic */ void m5145M(C6439xr c6439xr, String str) {
        str.getClass();
        c6439xr.zzb |= 16;
        c6439xr.zzj = str;
    }

    /* renamed from: N */
    public static /* synthetic */ void m5144N(C6439xr c6439xr, long j) {
        c6439xr.zzb |= 32;
        c6439xr.zzk = j;
    }

    static {
        C6439xr c6439xr = new C6439xr();
        zzl = c6439xr;
        pm3.m8248z(C6439xr.class, c6439xr);
    }

    /* renamed from: E */
    public static /* synthetic */ void m5150E(C6439xr c6439xr, Iterable iterable) {
        ym3<C6254sr> ym3Var = c6439xr.zze;
        if (!ym3Var.zza()) {
            c6439xr.zze = pm3.m8258n(ym3Var);
        }
        uk3.m6491g(iterable, c6439xr.zze);
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
                        return zzl;
                    }
                    return new C6291tr(null);
                }
                return new C6439xr();
            }
            return pm3.m8270A(zzl, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zzb", "zze", C6254sr.class, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
