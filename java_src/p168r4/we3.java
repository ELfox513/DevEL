package p168r4;
/* renamed from: r4.we3 */
/* loaded from: classes2.dex */
public final class we3 extends pm3<we3, ve3> implements bo3 {
    private static final we3 zzf;
    private int zzb;
    private int zze;

    /* renamed from: D */
    public static we3 m5744D(ll3 ll3Var, bm3 bm3Var) {
        return (we3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: E */
    public static ve3 m5743E() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m5745C() {
        return this.zzb;
    }

    static {
        we3 we3Var = new we3();
        zzf = we3Var;
        pm3.m8248z(we3.class, we3Var);
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
                    return new ve3(null);
                }
                return new we3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzb"});
        }
        return (byte) 1;
    }
}
