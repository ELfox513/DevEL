package p018b5;
/* renamed from: b5.d5 */
/* loaded from: classes2.dex */
public final class C0612d5 extends AbstractC0955x8<C0612d5, C0595c5> implements InterfaceC0651fa {
    private static final C0612d5 zza;
    private int zze;
    private long zzf;
    private String zzg = "";
    private String zzh = "";
    private long zzi;
    private float zzj;
    private double zzk;

    /* renamed from: A */
    public static /* synthetic */ void m26073A(C0612d5 c0612d5, long j) {
        c0612d5.zze |= 1;
        c0612d5.zzf = j;
    }

    /* renamed from: B */
    public static /* synthetic */ void m26072B(C0612d5 c0612d5, String str) {
        str.getClass();
        c0612d5.zze |= 2;
        c0612d5.zzg = str;
    }

    /* renamed from: C */
    public static /* synthetic */ void m26071C(C0612d5 c0612d5, String str) {
        str.getClass();
        c0612d5.zze |= 4;
        c0612d5.zzh = str;
    }

    /* renamed from: D */
    public static /* synthetic */ void m26070D(C0612d5 c0612d5) {
        c0612d5.zze &= -5;
        c0612d5.zzh = zza.zzh;
    }

    /* renamed from: E */
    public static /* synthetic */ void m26069E(C0612d5 c0612d5, long j) {
        c0612d5.zze |= 8;
        c0612d5.zzi = j;
    }

    /* renamed from: F */
    public static /* synthetic */ void m26068F(C0612d5 c0612d5) {
        c0612d5.zze &= -9;
        c0612d5.zzi = 0L;
    }

    /* renamed from: G */
    public static /* synthetic */ void m26067G(C0612d5 c0612d5, double d) {
        c0612d5.zze |= 32;
        c0612d5.zzk = d;
    }

    /* renamed from: H */
    public static /* synthetic */ void m26066H(C0612d5 c0612d5) {
        c0612d5.zze &= -33;
        c0612d5.zzk = 0.0d;
    }

    /* renamed from: v */
    public static C0595c5 m26058v() {
        return zza.m24979k();
    }

    /* renamed from: I */
    public final boolean m26065I() {
        return (this.zze & 32) != 0;
    }

    /* renamed from: J */
    public final boolean m26064J() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: K */
    public final boolean m26063K() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: L */
    public final boolean m26062L() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: s */
    public final double m26061s() {
        return this.zzk;
    }

    /* renamed from: t */
    public final long m26060t() {
        return this.zzi;
    }

    /* renamed from: u */
    public final long m26059u() {
        return this.zzf;
    }

    /* renamed from: x */
    public final String m26056x() {
        return this.zzg;
    }

    /* renamed from: z */
    public final String m26055z() {
        return this.zzh;
    }

    static {
        C0612d5 c0612d5 = new C0612d5();
        zza = c0612d5;
        AbstractC0955x8.m24980j(C0612d5.class, c0612d5);
    }

    @Override // p018b5.AbstractC0955x8
    /* renamed from: r */
    public final Object mo24877r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zza;
                    }
                    return new C0595c5(null);
                }
                return new C0612d5();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
