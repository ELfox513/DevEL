package p018b5;
/* renamed from: b5.k3 */
/* loaded from: classes2.dex */
public final class C0729k3 extends AbstractC0955x8<C0729k3, C0661g3> implements InterfaceC0651fa {
    private static final C0729k3 zza;
    private int zze;
    private int zzf;
    private boolean zzg;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    /* renamed from: t */
    public static C0729k3 m25715t() {
        return zza;
    }

    /* renamed from: A */
    public final boolean m25721A() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: B */
    public final boolean m25720B() {
        return (this.zze & 2) != 0;
    }

    /* renamed from: C */
    public final boolean m25719C() {
        return (this.zze & 16) != 0;
    }

    /* renamed from: D */
    public final boolean m25718D() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: E */
    public final int m25717E() {
        int m25775a = C0712j3.m25775a(this.zzf);
        if (m25775a == 0) {
            return 1;
        }
        return m25775a;
    }

    /* renamed from: u */
    public final String m25714u() {
        return this.zzh;
    }

    /* renamed from: v */
    public final String m25713v() {
        return this.zzj;
    }

    /* renamed from: w */
    public final String m25712w() {
        return this.zzi;
    }

    /* renamed from: x */
    public final boolean m25711x() {
        return this.zzg;
    }

    /* renamed from: z */
    public final boolean m25710z() {
        return (this.zze & 1) != 0;
    }

    static {
        C0729k3 c0729k3 = new C0729k3();
        zza = c0729k3;
        AbstractC0955x8.m24980j(C0729k3.class, c0729k3);
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
                    return new C0661g3(null);
                }
                return new C0729k3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", C0695i3.f1877a, "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }
}
