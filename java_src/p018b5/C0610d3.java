package p018b5;

import java.util.List;
/* renamed from: b5.d3 */
/* loaded from: classes2.dex */
public final class C0610d3 extends AbstractC0955x8<C0610d3, C0593c3> implements InterfaceC0651fa {
    private static final C0610d3 zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private InterfaceC0633e9<C0644f3> zzh = AbstractC0955x8.m24984f();
    private boolean zzi;
    private C0729k3 zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    /* renamed from: B */
    public static /* synthetic */ void m26089B(C0610d3 c0610d3, String str) {
        c0610d3.zze |= 2;
        c0610d3.zzg = str;
    }

    /* renamed from: u */
    public static C0593c3 m26079u() {
        return zza.m24979k();
    }

    /* renamed from: A */
    public final List<C0644f3> m26090A() {
        return this.zzh;
    }

    /* renamed from: D */
    public final boolean m26087D() {
        return this.zzk;
    }

    /* renamed from: E */
    public final boolean m26086E() {
        return this.zzl;
    }

    /* renamed from: F */
    public final boolean m26085F() {
        return this.zzm;
    }

    /* renamed from: G */
    public final boolean m26084G() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: H */
    public final boolean m26083H() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: I */
    public final boolean m26082I() {
        return (this.zze & 64) != 0;
    }

    /* renamed from: s */
    public final int m26081s() {
        return this.zzh.size();
    }

    /* renamed from: t */
    public final int m26080t() {
        return this.zzf;
    }

    /* renamed from: w */
    public final C0644f3 m26077w(int i) {
        return this.zzh.get(i);
    }

    /* renamed from: x */
    public final C0729k3 m26076x() {
        C0729k3 c0729k3 = this.zzj;
        return c0729k3 == null ? C0729k3.m25715t() : c0729k3;
    }

    /* renamed from: z */
    public final String m26075z() {
        return this.zzg;
    }

    static {
        C0610d3 c0610d3 = new C0610d3();
        zza = c0610d3;
        AbstractC0955x8.m24980j(C0610d3.class, c0610d3);
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
                    return new C0593c3(null);
                }
                return new C0610d3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", C0644f3.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public static /* synthetic */ void m26088C(C0610d3 c0610d3, int i, C0644f3 c0644f3) {
        c0644f3.getClass();
        InterfaceC0633e9<C0644f3> interfaceC0633e9 = c0610d3.zzh;
        if (!interfaceC0633e9.mo25928b()) {
            c0610d3.zzh = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
        c0610d3.zzh.set(i, c0644f3);
    }
}
