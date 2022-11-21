package p168r4;
/* renamed from: r4.xq3 */
/* loaded from: classes2.dex */
public final class xq3 extends pm3<xq3, wq3> implements bo3 {
    private static final xq3 zzo;
    private int zzb;
    private int zze;
    private jq3 zzg;
    private nq3 zzh;
    private int zzi;
    private int zzl;
    private byte zzn = 2;
    private String zzf = "";
    private um3 zzj = pm3.m8262j();
    private String zzk = "";
    private ym3<String> zzm = pm3.m8259m();

    /* renamed from: E */
    public static wq3 m5159E() {
        return zzo.m8252v();
    }

    /* renamed from: J */
    public static /* synthetic */ void m5157J(xq3 xq3Var, int i) {
        xq3Var.zzb |= 1;
        xq3Var.zze = i;
    }

    /* renamed from: K */
    public static /* synthetic */ void m5156K(xq3 xq3Var, String str) {
        str.getClass();
        xq3Var.zzb |= 2;
        xq3Var.zzf = str;
    }

    /* renamed from: L */
    public static /* synthetic */ void m5155L(xq3 xq3Var, jq3 jq3Var) {
        jq3Var.getClass();
        xq3Var.zzg = jq3Var;
        xq3Var.zzb |= 4;
    }

    /* renamed from: N */
    public static /* synthetic */ void m5153N(xq3 xq3Var, int i) {
        xq3Var.zzl = i - 1;
        xq3Var.zzb |= 64;
    }

    /* renamed from: C */
    public final String m5161C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final int m5160D() {
        return this.zzm.size();
    }

    static {
        xq3 xq3Var = new xq3();
        zzo = xq3Var;
        pm3.m8248z(xq3.class, xq3Var);
    }

    @Override // p168r4.pm3
    /* renamed from: B */
    public final Object mo4087B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            byte b = 1;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (obj == null) {
                                b = 0;
                            }
                            this.zzn = b;
                            return null;
                        }
                        return zzo;
                    }
                    return new wq3(null);
                }
                return new xq3();
            }
            return pm3.m8270A(zzo, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", uq3.f32354a, "zzm"});
        }
        return Byte.valueOf(this.zzn);
    }

    /* renamed from: M */
    public static /* synthetic */ void m5154M(xq3 xq3Var, String str) {
        str.getClass();
        ym3<String> ym3Var = xq3Var.zzm;
        if (!ym3Var.zza()) {
            xq3Var.zzm = pm3.m8258n(ym3Var);
        }
        xq3Var.zzm.add(str);
    }
}
