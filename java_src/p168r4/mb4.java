package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.mb4 */
/* loaded from: classes2.dex */
public final class mb4 extends pm3<mb4, lb4> implements bo3 {
    private static final mb4 zzz;
    private int zzb;
    private long zzt;
    private long zzu;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private int zzk = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private long zzl = -1;
    private long zzm = -1;
    private long zzn = -1;
    private int zzo = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private long zzp = -1;
    private long zzq = -1;
    private long zzr = -1;
    private long zzs = -1;
    private long zzv = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;

    /* renamed from: C */
    public static lb4 m9438C() {
        return zzz.m8252v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m9436E(mb4 mb4Var, long j) {
        mb4Var.zzb |= 1;
        mb4Var.zze = j;
    }

    /* renamed from: I */
    public static /* synthetic */ void m9435I(mb4 mb4Var, long j) {
        mb4Var.zzb |= 2;
        mb4Var.zzf = j;
    }

    /* renamed from: J */
    public static /* synthetic */ void m9434J(mb4 mb4Var, long j) {
        mb4Var.zzb |= 4;
        mb4Var.zzg = j;
    }

    /* renamed from: K */
    public static /* synthetic */ void m9433K(mb4 mb4Var, long j) {
        mb4Var.zzb |= 8;
        mb4Var.zzh = j;
    }

    /* renamed from: L */
    public static /* synthetic */ void m9432L(mb4 mb4Var) {
        mb4Var.zzb &= -9;
        mb4Var.zzh = -1L;
    }

    /* renamed from: M */
    public static /* synthetic */ void m9431M(mb4 mb4Var, long j) {
        mb4Var.zzb |= 16;
        mb4Var.zzi = j;
    }

    /* renamed from: N */
    public static /* synthetic */ void m9430N(mb4 mb4Var, long j) {
        mb4Var.zzb |= 32;
        mb4Var.zzj = j;
    }

    /* renamed from: O */
    public static /* synthetic */ void m9429O(mb4 mb4Var, long j) {
        mb4Var.zzb |= 128;
        mb4Var.zzl = j;
    }

    /* renamed from: P */
    public static /* synthetic */ void m9428P(mb4 mb4Var, long j) {
        mb4Var.zzb |= 256;
        mb4Var.zzm = j;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m9427Q(mb4 mb4Var, long j) {
        mb4Var.zzb |= 512;
        mb4Var.zzn = j;
    }

    /* renamed from: R */
    public static /* synthetic */ void m9426R(mb4 mb4Var, long j) {
        mb4Var.zzb |= 2048;
        mb4Var.zzp = j;
    }

    /* renamed from: S */
    public static /* synthetic */ void m9425S(mb4 mb4Var, long j) {
        mb4Var.zzb |= 4096;
        mb4Var.zzq = j;
    }

    /* renamed from: T */
    public static /* synthetic */ void m9424T(mb4 mb4Var, long j) {
        mb4Var.zzb |= 8192;
        mb4Var.zzr = j;
    }

    /* renamed from: U */
    public static /* synthetic */ void m9423U(mb4 mb4Var, long j) {
        mb4Var.zzb |= 16384;
        mb4Var.zzs = j;
    }

    /* renamed from: V */
    public static /* synthetic */ void m9422V(mb4 mb4Var, long j) {
        mb4Var.zzb |= 32768;
        mb4Var.zzt = j;
    }

    /* renamed from: W */
    public static /* synthetic */ void m9421W(mb4 mb4Var, long j) {
        mb4Var.zzb |= 65536;
        mb4Var.zzu = j;
    }

    /* renamed from: X */
    public static /* synthetic */ void m9420X(mb4 mb4Var, long j) {
        mb4Var.zzb |= 131072;
        mb4Var.zzv = j;
    }

    /* renamed from: Y */
    public static /* synthetic */ void m9419Y(mb4 mb4Var, long j) {
        mb4Var.zzb |= 262144;
        mb4Var.zzw = j;
    }

    /* renamed from: Z */
    public static /* synthetic */ void m9418Z(mb4 mb4Var, int i) {
        mb4Var.zzk = i - 1;
        mb4Var.zzb |= 64;
    }

    /* renamed from: a0 */
    public static /* synthetic */ void m9417a0(mb4 mb4Var, int i) {
        mb4Var.zzo = i - 1;
        mb4Var.zzb |= 1024;
    }

    static {
        mb4 mb4Var = new mb4();
        zzz = mb4Var;
        pm3.m8248z(mb4.class, mb4Var);
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
                        return zzz;
                    }
                    return new lb4(null);
                }
                return new mb4();
            }
            tm3 tm3Var = wb4.f33166a;
            return pm3.m8270A(zzz, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", tm3Var, "zzl", "zzm", "zzn", "zzo", tm3Var, "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy"});
        }
        return (byte) 1;
    }
}
