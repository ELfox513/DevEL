package p168r4;
/* renamed from: r4.gf3 */
/* loaded from: classes2.dex */
public final class gf3 extends pm3<gf3, ff3> implements bo3 {
    private static final gf3 zzf;
    private int zzb;
    private ll3 zze = ll3.f27255b;

    /* renamed from: E */
    public static gf3 m11179E(ll3 ll3Var, bm3 bm3Var) {
        return (gf3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static ff3 m11178I() {
        return zzf.m8252v();
    }

    /* renamed from: C */
    public final int m11181C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m11180D() {
        return this.zze;
    }

    static {
        gf3 gf3Var = new gf3();
        zzf = gf3Var;
        pm3.m8248z(gf3.class, gf3Var);
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
                    return new ff3(null);
                }
                return new gf3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
