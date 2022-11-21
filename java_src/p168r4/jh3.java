package p168r4;

import java.util.List;
/* renamed from: r4.jh3 */
/* loaded from: classes2.dex */
public final class jh3 extends pm3<jh3, eh3> implements bo3 {
    private static final jh3 zzf;
    private int zzb;
    private ym3<ih3> zze = pm3.m8259m();

    /* renamed from: I */
    public static jh3 m10283I(byte[] bArr, bm3 bm3Var) {
        return (jh3) pm3.m8253u(zzf, bArr, bm3Var);
    }

    /* renamed from: C */
    public final int m10286C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final List<ih3> m10285D() {
        return this.zze;
    }

    /* renamed from: E */
    public final int m10284E() {
        return this.zze.size();
    }

    static {
        jh3 jh3Var = new jh3();
        zzf = jh3Var;
        pm3.m8248z(jh3.class, jh3Var);
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
                        return zzf;
                    }
                    return new eh3(null);
                }
                return new jh3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzb", "zze", ih3.class});
        }
        return (byte) 1;
    }
}
