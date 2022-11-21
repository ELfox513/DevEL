package p168r4;
/* renamed from: r4.nh3 */
/* loaded from: classes2.dex */
public final class nh3 extends pm3<nh3, mh3> implements bo3 {
    private static final nh3 zzh;
    private String zzb = "";
    private int zze;
    private int zzf;
    private int zzg;

    /* renamed from: C */
    public static mh3 m9094C() {
        return zzh.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m9092E(nh3 nh3Var, String str) {
        str.getClass();
        nh3Var.zzb = str;
    }

    /* renamed from: J */
    public static /* synthetic */ void m9090J(nh3 nh3Var, int i) {
        if (i == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        nh3Var.zze = i - 2;
    }

    static {
        nh3 nh3Var = new nh3();
        zzh = nh3Var;
        pm3.m8248z(nh3.class, nh3Var);
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
                    return new mh3(null);
                }
                return new nh3();
            }
            return pm3.m8270A(zzh, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
