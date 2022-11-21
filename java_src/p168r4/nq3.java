package p168r4;
/* renamed from: r4.nq3 */
/* loaded from: classes2.dex */
public final class nq3 extends pm3<nq3, kq3> implements bo3 {
    private static final nq3 zzl;
    private int zzb;
    private mq3 zze;
    private ll3 zzg;
    private ll3 zzh;
    private int zzi;
    private ll3 zzj;
    private byte zzk = 2;
    private ym3<fq3> zzf = pm3.m8259m();

    static {
        nq3 nq3Var = new nq3();
        zzl = nq3Var;
        pm3.m8248z(nq3.class, nq3Var);
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
                            this.zzk = b;
                            return null;
                        }
                        return zzl;
                    }
                    return new kq3(null);
                }
                return new nq3();
            }
            return pm3.m8270A(zzl, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzb", "zze", "zzf", fq3.class, "zzg", "zzh", "zzi", "zzj"});
        }
        return Byte.valueOf(this.zzk);
    }

    public nq3() {
        ll3 ll3Var = ll3.f27255b;
        this.zzg = ll3Var;
        this.zzh = ll3Var;
        this.zzj = ll3Var;
    }
}
