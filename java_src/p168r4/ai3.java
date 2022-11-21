package p168r4;
/* renamed from: r4.ai3 */
/* loaded from: classes2.dex */
public final class ai3 extends pm3<ai3, zh3> implements bo3 {
    private static final ai3 zzf;
    private String zzb = "";
    private zg3 zze;

    /* renamed from: I */
    public static ai3 m13013I(ll3 ll3Var, bm3 bm3Var) {
        return (ai3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: J */
    public static ai3 m13012J() {
        return zzf;
    }

    /* renamed from: C */
    public final String m13016C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final boolean m13015D() {
        return this.zze != null;
    }

    /* renamed from: E */
    public final zg3 m13014E() {
        zg3 zg3Var = this.zze;
        return zg3Var == null ? zg3.m4253I() : zg3Var;
    }

    static {
        ai3 ai3Var = new ai3();
        zzf = ai3Var;
        pm3.m8248z(ai3.class, ai3Var);
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
                    return new zh3(null);
                }
                return new ai3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
