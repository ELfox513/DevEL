package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.yq */
/* loaded from: classes2.dex */
public final class C6475yq extends pm3<C6475yq, C6438xq> implements bo3 {
    private static final C6475yq zzr;
    private int zzb;
    private int zze;
    private int zzg;
    private C5921js zzi;
    private C6179qq zzk;
    private C6290tq zzl;
    private C6069nr zzm;
    private C6252sp zzn;
    private C6439xr zzo;
    private C5775ft zzp;
    private C5624bq zzq;
    private String zzf = "";
    private int zzh = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private xm3 zzj = pm3.m8260l();

    /* renamed from: I */
    public static C6438xq m4606I() {
        return zzr.m8252v();
    }

    /* renamed from: K */
    public static /* synthetic */ void m4604K(C6475yq c6475yq, String str) {
        str.getClass();
        c6475yq.zzb |= 2;
        c6475yq.zzf = str;
    }

    /* renamed from: N */
    public static /* synthetic */ void m4601N(C6475yq c6475yq, C6179qq c6179qq) {
        c6179qq.getClass();
        c6475yq.zzk = c6179qq;
        c6475yq.zzb |= 32;
    }

    /* renamed from: O */
    public static /* synthetic */ void m4600O(C6475yq c6475yq, C6252sp c6252sp) {
        c6252sp.getClass();
        c6475yq.zzn = c6252sp;
        c6475yq.zzb |= 256;
    }

    /* renamed from: P */
    public static /* synthetic */ void m4599P(C6475yq c6475yq, C6439xr c6439xr) {
        c6439xr.getClass();
        c6475yq.zzo = c6439xr;
        c6475yq.zzb |= 512;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m4598Q(C6475yq c6475yq, C5775ft c5775ft) {
        c5775ft.getClass();
        c6475yq.zzp = c5775ft;
        c6475yq.zzb |= 1024;
    }

    /* renamed from: R */
    public static /* synthetic */ void m4597R(C6475yq c6475yq, C5624bq c5624bq) {
        c5624bq.getClass();
        c6475yq.zzq = c5624bq;
        c6475yq.zzb |= 2048;
    }

    /* renamed from: C */
    public final String m4609C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final C6179qq m4608D() {
        C6179qq c6179qq = this.zzk;
        return c6179qq == null ? C6179qq.m7708C() : c6179qq;
    }

    /* renamed from: E */
    public final C6252sp m4607E() {
        C6252sp c6252sp = this.zzn;
        return c6252sp == null ? C6252sp.m7074D() : c6252sp;
    }

    static {
        C6475yq c6475yq = new C6475yq();
        zzr = c6475yq;
        pm3.m8248z(C6475yq.class, c6475yq);
    }

    /* renamed from: L */
    public static /* synthetic */ void m4603L(C6475yq c6475yq, Iterable iterable) {
        int i;
        xm3 xm3Var = c6475yq.zzj;
        if (!xm3Var.zza()) {
            int size = xm3Var.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size + size;
            }
            c6475yq.zzj = xm3Var.mo5246D(i);
        }
        uk3.m6491g(iterable, c6475yq.zzj);
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
                        return zzr;
                    }
                    return new C6438xq(null);
                }
                return new C6475yq();
            }
            return pm3.m8270A(zzr, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", C6364vq.f32774a, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq"});
        }
        return (byte) 1;
    }
}
