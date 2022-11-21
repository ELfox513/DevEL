package p018b5;

import java.util.List;
/* renamed from: b5.k5 */
/* loaded from: classes2.dex */
public final class C0731k5 extends AbstractC0955x8<C0731k5, C0714j5> implements InterfaceC0651fa {
    private static final C0731k5 zza;
    private int zze;
    private InterfaceC0633e9<C0816p5> zzf = AbstractC0955x8.m24984f();
    private C0663g5 zzg;

    /* renamed from: s */
    public final C0663g5 m25707s() {
        C0663g5 c0663g5 = this.zzg;
        return c0663g5 == null ? C0663g5.m25932u() : c0663g5;
    }

    /* renamed from: u */
    public final List<C0816p5> m25705u() {
        return this.zzf;
    }

    static {
        C0731k5 c0731k5 = new C0731k5();
        zza = c0731k5;
        AbstractC0955x8.m24980j(C0731k5.class, c0731k5);
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
                    return new C0714j5(null);
                }
                return new C0731k5();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", C0816p5.class, "zzg"});
        }
        return (byte) 1;
    }
}
