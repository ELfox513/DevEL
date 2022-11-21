package p168r4;
/* renamed from: r4.fq3 */
/* loaded from: classes2.dex */
public final class fq3 extends pm3<fq3, eq3> implements bo3 {
    private static final fq3 zzh;
    private int zzb;
    private ll3 zze;
    private ll3 zzf;
    private byte zzg = 2;

    /* renamed from: C */
    public static eq3 m11396C() {
        return zzh.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m11394E(fq3 fq3Var, ll3 ll3Var) {
        fq3Var.zzb |= 1;
        fq3Var.zze = ll3Var;
    }

    /* renamed from: I */
    public static /* synthetic */ void m11393I(fq3 fq3Var, ll3 ll3Var) {
        fq3Var.zzb |= 2;
        fq3Var.zzf = ll3Var;
    }

    static {
        fq3 fq3Var = new fq3();
        zzh = fq3Var;
        pm3.m8248z(fq3.class, fq3Var);
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
                            this.zzg = b;
                            return null;
                        }
                        return zzh;
                    }
                    return new eq3(null);
                }
                return new fq3();
            }
            return pm3.m8270A(zzh, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        return Byte.valueOf(this.zzg);
    }

    public fq3() {
        ll3 ll3Var = ll3.f27255b;
        this.zze = ll3Var;
        this.zzf = ll3Var;
    }
}
