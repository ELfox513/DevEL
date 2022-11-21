package p168r4;
/* renamed from: r4.jf3 */
/* loaded from: classes2.dex */
public final class jf3 extends pm3<jf3, if3> implements bo3 {
    private static final jf3 zzb;

    /* renamed from: C */
    public static jf3 m10296C(ll3 ll3Var, bm3 bm3Var) {
        return (jf3) pm3.m8255r(zzb, ll3Var, bm3Var);
    }

    /* renamed from: D */
    public static jf3 m10295D() {
        return zzb;
    }

    static {
        jf3 jf3Var = new jf3();
        zzb = jf3Var;
        pm3.m8248z(jf3.class, jf3Var);
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
                        return zzb;
                    }
                    return new if3(null);
                }
                return new jf3();
            }
            return pm3.m8270A(zzb, "\u0000\u0000", null);
        }
        return (byte) 1;
    }
}
