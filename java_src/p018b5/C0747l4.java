package p018b5;
/* renamed from: b5.l4 */
/* loaded from: classes2.dex */
public final class C0747l4 extends AbstractC0955x8<C0747l4, C0730k4> implements InterfaceC0651fa {
    private static final C0747l4 zza;
    private int zze;
    private String zzf = "";
    private long zzg;

    /* renamed from: s */
    public static C0730k4 m25687s() {
        return zza.m24979k();
    }

    /* renamed from: u */
    public static /* synthetic */ void m25685u(C0747l4 c0747l4, String str) {
        str.getClass();
        c0747l4.zze |= 1;
        c0747l4.zzf = str;
    }

    /* renamed from: v */
    public static /* synthetic */ void m25684v(C0747l4 c0747l4, long j) {
        c0747l4.zze |= 2;
        c0747l4.zzg = j;
    }

    static {
        C0747l4 c0747l4 = new C0747l4();
        zza = c0747l4;
        AbstractC0955x8.m24980j(C0747l4.class, c0747l4);
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
                    return new C0730k4(null);
                }
                return new C0747l4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
