package p168r4;
/* renamed from: r4.aq */
/* loaded from: classes2.dex */
public final class C5587aq extends pm3<C5587aq, C6511zp> implements bo3 {
    private static final C5587aq zzh;
    private int zzb;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    /* renamed from: C */
    public static C6511zp m12977C() {
        return zzh.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m12975E(C5587aq c5587aq, boolean z) {
        c5587aq.zzb |= 1;
        c5587aq.zze = z;
    }

    /* renamed from: I */
    public static /* synthetic */ void m12974I(C5587aq c5587aq, boolean z) {
        c5587aq.zzb |= 2;
        c5587aq.zzf = z;
    }

    /* renamed from: J */
    public static /* synthetic */ void m12973J(C5587aq c5587aq, int i) {
        c5587aq.zzb |= 4;
        c5587aq.zzg = i;
    }

    static {
        C5587aq c5587aq = new C5587aq();
        zzh = c5587aq;
        pm3.m8248z(C5587aq.class, c5587aq);
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
                    return new C6511zp(null);
                }
                return new C5587aq();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
