package p168r4;
/* renamed from: r4.wg3 */
/* loaded from: classes2.dex */
public final class wg3 extends pm3<wg3, vg3> implements bo3 {
    private static final wg3 zzg;
    private String zzb = "";
    private ll3 zze = ll3.f27255b;
    private int zzf;

    /* renamed from: E */
    public static vg3 m5730E() {
        return zzg.m8252v();
    }

    /* renamed from: I */
    public static wg3 m5729I() {
        return zzg;
    }

    /* renamed from: C */
    public final String m5732C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final ll3 m5731D() {
        return this.zze;
    }

    /* renamed from: M */
    public final int m5725M() {
        int i = this.zzf;
        int i2 = 4;
        if (i == 0) {
            i2 = 2;
        } else if (i == 1) {
            i2 = 3;
        } else if (i != 2) {
            i2 = i != 3 ? i != 4 ? 0 : 6 : 5;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    static {
        wg3 wg3Var = new wg3();
        zzg = wg3Var;
        pm3.m8248z(wg3.class, wg3Var);
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
                    return new vg3(null);
                }
                return new wg3();
            }
            return pm3.m8270A(zzg, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
