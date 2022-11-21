package p018b5;

import java.util.List;
/* renamed from: b5.r3 */
/* loaded from: classes2.dex */
public final class C0848r3 extends AbstractC0955x8<C0848r3, C0780n3> implements InterfaceC0651fa {
    private static final C0848r3 zza;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = "";
    private InterfaceC0633e9<String> zzi = AbstractC0955x8.m24984f();

    /* renamed from: u */
    public static C0848r3 m25444u() {
        return zza;
    }

    /* renamed from: A */
    public final boolean m25449A() {
        return (this.zze & 2) != 0;
    }

    /* renamed from: B */
    public final boolean m25448B() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: C */
    public final int m25447C() {
        int m25473a = C0831q3.m25473a(this.zzf);
        if (m25473a == 0) {
            return 1;
        }
        return m25473a;
    }

    /* renamed from: s */
    public final int m25446s() {
        return this.zzi.size();
    }

    /* renamed from: v */
    public final String m25443v() {
        return this.zzg;
    }

    /* renamed from: w */
    public final List<String> m25442w() {
        return this.zzi;
    }

    /* renamed from: x */
    public final boolean m25441x() {
        return this.zzh;
    }

    /* renamed from: z */
    public final boolean m25440z() {
        return (this.zze & 4) != 0;
    }

    static {
        C0848r3 c0848r3 = new C0848r3();
        zza = c0848r3;
        AbstractC0955x8.m24980j(C0848r3.class, c0848r3);
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
                    return new C0780n3(null);
                }
                return new C0848r3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", C0814p3.f2140a, "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
