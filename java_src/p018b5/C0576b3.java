package p018b5;

import java.util.List;
/* renamed from: b5.b3 */
/* loaded from: classes2.dex */
public final class C0576b3 extends AbstractC0955x8<C0576b3, C0558a3> implements InterfaceC0651fa {
    private static final C0576b3 zza;
    private int zze;
    private int zzf;
    private InterfaceC0633e9<C0763m3> zzg = AbstractC0955x8.m24984f();
    private InterfaceC0633e9<C0610d3> zzh = AbstractC0955x8.m24984f();
    private boolean zzi;
    private boolean zzj;

    /* renamed from: A */
    public final List<C0763m3> m26150A() {
        return this.zzg;
    }

    /* renamed from: D */
    public final boolean m26147D() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: s */
    public final int m26146s() {
        return this.zzf;
    }

    /* renamed from: t */
    public final int m26145t() {
        return this.zzh.size();
    }

    /* renamed from: u */
    public final int m26144u() {
        return this.zzg.size();
    }

    /* renamed from: w */
    public final C0610d3 m26142w(int i) {
        return this.zzh.get(i);
    }

    /* renamed from: x */
    public final C0763m3 m26141x(int i) {
        return this.zzg.get(i);
    }

    /* renamed from: z */
    public final List<C0610d3> m26140z() {
        return this.zzh;
    }

    static {
        C0576b3 c0576b3 = new C0576b3();
        zza = c0576b3;
        AbstractC0955x8.m24980j(C0576b3.class, c0576b3);
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
                    return new C0558a3(null);
                }
                return new C0576b3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", C0763m3.class, "zzh", C0610d3.class, "zzi", "zzj"});
        }
        return (byte) 1;
    }

    /* renamed from: B */
    public static /* synthetic */ void m26149B(C0576b3 c0576b3, int i, C0763m3 c0763m3) {
        c0763m3.getClass();
        InterfaceC0633e9<C0763m3> interfaceC0633e9 = c0576b3.zzg;
        if (!interfaceC0633e9.mo25928b()) {
            c0576b3.zzg = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
        c0576b3.zzg.set(i, c0763m3);
    }

    /* renamed from: C */
    public static /* synthetic */ void m26148C(C0576b3 c0576b3, int i, C0610d3 c0610d3) {
        c0610d3.getClass();
        InterfaceC0633e9<C0610d3> interfaceC0633e9 = c0576b3.zzh;
        if (!interfaceC0633e9.mo25928b()) {
            c0576b3.zzh = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
        c0576b3.zzh.set(i, c0610d3);
    }
}
