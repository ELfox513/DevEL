package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.zr */
/* loaded from: classes2.dex */
public final class C6513zr extends pm3<C6513zr, C6476yr> implements bo3 {
    private static final C6513zr zzp;
    private int zzb;
    private int zze = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzf = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private C5626bs zzo;

    static {
        C6513zr c6513zr = new C6513zr();
        zzp = c6513zr;
        pm3.m8248z(C6513zr.class, c6513zr);
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
                        return zzp;
                    }
                    return new C6476yr(null);
                }
                return new C6513zr();
            }
            tm3 tm3Var = C6364vq.f32774a;
            return pm3.m8270A(zzp, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzb", "zze", tm3Var, "zzf", tm3Var, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo"});
        }
        return (byte) 1;
    }
}
