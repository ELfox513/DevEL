package p168r4;
/* renamed from: r4.te3 */
/* loaded from: classes2.dex */
public final class te3 extends pm3<te3, se3> implements bo3 {
    private static final te3 zzf;
    private int zzb;
    private ll3 zze = ll3.f27255b;

    /* renamed from: E */
    public static te3 m6836E(ll3 ll3Var, bm3 bm3Var) {
        return (te3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static se3 m6835I() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m6838C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m6837D() {
        return this.zze;
    }

    static {
        te3 te3Var = new te3();
        zzf = te3Var;
        pm3.m8248z(te3.class, te3Var);
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
                    return new se3(null);
                }
                return new te3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
