package p168r4;
/* renamed from: r4.fd3 */
/* loaded from: classes2.dex */
public final class fd3 extends pm3<fd3, ed3> implements bo3 {
    private static final fd3 zzg;
    private int zzb;
    private ll3 zze = ll3.f27255b;
    private ld3 zzf;

    /* renamed from: I */
    public static fd3 m11570I(ll3 ll3Var, bm3 bm3Var) {
        return (fd3) pm3.m8255r(zzg, ll3Var, bm3Var);
    }

    /* renamed from: J */
    public static ed3 m11569J() {
        return zzg.m8252v();
    }

    /* renamed from: N */
    public static /* synthetic */ void m11565N(fd3 fd3Var, ld3 ld3Var) {
        ld3Var.getClass();
        fd3Var.zzf = ld3Var;
    }

    /* renamed from: C */
    public final int m11573C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m11572D() {
        return this.zze;
    }

    /* renamed from: E */
    public final ld3 m11571E() {
        ld3 ld3Var = this.zzf;
        return ld3Var == null ? ld3.m9675E() : ld3Var;
    }

    static {
        fd3 fd3Var = new fd3();
        zzg = fd3Var;
        pm3.m8248z(fd3.class, fd3Var);
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
                    return new ed3(null);
                }
                return new fd3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
