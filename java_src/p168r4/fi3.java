package p168r4;

import java.util.List;
@Deprecated
/* renamed from: r4.fi3 */
/* loaded from: classes2.dex */
public final class fi3 extends pm3<fi3, ei3> implements bo3 {
    private static final fi3 zzf;
    private String zzb = "";
    private ym3<ch3> zze = pm3.m8259m();

    /* renamed from: D */
    public static fi3 m11507D() {
        return zzf;
    }

    /* renamed from: C */
    public final List<ch3> m11508C() {
        return this.zze;
    }

    static {
        fi3 fi3Var = new fi3();
        zzf = fi3Var;
        pm3.m8248z(fi3.class, fi3Var);
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
                    return new ei3(null);
                }
                return new fi3();
            }
            return pm3.m8270A(zzf, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzb", "zze", ch3.class});
        }
        return (byte) 1;
    }
}
