package p018b5;
/* renamed from: b5.f3 */
/* loaded from: classes2.dex */
public final class C0644f3 extends AbstractC0955x8<C0644f3, C0627e3> implements InterfaceC0651fa {
    private static final C0644f3 zza;
    private int zze;
    private C0848r3 zzf;
    private C0729k3 zzg;
    private boolean zzh;
    private String zzi = "";

    /* renamed from: t */
    public static C0644f3 m26003t() {
        return zza;
    }

    /* renamed from: x */
    public static /* synthetic */ void m25999x(C0644f3 c0644f3, String str) {
        c0644f3.zze |= 8;
        c0644f3.zzi = str;
    }

    /* renamed from: A */
    public final boolean m26008A() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: B */
    public final boolean m26007B() {
        return (this.zze & 2) != 0;
    }

    /* renamed from: C */
    public final boolean m26006C() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: D */
    public final boolean m26005D() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: u */
    public final C0729k3 m26002u() {
        C0729k3 c0729k3 = this.zzg;
        return c0729k3 == null ? C0729k3.m25715t() : c0729k3;
    }

    /* renamed from: v */
    public final C0848r3 m26001v() {
        C0848r3 c0848r3 = this.zzf;
        return c0848r3 == null ? C0848r3.m25444u() : c0848r3;
    }

    /* renamed from: w */
    public final String m26000w() {
        return this.zzi;
    }

    /* renamed from: z */
    public final boolean m25998z() {
        return this.zzh;
    }

    static {
        C0644f3 c0644f3 = new C0644f3();
        zza = c0644f3;
        AbstractC0955x8.m24980j(C0644f3.class, c0644f3);
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
                    return new C0627e3(null);
                }
                return new C0644f3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
