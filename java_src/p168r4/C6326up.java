package p168r4;
/* renamed from: r4.up */
/* loaded from: classes2.dex */
public final class C6326up extends pm3<C6326up, C6289tp> implements bo3 {
    private static final C6326up zzh;
    private int zzb;
    private int zze;
    private C6474yp zzf;
    private C5587aq zzg;

    /* renamed from: C */
    public static C6289tp m6405C() {
        return zzh.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m6403E(C6326up c6326up, C6474yp c6474yp) {
        c6474yp.getClass();
        c6326up.zzf = c6474yp;
        c6326up.zzb |= 2;
    }

    /* renamed from: I */
    public static /* synthetic */ void m6402I(C6326up c6326up, C5587aq c5587aq) {
        c5587aq.getClass();
        c6326up.zzg = c5587aq;
        c6326up.zzb |= 4;
    }

    /* renamed from: J */
    public static /* synthetic */ void m6401J(C6326up c6326up, int i) {
        c6326up.zze = 1;
        c6326up.zzb = 1 | c6326up.zzb;
    }

    static {
        C6326up c6326up = new C6326up();
        zzh = c6326up;
        pm3.m8248z(C6326up.class, c6326up);
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
                    return new C6289tp(null);
                }
                return new C6326up();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", C6400wp.f33271a, "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
