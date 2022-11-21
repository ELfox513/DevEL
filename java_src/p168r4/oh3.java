package p168r4;
/* renamed from: r4.oh3 */
/* loaded from: classes2.dex */
public final class oh3 extends pm3<oh3, lh3> implements bo3 {
    private static final oh3 zzf;
    private int zzb;
    private ym3<nh3> zze = pm3.m8259m();

    /* renamed from: C */
    public static lh3 m8798C() {
        return zzf.m8252v();
    }

    static {
        oh3 oh3Var = new oh3();
        zzf = oh3Var;
        pm3.m8248z(oh3.class, oh3Var);
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
                        return zzf;
                    }
                    return new lh3(null);
                }
                return new oh3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzb", "zze", nh3.class});
        }
        return (byte) 1;
    }

    /* renamed from: I */
    public static /* synthetic */ void m8795I(oh3 oh3Var, nh3 nh3Var) {
        nh3Var.getClass();
        ym3<nh3> ym3Var = oh3Var.zze;
        if (!ym3Var.zza()) {
            oh3Var.zze = pm3.m8258n(ym3Var);
        }
        oh3Var.zze.add(nh3Var);
    }
}
