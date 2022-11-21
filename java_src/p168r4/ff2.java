package p168r4;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.ff2 */
/* loaded from: classes2.dex */
public final class ff2 extends f53 implements InterfaceC5794gb {

    /* renamed from: M0 */
    public final Context f23475M0;

    /* renamed from: N0 */
    public final vl1 f23476N0;

    /* renamed from: O0 */
    public final dt1 f23477O0;

    /* renamed from: P0 */
    public int f23478P0;

    /* renamed from: Q0 */
    public boolean f23479Q0;

    /* renamed from: R0 */
    public C5713e5 f23480R0;

    /* renamed from: S0 */
    public long f23481S0;

    /* renamed from: T0 */
    public boolean f23482T0;

    /* renamed from: U0 */
    public boolean f23483U0;

    /* renamed from: V0 */
    public boolean f23484V0;

    /* renamed from: W0 */
    public InterfaceC5753f7 f23485W0;

    public ff2(Context context, c13 c13Var, u73 u73Var, boolean z, Handler handler, wm1 wm1Var, dt1 dt1Var) {
        super(1, c13Var, u73Var, false, 44100.0f);
        this.f23475M0 = context.getApplicationContext();
        this.f23477O0 = dt1Var;
        this.f23476N0 = new vl1(handler, wm1Var);
        dt1Var.mo11965m(new dd2(this, null));
    }

    @Override // p168r4.f53
    /* renamed from: A0 */
    public final void mo11547A0(String str) {
        this.f23476N0.m6103f(str);
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: B */
    public final long mo4346B() {
        if (mo11270F0() == 2) {
            m11541K0();
        }
        return this.f23481S0;
    }

    @Override // p168r4.f53, p168r4.InterfaceC5790g7
    /* renamed from: K */
    public final boolean mo10710K() {
        return super.mo10710K() && this.f23477O0.mo11970h();
    }

    /* renamed from: M0 */
    public final void m11539M0() {
        this.f23483U0 = true;
    }

    @Override // p168r4.f53, p168r4.InterfaceC5790g7
    /* renamed from: O */
    public final boolean mo10709O() {
        return this.f23477O0.mo11969i() || super.mo10709O();
    }

    @Override // p168r4.AbstractC5637c3, p168r4.InterfaceC5641c7
    /* renamed from: a */
    public final void mo8872a(int i, Object obj) {
        if (i != 2) {
            if (i != 3) {
                if (i != 6) {
                    switch (i) {
                        case 9:
                            this.f23477O0.mo11962p(((Boolean) obj).booleanValue());
                            return;
                        case 10:
                            this.f23477O0.mo11977a(((Integer) obj).intValue());
                            return;
                        case 11:
                            this.f23485W0 = (InterfaceC5753f7) obj;
                            return;
                        default:
                            return;
                    }
                }
                this.f23477O0.mo11975c((zs3) obj);
                return;
            }
            this.f23477O0.mo11957u((dg3) obj);
            return;
        }
        this.f23477O0.mo11967k(((Float) obj).floatValue());
    }

    @Override // p168r4.InterfaceC5790g7, p168r4.InterfaceC5827h7
    /* renamed from: b */
    public final String mo10707b() {
        return "MediaCodecAudioRenderer";
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: c */
    public final void mo4343c(C6159q6 c6159q6) {
        this.f23477O0.mo11973e(c6159q6);
    }

    @Override // p168r4.AbstractC5637c3, p168r4.InterfaceC5790g7
    /* renamed from: j */
    public final InterfaceC5794gb mo11257j() {
        return this;
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: p */
    public final void mo11537p() {
        this.f23477O0.mo11974d();
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    /* renamed from: r */
    public final void mo10703r() {
        this.f23484V0 = true;
        try {
            this.f23477O0.mo11964n();
            try {
                super.mo10703r();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo10703r();
                throw th;
            } finally {
            }
        }
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    /* renamed from: s */
    public final void mo11535s() {
        try {
            super.mo11535s();
            if (this.f23484V0) {
                this.f23484V0 = false;
                this.f23477O0.mo11958t();
            }
        } catch (Throwable th) {
            if (this.f23484V0) {
                this.f23484V0 = false;
                this.f23477O0.mo11958t();
            }
            throw th;
        }
    }

    @Override // p168r4.f53
    /* renamed from: v */
    public final void mo11532v(C5861i4 c5861i4) {
        if (!this.f23482T0 || c5861i4.m7891b()) {
            return;
        }
        if (Math.abs(c5861i4.f24960e - this.f23481S0) > 500000) {
            this.f23481S0 = c5861i4.f24960e;
        }
        this.f23482T0 = false;
    }

    @Override // p168r4.f53
    /* renamed from: v0 */
    public final boolean mo11531v0(C5713e5 c5713e5) {
        return this.f23477O0.mo11963o(c5713e5);
    }

    @Override // p168r4.f53
    /* renamed from: w */
    public final void mo11530w() {
        this.f23477O0.mo11971g();
    }

    @Override // p168r4.f53
    /* renamed from: y0 */
    public final float mo11525y0(float f, C5713e5 c5713e5, C5713e5[] c5713e5Arr) {
        int i = -1;
        for (C5713e5 c5713e52 : c5713e5Arr) {
            int i2 = c5713e52.f22828z;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: z */
    public final C6159q6 mo4341z() {
        return this.f23477O0.mo11966l();
    }

    @Override // p168r4.f53
    /* renamed from: z0 */
    public final void mo11524z0(String str, long j, long j2) {
        this.f23476N0.m6107b(str, j, j2);
    }

    @Override // p168r4.f53
    /* renamed from: B0 */
    public final void mo11546B0(Exception exc) {
        C5720eb.m11832b("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.f23476N0.m6099j(exc);
    }

    @Override // p168r4.f53
    /* renamed from: D0 */
    public final void mo11544D0(C5713e5 c5713e5, MediaFormat mediaFormat) {
        int i;
        int i2;
        C5713e5 c5713e52 = this.f23480R0;
        int[] iArr = null;
        if (c5713e52 != null) {
            c5713e5 = c5713e52;
        } else if (m11618j0() != null) {
            if ("audio/raw".equals(c5713e5.f22814l)) {
                i = c5713e5.f22797A;
            } else if (C5979lc.f27164a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                i = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i = C5979lc.m9691o(mediaFormat.getInteger("v-bits-per-sample"));
            } else if ("audio/raw".equals(c5713e5.f22814l)) {
                i = c5713e5.f22797A;
            } else {
                i = 2;
            }
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12564n("audio/raw");
            c5639c5.m12608D(i);
            c5639c5.m12607E(c5713e5.f22798B);
            c5639c5.m12606F(c5713e5.f22799C);
            c5639c5.m12610B(mediaFormat.getInteger("channel-count"));
            c5639c5.m12609C(mediaFormat.getInteger("sample-rate"));
            C5713e5 m12603I = c5639c5.m12603I();
            if (this.f23479Q0 && m12603I.f22827y == 6 && (i2 = c5713e5.f22827y) < 6) {
                iArr = new int[i2];
                for (int i3 = 0; i3 < c5713e5.f22827y; i3++) {
                    iArr[i3] = i3;
                }
            }
            c5713e5 = m12603I;
        }
        try {
            this.f23477O0.mo11959s(c5713e5, 0, iArr);
        } catch (xn1 e) {
            throw m12646i(e, e.f33643a, false, 5001);
        }
    }

    /* renamed from: J0 */
    public final int m11542J0(e33 e33Var, C5713e5 c5713e5) {
        int i;
        if ("OMX.google.raw.decoder".equals(e33Var.f22777a) && (i = C5979lc.f27164a) < 24 && (i != 23 || !C5979lc.m9680z(this.f23475M0))) {
            return -1;
        }
        return c5713e5.f22815m;
    }

    /* renamed from: K0 */
    public final void m11541K0() {
        long mo11976b = this.f23477O0.mo11976b(mo10710K());
        if (mo11976b != Long.MIN_VALUE) {
            if (!this.f23483U0) {
                mo11976b = Math.max(this.f23481S0, mo11976b);
            }
            this.f23481S0 = mo11976b;
            this.f23483U0 = false;
        }
    }

    @Override // p168r4.f53
    /* renamed from: t0 */
    public final int mo11534t0(u73 u73Var, C5713e5 c5713e5) {
        int i;
        int i2;
        if (!C5941kb.m10071a(c5713e5.f22814l)) {
            return 0;
        }
        if (C5979lc.f27164a >= 21) {
            i = 32;
        } else {
            i = 0;
        }
        int i3 = c5713e5.f22801E;
        boolean m11619i0 = f53.m11619i0(c5713e5);
        if (m11619i0 && this.f23477O0.mo11963o(c5713e5) && (i3 == 0 || nk3.m9075a() != null)) {
            return i | 12;
        }
        if (("audio/raw".equals(c5713e5.f22814l) && !this.f23477O0.mo11963o(c5713e5)) || !this.f23477O0.mo11963o(C5979lc.m9692n(2, c5713e5.f22827y, c5713e5.f22828z))) {
            return 1;
        }
        List<e33> mo11533u0 = mo11533u0(u73Var, c5713e5, false);
        if (mo11533u0.isEmpty()) {
            return 1;
        }
        if (!m11619i0) {
            return 2;
        }
        e33 e33Var = mo11533u0.get(0);
        boolean m11865c = e33Var.m11865c(c5713e5);
        int i4 = 8;
        if (m11865c && e33Var.m11864d(c5713e5)) {
            i4 = 16;
        }
        if (true != m11865c) {
            i2 = 3;
        } else {
            i2 = 4;
        }
        return i2 | i4 | i;
    }

    @Override // p168r4.f53
    /* renamed from: u0 */
    public final List<e33> mo11533u0(u73 u73Var, C5713e5 c5713e5, boolean z) {
        e33 m9075a;
        String str = c5713e5.f22814l;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.f23477O0.mo11963o(c5713e5) && (m9075a = nk3.m9075a()) != null) {
            return Collections.singletonList(m9075a);
        }
        List<e33> m9072d = nk3.m9072d(nk3.m9073c(str, false, false), c5713e5);
        if ("audio/eac3-joc".equals(str)) {
            ArrayList arrayList = new ArrayList(m9072d);
            arrayList.addAll(nk3.m9073c("audio/eac3", false, false));
            m9072d = arrayList;
        }
        return Collections.unmodifiableList(m9072d);
    }

    @Override // p168r4.f53
    /* renamed from: x */
    public final void mo11528x() {
        try {
            this.f23477O0.mo11968j();
        } catch (cs1 e) {
            throw m12646i(e, e.f21666b, e.f21665a, 5002);
        }
    }

    @Override // p168r4.f53
    /* renamed from: C0 */
    public final C5883iq mo11545C0(C5751f5 c5751f5) {
        C5883iq mo11545C0 = super.mo11545C0(c5751f5);
        this.f23476N0.m6106c(c5751f5.f23299a, mo11545C0);
        return mo11545C0;
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    /* renamed from: n */
    public final void mo11538n(boolean z, boolean z2) {
        super.mo11538n(z, z2);
        this.f23476N0.m6108a(this.f23325E0);
        m12647h();
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    /* renamed from: o */
    public final void mo10704o(long j, boolean z) {
        super.mo10704o(j, z);
        this.f23477O0.mo11964n();
        this.f23481S0 = j;
        this.f23482T0 = true;
        this.f23483U0 = true;
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: q */
    public final void mo11536q() {
        m11541K0();
        this.f23477O0.mo11960r();
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x00a8, code lost:
        if ("AXON 7 mini".equals(r10) == false) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:82:0x008b  */
    @Override // p168r4.f53
    /* renamed from: w0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p168r4.b03 mo11529w0(p168r4.e33 r8, p168r4.C5713e5 r9, android.media.MediaCrypto r10, float r11) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ff2.mo11529w0(r4.e33, r4.e5, android.media.MediaCrypto, float):r4.b03");
    }

    @Override // p168r4.f53
    /* renamed from: x0 */
    public final C5883iq mo11527x0(e33 e33Var, C5713e5 c5713e5, C5713e5 c5713e52) {
        int i;
        int i2;
        C5883iq m11863e = e33Var.m11863e(c5713e5, c5713e52);
        int i3 = m11863e.f25250e;
        if (m11542J0(e33Var, c5713e52) > this.f23478P0) {
            i3 |= 64;
        }
        String str = e33Var.f22777a;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = m11863e.f25249d;
            i2 = 0;
        }
        return new C5883iq(str, c5713e5, c5713e52, i, i2);
    }

    @Override // p168r4.f53
    /* renamed from: y */
    public final boolean mo11526y(long j, long j2, rn3 rn3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C5713e5 c5713e5) {
        byteBuffer.getClass();
        if (this.f23480R0 != null && (i2 & 2) != 0) {
            rn3Var.getClass();
            rn3Var.m7425h(i, false);
            return true;
        } else if (z) {
            if (rn3Var != null) {
                rn3Var.m7425h(i, false);
            }
            this.f23325E0.f24164f += i3;
            this.f23477O0.mo11971g();
            return true;
        } else {
            try {
                if (!this.f23477O0.mo11961q(byteBuffer, j3, i3)) {
                    return false;
                }
                if (rn3Var != null) {
                    rn3Var.m7425h(i, false);
                }
                this.f23325E0.f24163e += i3;
                return true;
            } catch (cs1 e) {
                throw m12646i(e, c5713e5, e.f21665a, 5002);
            } catch (yo1 e2) {
                throw m12646i(e2, e2.f34160b, false, 5001);
            }
        }
    }
}
