package p168r4;
/* renamed from: r4.ft */
/* loaded from: classes2.dex */
public final class C5775ft extends pm3<C5775ft, C5738et> implements bo3 {
    private static final C5775ft zzg;
    private int zzb;
    private boolean zze;
    private int zzf;

    /* renamed from: D */
    public static C5738et m11371D() {
        return zzg.m8252v();
    }

    /* renamed from: I */
    public static /* synthetic */ void m11369I(C5775ft c5775ft, boolean z) {
        c5775ft.zzb |= 1;
        c5775ft.zze = z;
    }

    /* renamed from: J */
    public static /* synthetic */ void m11368J(C5775ft c5775ft, int i) {
        c5775ft.zzb |= 2;
        c5775ft.zzf = i;
    }

    /* renamed from: C */
    public final boolean m11372C() {
        return this.zze;
    }

    static {
        C5775ft c5775ft = new C5775ft();
        zzg = c5775ft;
        pm3.m8248z(C5775ft.class, c5775ft);
    }

    @Override // p168r4.pm3
    /* renamed from: B */
    public final Object mo4087B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzg;
                    }
                    return new C5738et(null);
                }
                return new C5775ft();
            }
            return pm3.m8270A(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
