package p168r4;
/* renamed from: r4.qg3 */
/* loaded from: classes2.dex */
public final class qg3 extends pm3<qg3, pg3> implements bo3 {
    private static final qg3 zzg;
    private tg3 zzb;
    private int zze;
    private int zzf;

    /* renamed from: E */
    public static qg3 m7862E(ll3 ll3Var, bm3 bm3Var) {
        return (qg3) pm3.m8255r(zzg, ll3Var, bm3Var);
    }

    /* renamed from: I */
    public static pg3 m7861I() {
        return zzg.m8252v();
    }

    /* renamed from: J */
    public static qg3 m7860J() {
        return zzg;
    }

    /* renamed from: L */
    public static /* synthetic */ void m7858L(qg3 qg3Var, tg3 tg3Var) {
        tg3Var.getClass();
        qg3Var.zzb = tg3Var;
    }

    /* renamed from: C */
    public final tg3 m7864C() {
        tg3 tg3Var = this.zzb;
        return tg3Var == null ? tg3.m6817E() : tg3Var;
    }

    /* renamed from: D */
    public final int m7863D() {
        return this.zze;
    }

    static {
        qg3 qg3Var = new qg3();
        zzg = qg3Var;
        pm3.m8248z(qg3.class, qg3Var);
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
                    return new pg3(null);
                }
                return new qg3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
