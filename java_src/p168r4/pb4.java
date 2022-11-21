package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
import net.bytebuddy.jar.asm.Opcodes;
/* renamed from: r4.pb4 */
/* loaded from: classes2.dex */
public final class pb4 extends pm3<pb4, za4> implements bo3 {
    private static final pb4 zzaM;
    private long zzA;
    private long zzB;
    private long zzF;
    private long zzG;
    private long zzH;
    private long zzJ;
    private sb4 zzM;
    private kb4 zzaC;
    private long zzaD;
    private boolean zzaG;
    private long zzaI;
    private zb4 zzaJ;
    private long zzaK;
    private mb4 zzae;
    private ob4 zzag;
    private int zzar;
    private int zzas;
    private int zzat;
    private bc4 zzau;
    private int zzb;
    private int zze;
    private int zzf;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private long zzr;
    private long zzt;
    private long zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzg = "";
    private String zzh = "";
    private String zzs = "";
    private String zzC = "";
    private String zzD = "D";
    private String zzE = "";
    private String zzI = "";
    private long zzK = -1;
    private long zzL = -1;
    private long zzN = -1;
    private long zzO = -1;
    private long zzP = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private String zzT = "D";
    private String zzU = "D";
    private long zzV = -1;
    private int zzW = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzX = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private long zzY = -1;
    private long zzZ = -1;
    private long zzaa = -1;
    private long zzab = -1;
    private long zzac = -1;
    private int zzad = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private ym3<mb4> zzaf = pm3.m8259m();
    private long zzah = -1;
    private long zzai = -1;
    private long zzaj = -1;
    private long zzak = -1;
    private long zzal = -1;
    private long zzam = -1;
    private long zzan = -1;
    private long zzao = -1;
    private String zzap = "D";
    private long zzaq = -1;
    private long zzav = -1;
    private int zzaw = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private int zzax = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private String zzay = "D";
    private ym3<ib4> zzaz = pm3.m8259m();
    private int zzaA = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    private ym3<cb4> zzaB = pm3.m8259m();
    private String zzaE = "";
    private int zzaF = 2;
    private String zzaH = "";
    private String zzaL = "";

    /* renamed from: A0 */
    public static pb4 m8428A0() {
        return zzaM;
    }

    /* renamed from: C */
    public static /* synthetic */ void m8426C(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zzb |= 16777216;
        pb4Var.zzE = str;
    }

    /* renamed from: C0 */
    public static /* synthetic */ void m8425C0(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zzb |= 1;
        pb4Var.zzg = str;
    }

    /* renamed from: D */
    public static /* synthetic */ void m8424D(pb4 pb4Var, long j) {
        pb4Var.zzb |= 33554432;
        pb4Var.zzF = j;
    }

    /* renamed from: D0 */
    public static /* synthetic */ void m8423D0(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zzb |= 2;
        pb4Var.zzh = str;
    }

    /* renamed from: E */
    public static /* synthetic */ void m8422E(pb4 pb4Var, long j) {
        pb4Var.zzb |= 67108864;
        pb4Var.zzG = j;
    }

    /* renamed from: E0 */
    public static /* synthetic */ void m8421E0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 4;
        pb4Var.zzi = j;
    }

    /* renamed from: F0 */
    public static /* synthetic */ void m8420F0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 16;
        pb4Var.zzk = j;
    }

    /* renamed from: G0 */
    public static /* synthetic */ void m8419G0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 32;
        pb4Var.zzl = j;
    }

    /* renamed from: H0 */
    public static /* synthetic */ void m8418H0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 1024;
        pb4Var.zzq = j;
    }

    /* renamed from: I */
    public static /* synthetic */ void m8417I(pb4 pb4Var, long j) {
        pb4Var.zzb |= 134217728;
        pb4Var.zzH = j;
    }

    /* renamed from: I0 */
    public static /* synthetic */ void m8416I0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 2048;
        pb4Var.zzr = j;
    }

    /* renamed from: J */
    public static /* synthetic */ void m8415J(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zzb |= 268435456;
        pb4Var.zzI = str;
    }

    /* renamed from: J0 */
    public static /* synthetic */ void m8414J0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 8192;
        pb4Var.zzt = j;
    }

    /* renamed from: K */
    public static /* synthetic */ void m8413K(pb4 pb4Var, long j) {
        pb4Var.zzb |= 536870912;
        pb4Var.zzJ = j;
    }

    /* renamed from: K0 */
    public static /* synthetic */ void m8412K0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 16384;
        pb4Var.zzu = j;
    }

    /* renamed from: L */
    public static /* synthetic */ void m8411L(pb4 pb4Var, long j) {
        pb4Var.zzb |= 1073741824;
        pb4Var.zzK = j;
    }

    /* renamed from: L0 */
    public static /* synthetic */ void m8410L0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 32768;
        pb4Var.zzv = j;
    }

    /* renamed from: M */
    public static /* synthetic */ void m8409M(pb4 pb4Var, long j) {
        pb4Var.zzb |= Integer.MIN_VALUE;
        pb4Var.zzL = j;
    }

    /* renamed from: M0 */
    public static /* synthetic */ void m8408M0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 65536;
        pb4Var.zzw = j;
    }

    /* renamed from: N */
    public static /* synthetic */ void m8407N(pb4 pb4Var, long j) {
        pb4Var.zze |= 2;
        pb4Var.zzN = j;
    }

    /* renamed from: N0 */
    public static /* synthetic */ void m8406N0(pb4 pb4Var, long j) {
        pb4Var.zzb |= Opcodes.ASM8;
        pb4Var.zzz = j;
    }

    /* renamed from: O */
    public static /* synthetic */ void m8405O(pb4 pb4Var, long j) {
        pb4Var.zze |= 4;
        pb4Var.zzO = j;
    }

    /* renamed from: O0 */
    public static /* synthetic */ void m8404O0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 1048576;
        pb4Var.zzA = j;
    }

    /* renamed from: P */
    public static /* synthetic */ void m8403P(pb4 pb4Var, long j) {
        pb4Var.zze |= 8;
        pb4Var.zzP = j;
    }

    /* renamed from: P0 */
    public static /* synthetic */ void m8402P0(pb4 pb4Var, long j) {
        pb4Var.zzb |= 2097152;
        pb4Var.zzB = j;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m8401Q(pb4 pb4Var, long j) {
        pb4Var.zze |= 16;
        pb4Var.zzQ = j;
    }

    /* renamed from: Q0 */
    public static /* synthetic */ void m8400Q0(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zzb |= 4194304;
        pb4Var.zzC = str;
    }

    /* renamed from: R */
    public static /* synthetic */ void m8399R(pb4 pb4Var, long j) {
        pb4Var.zze |= 32;
        pb4Var.zzR = j;
    }

    /* renamed from: S */
    public static /* synthetic */ void m8398S(pb4 pb4Var, long j) {
        pb4Var.zze |= 64;
        pb4Var.zzS = j;
    }

    /* renamed from: T */
    public static /* synthetic */ void m8397T(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zze |= 128;
        pb4Var.zzT = str;
    }

    /* renamed from: U */
    public static /* synthetic */ void m8396U(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zze |= 256;
        pb4Var.zzU = str;
    }

    /* renamed from: V */
    public static /* synthetic */ void m8395V(pb4 pb4Var, long j) {
        pb4Var.zze |= 4096;
        pb4Var.zzY = j;
    }

    /* renamed from: W */
    public static /* synthetic */ void m8394W(pb4 pb4Var, long j) {
        pb4Var.zze |= 8192;
        pb4Var.zzZ = j;
    }

    /* renamed from: X */
    public static /* synthetic */ void m8393X(pb4 pb4Var, long j) {
        pb4Var.zze |= 16384;
        pb4Var.zzaa = j;
    }

    /* renamed from: Y */
    public static /* synthetic */ void m8392Y(pb4 pb4Var, mb4 mb4Var) {
        mb4Var.getClass();
        pb4Var.zzae = mb4Var;
        pb4Var.zze |= 262144;
    }

    /* renamed from: b0 */
    public static /* synthetic */ void m8389b0(pb4 pb4Var, ob4 ob4Var) {
        ob4Var.getClass();
        pb4Var.zzag = ob4Var;
        pb4Var.zze |= Opcodes.ASM8;
    }

    /* renamed from: c0 */
    public static /* synthetic */ void m8388c0(pb4 pb4Var, long j) {
        pb4Var.zze |= 2097152;
        pb4Var.zzai = j;
    }

    /* renamed from: d0 */
    public static /* synthetic */ void m8387d0(pb4 pb4Var, long j) {
        pb4Var.zze |= 4194304;
        pb4Var.zzaj = j;
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m8386e0(pb4 pb4Var, long j) {
        pb4Var.zze |= 8388608;
        pb4Var.zzak = j;
    }

    /* renamed from: g0 */
    public static /* synthetic */ void m8384g0(pb4 pb4Var, long j) {
        pb4Var.zze |= 67108864;
        pb4Var.zzan = j;
    }

    /* renamed from: h0 */
    public static /* synthetic */ void m8383h0(pb4 pb4Var, long j) {
        pb4Var.zze |= 134217728;
        pb4Var.zzao = j;
    }

    /* renamed from: i0 */
    public static /* synthetic */ void m8382i0(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zze |= 268435456;
        pb4Var.zzap = str;
    }

    /* renamed from: j0 */
    public static /* synthetic */ void m8381j0(pb4 pb4Var, String str) {
        str.getClass();
        pb4Var.zzf |= 512;
        pb4Var.zzaE = str;
    }

    /* renamed from: k0 */
    public static /* synthetic */ void m8380k0(pb4 pb4Var, boolean z) {
        pb4Var.zzf |= 2048;
        pb4Var.zzaG = z;
    }

    /* renamed from: l0 */
    public static /* synthetic */ void m8379l0(pb4 pb4Var, long j) {
        pb4Var.zzf |= 8192;
        pb4Var.zzaI = j;
    }

    /* renamed from: n0 */
    public static /* synthetic */ void m8377n0(pb4 pb4Var, int i) {
        pb4Var.zzW = i - 1;
        pb4Var.zze |= 1024;
    }

    /* renamed from: o0 */
    public static /* synthetic */ void m8376o0(pb4 pb4Var, int i) {
        pb4Var.zzX = i - 1;
        pb4Var.zze |= 2048;
    }

    /* renamed from: p0 */
    public static /* synthetic */ void m8375p0(pb4 pb4Var, int i) {
        pb4Var.zzad = i - 1;
        pb4Var.zze |= 131072;
    }

    /* renamed from: q0 */
    public static /* synthetic */ void m8374q0(pb4 pb4Var, int i) {
        pb4Var.zzaw = i - 1;
        pb4Var.zzf |= 8;
    }

    /* renamed from: r0 */
    public static /* synthetic */ void m8373r0(pb4 pb4Var, int i) {
        pb4Var.zzax = i - 1;
        pb4Var.zzf |= 16;
    }

    /* renamed from: s0 */
    public static /* synthetic */ void m8372s0(pb4 pb4Var, int i) {
        pb4Var.zzaF = 5;
        pb4Var.zzf |= 1024;
    }

    /* renamed from: y0 */
    public static pb4 m8366y0(byte[] bArr, bm3 bm3Var) {
        return (pb4) pm3.m8253u(zzaM, bArr, bm3Var);
    }

    /* renamed from: z0 */
    public static za4 m8365z0() {
        return zzaM.m8252v();
    }

    /* renamed from: f0 */
    public final boolean m8385f0() {
        return (this.zzb & 4194304) != 0;
    }

    /* renamed from: m0 */
    public final int m8378m0() {
        int m11585a = fb4.m11585a(this.zzaF);
        if (m11585a == 0) {
            return 3;
        }
        return m11585a;
    }

    /* renamed from: t0 */
    public final String m8371t0() {
        return this.zzC;
    }

    /* renamed from: u0 */
    public final String m8370u0() {
        return this.zzaE;
    }

    /* renamed from: v0 */
    public final boolean m8369v0() {
        return this.zzaG;
    }

    /* renamed from: w0 */
    public final boolean m8368w0() {
        return (this.zzf & 16384) != 0;
    }

    /* renamed from: x0 */
    public final zb4 m8367x0() {
        zb4 zb4Var = this.zzaJ;
        return zb4Var == null ? zb4.m4332E() : zb4Var;
    }

    static {
        pb4 pb4Var = new pb4();
        zzaM = pb4Var;
        pm3.m8248z(pb4.class, pb4Var);
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
                        return zzaM;
                    }
                    return new za4(null);
                }
                return new pb4();
            }
            tm3 tm3Var = wb4.f33166a;
            return pm3.m8270A(zzaM, "\u0001T\u0000\u0003\u0001ĮT\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂH\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈI\u0019ဂM\u001aဌJ\u001bဈ\u0016\u001cဇK\u001dဈ\u0018\u001eဈL\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0ဌ*1ဌ+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08ဌ19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=Aဌ>Bဌ?Cဈ<Dဌ@EဉAFဂBGဂ8Hဂ9IဌCJဂ)Kဈ\u0017LဌDMဈEN\u001bOဌFP\u001bQဉGÉဉNĭဂOĮဈP", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaD", "zzA", "zzB", "zzaE", "zzaI", "zzaF", eb4.f22924a, "zzC", "zzaG", "zzE", "zzaH", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzaf", mb4.class, "zzR", "zzS", "zzT", "zzU", "zzW", tm3Var, "zzX", tm3Var, "zzae", "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", tm3Var, "zzag", "zzah", "zzai", "zzaj", "zzak", "zzan", "zzao", "zzaq", "zzar", vb4.f32682a, "zzas", xb4.f33550a, "zzap", "zzat", ab4.f20453a, "zzau", "zzav", "zzal", "zzam", "zzaw", tm3Var, "zzV", "zzD", "zzax", tm3Var, "zzay", "zzaz", ib4.class, "zzaA", tm3Var, "zzaB", cb4.class, "zzaC", "zzaJ", "zzaK", "zzaL"});
        }
        return (byte) 1;
    }

    /* renamed from: Z */
    public static /* synthetic */ void m8391Z(pb4 pb4Var, mb4 mb4Var) {
        mb4Var.getClass();
        ym3<mb4> ym3Var = pb4Var.zzaf;
        if (!ym3Var.zza()) {
            pb4Var.zzaf = pm3.m8258n(ym3Var);
        }
        pb4Var.zzaf.add(mb4Var);
    }
}
