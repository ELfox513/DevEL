package p018b5;
/* renamed from: b5.v3 */
/* loaded from: classes2.dex */
public final class C0916v3 extends AbstractC0955x8<C0916v3, C0882t3> implements InterfaceC0651fa {
    private static final C0916v3 zza;
    private int zze;
    private String zzf = "";
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    /* renamed from: v */
    public static /* synthetic */ void m25077v(C0916v3 c0916v3, String str) {
        str.getClass();
        c0916v3.zze |= 1;
        c0916v3.zzf = str;
    }

    /* renamed from: s */
    public final int m25080s() {
        return this.zzi;
    }

    /* renamed from: u */
    public final String m25078u() {
        return this.zzf;
    }

    /* renamed from: w */
    public final boolean m25076w() {
        return this.zzg;
    }

    /* renamed from: x */
    public final boolean m25075x() {
        return this.zzh;
    }

    /* renamed from: z */
    public final boolean m25074z() {
        return (this.zze & 8) != 0;
    }

    static {
        C0916v3 c0916v3 = new C0916v3();
        zza = c0916v3;
        AbstractC0955x8.m24980j(C0916v3.class, c0916v3);
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
                    return new C0882t3(null);
                }
                return new C0916v3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
