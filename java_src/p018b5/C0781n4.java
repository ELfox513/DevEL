package p018b5;

import java.util.List;
/* renamed from: b5.n4 */
/* loaded from: classes2.dex */
public final class C0781n4 extends AbstractC0955x8<C0781n4, C0764m4> implements InterfaceC0651fa {
    private static final C0781n4 zza;
    private int zze;
    private long zzh;
    private float zzi;
    private double zzj;
    private String zzf = "";
    private String zzg = "";
    private InterfaceC0633e9<C0781n4> zzk = AbstractC0955x8.m24984f();

    /* renamed from: C */
    public static /* synthetic */ void m25601C(C0781n4 c0781n4, String str) {
        str.getClass();
        c0781n4.zze |= 1;
        c0781n4.zzf = str;
    }

    /* renamed from: D */
    public static /* synthetic */ void m25600D(C0781n4 c0781n4, String str) {
        str.getClass();
        c0781n4.zze |= 2;
        c0781n4.zzg = str;
    }

    /* renamed from: E */
    public static /* synthetic */ void m25599E(C0781n4 c0781n4) {
        c0781n4.zze &= -3;
        c0781n4.zzg = zza.zzg;
    }

    /* renamed from: F */
    public static /* synthetic */ void m25598F(C0781n4 c0781n4, long j) {
        c0781n4.zze |= 4;
        c0781n4.zzh = j;
    }

    /* renamed from: G */
    public static /* synthetic */ void m25597G(C0781n4 c0781n4) {
        c0781n4.zze &= -5;
        c0781n4.zzh = 0L;
    }

    /* renamed from: H */
    public static /* synthetic */ void m25596H(C0781n4 c0781n4, double d) {
        c0781n4.zze |= 16;
        c0781n4.zzj = d;
    }

    /* renamed from: I */
    public static /* synthetic */ void m25595I(C0781n4 c0781n4) {
        c0781n4.zze &= -17;
        c0781n4.zzj = 0.0d;
    }

    /* renamed from: w */
    public static C0764m4 m25581w() {
        return zza.m24979k();
    }

    /* renamed from: A */
    public final String m25603A() {
        return this.zzg;
    }

    /* renamed from: B */
    public final List<C0781n4> m25602B() {
        return this.zzk;
    }

    /* renamed from: O */
    public final boolean m25591O() {
        return (this.zze & 16) != 0;
    }

    /* renamed from: P */
    public final boolean m25590P() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: Q */
    public final boolean m25589Q() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: R */
    public final boolean m25588R() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: S */
    public final boolean m25587S() {
        return (this.zze & 2) != 0;
    }

    /* renamed from: s */
    public final double m25585s() {
        return this.zzj;
    }

    /* renamed from: t */
    public final float m25584t() {
        return this.zzi;
    }

    /* renamed from: u */
    public final int m25583u() {
        return this.zzk.size();
    }

    /* renamed from: v */
    public final long m25582v() {
        return this.zzh;
    }

    /* renamed from: z */
    public final String m25579z() {
        return this.zzf;
    }

    static {
        C0781n4 c0781n4 = new C0781n4();
        zza = c0781n4;
        AbstractC0955x8.m24980j(C0781n4.class, c0781n4);
    }

    /* renamed from: T */
    public final void m25586T() {
        InterfaceC0633e9<C0781n4> interfaceC0633e9 = this.zzk;
        if (!interfaceC0633e9.mo25928b()) {
            this.zzk = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
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
                    return new C0764m4(null);
                }
                return new C0781n4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", C0781n4.class});
        }
        return (byte) 1;
    }

    /* renamed from: J */
    public static /* synthetic */ void m25594J(C0781n4 c0781n4, C0781n4 c0781n42) {
        c0781n42.getClass();
        c0781n4.m25586T();
        c0781n4.zzk.add(c0781n42);
    }

    /* renamed from: K */
    public static /* synthetic */ void m25593K(C0781n4 c0781n4, Iterable iterable) {
        c0781n4.m25586T();
        AbstractC0648f7.m25983c(iterable, c0781n4.zzk);
    }
}
