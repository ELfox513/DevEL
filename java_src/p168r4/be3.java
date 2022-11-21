package p168r4;
/* renamed from: r4.be3 */
/* loaded from: classes2.dex */
public final class be3 extends pm3<be3, zd3> implements bo3 {
    private static final be3 zze;
    private int zzb;

    /* renamed from: D */
    public static zd3 m12789D() {
        return zze.m8252v();
    }

    /* renamed from: E */
    public static be3 m12788E() {
        return zze;
    }

    /* renamed from: C */
    public final int m12790C() {
        return this.zzb;
    }

    static {
        be3 be3Var = new be3();
        zze = be3Var;
        pm3.m8248z(be3.class, be3Var);
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
                    return new zd3(null);
                }
                return new be3();
            }
            return pm3.m8270A(zze, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
