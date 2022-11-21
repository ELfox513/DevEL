package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.ts */
/* loaded from: classes2.dex */
public final class C6292ts extends pm3<C6292ts, C6255ss> implements bo3 {
    private static final C6292ts zzi;
    private int zzb;
    private C5921js zze;
    private int zzf = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private C6218rs zzg;
    private C5848hs zzh;

    static {
        C6292ts c6292ts = new C6292ts();
        zzi = c6292ts;
        pm3.m8248z(C6292ts.class, c6292ts);
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
                        return zzi;
                    }
                    return new C6255ss(null);
                }
                return new C6292ts();
            }
            return pm3.m8270A(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzb", "zze", "zzf", C6364vq.f32774a, "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
