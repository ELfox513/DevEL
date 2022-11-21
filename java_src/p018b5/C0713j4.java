package p018b5;

import java.util.List;
/* renamed from: b5.j4 */
/* loaded from: classes2.dex */
public final class C0713j4 extends AbstractC0955x8<C0713j4, C0696i4> implements InterfaceC0651fa {
    private static final C0713j4 zza;
    private int zze;
    private InterfaceC0633e9<C0781n4> zzf = AbstractC0955x8.m24984f();
    private String zzg = "";
    private long zzh;
    private long zzi;
    private int zzj;

    /* renamed from: H */
    public static /* synthetic */ void m25767H(C0713j4 c0713j4, String str) {
        str.getClass();
        c0713j4.zze |= 1;
        c0713j4.zzg = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m25766I(C0713j4 c0713j4, long j) {
        c0713j4.zze |= 2;
        c0713j4.zzh = j;
    }

    /* renamed from: J */
    public static /* synthetic */ void m25765J(C0713j4 c0713j4, long j) {
        c0713j4.zze |= 4;
        c0713j4.zzi = j;
    }

    /* renamed from: w */
    public static C0696i4 m25756w() {
        return zza.m24979k();
    }

    /* renamed from: A */
    public final String m25774A() {
        return this.zzg;
    }

    /* renamed from: B */
    public final List<C0781n4> m25773B() {
        return this.zzf;
    }

    /* renamed from: K */
    public final boolean m25764K() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: L */
    public final boolean m25763L() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: O */
    public final boolean m25762O() {
        return (this.zze & 2) != 0;
    }

    /* renamed from: s */
    public final int m25760s() {
        return this.zzj;
    }

    /* renamed from: t */
    public final int m25759t() {
        return this.zzf.size();
    }

    /* renamed from: u */
    public final long m25758u() {
        return this.zzi;
    }

    /* renamed from: v */
    public final long m25757v() {
        return this.zzh;
    }

    /* renamed from: z */
    public final C0781n4 m25754z(int i) {
        return this.zzf.get(i);
    }

    static {
        C0713j4 c0713j4 = new C0713j4();
        zza = c0713j4;
        AbstractC0955x8.m24980j(C0713j4.class, c0713j4);
    }

    /* renamed from: P */
    public final void m25761P() {
        InterfaceC0633e9<C0781n4> interfaceC0633e9 = this.zzf;
        if (!interfaceC0633e9.mo25928b()) {
            this.zzf = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
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
                    return new C0696i4(null);
                }
                return new C0713j4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", C0781n4.class, "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public static /* synthetic */ void m25772C(C0713j4 c0713j4, int i, C0781n4 c0781n4) {
        c0781n4.getClass();
        c0713j4.m25761P();
        c0713j4.zzf.set(i, c0781n4);
    }

    /* renamed from: D */
    public static /* synthetic */ void m25771D(C0713j4 c0713j4, C0781n4 c0781n4) {
        c0781n4.getClass();
        c0713j4.m25761P();
        c0713j4.zzf.add(c0781n4);
    }

    /* renamed from: E */
    public static /* synthetic */ void m25770E(C0713j4 c0713j4, Iterable iterable) {
        c0713j4.m25761P();
        AbstractC0648f7.m25983c(iterable, c0713j4.zzf);
    }

    /* renamed from: G */
    public static /* synthetic */ void m25768G(C0713j4 c0713j4, int i) {
        c0713j4.m25761P();
        c0713j4.zzf.remove(i);
    }
}
