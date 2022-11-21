package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.xs */
/* loaded from: classes2.dex */
public final class C6440xs extends pm3<C6440xs, C6403ws> implements bo3 {
    private static final C6440xs zzh;
    private int zzb;
    private int zze = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private C6218rs zzf;
    private C5848hs zzg;

    static {
        C6440xs c6440xs = new C6440xs();
        zzh = c6440xs;
        pm3.m8248z(C6440xs.class, c6440xs);
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
                    return new C6403ws(null);
                }
                return new C6440xs();
            }
            return pm3.m8270A(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", C6364vq.f32774a, "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
