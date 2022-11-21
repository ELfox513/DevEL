package p168r4;
/* renamed from: r4.dq3 */
/* loaded from: classes2.dex */
public final class dq3 extends pm3<dq3, cq3> implements bo3 {
    private static final dq3 zzf;
    private int zzb;
    private String zze = "";

    /* renamed from: C */
    public static cq3 m11988C() {
        return zzf.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m11986E(dq3 dq3Var, String str) {
        dq3Var.zzb |= 1;
        dq3Var.zze = str;
    }

    static {
        dq3 dq3Var = new dq3();
        zzf = dq3Var;
        pm3.m8248z(dq3.class, dq3Var);
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
                    return new cq3(null);
                }
                return new dq3();
            }
            return pm3.m8270A(zzf, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
