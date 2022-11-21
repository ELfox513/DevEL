package p018b5;

import java.util.List;
/* renamed from: b5.r4 */
/* loaded from: classes2.dex */
public final class C0849r4 extends AbstractC0955x8<C0849r4, C0832q4> implements InterfaceC0651fa {
    private static final C0849r4 zza;
    private InterfaceC0633e9<C0883t4> zze = AbstractC0955x8.m24984f();

    /* renamed from: s */
    public static C0832q4 m25439s() {
        return zza.m24979k();
    }

    /* renamed from: u */
    public final C0883t4 m25437u(int i) {
        return this.zze.get(0);
    }

    /* renamed from: v */
    public final List<C0883t4> m25436v() {
        return this.zze;
    }

    static {
        C0849r4 c0849r4 = new C0849r4();
        zza = c0849r4;
        AbstractC0955x8.m24980j(C0849r4.class, c0849r4);
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
                    return new C0832q4(null);
                }
                return new C0849r4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", C0883t4.class});
        }
        return (byte) 1;
    }

    /* renamed from: w */
    public static /* synthetic */ void m25435w(C0849r4 c0849r4, C0883t4 c0883t4) {
        c0883t4.getClass();
        InterfaceC0633e9<C0883t4> interfaceC0633e9 = c0849r4.zze;
        if (!interfaceC0633e9.mo25928b()) {
            c0849r4.zze = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
        c0849r4.zze.add(c0883t4);
    }
}
