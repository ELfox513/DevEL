package p168r4;
/* renamed from: r4.mi3 */
/* loaded from: classes2.dex */
public final class mi3 extends pm3<mi3, li3> implements bo3 {
    private static final mi3 zze;
    private int zzb;

    /* renamed from: C */
    public static mi3 m9381C(ll3 ll3Var, bm3 bm3Var) {
        return (mi3) pm3.m8255r(zze, ll3Var, bm3Var);
    }

    /* renamed from: D */
    public static mi3 m9380D() {
        return zze;
    }

    static {
        mi3 mi3Var = new mi3();
        zze = mi3Var;
        pm3.m8248z(mi3.class, mi3Var);
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
                    return new li3(null);
                }
                return new mi3();
            }
            return pm3.m8270A(zze, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
