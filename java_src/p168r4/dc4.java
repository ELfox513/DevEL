package p168r4;
/* renamed from: r4.dc4 */
/* loaded from: classes2.dex */
public final class dc4 extends pm3<dc4, cc4> implements bo3 {
    private static final dc4 zzi;
    private int zzb;
    private ym3<ll3> zze = pm3.m8259m();
    private ll3 zzf = ll3.f27255b;
    private int zzg = 1;
    private int zzh = 1;

    /* renamed from: C */
    public static cc4 m12168C() {
        return zzi.m8252v();
    }

    /* renamed from: D */
    public static /* synthetic */ dc4 m12167D() {
        return zzi;
    }

    /* renamed from: I */
    public static /* synthetic */ void m12165I(dc4 dc4Var, ll3 ll3Var) {
        dc4Var.zzb |= 1;
        dc4Var.zzf = ll3Var;
    }

    /* renamed from: J */
    public static /* synthetic */ void m12164J(dc4 dc4Var, int i) {
        dc4Var.zzh = i - 1;
        dc4Var.zzb |= 4;
    }

    static {
        dc4 dc4Var = new dc4();
        zzi = dc4Var;
        pm3.m8248z(dc4.class, dc4Var);
    }

    /* renamed from: E */
    public static /* synthetic */ void m12166E(dc4 dc4Var, ll3 ll3Var) {
        ym3<ll3> ym3Var = dc4Var.zze;
        if (!ym3Var.zza()) {
            dc4Var.zze = pm3.m8258n(ym3Var);
        }
        dc4Var.zze.add(ll3Var);
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
                    return new cc4(null);
                }
                return new dc4();
            }
            return pm3.m8270A(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg", xb4.f33550a, "zzh", vb4.f32682a});
        }
        return (byte) 1;
    }
}
