package p168r4;
/* renamed from: r4.tg3 */
/* loaded from: classes2.dex */
public final class tg3 extends pm3<tg3, sg3> implements bo3 {
    private static final tg3 zzf;
    private int zzb;
    private int zze;

    /* renamed from: D */
    public static sg3 m6818D() {
        return zzf.m8252v();
    }

    /* renamed from: E */
    public static tg3 m6817E() {
        return zzf;
    }

    /* renamed from: C */
    public final int m6819C() {
        return this.zze;
    }

    /* renamed from: K */
    public final int m6814K() {
        int m10037b = kg3.m10037b(this.zzb);
        if (m10037b == 0) {
            return 1;
        }
        return m10037b;
    }

    static {
        tg3 tg3Var = new tg3();
        zzf = tg3Var;
        pm3.m8248z(tg3.class, tg3Var);
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
                    return new sg3(null);
                }
                return new tg3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
