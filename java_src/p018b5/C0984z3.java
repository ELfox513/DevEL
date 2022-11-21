package p018b5;
/* renamed from: b5.z3 */
/* loaded from: classes2.dex */
public final class C0984z3 extends AbstractC0955x8<C0984z3, C0967y3> implements InterfaceC0651fa {
    private static final C0984z3 zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";

    /* renamed from: t */
    public final String m24895t() {
        return this.zzf;
    }

    /* renamed from: u */
    public final String m24894u() {
        return this.zzg;
    }

    static {
        C0984z3 c0984z3 = new C0984z3();
        zza = c0984z3;
        AbstractC0955x8.m24980j(C0984z3.class, c0984z3);
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
                    return new C0967y3(null);
                }
                return new C0984z3();
            }
            return AbstractC0955x8.m24981i(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
