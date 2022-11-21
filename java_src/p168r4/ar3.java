package p168r4;

import java.util.List;
/* renamed from: r4.ar3 */
/* loaded from: classes2.dex */
public final class ar3 extends pm3<ar3, bq3> implements bo3 {
    private static final ar3 zzx;
    private int zzb;
    private int zze;
    private int zzf;
    private dq3 zzj;
    private qq3 zzm;
    private boolean zzn;
    private boolean zzq;
    private boolean zzr;
    private zq3 zzt;
    private byte zzw = 2;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private ym3<xq3> zzk = pm3.m8259m();
    private String zzl = "";
    private ym3<String> zzo = pm3.m8259m();
    private String zzp = "";
    private ll3 zzs = ll3.f27255b;
    private ym3<String> zzu = pm3.m8259m();
    private ym3<String> zzv = pm3.m8259m();

    /* renamed from: I */
    public static bq3 m12962I() {
        return zzx.m8252v();
    }

    /* renamed from: K */
    public static /* synthetic */ void m12960K(ar3 ar3Var, String str) {
        str.getClass();
        ar3Var.zzb |= 4;
        ar3Var.zzg = str;
    }

    /* renamed from: L */
    public static /* synthetic */ void m12959L(ar3 ar3Var, String str) {
        str.getClass();
        ar3Var.zzb |= 8;
        ar3Var.zzh = str;
    }

    /* renamed from: M */
    public static /* synthetic */ void m12958M(ar3 ar3Var, dq3 dq3Var) {
        dq3Var.getClass();
        ar3Var.zzj = dq3Var;
        ar3Var.zzb |= 32;
    }

    /* renamed from: O */
    public static /* synthetic */ void m12956O(ar3 ar3Var, String str) {
        ar3Var.zzb |= 64;
        ar3Var.zzl = str;
    }

    /* renamed from: P */
    public static /* synthetic */ void m12955P(ar3 ar3Var) {
        ar3Var.zzb &= -65;
        ar3Var.zzl = zzx.zzl;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m12954Q(ar3 ar3Var, qq3 qq3Var) {
        qq3Var.getClass();
        ar3Var.zzm = qq3Var;
        ar3Var.zzb |= 128;
    }

    /* renamed from: R */
    public static /* synthetic */ void m12953R(ar3 ar3Var, zq3 zq3Var) {
        zq3Var.getClass();
        ar3Var.zzt = zq3Var;
        ar3Var.zzb |= 8192;
    }

    /* renamed from: U */
    public static /* synthetic */ void m12950U(ar3 ar3Var, int i) {
        ar3Var.zze = i - 1;
        ar3Var.zzb |= 1;
    }

    /* renamed from: C */
    public final String m12965C() {
        return this.zzg;
    }

    /* renamed from: D */
    public final List<xq3> m12964D() {
        return this.zzk;
    }

    /* renamed from: E */
    public final String m12963E() {
        return this.zzl;
    }

    static {
        ar3 ar3Var = new ar3();
        zzx = ar3Var;
        pm3.m8248z(ar3.class, ar3Var);
    }

    /* renamed from: S */
    public static /* synthetic */ void m12952S(ar3 ar3Var, Iterable iterable) {
        ym3<String> ym3Var = ar3Var.zzu;
        if (!ym3Var.zza()) {
            ar3Var.zzu = pm3.m8258n(ym3Var);
        }
        uk3.m6491g(iterable, ar3Var.zzu);
    }

    /* renamed from: T */
    public static /* synthetic */ void m12951T(ar3 ar3Var, Iterable iterable) {
        ym3<String> ym3Var = ar3Var.zzv;
        if (!ym3Var.zza()) {
            ar3Var.zzv = pm3.m8258n(ym3Var);
        }
        uk3.m6491g(iterable, ar3Var.zzv);
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
                            this.zzw = b;
                            return null;
                        }
                        return zzx;
                    }
                    return new bq3(null);
                }
                return new ar3();
            }
            return pm3.m8270A(zzx, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ\u0000\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzb", "zzg", "zzh", "zzi", "zzk", xq3.class, "zzn", "zzo", "zzp", "zzq", "zzr", "zze", rq3.f30668a, "zzf", aq3.f20584a, "zzj", "zzl", "zzm", "zzs", "zzt", "zzu", "zzv"});
        }
        return Byte.valueOf(this.zzw);
    }

    /* renamed from: N */
    public static /* synthetic */ void m12957N(ar3 ar3Var, xq3 xq3Var) {
        xq3Var.getClass();
        ym3<xq3> ym3Var = ar3Var.zzk;
        if (!ym3Var.zza()) {
            ar3Var.zzk = pm3.m8258n(ym3Var);
        }
        ar3Var.zzk.add(xq3Var);
    }
}
