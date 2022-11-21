package p168r4;
/* renamed from: r4.p2 */
/* loaded from: classes2.dex */
public final class C6118p2 extends pm3<C6118p2, C6081o2> implements bo3 {
    private static final C6118p2 zzj;
    private int zzb;
    private String zze = "";
    private String zzf = "";
    private long zzg;
    private long zzh;
    private long zzi;

    /* renamed from: K */
    public static C6118p2 m8511K(ll3 ll3Var) {
        return (C6118p2) pm3.m8256p(zzj, ll3Var);
    }

    /* renamed from: L */
    public static C6118p2 m8510L(ll3 ll3Var, bm3 bm3Var) {
        return (C6118p2) pm3.m8255r(zzj, ll3Var, bm3Var);
    }

    /* renamed from: M */
    public static C6081o2 m8509M() {
        return zzj.m8252v();
    }

    /* renamed from: N */
    public static C6118p2 m8508N() {
        return zzj;
    }

    /* renamed from: P */
    public static /* synthetic */ void m8506P(C6118p2 c6118p2, String str) {
        str.getClass();
        c6118p2.zzb |= 1;
        c6118p2.zze = str;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m8505Q(C6118p2 c6118p2, String str) {
        str.getClass();
        c6118p2.zzb |= 2;
        c6118p2.zzf = str;
    }

    /* renamed from: R */
    public static /* synthetic */ void m8504R(C6118p2 c6118p2, long j) {
        c6118p2.zzb |= 4;
        c6118p2.zzg = j;
    }

    /* renamed from: S */
    public static /* synthetic */ void m8503S(C6118p2 c6118p2, long j) {
        c6118p2.zzb |= 8;
        c6118p2.zzh = j;
    }

    /* renamed from: T */
    public static /* synthetic */ void m8502T(C6118p2 c6118p2, long j) {
        c6118p2.zzb |= 16;
        c6118p2.zzi = j;
    }

    /* renamed from: C */
    public final String m8516C() {
        return this.zze;
    }

    /* renamed from: D */
    public final String m8515D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final long m8514E() {
        return this.zzg;
    }

    /* renamed from: I */
    public final long m8513I() {
        return this.zzh;
    }

    /* renamed from: J */
    public final long m8512J() {
        return this.zzi;
    }

    static {
        C6118p2 c6118p2 = new C6118p2();
        zzj = c6118p2;
        pm3.m8248z(C6118p2.class, c6118p2);
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
                        return zzj;
                    }
                    return new C6081o2(null);
                }
                return new C6118p2();
            }
            return pm3.m8270A(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
