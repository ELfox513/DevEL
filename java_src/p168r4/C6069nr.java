package p168r4;
/* renamed from: r4.nr */
/* loaded from: classes2.dex */
public final class C6069nr extends pm3<C6069nr, C5773fr> implements bo3 {
    private static final C6069nr zzg;
    private int zzb;
    private int zze;
    private int zzf;

    /* renamed from: E */
    public static C5773fr m9010E() {
        return zzg.m8252v();
    }

    /* renamed from: I */
    public static C6069nr m9009I() {
        return zzg;
    }

    /* renamed from: M */
    public static /* synthetic */ void m9005M(C6069nr c6069nr, int i) {
        c6069nr.zze = i - 1;
        c6069nr.zzb |= 1;
    }

    /* renamed from: N */
    public static /* synthetic */ void m9004N(C6069nr c6069nr, int i) {
        c6069nr.zzf = i - 1;
        c6069nr.zzb |= 2;
    }

    /* renamed from: C */
    public final boolean m9012C() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: D */
    public final boolean m9011D() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: K */
    public final int m9007K() {
        int m9279a = C6031mr.m9279a(this.zze);
        if (m9279a == 0) {
            return 1;
        }
        return m9279a;
    }

    /* renamed from: L */
    public final int m9006L() {
        int m10556a = C5884ir.m10556a(this.zzf);
        if (m10556a == 0) {
            return 1;
        }
        return m10556a;
    }

    static {
        C6069nr c6069nr = new C6069nr();
        zzg = c6069nr;
        pm3.m8248z(C6069nr.class, c6069nr);
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
                        return zzg;
                    }
                    return new C5773fr(null);
                }
                return new C6069nr();
            }
            return pm3.m8270A(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001", new Object[]{"zzb", "zze", C5994lr.f27333a, "zzf", C5847hr.f24801a});
        }
        return (byte) 1;
    }
}
