package p018b5;
/* renamed from: b5.x4 */
/* loaded from: classes2.dex */
public final class C0951x4 extends AbstractC0955x8<C0951x4, C0900u4> implements InterfaceC0651fa {
    private static final C0951x4 zza;
    private int zze;
    private int zzf = 1;
    private InterfaceC0633e9<C0747l4> zzg = AbstractC0955x8.m24984f();

    /* renamed from: s */
    public static C0900u4 m24998s() {
        return zza.m24979k();
    }

    static {
        C0951x4 c0951x4 = new C0951x4();
        zza = c0951x4;
        AbstractC0955x8.m24980j(C0951x4.class, c0951x4);
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
                    return new C0900u4(null);
                }
                return new C0951x4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zze", "zzf", C0934w4.f2372a, "zzg", C0747l4.class});
        }
        return (byte) 1;
    }

    /* renamed from: u */
    public static /* synthetic */ void m24996u(C0951x4 c0951x4, C0747l4 c0747l4) {
        c0747l4.getClass();
        InterfaceC0633e9<C0747l4> interfaceC0633e9 = c0951x4.zzg;
        if (!interfaceC0633e9.mo25928b()) {
            c0951x4.zzg = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
        c0951x4.zzg.add(c0747l4);
    }
}
