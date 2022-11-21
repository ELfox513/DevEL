package p168r4;
/* renamed from: r4.ub4 */
/* loaded from: classes2.dex */
public final class ub4 extends pm3<ub4, tb4> implements bo3 {
    private static final ub4 zzi;
    private int zzb;
    private ll3 zze;
    private ll3 zzf;
    private ll3 zzg;
    private ll3 zzh;

    /* renamed from: J */
    public static ub4 m6555J(byte[] bArr, bm3 bm3Var) {
        return (ub4) pm3.m8253u(zzi, bArr, bm3Var);
    }

    /* renamed from: K */
    public static tb4 m6554K() {
        return zzi.m8252v();
    }

    /* renamed from: L */
    public static /* synthetic */ ub4 m6553L() {
        return zzi;
    }

    /* renamed from: M */
    public static /* synthetic */ void m6552M(ub4 ub4Var, ll3 ll3Var) {
        ub4Var.zzb |= 1;
        ub4Var.zze = ll3Var;
    }

    /* renamed from: N */
    public static /* synthetic */ void m6551N(ub4 ub4Var, ll3 ll3Var) {
        ub4Var.zzb |= 2;
        ub4Var.zzf = ll3Var;
    }

    /* renamed from: O */
    public static /* synthetic */ void m6550O(ub4 ub4Var, ll3 ll3Var) {
        ub4Var.zzb |= 4;
        ub4Var.zzg = ll3Var;
    }

    /* renamed from: P */
    public static /* synthetic */ void m6549P(ub4 ub4Var, ll3 ll3Var) {
        ub4Var.zzb |= 8;
        ub4Var.zzh = ll3Var;
    }

    /* renamed from: C */
    public final ll3 m6559C() {
        return this.zze;
    }

    /* renamed from: D */
    public final ll3 m6558D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final ll3 m6557E() {
        return this.zzg;
    }

    /* renamed from: I */
    public final ll3 m6556I() {
        return this.zzh;
    }

    static {
        ub4 ub4Var = new ub4();
        zzi = ub4Var;
        pm3.m8248z(ub4.class, ub4Var);
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
                        return zzi;
                    }
                    return new tb4(null);
                }
                return new ub4();
            }
            return pm3.m8270A(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }

    public ub4() {
        ll3 ll3Var = ll3.f27255b;
        this.zze = ll3Var;
        this.zzf = ll3Var;
        this.zzg = ll3Var;
        this.zzh = ll3Var;
    }
}
