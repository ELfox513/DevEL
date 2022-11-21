package p168r4;
/* renamed from: r4.js */
/* loaded from: classes2.dex */
public final class C5921js extends pm3<C5921js, C5885is> implements bo3 {
    private static final C5921js zzh;
    private int zzb;
    private int zze;
    private int zzf;
    private int zzg;

    /* renamed from: C */
    public static C5885is m10203C() {
        return zzh.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m10201E(C5921js c5921js, int i) {
        c5921js.zzb |= 1;
        c5921js.zze = i;
    }

    /* renamed from: I */
    public static /* synthetic */ void m10200I(C5921js c5921js, int i) {
        c5921js.zzb |= 2;
        c5921js.zzf = i;
    }

    /* renamed from: J */
    public static /* synthetic */ void m10199J(C5921js c5921js, int i) {
        c5921js.zzb |= 4;
        c5921js.zzg = i;
    }

    static {
        C5921js c5921js = new C5921js();
        zzh = c5921js;
        pm3.m8248z(C5921js.class, c5921js);
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
                    return new C5885is(null);
                }
                return new C5921js();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
