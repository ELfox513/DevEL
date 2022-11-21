package p168r4;
/* renamed from: r4.bq */
/* loaded from: classes2.dex */
public final class C5624bq extends pm3<C5624bq, C6363vp> implements bo3 {
    private static final C5624bq zze;
    private ym3<C6326up> zzb = pm3.m8259m();

    /* renamed from: C */
    public static C6363vp m12730C() {
        return zze.m8252v();
    }

    static {
        C5624bq c5624bq = new C5624bq();
        zze = c5624bq;
        pm3.m8248z(C5624bq.class, c5624bq);
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
                        return zze;
                    }
                    return new C6363vp(null);
                }
                return new C5624bq();
            }
            return pm3.m8270A(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", C6326up.class});
        }
        return (byte) 1;
    }

    /* renamed from: E */
    public static /* synthetic */ void m12728E(C5624bq c5624bq, C6326up c6326up) {
        c6326up.getClass();
        ym3<C6326up> ym3Var = c5624bq.zzb;
        if (!ym3Var.zza()) {
            c5624bq.zzb = pm3.m8258n(ym3Var);
        }
        c5624bq.zzb.add(c6326up);
    }
}
