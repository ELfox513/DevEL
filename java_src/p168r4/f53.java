package p168r4;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.f53 */
/* loaded from: classes2.dex */
public abstract class f53 extends AbstractC5637c3 {

    /* renamed from: L0 */
    public static final byte[] f23315L0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* renamed from: A */
    public final C5861i4 f23316A;

    /* renamed from: A0 */
    public long f23317A0;

    /* renamed from: B */
    public final C5861i4 f23318B;

    /* renamed from: B0 */
    public boolean f23319B0;

    /* renamed from: C */
    public final zx2 f23320C;

    /* renamed from: C0 */
    public boolean f23321C0;

    /* renamed from: D */
    public final C5721ec<C5713e5> f23322D;

    /* renamed from: D0 */
    public boolean f23323D0;

    /* renamed from: E */
    public final ArrayList<Long> f23324E;

    /* renamed from: E0 */
    public C5808gp f23325E0;

    /* renamed from: F */
    public final MediaCodec.BufferInfo f23326F;

    /* renamed from: F0 */
    public long f23327F0;

    /* renamed from: G */
    public final long[] f23328G;

    /* renamed from: G0 */
    public long f23329G0;

    /* renamed from: H */
    public final long[] f23330H;

    /* renamed from: H0 */
    public int f23331H0;

    /* renamed from: I */
    public final long[] f23332I;

    /* renamed from: I0 */
    public rn3 f23333I0;

    /* renamed from: J */
    public C5713e5 f23334J;

    /* renamed from: J0 */
    public vu2 f23335J0;

    /* renamed from: K */
    public C5713e5 f23336K;

    /* renamed from: K0 */
    public vu2 f23337K0;

    /* renamed from: L */
    public MediaCrypto f23338L;

    /* renamed from: M */
    public boolean f23339M;

    /* renamed from: N */
    public long f23340N;

    /* renamed from: O */
    public float f23341O;

    /* renamed from: P */
    public float f23342P;

    /* renamed from: Q */
    public C5713e5 f23343Q;

    /* renamed from: R */
    public MediaFormat f23344R;

    /* renamed from: S */
    public boolean f23345S;

    /* renamed from: T */
    public float f23346T;

    /* renamed from: U */
    public ArrayDeque<e33> f23347U;

    /* renamed from: V */
    public f43 f23348V;

    /* renamed from: W */
    public e33 f23349W;

    /* renamed from: X */
    public int f23350X;

    /* renamed from: Y */
    public boolean f23351Y;

    /* renamed from: Z */
    public boolean f23352Z;

    /* renamed from: a0 */
    public boolean f23353a0;

    /* renamed from: b0 */
    public boolean f23354b0;

    /* renamed from: c0 */
    public boolean f23355c0;

    /* renamed from: d0 */
    public boolean f23356d0;

    /* renamed from: e0 */
    public boolean f23357e0;

    /* renamed from: f0 */
    public boolean f23358f0;

    /* renamed from: g0 */
    public boolean f23359g0;

    /* renamed from: h0 */
    public boolean f23360h0;

    /* renamed from: i0 */
    public az2 f23361i0;

    /* renamed from: j0 */
    public long f23362j0;

    /* renamed from: k0 */
    public int f23363k0;

    /* renamed from: l0 */
    public int f23364l0;

    /* renamed from: m0 */
    public ByteBuffer f23365m0;

    /* renamed from: n0 */
    public boolean f23366n0;

    /* renamed from: o0 */
    public boolean f23367o0;

    /* renamed from: p0 */
    public boolean f23368p0;

    /* renamed from: q0 */
    public boolean f23369q0;

    /* renamed from: r0 */
    public boolean f23370r0;

    /* renamed from: s0 */
    public boolean f23371s0;

    /* renamed from: t0 */
    public int f23372t0;

    /* renamed from: u0 */
    public int f23373u0;

    /* renamed from: v0 */
    public int f23374v0;

    /* renamed from: w */
    public final c13 f23375w;

    /* renamed from: w0 */
    public boolean f23376w0;

    /* renamed from: x */
    public final u73 f23377x;

    /* renamed from: x0 */
    public boolean f23378x0;

    /* renamed from: y */
    public final float f23379y;

    /* renamed from: y0 */
    public boolean f23380y0;

    /* renamed from: z */
    public final C5861i4 f23381z;

    /* renamed from: z0 */
    public long f23382z0;

    /* renamed from: i0 */
    public static boolean m11619i0(C5713e5 c5713e5) {
        return c5713e5.f22801E == 0;
    }

    /* renamed from: k0 */
    private final void m11617k0() {
        this.f23370r0 = false;
        this.f23320C.mo4041a();
        this.f23318B.mo4041a();
        this.f23369q0 = false;
        this.f23368p0 = false;
    }

    /* renamed from: A0 */
    public abstract void mo11547A0(String str);

    /* renamed from: B0 */
    public abstract void mo11546B0(Exception exc);

    /* JADX WARN: Code restructure failed: missing block: B:30:0x005b, code lost:
        if (m11615m0() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0087, code lost:
        if (m11615m0() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x009b, code lost:
        if (m11615m0() == false) goto L28;
     */
    /* renamed from: C0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p168r4.C5883iq mo11545C0(p168r4.C5751f5 r13) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.f53.mo11545C0(r4.f5):r4.iq");
    }

    /* renamed from: D */
    public boolean mo11634D(e33 e33Var) {
        return true;
    }

    /* renamed from: D0 */
    public abstract void mo11544D0(C5713e5 c5713e5, MediaFormat mediaFormat);

    /* renamed from: G0 */
    public final boolean m11632G0(long j) {
        return this.f23340N == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.f23340N;
    }

    /* renamed from: H0 */
    public final boolean m11631H0() {
        return this.f23364l0 >= 0;
    }

    /* renamed from: I */
    public final e33 m11630I() {
        return this.f23349W;
    }

    @Override // p168r4.AbstractC5637c3, p168r4.InterfaceC5827h7
    /* renamed from: J */
    public final int mo10964J() {
        return 8;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: K */
    public boolean mo10710K() {
        return this.f23321C0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [r4.rn3, android.media.MediaCrypto, r4.vu2] */
    /* renamed from: L */
    public final void m11629L() {
        try {
            rn3 rn3Var = this.f23333I0;
            if (rn3Var != null) {
                rn3Var.m7422k();
                this.f23325E0.f24160b++;
                mo11547A0(this.f23349W.f22777a);
            }
        } finally {
            this.f23333I0 = null;
            this.f23338L = null;
            this.f23335J0 = null;
            m11625Q();
        }
    }

    /* renamed from: Q */
    public final void m11625Q() {
        mo11626P();
        this.f23361i0 = null;
        this.f23347U = null;
        this.f23349W = null;
        this.f23343Q = null;
        this.f23344R = null;
        this.f23345S = false;
        this.f23380y0 = false;
        this.f23346T = -1.0f;
        this.f23350X = 0;
        this.f23351Y = false;
        this.f23352Z = false;
        this.f23353a0 = false;
        this.f23354b0 = false;
        this.f23355c0 = false;
        this.f23356d0 = false;
        this.f23357e0 = false;
        this.f23360h0 = false;
        this.f23371s0 = false;
        this.f23372t0 = 0;
        this.f23339M = false;
    }

    @Override // p168r4.AbstractC5637c3, p168r4.InterfaceC5790g7
    /* renamed from: a0 */
    public void mo11260a0(float f, float f2) {
        this.f23341O = f;
        this.f23342P = f2;
        m11616l0(this.f23343Q);
    }

    /* renamed from: d0 */
    public d23 mo11624d0(Throwable th, e33 e33Var) {
        return new d23(th, e33Var);
    }

    /* renamed from: e0 */
    public void mo11623e0(C5861i4 c5861i4) {
    }

    /* renamed from: g0 */
    public final float m11621g0() {
        return this.f23341O;
    }

    /* renamed from: h0 */
    public final long m11620h0() {
        return this.f23329G0;
    }

    /* renamed from: j0 */
    public final rn3 m11618j0() {
        return this.f23333I0;
    }

    @TargetApi(23)
    /* renamed from: m0 */
    public final boolean m11615m0() {
        if (this.f23376w0) {
            this.f23373u0 = 1;
            if (this.f23352Z || this.f23354b0) {
                this.f23374v0 = 3;
                return false;
            }
            this.f23374v0 = 2;
        } else {
            m11612p0();
        }
        return true;
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: n */
    public void mo11538n(boolean z, boolean z2) {
        this.f23325E0 = new C5808gp();
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: o */
    public void mo10704o(long j, boolean z) {
        this.f23319B0 = false;
        this.f23321C0 = false;
        if (this.f23368p0) {
            this.f23320C.mo4041a();
            this.f23318B.mo4041a();
            this.f23369q0 = false;
        } else {
            m11628M();
        }
        if (this.f23322D.m11822c() > 0) {
            this.f23323D0 = true;
        }
        this.f23322D.m11823b();
        int i = this.f23331H0;
        if (i != 0) {
            int i2 = i - 1;
            this.f23329G0 = this.f23330H[i2];
            this.f23327F0 = this.f23328G[i2];
            this.f23331H0 = 0;
        }
    }

    /* renamed from: p0 */
    public final void m11612p0() {
        try {
            throw null;
        } catch (MediaCryptoException e) {
            throw m12646i(e, this.f23334J, false, 6006);
        }
    }

    /* renamed from: q0 */
    public final void m11611q0() {
        this.f23364l0 = -1;
        this.f23365m0 = null;
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: r */
    public void mo10703r() {
        this.f23334J = null;
        this.f23327F0 = -9223372036854775807L;
        this.f23329G0 = -9223372036854775807L;
        this.f23331H0 = 0;
        m11627N();
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: s */
    public void mo11535s() {
        try {
            m11617k0();
            m11629L();
        } finally {
            this.f23337K0 = null;
        }
    }

    /* renamed from: t0 */
    public abstract int mo11534t0(u73 u73Var, C5713e5 c5713e5);

    /* renamed from: u */
    public final void m11608u() {
        this.f23363k0 = -1;
        this.f23316A.f24958c = null;
    }

    /* renamed from: u0 */
    public abstract List<e33> mo11533u0(u73 u73Var, C5713e5 c5713e5, boolean z);

    /* renamed from: v */
    public abstract void mo11532v(C5861i4 c5861i4);

    /* renamed from: v0 */
    public boolean mo11531v0(C5713e5 c5713e5) {
        return false;
    }

    /* renamed from: w */
    public abstract void mo11530w();

    /* renamed from: w0 */
    public abstract b03 mo11529w0(e33 e33Var, C5713e5 c5713e5, MediaCrypto mediaCrypto, float f);

    /* renamed from: x */
    public void mo11528x() {
    }

    /* renamed from: x0 */
    public abstract C5883iq mo11527x0(e33 e33Var, C5713e5 c5713e5, C5713e5 c5713e52);

    /* renamed from: y */
    public abstract boolean mo11526y(long j, long j2, rn3 rn3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C5713e5 c5713e5);

    /* renamed from: y0 */
    public abstract float mo11525y0(float f, C5713e5 c5713e5, C5713e5[] c5713e5Arr);

    /* renamed from: z0 */
    public abstract void mo11524z0(String str, long j, long j2);

    /* renamed from: s0 */
    private final void m11609s0() {
        try {
            this.f23333I0.m7423j();
        } finally {
            mo11626P();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x023d, code lost:
        if ("stvm8".equals(r6) == false) goto L183;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01c0 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01db A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0211 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0220 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x022d A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0255 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0264 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02b1 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02c8 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02d7 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0317 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0325 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0349 A[Catch: Exception -> 0x034d, TryCatch #0 {Exception -> 0x034d, blocks: (B:48:0x00b8, B:52:0x00d1, B:56:0x00d9, B:59:0x00e9, B:61:0x00f3, B:62:0x00fc, B:64:0x0101, B:66:0x010d, B:68:0x0118, B:69:0x0122, B:70:0x0141, B:73:0x0155, B:75:0x015b, B:77:0x0165, B:79:0x016d, B:81:0x0175, B:100:0x01b8, B:102:0x01c0, B:104:0x01c8, B:108:0x01d3, B:111:0x01dd, B:113:0x01e5, B:116:0x01ef, B:118:0x01f9, B:120:0x0201, B:125:0x020b, B:127:0x0211, B:131:0x021c, B:133:0x0220, B:148:0x0251, B:150:0x0255, B:154:0x0260, B:156:0x0264, B:158:0x026c, B:160:0x0276, B:162:0x0280, B:164:0x0288, B:166:0x0290, B:168:0x0298, B:170:0x02a0, B:174:0x02ab, B:176:0x02b1, B:178:0x02b5, B:182:0x02c0, B:184:0x02c8, B:205:0x030b, B:207:0x0317, B:208:0x031e, B:210:0x0325, B:211:0x032e, B:190:0x02d7, B:193:0x02e1, B:195:0x02e9, B:197:0x02f1, B:199:0x02fb, B:201:0x0305, B:138:0x022d, B:140:0x0237, B:142:0x023f, B:144:0x0247, B:86:0x0183, B:88:0x018b, B:90:0x0193, B:92:0x019d, B:94:0x01a5, B:96:0x01ad, B:221:0x0349, B:222:0x034c, B:67:0x0112, B:60:0x00ee, B:51:0x00c5), top: B:241:0x00b8, outer: #5 }] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [r4.om3, android.view.Surface, android.media.MediaCrypto] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11635A() {
        /*
            Method dump skipped, instructions count: 934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.f53.m11635A():void");
    }

    /* renamed from: N */
    public final boolean m11627N() {
        if (this.f23333I0 == null) {
            return false;
        }
        if (this.f23374v0 != 3 && !this.f23352Z && ((!this.f23353a0 || this.f23380y0) && (!this.f23354b0 || !this.f23378x0))) {
            m11609s0();
            return false;
        }
        m11629L();
        return true;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: O */
    public boolean mo10709O() {
        if (this.f23334J != null) {
            if (m12643m() || m11631H0()) {
                return true;
            }
            if (this.f23362j0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f23362j0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x026d, code lost:
        if (r15.f23336K != null) goto L207;
     */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x031b A[LOOP:2: B:72:0x013d->B:183:0x031b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x032b A[Catch: IllegalStateException -> 0x035c, TryCatch #10 {IllegalStateException -> 0x035c, blocks: (B:180:0x0314, B:185:0x0325, B:187:0x032b, B:189:0x0331, B:176:0x02fc, B:178:0x030e, B:196:0x0342), top: B:251:0x0132 }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x031a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0322 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v7 */
    @Override // p168r4.InterfaceC5790g7
    /* renamed from: U */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo10708U(long r24, long r26) {
        /*
            Method dump skipped, instructions count: 944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.f53.mo10708U(long, long):void");
    }

    @Override // p168r4.InterfaceC5827h7
    /* renamed from: d */
    public final int mo10706d(C5713e5 c5713e5) {
        try {
            return mo11534t0(this.f23377x, c5713e5);
        } catch (ae3 e) {
            throw m12646i(e, c5713e5, false, 4002);
        }
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: e */
    public final void mo10705e(C5713e5[] c5713e5Arr, long j, long j2) {
        boolean z = true;
        if (this.f23329G0 == -9223372036854775807L) {
            if (this.f23327F0 != -9223372036854775807L) {
                z = false;
            }
            C5903ja.m10371d(z);
            this.f23327F0 = j;
            this.f23329G0 = j2;
            return;
        }
        int i = this.f23331H0;
        if (i == 10) {
            long j3 = this.f23330H[9];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j3);
            Log.w("MediaCodecRenderer", sb.toString());
        } else {
            this.f23331H0 = i + 1;
        }
        long[] jArr = this.f23328G;
        int i2 = this.f23331H0 - 1;
        jArr[i2] = j;
        this.f23330H[i2] = j2;
        this.f23332I[i2] = this.f23382z0;
    }

    /* renamed from: f0 */
    public void mo11622f0(long j) {
        while (true) {
            int i = this.f23331H0;
            if (i != 0 && j >= this.f23332I[0]) {
                long[] jArr = this.f23328G;
                this.f23327F0 = jArr[0];
                this.f23329G0 = this.f23330H[0];
                int i2 = i - 1;
                this.f23331H0 = i2;
                System.arraycopy(jArr, 1, jArr, 0, i2);
                long[] jArr2 = this.f23330H;
                System.arraycopy(jArr2, 1, jArr2, 0, this.f23331H0);
                long[] jArr3 = this.f23332I;
                System.arraycopy(jArr3, 1, jArr3, 0, this.f23331H0);
                mo11530w();
            } else {
                return;
            }
        }
    }

    /* renamed from: l0 */
    public final boolean m11616l0(C5713e5 c5713e5) {
        if (C5979lc.f27164a >= 23 && this.f23333I0 != null && this.f23374v0 != 3 && mo11270F0() != 0) {
            float mo11525y0 = mo11525y0(this.f23342P, c5713e5, m12648g());
            float f = this.f23346T;
            if (f == mo11525y0) {
                return true;
            }
            if (mo11525y0 == -1.0f) {
                m11614n0();
                return false;
            } else if (f == -1.0f && mo11525y0 <= this.f23379y) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", mo11525y0);
                this.f23333I0.m7420m(bundle);
                this.f23346T = mo11525y0;
            }
        }
        return true;
    }

    /* renamed from: n0 */
    public final void m11614n0() {
        if (this.f23376w0) {
            this.f23373u0 = 1;
            this.f23374v0 = 3;
            return;
        }
        m11629L();
        m11635A();
    }

    @TargetApi(23)
    /* renamed from: o0 */
    public final void m11613o0() {
        int i = this.f23374v0;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    this.f23321C0 = true;
                    mo11528x();
                    return;
                }
                m11629L();
                m11635A();
                return;
            }
            m11609s0();
            m11612p0();
            return;
        }
        m11609s0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* renamed from: r0 */
    public final boolean m11610r0() {
        rn3 rn3Var = this.f23333I0;
        boolean z = 0;
        if (rn3Var == null || this.f23373u0 == 2 || this.f23319B0) {
            return false;
        }
        if (this.f23363k0 < 0) {
            int m7432a = rn3Var.m7432a();
            this.f23363k0 = m7432a;
            if (m7432a < 0) {
                return false;
            }
            this.f23316A.f24958c = this.f23333I0.m7429d(m7432a);
            this.f23316A.mo4041a();
        }
        if (this.f23373u0 == 1) {
            if (!this.f23360h0) {
                this.f23378x0 = true;
                this.f23333I0.m7427f(this.f23363k0, 0, 0, 0L, 4);
                m11608u();
            }
            this.f23373u0 = 2;
            return false;
        } else if (this.f23358f0) {
            this.f23358f0 = false;
            this.f23316A.f24958c.put(f23315L0);
            this.f23333I0.m7427f(this.f23363k0, 0, 38, 0L, 0);
            m11608u();
            this.f23376w0 = true;
            return true;
        } else {
            if (this.f23372t0 == 1) {
                for (int i = 0; i < this.f23343Q.f22816n.size(); i++) {
                    this.f23316A.f24958c.put(this.f23343Q.f22816n.get(i));
                }
                this.f23372t0 = 2;
            }
            int position = this.f23316A.f24958c.position();
            C5751f5 m12649f = m12649f();
            try {
                int m12645k = m12645k(m12649f, this.f23316A, 0);
                if (mo11269H()) {
                    this.f23317A0 = this.f23382z0;
                }
                if (m12645k == -3) {
                    return false;
                }
                if (m12645k == -5) {
                    if (this.f23372t0 == 2) {
                        this.f23316A.mo4041a();
                        this.f23372t0 = 1;
                    }
                    mo11545C0(m12649f);
                    return true;
                } else if (this.f23316A.m7890c()) {
                    if (this.f23372t0 == 2) {
                        this.f23316A.mo4041a();
                        this.f23372t0 = 1;
                    }
                    this.f23319B0 = true;
                    if (!this.f23376w0) {
                        m11613o0();
                        return false;
                    }
                    try {
                        if (!this.f23360h0) {
                            this.f23378x0 = true;
                            this.f23333I0.m7427f(this.f23363k0, 0, 0, 0L, 4);
                            m11608u();
                        }
                        return false;
                    } catch (MediaCodec.CryptoException e) {
                        throw m12646i(e, this.f23334J, false, C5711e3.m11868e(e.getErrorCode()));
                    }
                } else if (!this.f23376w0 && !this.f23316A.m7889d()) {
                    this.f23316A.mo4041a();
                    if (this.f23372t0 == 2) {
                        this.f23372t0 = 1;
                    }
                    return true;
                } else {
                    boolean m10727j = this.f23316A.m10727j();
                    if (m10727j) {
                        this.f23316A.f24957b.m11882c(position);
                    }
                    if (this.f23351Y && !m10727j) {
                        ByteBuffer byteBuffer = this.f23316A.f24958c;
                        byte[] bArr = C6053nb.f28240a;
                        int position2 = byteBuffer.position();
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            int i4 = i2 + 1;
                            if (i4 < position2) {
                                int i5 = byteBuffer.get(i2) & DefaultClassResolver.NAME;
                                if (i3 == 3) {
                                    if (i5 == 1) {
                                        if ((byteBuffer.get(i4) & 31) == 7) {
                                            ByteBuffer duplicate = byteBuffer.duplicate();
                                            duplicate.position(i2 - 3);
                                            duplicate.limit(position2);
                                            byteBuffer.position(0);
                                            byteBuffer.put(duplicate);
                                            break;
                                        }
                                        i5 = 1;
                                    }
                                } else if (i5 == 0) {
                                    i3++;
                                }
                                if (i5 != 0) {
                                    i3 = 0;
                                }
                                i2 = i4;
                            } else {
                                byteBuffer.clear();
                                break;
                            }
                        }
                        if (this.f23316A.f24958c.position() == 0) {
                            return true;
                        }
                        this.f23351Y = false;
                    }
                    C5861i4 c5861i4 = this.f23316A;
                    long j = c5861i4.f24960e;
                    az2 az2Var = this.f23361i0;
                    if (az2Var != null) {
                        j = az2Var.m12899b(this.f23334J, c5861i4);
                        this.f23382z0 = Math.max(this.f23382z0, this.f23361i0.m12898c(this.f23334J));
                    }
                    long j2 = j;
                    if (this.f23316A.m7891b()) {
                        this.f23324E.add(Long.valueOf(j2));
                    }
                    if (this.f23323D0) {
                        this.f23322D.m11824a(j2, this.f23334J);
                        this.f23323D0 = false;
                    }
                    this.f23382z0 = Math.max(this.f23382z0, j2);
                    this.f23316A.m10726k();
                    if (this.f23316A.m7888e()) {
                        mo11623e0(this.f23316A);
                    }
                    mo11532v(this.f23316A);
                    try {
                        if (m10727j) {
                            this.f23333I0.m7426g(this.f23363k0, 0, this.f23316A.f24957b, j2, 0);
                        } else {
                            this.f23333I0.m7427f(this.f23363k0, 0, this.f23316A.f24958c.limit(), j2, 0);
                        }
                        m11608u();
                        this.f23376w0 = true;
                        this.f23372t0 = 0;
                        C5808gp c5808gp = this.f23325E0;
                        z = c5808gp.f24161c + 1;
                        c5808gp.f24161c = z;
                        return true;
                    } catch (MediaCodec.CryptoException e2) {
                        throw m12646i(e2, this.f23334J, z, C5711e3.m11868e(e2.getErrorCode()));
                    }
                }
            } catch (C5823h3 e3) {
                mo11546B0(e3);
                m11633E0(0);
                m11609s0();
                return true;
            }
        }
    }

    public f53(int i, c13 c13Var, u73 u73Var, boolean z, float f) {
        super(i);
        this.f23375w = c13Var;
        u73Var.getClass();
        this.f23377x = u73Var;
        this.f23379y = f;
        this.f23381z = new C5861i4(0, 0);
        this.f23316A = new C5861i4(0, 0);
        this.f23318B = new C5861i4(2, 0);
        zx2 zx2Var = new zx2();
        this.f23320C = zx2Var;
        this.f23322D = new C5721ec<>(10);
        this.f23324E = new ArrayList<>();
        this.f23326F = new MediaCodec.BufferInfo();
        this.f23341O = 1.0f;
        this.f23342P = 1.0f;
        this.f23340N = -9223372036854775807L;
        this.f23328G = new long[10];
        this.f23330H = new long[10];
        this.f23332I = new long[10];
        this.f23327F0 = -9223372036854775807L;
        this.f23329G0 = -9223372036854775807L;
        zx2Var.m10728i(0);
        zx2Var.f24958c.order(ByteOrder.nativeOrder());
        this.f23346T = -1.0f;
        this.f23350X = 0;
        this.f23372t0 = 0;
        this.f23363k0 = -1;
        this.f23364l0 = -1;
        this.f23362j0 = -9223372036854775807L;
        this.f23382z0 = -9223372036854775807L;
        this.f23317A0 = -9223372036854775807L;
        this.f23373u0 = 0;
        this.f23374v0 = 0;
    }

    /* renamed from: E0 */
    public final boolean m11633E0(int i) {
        C5751f5 m12649f = m12649f();
        this.f23381z.mo4041a();
        int m12645k = m12645k(m12649f, this.f23381z, i | 4);
        if (m12645k == -5) {
            mo11545C0(m12649f);
            return true;
        } else if (m12645k == -4 && this.f23381z.m7890c()) {
            this.f23319B0 = true;
            m11613o0();
            return false;
        } else {
            return false;
        }
    }

    /* renamed from: M */
    public final boolean m11628M() {
        boolean m11627N = m11627N();
        if (m11627N) {
            m11635A();
        }
        return m11627N;
    }

    /* renamed from: P */
    public void mo11626P() {
        m11608u();
        m11611q0();
        this.f23362j0 = -9223372036854775807L;
        this.f23378x0 = false;
        this.f23376w0 = false;
        this.f23358f0 = false;
        this.f23359g0 = false;
        this.f23366n0 = false;
        this.f23367o0 = false;
        this.f23324E.clear();
        this.f23382z0 = -9223372036854775807L;
        this.f23317A0 = -9223372036854775807L;
        az2 az2Var = this.f23361i0;
        if (az2Var != null) {
            az2Var.m12900a();
        }
        this.f23373u0 = 0;
        this.f23374v0 = 0;
        this.f23372t0 = this.f23371s0 ? 1 : 0;
    }
}
