package p018b5;
/* renamed from: b5.m3 */
/* loaded from: classes2.dex */
public final class C0763m3 extends AbstractC0955x8<C0763m3, C0746l3> implements InterfaceC0651fa {
    private static final C0763m3 zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private C0644f3 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    /* renamed from: u */
    public static C0746l3 m25674u() {
        return zza.m24979k();
    }

    /* renamed from: x */
    public static /* synthetic */ void m25671x(C0763m3 c0763m3, String str) {
        c0763m3.zze |= 2;
        c0763m3.zzg = str;
    }

    /* renamed from: A */
    public final boolean m25680A() {
        return this.zzj;
    }

    /* renamed from: B */
    public final boolean m25679B() {
        return this.zzk;
    }

    /* renamed from: C */
    public final boolean m25678C() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: D */
    public final boolean m25677D() {
        return (this.zze & 32) != 0;
    }

    /* renamed from: s */
    public final int m25676s() {
        return this.zzf;
    }

    /* renamed from: t */
    public final C0644f3 m25675t() {
        C0644f3 c0644f3 = this.zzh;
        return c0644f3 == null ? C0644f3.m26003t() : c0644f3;
    }

    /* renamed from: w */
    public final String m25672w() {
        return this.zzg;
    }

    /* renamed from: z */
    public final boolean m25670z() {
        return this.zzi;
    }

    static {
        C0763m3 c0763m3 = new C0763m3();
        zza = c0763m3;
        AbstractC0955x8.m24980j(C0763m3.class, c0763m3);
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
                    return new C0746l3(null);
                }
                return new C0763m3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
