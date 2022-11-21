package p168r4;
/* renamed from: r4.id3 */
/* loaded from: classes2.dex */
public final class id3 extends pm3<id3, hd3> implements bo3 {
    private static final id3 zzf;
    private int zzb;
    private ld3 zze;

    /* renamed from: E */
    public static id3 m10673E(ll3 ll3Var, bm3 bm3Var) {
        return (id3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static hd3 m10672I() {
        return zzf.m8252v();
    }

    /* renamed from: L */
    public static /* synthetic */ void m10669L(id3 id3Var, ld3 ld3Var) {
        ld3Var.getClass();
        id3Var.zze = ld3Var;
    }

    /* renamed from: C */
    public final int m10675C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ld3 m10674D() {
        ld3 ld3Var = this.zze;
        return ld3Var == null ? ld3.m9675E() : ld3Var;
    }

    static {
        id3 id3Var = new id3();
        zzf = id3Var;
        pm3.m8248z(id3.class, id3Var);
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
                    return new hd3(null);
                }
                return new id3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
