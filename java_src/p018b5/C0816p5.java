package p018b5;

import java.util.List;
/* renamed from: b5.p5 */
/* loaded from: classes2.dex */
public final class C0816p5 extends AbstractC0955x8<C0816p5, C0748l5> implements InterfaceC0651fa {
    private static final C0816p5 zza;
    private int zze;
    private int zzf;
    private InterfaceC0633e9<C0816p5> zzg = AbstractC0955x8.m24984f();
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    /* renamed from: A */
    public final boolean m25510A() {
        return (this.zze & 16) != 0;
    }

    /* renamed from: B */
    public final boolean m25509B() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: C */
    public final int m25508C() {
        int m25559a = C0799o5.m25559a(this.zzf);
        if (m25559a == 0) {
            return 1;
        }
        return m25559a;
    }

    /* renamed from: s */
    public final double m25507s() {
        return this.zzk;
    }

    /* renamed from: u */
    public final String m25505u() {
        return this.zzh;
    }

    /* renamed from: v */
    public final String m25504v() {
        return this.zzi;
    }

    /* renamed from: w */
    public final List<C0816p5> m25503w() {
        return this.zzg;
    }

    /* renamed from: x */
    public final boolean m25502x() {
        return this.zzj;
    }

    /* renamed from: z */
    public final boolean m25501z() {
        return (this.zze & 8) != 0;
    }

    static {
        C0816p5 c0816p5 = new C0816p5();
        zza = c0816p5;
        AbstractC0955x8.m24980j(C0816p5.class, c0816p5);
    }

    @Override // p018b5.AbstractC0955x8
    /* renamed from: r */
    public final Object mo24877r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zza;
                    }
                    return new C0748l5(null);
                }
                return new C0816p5();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", C0782n5.f2056a, "zzg", C0816p5.class, "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
