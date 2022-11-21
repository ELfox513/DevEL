package p168r4;
/* renamed from: r4.df3 */
/* loaded from: classes2.dex */
public final class df3 extends pm3<df3, cf3> implements bo3 {
    private static final df3 zzf;
    private int zzb;
    private int zze;

    /* renamed from: D */
    public static df3 m12143D(ll3 ll3Var, bm3 bm3Var) {
        return (df3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: E */
    public static cf3 m12142E() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m12144C() {
        return this.zzb;
    }

    static {
        df3 df3Var = new df3();
        zzf = df3Var;
        pm3.m8248z(df3.class, df3Var);
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
                    return new cf3(null);
                }
                return new df3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
