package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.qq */
/* loaded from: classes2.dex */
public final class C6179qq extends pm3<C6179qq, C6142pq> implements bo3 {
    private static final C6179qq zzm;
    private int zzb;
    private C5848hs zzf;
    private int zzg;
    private C5921js zzh;
    private int zzi;
    private String zze = "";
    private int zzj = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzk = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzl = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;

    /* renamed from: C */
    public static C6179qq m7708C() {
        return zzm;
    }

    /* renamed from: E */
    public static /* synthetic */ void m7706E(C6179qq c6179qq, String str) {
        c6179qq.zzb |= 1;
        c6179qq.zze = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m7705I(C6179qq c6179qq, C5921js c5921js) {
        c5921js.getClass();
        c6179qq.zzh = c5921js;
        c6179qq.zzb |= 8;
    }

    static {
        C6179qq c6179qq = new C6179qq();
        zzm = c6179qq;
        pm3.m8248z(C6179qq.class, c6179qq);
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
                        return zzm;
                    }
                    return new C6142pq(null);
                }
                return new C6179qq();
            }
            tm3 tm3Var = C6364vq.f32774a;
            return pm3.m8270A(zzm, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", tm3Var, "zzk", tm3Var, "zzl", tm3Var});
        }
        return (byte) 1;
    }
}
