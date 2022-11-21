package p168r4;
/* renamed from: r4.ld3 */
/* loaded from: classes2.dex */
public final class ld3 extends pm3<ld3, kd3> implements bo3 {
    private static final ld3 zze;
    private int zzb;

    /* renamed from: D */
    public static kd3 m9676D() {
        return zze.m8252v();
    }

    /* renamed from: E */
    public static ld3 m9675E() {
        return zze;
    }

    /* renamed from: C */
    public final int m9677C() {
        return this.zzb;
    }

    static {
        ld3 ld3Var = new ld3();
        zze = ld3Var;
        pm3.m8248z(ld3.class, ld3Var);
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
                    return new kd3(null);
                }
                return new ld3();
            }
            return pm3.m8270A(zze, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
