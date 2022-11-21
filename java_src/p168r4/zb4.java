package p168r4;
/* renamed from: r4.zb4 */
/* loaded from: classes2.dex */
public final class zb4 extends pm3<zb4, yb4> implements bo3 {
    private static final zb4 zzh;
    private int zzb;
    private long zze;
    private String zzf = "";
    private ll3 zzg = ll3.f27255b;

    /* renamed from: E */
    public static zb4 m4332E() {
        return zzh;
    }

    /* renamed from: C */
    public final boolean m4334C() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: D */
    public final long m4333D() {
        return this.zze;
    }

    static {
        zb4 zb4Var = new zb4();
        zzh = zb4Var;
        pm3.m8248z(zb4.class, zb4Var);
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
                        return zzh;
                    }
                    return new yb4(null);
                }
                return new zb4();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
