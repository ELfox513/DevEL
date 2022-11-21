package p168r4;
/* renamed from: r4.ke3 */
/* loaded from: classes2.dex */
public final class ke3 extends pm3<ke3, je3> implements bo3 {
    private static final ke3 zze;
    private int zzb;

    /* renamed from: D */
    public static je3 m10050D() {
        return zze.m8252v();
    }

    /* renamed from: E */
    public static ke3 m10049E() {
        return zze;
    }

    /* renamed from: C */
    public final int m10051C() {
        return this.zzb;
    }

    static {
        ke3 ke3Var = new ke3();
        zze = ke3Var;
        pm3.m8248z(ke3.class, ke3Var);
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
                    return new je3(null);
                }
                return new ke3();
            }
            return pm3.m8270A(zze, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
