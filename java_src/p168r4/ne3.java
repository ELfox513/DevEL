package p168r4;
/* renamed from: r4.ne3 */
/* loaded from: classes2.dex */
public final class ne3 extends pm3<ne3, me3> implements bo3 {
    private static final ne3 zzf;
    private int zzb;
    private ll3 zze = ll3.f27255b;

    /* renamed from: E */
    public static ne3 m9115E(ll3 ll3Var, bm3 bm3Var) {
        return (ne3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static me3 m9114I() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m9117C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m9116D() {
        return this.zze;
    }

    static {
        ne3 ne3Var = new ne3();
        zzf = ne3Var;
        pm3.m8248z(ne3.class, ne3Var);
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
                    return new me3(null);
                }
                return new ne3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
