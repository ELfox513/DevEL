package p168r4;
/* renamed from: r4.of3 */
/* loaded from: classes2.dex */
public final class of3 extends pm3<of3, nf3> implements bo3 {
    private static final of3 zze;
    private zg3 zzb;

    /* renamed from: D */
    public static nf3 m8803D() {
        return zze.m8252v();
    }

    /* renamed from: E */
    public static of3 m8802E() {
        return zze;
    }

    /* renamed from: J */
    public static /* synthetic */ void m8800J(of3 of3Var, zg3 zg3Var) {
        zg3Var.getClass();
        of3Var.zzb = zg3Var;
    }

    /* renamed from: C */
    public final zg3 m8804C() {
        zg3 zg3Var = this.zzb;
        return zg3Var == null ? zg3.m4253I() : zg3Var;
    }

    static {
        of3 of3Var = new of3();
        zze = of3Var;
        pm3.m8248z(of3.class, of3Var);
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
                        return zze;
                    }
                    return new nf3(null);
                }
                return new of3();
            }
            return pm3.m8270A(zze, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
