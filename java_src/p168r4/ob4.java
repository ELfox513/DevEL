package p168r4;
/* renamed from: r4.ob4 */
/* loaded from: classes2.dex */
public final class ob4 extends pm3<ob4, nb4> implements bo3 {
    private static final ob4 zzl;
    private int zzb;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;

    /* renamed from: C */
    public static nb4 m8841C() {
        return zzl.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m8839E(ob4 ob4Var, long j) {
        ob4Var.zzb |= 4;
        ob4Var.zzg = j;
    }

    /* renamed from: I */
    public static /* synthetic */ void m8838I(ob4 ob4Var, long j) {
        ob4Var.zzb |= 8;
        ob4Var.zzh = j;
    }

    /* renamed from: J */
    public static /* synthetic */ void m8837J(ob4 ob4Var, long j) {
        ob4Var.zzb |= 16;
        ob4Var.zzi = j;
    }

    /* renamed from: K */
    public static /* synthetic */ void m8836K(ob4 ob4Var, long j) {
        ob4Var.zzb |= 32;
        ob4Var.zzj = j;
    }

    static {
        ob4 ob4Var = new ob4();
        zzl = ob4Var;
        pm3.m8248z(ob4.class, ob4Var);
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
                        return zzl;
                    }
                    return new nb4(null);
                }
                return new ob4();
            }
            return pm3.m8270A(zzl, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
