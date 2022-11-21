package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.kb4 */
/* loaded from: classes2.dex */
public final class kb4 extends pm3<kb4, jb4> implements bo3 {
    private static final kb4 zzg;
    private int zzb;
    private long zze = -1;
    private int zzf = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;

    static {
        kb4 kb4Var = new kb4();
        zzg = kb4Var;
        pm3.m8248z(kb4.class, kb4Var);
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
                    return new jb4(null);
                }
                return new kb4();
            }
            return pm3.m8270A(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဌ\u0001", new Object[]{"zzb", "zze", "zzf", wb4.f33166a});
        }
        return (byte) 1;
    }
}
