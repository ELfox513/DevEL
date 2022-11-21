package p018b5;

import java.util.List;
import net.bytebuddy.jar.asm.Opcodes;
/* renamed from: b5.t4 */
/* loaded from: classes2.dex */
public final class C0883t4 extends AbstractC0955x8<C0883t4, C0866s4> implements InterfaceC0651fa {
    public static final /* synthetic */ int zza = 0;
    private static final C0883t4 zze;
    private boolean zzA;
    private long zzC;
    private int zzD;
    private boolean zzG;
    private int zzJ;
    private int zzK;
    private int zzL;
    private long zzN;
    private long zzO;
    private int zzR;
    private C0951x4 zzT;
    private long zzV;
    private long zzW;
    private int zzZ;
    private boolean zzaa;
    private boolean zzac;
    private C0815p4 zzad;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzt;
    private long zzx;
    private long zzy;
    private InterfaceC0633e9<C0713j4> zzi = AbstractC0955x8.m24984f();
    private InterfaceC0633e9<C0612d5> zzj = AbstractC0955x8.m24984f();
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";
    private String zzs = "";
    private String zzu = "";
    private String zzv = "";
    private String zzw = "";
    private String zzz = "";
    private String zzB = "";
    private String zzE = "";
    private String zzF = "";
    private InterfaceC0633e9<C0645f4> zzH = AbstractC0955x8.m24984f();
    private String zzI = "";
    private String zzM = "";
    private String zzP = "";
    private String zzQ = "";
    private String zzS = "";
    private InterfaceC0599c9 zzU = AbstractC0955x8.m24976o();
    private String zzX = "";
    private String zzY = "";
    private String zzab = "";

    /* renamed from: B0 */
    public static /* synthetic */ void m25231B0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzg |= 64;
        c0883t4.zzX = str;
    }

    /* renamed from: C0 */
    public static /* synthetic */ void m25228C0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzg |= 128;
        c0883t4.zzY = str;
    }

    /* renamed from: J */
    public static /* synthetic */ void m25208J(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 1073741824;
        c0883t4.zzO = j;
    }

    /* renamed from: J1 */
    public static C0866s4 m25206J1() {
        return zze.m24979k();
    }

    /* renamed from: K */
    public static /* synthetic */ void m25205K(C0883t4 c0883t4) {
        c0883t4.zzf &= Integer.MAX_VALUE;
        c0883t4.zzP = zze.zzP;
    }

    /* renamed from: K0 */
    public static /* synthetic */ void m25204K0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 2;
        c0883t4.zzk = j;
    }

    /* renamed from: L */
    public static /* synthetic */ void m25202L(C0883t4 c0883t4, int i) {
        c0883t4.zzg |= 2;
        c0883t4.zzR = i;
    }

    /* renamed from: L0 */
    public static /* synthetic */ void m25201L0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 4;
        c0883t4.zzl = j;
    }

    /* renamed from: M0 */
    public static /* synthetic */ void m25199M0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 8;
        c0883t4.zzm = j;
    }

    /* renamed from: N0 */
    public static /* synthetic */ void m25197N0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 16;
        c0883t4.zzn = j;
    }

    /* renamed from: O0 */
    public static /* synthetic */ void m25194O0(C0883t4 c0883t4) {
        c0883t4.zzf &= -17;
        c0883t4.zzn = 0L;
    }

    /* renamed from: P */
    public static /* synthetic */ void m25192P(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzg |= 4;
        c0883t4.zzS = str;
    }

    /* renamed from: P0 */
    public static /* synthetic */ void m25191P0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 32;
        c0883t4.zzo = j;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m25190Q(C0883t4 c0883t4, C0951x4 c0951x4) {
        c0951x4.getClass();
        c0883t4.zzT = c0951x4;
        c0883t4.zzg |= 8;
    }

    /* renamed from: Q0 */
    public static /* synthetic */ void m25189Q0(C0883t4 c0883t4) {
        c0883t4.zzf &= -33;
        c0883t4.zzo = 0L;
    }

    /* renamed from: R0 */
    public static /* synthetic */ void m25187R0(C0883t4 c0883t4, String str) {
        c0883t4.zzf |= 64;
        c0883t4.zzp = "android";
    }

    /* renamed from: S0 */
    public static /* synthetic */ void m25185S0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 128;
        c0883t4.zzq = str;
    }

    /* renamed from: T */
    public static /* synthetic */ void m25184T(C0883t4 c0883t4, long j) {
        c0883t4.zzg |= 16;
        c0883t4.zzV = j;
    }

    /* renamed from: T0 */
    public static /* synthetic */ void m25183T0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 256;
        c0883t4.zzr = str;
    }

    /* renamed from: U */
    public static /* synthetic */ void m25182U(C0883t4 c0883t4, long j) {
        c0883t4.zzg |= 32;
        c0883t4.zzW = j;
    }

    /* renamed from: U0 */
    public static /* synthetic */ void m25181U0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 512;
        c0883t4.zzs = str;
    }

    /* renamed from: V0 */
    public static /* synthetic */ void m25179V0(C0883t4 c0883t4, int i) {
        c0883t4.zzf |= 1024;
        c0883t4.zzt = i;
    }

    /* renamed from: W */
    public static /* synthetic */ void m25178W(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 65536;
        c0883t4.zzz = str;
    }

    /* renamed from: W0 */
    public static /* synthetic */ void m25177W0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 2048;
        c0883t4.zzu = str;
    }

    /* renamed from: X */
    public static /* synthetic */ void m25176X(C0883t4 c0883t4) {
        c0883t4.zzf &= -65537;
        c0883t4.zzz = zze.zzz;
    }

    /* renamed from: X0 */
    public static /* synthetic */ void m25175X0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 4096;
        c0883t4.zzv = str;
    }

    /* renamed from: Y */
    public static /* synthetic */ void m25174Y(C0883t4 c0883t4, boolean z) {
        c0883t4.zzf |= 131072;
        c0883t4.zzA = z;
    }

    /* renamed from: Y0 */
    public static /* synthetic */ void m25173Y0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 8192;
        c0883t4.zzw = str;
    }

    /* renamed from: Z */
    public static /* synthetic */ void m25172Z(C0883t4 c0883t4) {
        c0883t4.zzf &= -131073;
        c0883t4.zzA = false;
    }

    /* renamed from: Z0 */
    public static /* synthetic */ void m25171Z0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 16384;
        c0883t4.zzx = j;
    }

    /* renamed from: a0 */
    public static /* synthetic */ void m25170a0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 262144;
        c0883t4.zzB = str;
    }

    /* renamed from: a1 */
    public static /* synthetic */ void m25169a1(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 32768;
        c0883t4.zzy = 43042L;
    }

    /* renamed from: b0 */
    public static /* synthetic */ void m25168b0(C0883t4 c0883t4) {
        c0883t4.zzf &= -262145;
        c0883t4.zzB = zze.zzB;
    }

    /* renamed from: c0 */
    public static /* synthetic */ void m25166c0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= Opcodes.ASM8;
        c0883t4.zzC = j;
    }

    /* renamed from: d0 */
    public static /* synthetic */ void m25164d0(C0883t4 c0883t4, int i) {
        c0883t4.zzf |= 1048576;
        c0883t4.zzD = i;
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m25162e0(C0883t4 c0883t4, String str) {
        c0883t4.zzf |= 2097152;
        c0883t4.zzE = str;
    }

    /* renamed from: f0 */
    public static /* synthetic */ void m25160f0(C0883t4 c0883t4) {
        c0883t4.zzf &= -2097153;
        c0883t4.zzE = zze.zzE;
    }

    /* renamed from: g0 */
    public static /* synthetic */ void m25158g0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 4194304;
        c0883t4.zzF = str;
    }

    /* renamed from: h0 */
    public static /* synthetic */ void m25156h0(C0883t4 c0883t4, boolean z) {
        c0883t4.zzf |= 8388608;
        c0883t4.zzG = z;
    }

    /* renamed from: l0 */
    public static /* synthetic */ void m25149l0(C0883t4 c0883t4, String str) {
        str.getClass();
        c0883t4.zzf |= 16777216;
        c0883t4.zzI = str;
    }

    /* renamed from: m0 */
    public static /* synthetic */ void m25147m0(C0883t4 c0883t4, int i) {
        c0883t4.zzf |= 33554432;
        c0883t4.zzJ = i;
    }

    /* renamed from: n0 */
    public static /* synthetic */ void m25145n0(C0883t4 c0883t4, int i) {
        c0883t4.zzf |= 1;
        c0883t4.zzh = 1;
    }

    /* renamed from: o0 */
    public static /* synthetic */ void m25143o0(C0883t4 c0883t4) {
        c0883t4.zzf &= -268435457;
        c0883t4.zzM = zze.zzM;
    }

    /* renamed from: p0 */
    public static /* synthetic */ void m25141p0(C0883t4 c0883t4, long j) {
        c0883t4.zzf |= 536870912;
        c0883t4.zzN = j;
    }

    /* renamed from: A */
    public final String m25235A() {
        return this.zzF;
    }

    /* renamed from: A0 */
    public final boolean m25234A0() {
        return (this.zzg & 128) != 0;
    }

    /* renamed from: A1 */
    public final long m25233A1() {
        return this.zzV;
    }

    /* renamed from: B */
    public final String m25232B() {
        return this.zzE;
    }

    /* renamed from: B1 */
    public final long m25230B1() {
        return this.zzm;
    }

    /* renamed from: C */
    public final String m25229C() {
        return this.zzq;
    }

    /* renamed from: C1 */
    public final long m25227C1() {
        return this.zzx;
    }

    /* renamed from: D */
    public final String m25226D() {
        return this.zzp;
    }

    /* renamed from: D1 */
    public final long m25224D1() {
        return this.zzo;
    }

    /* renamed from: E */
    public final String m25223E() {
        return this.zzz;
    }

    /* renamed from: E1 */
    public final long m25221E1() {
        return this.zzn;
    }

    /* renamed from: F */
    public final String m25220F() {
        return this.zzs;
    }

    /* renamed from: F1 */
    public final long m25218F1() {
        return this.zzl;
    }

    /* renamed from: G */
    public final List<C0645f4> m25217G() {
        return this.zzH;
    }

    /* renamed from: G1 */
    public final long m25215G1() {
        return this.zzk;
    }

    /* renamed from: H */
    public final List<C0713j4> m25214H() {
        return this.zzi;
    }

    /* renamed from: H1 */
    public final long m25212H1() {
        return this.zzy;
    }

    /* renamed from: I */
    public final List<C0612d5> m25211I() {
        return this.zzj;
    }

    /* renamed from: I1 */
    public final C0713j4 m25209I1(int i) {
        return this.zzi.get(i);
    }

    /* renamed from: L1 */
    public final C0612d5 m25200L1(int i) {
        return this.zzj.get(i);
    }

    /* renamed from: M1 */
    public final String m25198M1() {
        return this.zzS;
    }

    /* renamed from: N1 */
    public final String m25196N1() {
        return this.zzv;
    }

    /* renamed from: O1 */
    public final String m25193O1() {
        return this.zzB;
    }

    /* renamed from: V */
    public final int m25180V() {
        return this.zzJ;
    }

    /* renamed from: b1 */
    public final int m25167b1() {
        return this.zzD;
    }

    /* renamed from: e1 */
    public final boolean m25161e1() {
        return (this.zzf & Opcodes.ASM8) != 0;
    }

    /* renamed from: f1 */
    public final boolean m25159f1() {
        return (this.zzg & 16) != 0;
    }

    /* renamed from: g1 */
    public final boolean m25157g1() {
        return (this.zzf & 8) != 0;
    }

    /* renamed from: h1 */
    public final boolean m25155h1() {
        return (this.zzf & 16384) != 0;
    }

    /* renamed from: i1 */
    public final boolean m25153i1() {
        return (this.zzf & 131072) != 0;
    }

    /* renamed from: j1 */
    public final boolean m25152j1() {
        return (this.zzf & 32) != 0;
    }

    /* renamed from: k1 */
    public final boolean m25150k1() {
        return (this.zzf & 16) != 0;
    }

    /* renamed from: l1 */
    public final boolean m25148l1() {
        return (this.zzf & 1) != 0;
    }

    /* renamed from: m1 */
    public final boolean m25146m1() {
        return (this.zzg & 2) != 0;
    }

    /* renamed from: n1 */
    public final boolean m25144n1() {
        return (this.zzf & 8388608) != 0;
    }

    /* renamed from: o1 */
    public final boolean m25142o1() {
        return (this.zzf & 4) != 0;
    }

    /* renamed from: p1 */
    public final boolean m25140p1() {
        return (this.zzf & 1024) != 0;
    }

    /* renamed from: q0 */
    public final boolean m25139q0() {
        return this.zzA;
    }

    /* renamed from: q1 */
    public final boolean m25138q1() {
        return (this.zzf & 2) != 0;
    }

    /* renamed from: r0 */
    public final boolean m25137r0() {
        return this.zzG;
    }

    /* renamed from: r1 */
    public final boolean m25136r1() {
        return (this.zzf & 32768) != 0;
    }

    /* renamed from: s */
    public final String m25135s() {
        return this.zzu;
    }

    /* renamed from: s0 */
    public final boolean m25134s0() {
        return (this.zzf & 1073741824) != 0;
    }

    /* renamed from: s1 */
    public final int m25133s1() {
        return this.zzi.size();
    }

    /* renamed from: t */
    public final String m25132t() {
        return this.zzw;
    }

    /* renamed from: t1 */
    public final int m25131t1() {
        return this.zzh;
    }

    /* renamed from: u */
    public final String m25130u() {
        return this.zzY;
    }

    /* renamed from: u1 */
    public final int m25129u1() {
        return this.zzR;
    }

    /* renamed from: v */
    public final String m25128v() {
        return this.zzr;
    }

    /* renamed from: v1 */
    public final int m25127v1() {
        return this.zzt;
    }

    /* renamed from: w */
    public final String m25126w() {
        return this.zzP;
    }

    /* renamed from: w1 */
    public final int m25125w1() {
        return this.zzj.size();
    }

    /* renamed from: x */
    public final String m25124x() {
        return this.zzI;
    }

    /* renamed from: x0 */
    public final boolean m25123x0() {
        return (this.zzf & 33554432) != 0;
    }

    /* renamed from: x1 */
    public final long m25122x1() {
        return this.zzO;
    }

    /* renamed from: y0 */
    public final boolean m25121y0() {
        return (this.zzf & 1048576) != 0;
    }

    /* renamed from: y1 */
    public final long m25120y1() {
        return this.zzN;
    }

    /* renamed from: z */
    public final String m25119z() {
        return this.zzX;
    }

    /* renamed from: z0 */
    public final boolean m25118z0() {
        return (this.zzf & 536870912) != 0;
    }

    /* renamed from: z1 */
    public final long m25117z1() {
        return this.zzC;
    }

    static {
        C0883t4 c0883t4 = new C0883t4();
        zze = c0883t4;
        AbstractC0955x8.m24980j(C0883t4.class, c0883t4);
    }

    /* renamed from: R */
    public static /* synthetic */ void m25188R(C0883t4 c0883t4, Iterable iterable) {
        int i;
        InterfaceC0599c9 interfaceC0599c9 = c0883t4.zzU;
        if (!interfaceC0599c9.mo25928b()) {
            int size = interfaceC0599c9.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size + size;
            }
            c0883t4.zzU = interfaceC0599c9.mo24867W(i);
        }
        AbstractC0648f7.m25983c(iterable, c0883t4.zzU);
    }

    /* renamed from: i0 */
    public static /* synthetic */ void m25154i0(C0883t4 c0883t4, Iterable iterable) {
        InterfaceC0633e9<C0645f4> interfaceC0633e9 = c0883t4.zzH;
        if (!interfaceC0633e9.mo25928b()) {
            c0883t4.zzH = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
        AbstractC0648f7.m25983c(iterable, c0883t4.zzH);
    }

    /* renamed from: c1 */
    public final void m25165c1() {
        InterfaceC0633e9<C0713j4> interfaceC0633e9 = this.zzi;
        if (!interfaceC0633e9.mo25928b()) {
            this.zzi = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
    }

    /* renamed from: d1 */
    public final void m25163d1() {
        InterfaceC0633e9<C0612d5> interfaceC0633e9 = this.zzj;
        if (!interfaceC0633e9.mo25928b()) {
            this.zzj = AbstractC0955x8.m24983g(interfaceC0633e9);
        }
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
                        return zze;
                    }
                    return new C0866s4(null);
                }
                return new C0883t4();
            }
            return AbstractC0955x8.m24981i(zze, "\u00011\u0000\u0002\u0001;1\u0000\u0004\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)9ဈ*:ဇ+;ဉ,", new Object[]{"zzf", "zzg", "zzh", "zzi", C0713j4.class, "zzj", C0612d5.class, "zzk", "zzl", "zzm", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzn", "zzG", "zzH", C0645f4.class, "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", "zzZ", C0577b4.f1744a, "zzaa", "zzab", "zzac", "zzad"});
        }
        return (byte) 1;
    }

    /* renamed from: D0 */
    public static /* synthetic */ void m25225D0(C0883t4 c0883t4, Iterable iterable) {
        c0883t4.m25165c1();
        AbstractC0648f7.m25983c(iterable, c0883t4.zzi);
    }

    /* renamed from: F0 */
    public static /* synthetic */ void m25219F0(C0883t4 c0883t4, int i) {
        c0883t4.m25165c1();
        c0883t4.zzi.remove(i);
    }

    /* renamed from: G0 */
    public static /* synthetic */ void m25216G0(C0883t4 c0883t4, int i, C0612d5 c0612d5) {
        c0612d5.getClass();
        c0883t4.m25163d1();
        c0883t4.zzj.set(i, c0612d5);
    }

    /* renamed from: H0 */
    public static /* synthetic */ void m25213H0(C0883t4 c0883t4, C0612d5 c0612d5) {
        c0612d5.getClass();
        c0883t4.m25163d1();
        c0883t4.zzj.add(c0612d5);
    }

    /* renamed from: I0 */
    public static /* synthetic */ void m25210I0(C0883t4 c0883t4, Iterable iterable) {
        c0883t4.m25163d1();
        AbstractC0648f7.m25983c(iterable, c0883t4.zzj);
    }

    /* renamed from: J0 */
    public static /* synthetic */ void m25207J0(C0883t4 c0883t4, int i) {
        c0883t4.m25163d1();
        c0883t4.zzj.remove(i);
    }

    /* renamed from: O */
    public static /* synthetic */ void m25195O(C0883t4 c0883t4, int i, C0713j4 c0713j4) {
        c0713j4.getClass();
        c0883t4.m25165c1();
        c0883t4.zzi.set(i, c0713j4);
    }

    /* renamed from: S */
    public static /* synthetic */ void m25186S(C0883t4 c0883t4, C0713j4 c0713j4) {
        c0713j4.getClass();
        c0883t4.m25165c1();
        c0883t4.zzi.add(c0713j4);
    }
}
