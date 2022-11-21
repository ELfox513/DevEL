package p168r4;
@Deprecated
/* renamed from: r4.ch3 */
/* loaded from: classes2.dex */
public final class ch3 extends pm3<ch3, bh3> implements bo3 {
    private static final ch3 zzi;
    private int zzf;
    private boolean zzg;
    private String zzb = "";
    private String zze = "";
    private String zzh = "";

    /* renamed from: C */
    public final String m12466C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final String m12465D() {
        return this.zze;
    }

    /* renamed from: E */
    public final int m12464E() {
        return this.zzf;
    }

    /* renamed from: I */
    public final boolean m12463I() {
        return this.zzg;
    }

    /* renamed from: J */
    public final String m12462J() {
        return this.zzh;
    }

    static {
        ch3 ch3Var = new ch3();
        zzi = ch3Var;
        pm3.m8248z(ch3.class, ch3Var);
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
                        return zzi;
                    }
                    return new bh3(null);
                }
                return new ch3();
            }
            return pm3.m8270A(zzi, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
