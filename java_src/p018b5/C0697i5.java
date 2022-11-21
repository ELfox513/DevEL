package p018b5;

import java.util.List;
/* renamed from: b5.i5 */
/* loaded from: classes2.dex */
public final class C0697i5 extends AbstractC0955x8<C0697i5, C0680h5> implements InterfaceC0651fa {
    private static final C0697i5 zza;
    private int zze;
    private String zzf = "";
    private InterfaceC0633e9<C0816p5> zzg = AbstractC0955x8.m24984f();

    /* renamed from: t */
    public final String m25798t() {
        return this.zzf;
    }

    /* renamed from: u */
    public final List<C0816p5> m25797u() {
        return this.zzg;
    }

    static {
        C0697i5 c0697i5 = new C0697i5();
        zza = c0697i5;
        AbstractC0955x8.m24980j(C0697i5.class, c0697i5);
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
                    return new C0680h5(null);
                }
                return new C0697i5();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", C0816p5.class});
        }
        return (byte) 1;
    }
}
