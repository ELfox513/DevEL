package p168r4;
/* renamed from: r4.gg3 */
/* loaded from: classes2.dex */
public final class gg3 extends pm3<gg3, fg3> implements bo3 {
    private static final gg3 zzg;
    private int zzb;
    private int zze;
    private ll3 zzf = ll3.f27255b;

    /* renamed from: D */
    public static fg3 m11164D() {
        return zzg.m8252v();
    }

    /* renamed from: E */
    public static gg3 m11163E() {
        return zzg;
    }

    /* renamed from: C */
    public final ll3 m11165C() {
        return this.zzf;
    }

    /* renamed from: K */
    public final int m11160K() {
        int i = this.zzb;
        int i2 = 5;
        if (i == 0) {
            i2 = 2;
        } else if (i == 2) {
            i2 = 4;
        } else if (i != 3) {
            i2 = i != 4 ? i != 5 ? 0 : 7 : 6;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    /* renamed from: L */
    public final int m11159L() {
        int m10037b = kg3.m10037b(this.zze);
        if (m10037b == 0) {
            return 1;
        }
        return m10037b;
    }

    static {
        gg3 gg3Var = new gg3();
        zzg = gg3Var;
        pm3.m8248z(gg3.class, gg3Var);
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
                        return zzg;
                    }
                    return new fg3(null);
                }
                return new gg3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
