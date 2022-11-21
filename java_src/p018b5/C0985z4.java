package p018b5;

import java.util.List;
/* renamed from: b5.z4 */
/* loaded from: classes2.dex */
public final class C0985z4 extends AbstractC0955x8<C0985z4, C0968y4> implements InterfaceC0651fa {
    private static final C0985z4 zza;
    private InterfaceC0616d9 zze = AbstractC0955x8.m24975p();
    private InterfaceC0616d9 zzf = AbstractC0955x8.m24975p();
    private InterfaceC0633e9<C0679h4> zzg = AbstractC0955x8.m24984f();
    private InterfaceC0633e9<C0578b5> zzh = AbstractC0955x8.m24984f();

    /* renamed from: A */
    public static C0985z4 m24893A() {
        return zza;
    }

    /* renamed from: x */
    public static C0968y4 m24871x() {
        return zza.m24979k();
    }

    /* renamed from: B */
    public final C0578b5 m24892B(int i) {
        return this.zzh.get(i);
    }

    /* renamed from: C */
    public final List<C0679h4> m24891C() {
        return this.zzg;
    }

    /* renamed from: D */
    public final List<Long> m24890D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final List<C0578b5> m24889E() {
        return this.zzh;
    }

    /* renamed from: F */
    public final List<Long> m24888F() {
        return this.zze;
    }

    /* renamed from: s */
    public final int m24876s() {
        return this.zzg.size();
    }

    /* renamed from: t */
    public final int m24875t() {
        return this.zzf.size();
    }

    /* renamed from: u */
    public final int m24874u() {
        return this.zzh.size();
    }

    /* renamed from: v */
    public final int m24873v() {
        return this.zze.size();
    }

    /* renamed from: w */
    public final C0679h4 m24872w(int i) {
        return this.zzg.get(i);
    }

    static {
        C0985z4 c0985z4 = new C0985z4();
        zza = c0985z4;
        AbstractC0955x8.m24980j(C0985z4.class, c0985z4);
    }

    /* renamed from: G */
    public static /* synthetic */ void m24887G(C0985z4 c0985z4, Iterable iterable) {
        InterfaceC0616d9 interfaceC0616d9 = c0985z4.zze;
        if (!interfaceC0616d9.mo25928b()) {
            c0985z4.zze = AbstractC0955x8.m24974q(interfaceC0616d9);
        }
        AbstractC0648f7.m25983c(iterable, c0985z4.zze);
    }

    /* renamed from: I */
    public static /* synthetic */ void m24885I(C0985z4 c0985z4, Iterable iterable) {
        InterfaceC0616d9 interfaceC0616d9 = c0985z4.zzf;
        if (!interfaceC0616d9.mo25928b()) {
            c0985z4.zzf = AbstractC0955x8.m24974q(interfaceC0616d9);
        }
        AbstractC0648f7.m25983c(iterable, c0985z4.zzf);
    }

    /* renamed from: Q */
    public final void m24879Q() {
        InterfaceC0633e9<C0679h4> interfaceC0633e9 = this.zzg;
        if (!interfaceC0633e9.mo25928b()) {
            this.zzg = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
    }

    /* renamed from: R */
    public final void m24878R() {
        InterfaceC0633e9<C0578b5> interfaceC0633e9 = this.zzh;
        if (!interfaceC0633e9.mo25928b()) {
            this.zzh = AbstractC0955x8.m24983g(interfaceC0633e9);
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
                    return new C0968y4(null);
                }
                return new C0985z4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", C0679h4.class, "zzh", C0578b5.class});
        }
        return (byte) 1;
    }

    /* renamed from: K */
    public static /* synthetic */ void m24883K(C0985z4 c0985z4, Iterable iterable) {
        c0985z4.m24879Q();
        AbstractC0648f7.m25983c(iterable, c0985z4.zzg);
    }

    /* renamed from: L */
    public static /* synthetic */ void m24882L(C0985z4 c0985z4, int i) {
        c0985z4.m24879Q();
        c0985z4.zzg.remove(i);
    }

    /* renamed from: O */
    public static /* synthetic */ void m24881O(C0985z4 c0985z4, Iterable iterable) {
        c0985z4.m24878R();
        AbstractC0648f7.m25983c(iterable, c0985z4.zzh);
    }

    /* renamed from: P */
    public static /* synthetic */ void m24880P(C0985z4 c0985z4, int i) {
        c0985z4.m24878R();
        c0985z4.zzh.remove(i);
    }
}
