package p168r4;
/* renamed from: r4.ze3 */
/* loaded from: classes2.dex */
public final class ze3 extends pm3<ze3, ye3> implements bo3 {
    private static final ze3 zzf;
    private int zzb;
    private ll3 zze = ll3.f27255b;

    /* renamed from: E */
    public static ze3 m4275E(ll3 ll3Var, bm3 bm3Var) {
        return (ze3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static ye3 m4274I() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m4277C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m4276D() {
        return this.zze;
    }

    static {
        ze3 ze3Var = new ze3();
        zzf = ze3Var;
        pm3.m8248z(ze3.class, ze3Var);
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
                    return new ye3(null);
                }
                return new ze3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
