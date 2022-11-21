package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.zs */
/* loaded from: classes2.dex */
public final class C6514zs extends pm3<C6514zs, C6477ys> implements bo3 {
    private static final C6514zs zzk;
    private int zzb;
    private int zze = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private C6218rs zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private long zzj;

    static {
        C6514zs c6514zs = new C6514zs();
        zzk = c6514zs;
        pm3.m8248z(C6514zs.class, c6514zs);
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
                        return zzk;
                    }
                    return new C6477ys(null);
                }
                return new C6514zs();
            }
            return pm3.m8270A(zzk, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzb", "zze", C6364vq.f32774a, "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }
}
