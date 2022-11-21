package p168r4;
/* renamed from: r4.xd3 */
/* loaded from: classes2.dex */
public final class xd3 extends pm3<xd3, wd3> implements bo3 {
    private static final xd3 zzf;
    private be3 zzb;
    private int zze;

    /* renamed from: E */
    public static xd3 m5360E(ll3 ll3Var, bm3 bm3Var) {
        return (xd3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static wd3 m5359I() {
        return zzf.m8252v();
    }

    /* renamed from: J */
    public static xd3 m5358J() {
        return zzf;
    }

    /* renamed from: L */
    public static /* synthetic */ void m5356L(xd3 xd3Var, be3 be3Var) {
        be3Var.getClass();
        xd3Var.zzb = be3Var;
    }

    /* renamed from: C */
    public final be3 m5362C() {
        be3 be3Var = this.zzb;
        return be3Var == null ? be3.m12788E() : be3Var;
    }

    /* renamed from: D */
    public final int m5361D() {
        return this.zze;
    }

    static {
        xd3 xd3Var = new xd3();
        zzf = xd3Var;
        pm3.m8248z(xd3.class, xd3Var);
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
                    return new wd3(null);
                }
                return new xd3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
