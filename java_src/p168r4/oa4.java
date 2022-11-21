package p168r4;
/* renamed from: r4.oa4 */
/* loaded from: classes2.dex */
public final class oa4 extends pm3<oa4, ka4> implements bo3 {
    private static final oa4 zzr;
    private int zzb;
    private long zzf;
    private long zzj;
    private long zzk;
    private long zzm;
    private int zzq;
    private String zze = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzl = "";
    private String zzn = "";
    private String zzo = "";
    private ym3<ma4> zzp = pm3.m8259m();

    /* renamed from: C */
    public static ka4 m8852C() {
        return zzr.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m8850E(oa4 oa4Var, String str) {
        str.getClass();
        oa4Var.zzb |= 1;
        oa4Var.zze = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m8849I(oa4 oa4Var, long j) {
        oa4Var.zzb |= 2;
        oa4Var.zzf = j;
    }

    /* renamed from: J */
    public static /* synthetic */ void m8848J(oa4 oa4Var, String str) {
        str.getClass();
        oa4Var.zzb |= 4;
        oa4Var.zzg = str;
    }

    /* renamed from: K */
    public static /* synthetic */ void m8847K(oa4 oa4Var, String str) {
        str.getClass();
        oa4Var.zzb |= 8;
        oa4Var.zzh = str;
    }

    /* renamed from: L */
    public static /* synthetic */ void m8846L(oa4 oa4Var, String str) {
        oa4Var.zzb |= 16;
        oa4Var.zzi = str;
    }

    /* renamed from: M */
    public static /* synthetic */ void m8845M(oa4 oa4Var, String str) {
        oa4Var.zzb |= 1024;
        oa4Var.zzo = str;
    }

    /* renamed from: N */
    public static /* synthetic */ void m8844N(oa4 oa4Var, int i) {
        oa4Var.zzq = i - 1;
        oa4Var.zzb |= 2048;
    }

    static {
        oa4 oa4Var = new oa4();
        zzr = oa4Var;
        pm3.m8248z(oa4.class, oa4Var);
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
                        return zzr;
                    }
                    return new ka4(null);
                }
                return new oa4();
            }
            return pm3.m8270A(zzr, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", ma4.class, "zzq", na4.f28239a});
        }
        return (byte) 1;
    }
}
