package p018b5;
/* renamed from: b5.f4 */
/* loaded from: classes2.dex */
public final class C0645f4 extends AbstractC0955x8<C0645f4, C0628e4> implements InterfaceC0651fa {
    private static final C0645f4 zza;
    private int zze;
    private int zzf;
    private C0985z4 zzg;
    private C0985z4 zzh;
    private boolean zzi;

    /* renamed from: A */
    public static /* synthetic */ void m25997A(C0645f4 c0645f4, C0985z4 c0985z4) {
        c0645f4.zzh = c0985z4;
        c0645f4.zze |= 4;
    }

    /* renamed from: B */
    public static /* synthetic */ void m25996B(C0645f4 c0645f4, boolean z) {
        c0645f4.zze |= 8;
        c0645f4.zzi = z;
    }

    /* renamed from: t */
    public static C0628e4 m25990t() {
        return zza.m24979k();
    }

    /* renamed from: x */
    public static /* synthetic */ void m25986x(C0645f4 c0645f4, int i) {
        c0645f4.zze |= 1;
        c0645f4.zzf = i;
    }

    /* renamed from: z */
    public static /* synthetic */ void m25985z(C0645f4 c0645f4, C0985z4 c0985z4) {
        c0985z4.getClass();
        c0645f4.zzg = c0985z4;
        c0645f4.zze |= 2;
    }

    /* renamed from: C */
    public final boolean m25995C() {
        return this.zzi;
    }

    /* renamed from: D */
    public final boolean m25994D() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: E */
    public final boolean m25993E() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: F */
    public final boolean m25992F() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: s */
    public final int m25991s() {
        return this.zzf;
    }

    /* renamed from: v */
    public final C0985z4 m25988v() {
        C0985z4 c0985z4 = this.zzg;
        return c0985z4 == null ? C0985z4.m24893A() : c0985z4;
    }

    /* renamed from: w */
    public final C0985z4 m25987w() {
        C0985z4 c0985z4 = this.zzh;
        return c0985z4 == null ? C0985z4.m24893A() : c0985z4;
    }

    static {
        C0645f4 c0645f4 = new C0645f4();
        zza = c0645f4;
        AbstractC0955x8.m24980j(C0645f4.class, c0645f4);
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
                    return new C0628e4(null);
                }
                return new C0645f4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
