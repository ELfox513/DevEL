package p168r4;
/* renamed from: r4.m2 */
/* loaded from: classes2.dex */
public final class C6006m2 extends pm3<C6006m2, C5969l2> implements bo3 {
    private static final C6006m2 zzh;
    private int zzb;
    private C6118p2 zze;
    private ll3 zzf;
    private ll3 zzg;

    /* renamed from: I */
    public static C6006m2 m9517I(ll3 ll3Var, bm3 bm3Var) {
        return (C6006m2) pm3.m8255r(zzh, ll3Var, bm3Var);
    }

    /* renamed from: C */
    public final C6118p2 m9520C() {
        C6118p2 c6118p2 = this.zze;
        return c6118p2 == null ? C6118p2.m8508N() : c6118p2;
    }

    /* renamed from: D */
    public final ll3 m9519D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final ll3 m9518E() {
        return this.zzg;
    }

    static {
        C6006m2 c6006m2 = new C6006m2();
        zzh = c6006m2;
        pm3.m8248z(C6006m2.class, c6006m2);
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
                        return zzh;
                    }
                    return new C5969l2(null);
                }
                return new C6006m2();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public C6006m2() {
        ll3 ll3Var = ll3.f27255b;
        this.zzf = ll3Var;
        this.zzg = ll3Var;
    }
}
