package p018b5;

import java.util.List;
/* renamed from: b5.x3 */
/* loaded from: classes2.dex */
public final class C0950x3 extends AbstractC0955x8<C0950x3, C0933w3> implements InterfaceC0651fa {
    private static final C0950x3 zza;
    private int zze;
    private long zzf;
    private int zzh;
    private boolean zzm;
    private String zzg = "";
    private InterfaceC0633e9<C0984z3> zzi = AbstractC0955x8.m24984f();
    private InterfaceC0633e9<C0916v3> zzj = AbstractC0955x8.m24984f();
    private InterfaceC0633e9<C0576b3> zzk = AbstractC0955x8.m24984f();
    private String zzl = "";
    private InterfaceC0633e9<C0731k5> zzn = AbstractC0955x8.m24984f();

    /* renamed from: w */
    public static C0933w3 m25001w() {
        return zza.m24979k();
    }

    /* renamed from: z */
    public static C0950x3 m24999z() {
        return zza;
    }

    /* renamed from: A */
    public final String m25014A() {
        return this.zzg;
    }

    /* renamed from: B */
    public final List<C0576b3> m25013B() {
        return this.zzk;
    }

    /* renamed from: C */
    public final List<C0731k5> m25012C() {
        return this.zzn;
    }

    /* renamed from: D */
    public final List<C0984z3> m25011D() {
        return this.zzi;
    }

    /* renamed from: G */
    public final boolean m25008G() {
        return this.zzm;
    }

    /* renamed from: H */
    public final boolean m25007H() {
        return (this.zze & 2) != 0;
    }

    /* renamed from: I */
    public final boolean m25006I() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: s */
    public final int m25005s() {
        return this.zzn.size();
    }

    /* renamed from: t */
    public final int m25004t() {
        return this.zzj.size();
    }

    /* renamed from: u */
    public final long m25003u() {
        return this.zzf;
    }

    /* renamed from: v */
    public final C0916v3 m25002v(int i) {
        return this.zzj.get(i);
    }

    static {
        C0950x3 c0950x3 = new C0950x3();
        zza = c0950x3;
        AbstractC0955x8.m24980j(C0950x3.class, c0950x3);
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
                    return new C0933w3(null);
                }
                return new C0950x3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", C0984z3.class, "zzj", C0916v3.class, "zzk", C0576b3.class, "zzl", "zzm", "zzn", C0731k5.class});
        }
        return (byte) 1;
    }

    /* renamed from: E */
    public static /* synthetic */ void m25010E(C0950x3 c0950x3, int i, C0916v3 c0916v3) {
        c0916v3.getClass();
        InterfaceC0633e9<C0916v3> interfaceC0633e9 = c0950x3.zzj;
        if (!interfaceC0633e9.mo25928b()) {
            c0950x3.zzj = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
        c0950x3.zzj.set(i, c0916v3);
    }
}
