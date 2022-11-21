package p168r4;
/* renamed from: r4.rd3 */
/* loaded from: classes2.dex */
public final class rd3 extends pm3<rd3, qd3> implements bo3 {
    private static final rd3 zzf;
    private xd3 zzb;
    private qg3 zze;

    /* renamed from: E */
    public static rd3 m7526E(ll3 ll3Var, bm3 bm3Var) {
        return (rd3) pm3.m8255r(zzf, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static qd3 m7525I() {
        return zzf.m8252v();
    }

    /* renamed from: K */
    public static /* synthetic */ void m7523K(rd3 rd3Var, xd3 xd3Var) {
        xd3Var.getClass();
        rd3Var.zzb = xd3Var;
    }

    /* renamed from: L */
    public static /* synthetic */ void m7522L(rd3 rd3Var, qg3 qg3Var) {
        qg3Var.getClass();
        rd3Var.zze = qg3Var;
    }

    /* renamed from: C */
    public final xd3 m7528C() {
        xd3 xd3Var = this.zzb;
        return xd3Var == null ? xd3.m5358J() : xd3Var;
    }

    /* renamed from: D */
    public final qg3 m7527D() {
        qg3 qg3Var = this.zze;
        return qg3Var == null ? qg3.m7860J() : qg3Var;
    }

    static {
        rd3 rd3Var = new rd3();
        zzf = rd3Var;
        pm3.m8248z(rd3.class, rd3Var);
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
                    return new qd3(null);
                }
                return new rd3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzb", "zze"});
        }
        return (byte) 1;
    }
}
