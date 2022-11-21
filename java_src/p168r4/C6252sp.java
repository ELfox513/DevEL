package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.sp */
/* loaded from: classes2.dex */
public final class C6252sp extends pm3<C6252sp, C6215rp> implements bo3 {
    private static final C6252sp zzp;
    private int zzb;
    private int zze;
    private C5956kq zzg;
    private C6030mq zzh;
    private C6105oq zzj;
    private C6513zr zzk;
    private C6143pr zzl;
    private C5661cr zzm;
    private C5736er zzn;
    private int zzf = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private ym3<C5809gq> zzi = pm3.m8259m();
    private ym3<C6032ms> zzo = pm3.m8259m();

    /* renamed from: D */
    public static C6252sp m7074D() {
        return zzp;
    }

    /* renamed from: I */
    public static /* synthetic */ void m7072I(C6252sp c6252sp, EnumC6178qp enumC6178qp) {
        c6252sp.zze = enumC6178qp.zza();
        c6252sp.zzb |= 1;
    }

    /* renamed from: J */
    public static /* synthetic */ void m7071J(C6252sp c6252sp, C6030mq c6030mq) {
        c6030mq.getClass();
        c6252sp.zzh = c6030mq;
        c6252sp.zzb |= 8;
    }

    /* renamed from: C */
    public final C6030mq m7075C() {
        C6030mq c6030mq = this.zzh;
        return c6030mq == null ? C6030mq.m9284C() : c6030mq;
    }

    static {
        C6252sp c6252sp = new C6252sp();
        zzp = c6252sp;
        pm3.m8248z(C6252sp.class, c6252sp);
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
                    return new C6215rp(null);
                }
                return new C6252sp();
            }
            return pm3.m8270A(zzp, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007ဌ\u0000\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzb", "zze", EnumC6178qp.m7737d(), "zzf", C6364vq.f32774a, "zzg", "zzh", "zzi", C5809gq.class, "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", C6032ms.class});
        }
        return (byte) 1;
    }
}
