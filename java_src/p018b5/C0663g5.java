package p018b5;

import java.util.List;
/* renamed from: b5.g5 */
/* loaded from: classes2.dex */
public final class C0663g5 extends AbstractC0955x8<C0663g5, C0646f5> implements InterfaceC0651fa {
    private static final C0663g5 zza;
    private InterfaceC0633e9<C0697i5> zze = AbstractC0955x8.m24984f();

    /* renamed from: u */
    public static C0663g5 m25932u() {
        return zza;
    }

    /* renamed from: s */
    public final int m25934s() {
        return this.zze.size();
    }

    /* renamed from: v */
    public final List<C0697i5> m25931v() {
        return this.zze;
    }

    static {
        C0663g5 c0663g5 = new C0663g5();
        zza = c0663g5;
        AbstractC0955x8.m24980j(C0663g5.class, c0663g5);
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
                    return new C0646f5(null);
                }
                return new C0663g5();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", C0697i5.class});
        }
        return (byte) 1;
    }
}
