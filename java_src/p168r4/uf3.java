package p168r4;
/* renamed from: r4.uf3 */
/* loaded from: classes2.dex */
public final class uf3 extends pm3<uf3, tf3> implements bo3 {
    private static final uf3 zzg;
    private gg3 zzb;
    private of3 zze;
    private int zzf;

    /* renamed from: E */
    public static tf3 m6529E() {
        return zzg.m8252v();
    }

    /* renamed from: I */
    public static uf3 m6528I() {
        return zzg;
    }

    /* renamed from: K */
    public static /* synthetic */ void m6526K(uf3 uf3Var, gg3 gg3Var) {
        gg3Var.getClass();
        uf3Var.zzb = gg3Var;
    }

    /* renamed from: L */
    public static /* synthetic */ void m6525L(uf3 uf3Var, of3 of3Var) {
        of3Var.getClass();
        uf3Var.zze = of3Var;
    }

    /* renamed from: C */
    public final gg3 m6531C() {
        gg3 gg3Var = this.zzb;
        return gg3Var == null ? gg3.m11163E() : gg3Var;
    }

    /* renamed from: D */
    public final of3 m6530D() {
        of3 of3Var = this.zze;
        return of3Var == null ? of3.m8802E() : of3Var;
    }

    /* renamed from: M */
    public final int m6524M() {
        int i = this.zzf;
        int i2 = 3;
        if (i == 0) {
            i2 = 2;
        } else if (i != 1) {
            i2 = i != 2 ? i != 3 ? 0 : 5 : 4;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    static {
        uf3 uf3Var = new uf3();
        zzg = uf3Var;
        pm3.m8248z(uf3.class, uf3Var);
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
                    return new tf3(null);
                }
                return new uf3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
