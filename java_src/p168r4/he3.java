package p168r4;
/* renamed from: r4.he3 */
/* loaded from: classes2.dex */
public final class he3 extends pm3<he3, ge3> implements bo3 {
    private static final he3 zzf;
    private ke3 zzb;
    private int zze;

    /* renamed from: E */
    public static he3 m10940E(ll3 ll3Var, bm3 bm3Var) {
        return (he3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static ge3 m10939I() {
        return zzf.m8252v();
    }

    /* renamed from: K */
    public static /* synthetic */ void m10937K(he3 he3Var, ke3 ke3Var) {
        ke3Var.getClass();
        he3Var.zzb = ke3Var;
    }

    /* renamed from: C */
    public final ke3 m10942C() {
        ke3 ke3Var = this.zzb;
        return ke3Var == null ? ke3.m10049E() : ke3Var;
    }

    /* renamed from: D */
    public final int m10941D() {
        return this.zze;
    }

    static {
        he3 he3Var = new he3();
        zzf = he3Var;
        pm3.m8248z(he3.class, he3Var);
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
                    return new ge3(null);
                }
                return new he3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
