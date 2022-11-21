package p168r4;
/* renamed from: r4.jq3 */
/* loaded from: classes2.dex */
public final class jq3 extends pm3<jq3, gq3> implements bo3 {
    private static final jq3 zzk;
    private int zzb;
    private iq3 zze;
    private ll3 zzg;
    private ll3 zzh;
    private int zzi;
    private byte zzj = 2;
    private ym3<fq3> zzf = pm3.m8259m();

    /* renamed from: C */
    public static gq3 m10208C() {
        return zzk.m8252v();
    }

    static {
        jq3 jq3Var = new jq3();
        zzk = jq3Var;
        pm3.m8248z(jq3.class, jq3Var);
    }

    @Override // p168r4.pm3
    /* renamed from: B */
    public final Object mo4087B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            byte b = 1;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (obj == null) {
                                b = 0;
                            }
                            this.zzj = b;
                            return null;
                        }
                        return zzk;
                    }
                    return new gq3(null);
                }
                return new jq3();
            }
            return pm3.m8270A(zzk, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzb", "zze", "zzf", fq3.class, "zzg", "zzh", "zzi"});
        }
        return Byte.valueOf(this.zzj);
    }

    public jq3() {
        ll3 ll3Var = ll3.f27255b;
        this.zzg = ll3Var;
        this.zzh = ll3Var;
    }

    /* renamed from: E */
    public static /* synthetic */ void m10206E(jq3 jq3Var, fq3 fq3Var) {
        fq3Var.getClass();
        ym3<fq3> ym3Var = jq3Var.zzf;
        if (!ym3Var.zza()) {
            jq3Var.zzf = pm3.m8258n(ym3Var);
        }
        jq3Var.zzf.add(fq3Var);
    }
}
