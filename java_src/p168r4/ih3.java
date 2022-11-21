package p168r4;
/* renamed from: r4.ih3 */
/* loaded from: classes2.dex */
public final class ih3 extends pm3<ih3, hh3> implements bo3 {
    private static final ih3 zzh;
    private wg3 zzb;
    private int zze;
    private int zzf;
    private int zzg;

    /* renamed from: C */
    public final boolean m10659C() {
        return this.zzb != null;
    }

    /* renamed from: D */
    public final wg3 m10658D() {
        wg3 wg3Var = this.zzb;
        return wg3Var == null ? wg3.m5729I() : wg3Var;
    }

    /* renamed from: E */
    public final int m10657E() {
        return this.zzf;
    }

    /* renamed from: J */
    public final int m10655J() {
        int i = this.zze;
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

    /* renamed from: K */
    public final int m10654K() {
        int m12458b = ci3.m12458b(this.zzg);
        if (m12458b == 0) {
            return 1;
        }
        return m12458b;
    }

    static {
        ih3 ih3Var = new ih3();
        zzh = ih3Var;
        pm3.m8248z(ih3.class, ih3Var);
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
                    return new hh3(null);
                }
                return new ih3();
            }
            return pm3.m8270A(zzh, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
