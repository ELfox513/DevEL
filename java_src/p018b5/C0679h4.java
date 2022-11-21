package p018b5;
/* renamed from: b5.h4 */
/* loaded from: classes2.dex */
public final class C0679h4 extends AbstractC0955x8<C0679h4, C0662g4> implements InterfaceC0651fa {
    private static final C0679h4 zza;
    private int zze;
    private int zzf;
    private long zzg;

    /* renamed from: u */
    public static C0662g4 m25875u() {
        return zza.m24979k();
    }

    /* renamed from: w */
    public static /* synthetic */ void m25873w(C0679h4 c0679h4, int i) {
        c0679h4.zze |= 1;
        c0679h4.zzf = i;
    }

    /* renamed from: x */
    public static /* synthetic */ void m25872x(C0679h4 c0679h4, long j) {
        c0679h4.zze |= 2;
        c0679h4.zzg = j;
    }

    /* renamed from: A */
    public final boolean m25878A() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: s */
    public final int m25877s() {
        return this.zzf;
    }

    /* renamed from: t */
    public final long m25876t() {
        return this.zzg;
    }

    /* renamed from: z */
    public final boolean m25871z() {
        return (this.zze & 2) != 0;
    }

    static {
        C0679h4 c0679h4 = new C0679h4();
        zza = c0679h4;
        AbstractC0955x8.m24980j(C0679h4.class, c0679h4);
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
                    return new C0662g4(null);
                }
                return new C0679h4();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
