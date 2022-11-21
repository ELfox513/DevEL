package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.mq */
/* loaded from: classes2.dex */
public final class C6030mq extends pm3<C6030mq, C5993lq> implements bo3 {
    private static final C6030mq zzj;
    private int zzb;
    private String zze = "";
    private ym3<C5809gq> zzf = pm3.m8259m();
    private int zzg = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzh = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzi = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;

    /* renamed from: C */
    public static C6030mq m9284C() {
        return zzj;
    }

    /* renamed from: E */
    public static /* synthetic */ void m9282E(C6030mq c6030mq, String str) {
        str.getClass();
        c6030mq.zzb |= 1;
        c6030mq.zze = str;
    }

    static {
        C6030mq c6030mq = new C6030mq();
        zzj = c6030mq;
        pm3.m8248z(C6030mq.class, c6030mq);
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
                    return new C5993lq(null);
                }
                return new C6030mq();
            }
            tm3 tm3Var = C6364vq.f32774a;
            return pm3.m8270A(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzb", "zze", "zzf", C5809gq.class, "zzg", tm3Var, "zzh", tm3Var, "zzi", tm3Var});
        }
        return (byte) 1;
    }
}
