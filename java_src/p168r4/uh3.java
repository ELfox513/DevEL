package p168r4;
/* renamed from: r4.uh3 */
/* loaded from: classes2.dex */
public final class uh3 extends pm3<uh3, th3> implements bo3 {
    private static final uh3 zze;
    private String zzb = "";

    /* renamed from: D */
    public static uh3 m6515D(ll3 ll3Var, bm3 bm3Var) {
        return (uh3) pm3.m8255r(zze, ll3Var, bm3Var);
    }

    /* renamed from: E */
    public static uh3 m6514E() {
        return zze;
    }

    /* renamed from: C */
    public final String m6516C() {
        return this.zzb;
    }

    static {
        uh3 uh3Var = new uh3();
        zze = uh3Var;
        pm3.m8248z(uh3.class, uh3Var);
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
                    return new th3(null);
                }
                return new uh3();
            }
            return pm3.m8270A(zze, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
