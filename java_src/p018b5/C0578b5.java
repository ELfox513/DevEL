package p018b5;

import java.util.List;
/* renamed from: b5.b5 */
/* loaded from: classes2.dex */
public final class C0578b5 extends AbstractC0955x8<C0578b5, C0560a5> implements InterfaceC0651fa {
    private static final C0578b5 zza;
    private int zze;
    private int zzf;
    private InterfaceC0616d9 zzg = AbstractC0955x8.m24975p();

    /* renamed from: v */
    public static C0560a5 m26134v() {
        return zza.m24979k();
    }

    /* renamed from: z */
    public static /* synthetic */ void m26131z(C0578b5 c0578b5, int i) {
        c0578b5.zze |= 1;
        c0578b5.zzf = i;
    }

    /* renamed from: B */
    public final boolean m26138B() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: s */
    public final int m26137s() {
        return this.zzg.size();
    }

    /* renamed from: t */
    public final int m26136t() {
        return this.zzf;
    }

    /* renamed from: u */
    public final long m26135u(int i) {
        return this.zzg.mo25255h(i);
    }

    /* renamed from: x */
    public final List<Long> m26132x() {
        return this.zzg;
    }

    static {
        C0578b5 c0578b5 = new C0578b5();
        zza = c0578b5;
        AbstractC0955x8.m24980j(C0578b5.class, c0578b5);
    }

    /* renamed from: A */
    public static /* synthetic */ void m26139A(C0578b5 c0578b5, Iterable iterable) {
        InterfaceC0616d9 interfaceC0616d9 = c0578b5.zzg;
        if (!interfaceC0616d9.mo25928b()) {
            c0578b5.zzg = AbstractC0955x8.m24974q(interfaceC0616d9);
        }
        AbstractC0648f7.m25983c(iterable, c0578b5.zzg);
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
                    return new C0560a5(null);
                }
                return new C0578b5();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
