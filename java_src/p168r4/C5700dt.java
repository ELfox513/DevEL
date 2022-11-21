package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.dt */
/* loaded from: classes2.dex */
public final class C5700dt extends pm3<C5700dt, C5663ct> implements bo3 {
    private static final C5700dt zzg;
    private int zzb;
    private int zze = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private C6218rs zzf;

    static {
        C5700dt c5700dt = new C5700dt();
        zzg = c5700dt;
        pm3.m8248z(C5700dt.class, c5700dt);
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
                    return new C5663ct(null);
                }
                return new C5700dt();
            }
            return pm3.m8270A(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzb", "zze", C6364vq.f32774a, "zzf"});
        }
        return (byte) 1;
    }
}
