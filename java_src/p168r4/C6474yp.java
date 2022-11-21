package p168r4;
/* renamed from: r4.yp */
/* loaded from: classes2.dex */
public final class C6474yp extends pm3<C6474yp, C6437xp> implements bo3 {
    private static final C6474yp zzg;
    private int zzb;
    private boolean zze;
    private int zzf;

    /* renamed from: C */
    public static C6437xp m4621C() {
        return zzg.m8252v();
    }

    /* renamed from: D */
    public static C6474yp m4620D() {
        return zzg;
    }

    /* renamed from: I */
    public static /* synthetic */ void m4618I(C6474yp c6474yp, boolean z) {
        c6474yp.zzb |= 1;
        c6474yp.zze = z;
    }

    /* renamed from: J */
    public static /* synthetic */ void m4617J(C6474yp c6474yp, int i) {
        c6474yp.zzb |= 2;
        c6474yp.zzf = i;
    }

    static {
        C6474yp c6474yp = new C6474yp();
        zzg = c6474yp;
        pm3.m8248z(C6474yp.class, c6474yp);
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
                    return new C6437xp(null);
                }
                return new C6474yp();
            }
            return pm3.m8270A(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
