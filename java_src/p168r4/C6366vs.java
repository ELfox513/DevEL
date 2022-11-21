package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.vs */
/* loaded from: classes2.dex */
public final class C6366vs extends pm3<C6366vs, C6329us> implements bo3 {
    private static final C6366vs zzj;
    private int zzb;
    private int zze = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private C6218rs zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        C6366vs c6366vs = new C6366vs();
        zzj = c6366vs;
        pm3.m8248z(C6366vs.class, c6366vs);
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
                        return zzj;
                    }
                    return new C6329us(null);
                }
                return new C6366vs();
            }
            return pm3.m8270A(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzb", "zze", C6364vq.f32774a, "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
