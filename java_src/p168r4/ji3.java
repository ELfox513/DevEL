package p168r4;
/* renamed from: r4.ji3 */
/* loaded from: classes2.dex */
public final class ji3 extends pm3<ji3, ii3> implements bo3 {
    private static final ji3 zzf;
    private int zzb;
    private ll3 zze = ll3.f27255b;

    /* renamed from: E */
    public static ji3 m10277E(ll3 ll3Var, bm3 bm3Var) {
        return (ji3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static ii3 m10276I() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m10279C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m10278D() {
        return this.zze;
    }

    static {
        ji3 ji3Var = new ji3();
        zzf = ji3Var;
        pm3.m8248z(ji3.class, ji3Var);
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
                    return new ii3(null);
                }
                return new ji3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
