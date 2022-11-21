package p168r4;
/* renamed from: r4.ua4 */
/* loaded from: classes2.dex */
public final class ua4 extends pm3<ua4, ta4> implements bo3 {
    private static final ua4 zzf;
    private int zzb;
    private int zze = 2;

    static {
        ua4 ua4Var = new ua4();
        zzf = ua4Var;
        pm3.m8248z(ua4.class, ua4Var);
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
                        return zzf;
                    }
                    return new ta4(null);
                }
                return new ua4();
            }
            return pm3.m8270A(zzf, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001bဌ\u0000", new Object[]{"zzb", "zze", va4.f32665a});
        }
        return (byte) 1;
    }
}
