package p168r4;
/* renamed from: r4.rh3 */
/* loaded from: classes2.dex */
public final class rh3 extends pm3<rh3, qh3> implements bo3 {
    private static final rh3 zzf;
    private int zzb;
    private uh3 zze;

    /* renamed from: E */
    public static rh3 m7494E(ll3 ll3Var, bm3 bm3Var) {
        return (rh3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static qh3 m7493I() {
        return zzf.m8252v();
    }

    /* renamed from: L */
    public static /* synthetic */ void m7490L(rh3 rh3Var, uh3 uh3Var) {
        uh3Var.getClass();
        rh3Var.zze = uh3Var;
    }

    /* renamed from: C */
    public final int m7496C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final uh3 m7495D() {
        uh3 uh3Var = this.zze;
        return uh3Var == null ? uh3.m6514E() : uh3Var;
    }

    static {
        rh3 rh3Var = new rh3();
        zzf = rh3Var;
        pm3.m8248z(rh3.class, rh3Var);
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
                    return new qh3(null);
                }
                return new rh3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
