package p168r4;

import java.util.Iterator;
import java.util.List;
/* renamed from: r4.sr */
/* loaded from: classes2.dex */
public final class C6254sr extends pm3<C6254sr, C6217rr> implements bo3 {
    private static final vm3<Integer, EnumC5735eq> zzj = new C6180qr();
    private static final C6254sr zzr;
    private int zzb;
    private long zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private um3 zzi = pm3.m8262j();
    private C6069nr zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;

    /* renamed from: C */
    public static /* synthetic */ void m7059C(C6254sr c6254sr, int i) {
        c6254sr.zzn = i - 1;
        c6254sr.zzb |= 128;
    }

    /* renamed from: D */
    public static /* synthetic */ void m7058D(C6254sr c6254sr, int i) {
        c6254sr.zzp = i - 1;
        c6254sr.zzb |= 512;
    }

    /* renamed from: O */
    public static C6254sr m7050O(byte[] bArr) {
        return (C6254sr) pm3.m8254s(zzr, bArr);
    }

    /* renamed from: P */
    public static C6217rr m7049P() {
        return zzr.m8252v();
    }

    /* renamed from: R */
    public static /* synthetic */ void m7047R(C6254sr c6254sr, long j) {
        c6254sr.zzb |= 1;
        c6254sr.zze = j;
    }

    /* renamed from: S */
    public static /* synthetic */ void m7046S(C6254sr c6254sr, long j) {
        c6254sr.zzb |= 4;
        c6254sr.zzg = j;
    }

    /* renamed from: T */
    public static /* synthetic */ void m7045T(C6254sr c6254sr, long j) {
        c6254sr.zzb |= 8;
        c6254sr.zzh = j;
    }

    /* renamed from: V */
    public static /* synthetic */ void m7043V(C6254sr c6254sr, C6069nr c6069nr) {
        c6069nr.getClass();
        c6254sr.zzk = c6069nr;
        c6254sr.zzb |= 16;
    }

    /* renamed from: W */
    public static /* synthetic */ void m7042W(C6254sr c6254sr, int i) {
        c6254sr.zzb |= 256;
        c6254sr.zzo = i;
    }

    /* renamed from: X */
    public static /* synthetic */ void m7041X(C6254sr c6254sr, EnumC6402wr enumC6402wr) {
        c6254sr.zzq = enumC6402wr.zza();
        c6254sr.zzb |= 1024;
    }

    /* renamed from: d0 */
    public static /* synthetic */ void m7035d0(C6254sr c6254sr, int i) {
        c6254sr.zzf = i - 1;
        c6254sr.zzb |= 2;
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m7034e0(C6254sr c6254sr, int i) {
        c6254sr.zzl = i - 1;
        c6254sr.zzb |= 32;
    }

    /* renamed from: f0 */
    public static /* synthetic */ void m7033f0(C6254sr c6254sr, int i) {
        c6254sr.zzm = i - 1;
        c6254sr.zzb |= 64;
    }

    /* renamed from: E */
    public final long m7057E() {
        return this.zze;
    }

    /* renamed from: I */
    public final long m7056I() {
        return this.zzg;
    }

    /* renamed from: J */
    public final long m7055J() {
        return this.zzh;
    }

    /* renamed from: K */
    public final List<EnumC5735eq> m7054K() {
        return new wm3(this.zzi, zzj);
    }

    /* renamed from: L */
    public final C6069nr m7053L() {
        C6069nr c6069nr = this.zzk;
        return c6069nr == null ? C6069nr.m9009I() : c6069nr;
    }

    /* renamed from: M */
    public final int m7052M() {
        return this.zzo;
    }

    /* renamed from: N */
    public final EnumC6402wr m7051N() {
        EnumC6402wr m5605c = EnumC6402wr.m5605c(this.zzq);
        return m5605c == null ? EnumC6402wr.UNSPECIFIED : m5605c;
    }

    /* renamed from: Y */
    public final int m7040Y() {
        int m5618a = C6401wq.m5618a(this.zzf);
        if (m5618a == 0) {
            return 1;
        }
        return m5618a;
    }

    /* renamed from: Z */
    public final int m7039Z() {
        int m5618a = C6401wq.m5618a(this.zzl);
        if (m5618a == 0) {
            return 1;
        }
        return m5618a;
    }

    /* renamed from: a0 */
    public final int m7038a0() {
        int m5618a = C6401wq.m5618a(this.zzm);
        if (m5618a == 0) {
            return 1;
        }
        return m5618a;
    }

    /* renamed from: b0 */
    public final int m7037b0() {
        int m5618a = C6401wq.m5618a(this.zzn);
        if (m5618a == 0) {
            return 1;
        }
        return m5618a;
    }

    /* renamed from: c0 */
    public final int m7036c0() {
        int m5618a = C6401wq.m5618a(this.zzp);
        if (m5618a == 0) {
            return 1;
        }
        return m5618a;
    }

    static {
        C6254sr c6254sr = new C6254sr();
        zzr = c6254sr;
        pm3.m8248z(C6254sr.class, c6254sr);
    }

    /* renamed from: U */
    public static /* synthetic */ void m7044U(C6254sr c6254sr, Iterable iterable) {
        um3 um3Var = c6254sr.zzi;
        if (!um3Var.zza()) {
            c6254sr.zzi = pm3.m8261k(um3Var);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            c6254sr.zzi.mo6483Y(((EnumC5735eq) it.next()).zza());
        }
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
                    return new C6217rr(null);
                }
                return new C6254sr();
            }
            tm3 tm3Var = C6364vq.f32774a;
            return pm3.m8270A(zzr, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzb", "zze", "zzf", tm3Var, "zzg", "zzh", "zzi", EnumC5735eq.m11696d(), "zzk", "zzl", tm3Var, "zzm", tm3Var, "zzn", tm3Var, "zzo", "zzp", tm3Var, "zzq", EnumC6402wr.m5604d()});
        }
        return (byte) 1;
    }
}
