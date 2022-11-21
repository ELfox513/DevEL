package p168r4;
/* renamed from: r4.ag3 */
/* loaded from: classes2.dex */
public final class ag3 extends pm3<ag3, zf3> implements bo3 {
    private static final ag3 zzh;
    private int zzb;
    private uf3 zze;
    private ll3 zzf;
    private ll3 zzg;

    /* renamed from: J */
    public static ag3 m13026J(ll3 ll3Var, bm3 bm3Var) {
        return (ag3) pm3.m8255r(zzh, ll3Var, bm3Var);
    }

    /* renamed from: K */
    public static zf3 m13025K() {
        return zzh.m8252v();
    }

    /* renamed from: L */
    public static ag3 m13024L() {
        return zzh;
    }

    /* renamed from: O */
    public static /* synthetic */ void m13021O(ag3 ag3Var, uf3 uf3Var) {
        uf3Var.getClass();
        ag3Var.zze = uf3Var;
    }

    /* renamed from: C */
    public final int m13030C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final uf3 m13029D() {
        uf3 uf3Var = this.zze;
        return uf3Var == null ? uf3.m6528I() : uf3Var;
    }

    /* renamed from: E */
    public final ll3 m13028E() {
        return this.zzf;
    }

    /* renamed from: I */
    public final ll3 m13027I() {
        return this.zzg;
    }

    static {
        ag3 ag3Var = new ag3();
        zzh = ag3Var;
        pm3.m8248z(ag3.class, ag3Var);
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
                    return new zf3(null);
                }
                return new ag3();
            }
            return pm3.m8270A(zzh, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public ag3() {
        ll3 ll3Var = ll3.f27255b;
        this.zzf = ll3Var;
        this.zzg = ll3Var;
    }
}
