package p168r4;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: r4.bb2 */
/* loaded from: classes2.dex */
public final class bb2 implements dt1 {

    /* renamed from: A */
    public ByteBuffer[] f20933A;

    /* renamed from: B */
    public ByteBuffer f20934B;

    /* renamed from: C */
    public ByteBuffer f20935C;

    /* renamed from: D */
    public byte[] f20936D;

    /* renamed from: E */
    public int f20937E;

    /* renamed from: F */
    public int f20938F;

    /* renamed from: G */
    public boolean f20939G;

    /* renamed from: H */
    public boolean f20940H;

    /* renamed from: I */
    public boolean f20941I;

    /* renamed from: J */
    public boolean f20942J;

    /* renamed from: K */
    public int f20943K;

    /* renamed from: L */
    public zs3 f20944L;

    /* renamed from: M */
    public long f20945M;

    /* renamed from: N */
    public boolean f20946N;

    /* renamed from: O */
    public boolean f20947O;

    /* renamed from: P */
    public final o22 f20948P;

    /* renamed from: a */
    public final kz1 f20949a;

    /* renamed from: b */
    public final kk2 f20950b;

    /* renamed from: c */
    public final ja1[] f20951c;

    /* renamed from: d */
    public final ja1[] f20952d;

    /* renamed from: e */
    public final ConditionVariable f20953e;

    /* renamed from: f */
    public final ix1 f20954f;

    /* renamed from: g */
    public final ArrayDeque<p32> f20955g;

    /* renamed from: h */
    public x92 f20956h;

    /* renamed from: i */
    public final r52<yo1> f20957i;

    /* renamed from: j */
    public final r52<cs1> f20958j;

    /* renamed from: k */
    public aq1 f20959k;

    /* renamed from: l */
    public n12 f20960l;

    /* renamed from: m */
    public n12 f20961m;

    /* renamed from: n */
    public AudioTrack f20962n;

    /* renamed from: o */
    public dg3 f20963o;

    /* renamed from: p */
    public p32 f20964p;

    /* renamed from: q */
    public p32 f20965q;

    /* renamed from: r */
    public final C6159q6 f20966r;

    /* renamed from: s */
    public long f20967s;

    /* renamed from: t */
    public long f20968t;

    /* renamed from: u */
    public long f20969u;

    /* renamed from: v */
    public boolean f20970v;

    /* renamed from: w */
    public boolean f20971w;

    /* renamed from: x */
    public long f20972x;

    /* renamed from: y */
    public float f20973y;

    /* renamed from: z */
    public ja1[] f20974z;

    /* renamed from: K */
    public static boolean m12823K(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (C5979lc.f27164a >= 29) {
            isOffloadedPlayback = audioTrack.isOffloadedPlayback();
            return isOffloadedPlayback;
        }
        return false;
    }

    /* renamed from: H */
    public final boolean m12826H() {
        return this.f20962n != null;
    }

    @Override // p168r4.dt1
    /* renamed from: a */
    public final void mo11977a(int i) {
        if (this.f20943K != i) {
            this.f20943K = i;
            this.f20942J = i != 0;
            mo11964n();
        }
    }

    @Override // p168r4.dt1
    /* renamed from: d */
    public final void mo11974d() {
        this.f20941I = true;
        if (m12826H()) {
            this.f20954f.m10477c();
            this.f20962n.play();
        }
    }

    @Override // p168r4.dt1
    /* renamed from: g */
    public final void mo11971g() {
        this.f20970v = true;
    }

    @Override // p168r4.dt1
    /* renamed from: h */
    public final boolean mo11970h() {
        return !m12826H() || (this.f20939G && !mo11969i());
    }

    @Override // p168r4.dt1
    /* renamed from: i */
    public final boolean mo11969i() {
        return m12826H() && this.f20954f.m10470j(m12824J());
    }

    @Override // p168r4.dt1
    /* renamed from: k */
    public final void mo11967k(float f) {
        if (this.f20973y != f) {
            this.f20973y = f;
            m12831C();
        }
    }

    @Override // p168r4.dt1
    /* renamed from: l */
    public final C6159q6 mo11966l() {
        return m12829E().f29325a;
    }

    @Override // p168r4.dt1
    /* renamed from: m */
    public final void mo11965m(aq1 aq1Var) {
        this.f20959k = aq1Var;
    }

    @Override // p168r4.dt1
    /* renamed from: o */
    public final boolean mo11963o(C5713e5 c5713e5) {
        return mo11972f(c5713e5) != 0;
    }

    @Override // p168r4.dt1
    /* renamed from: r */
    public final void mo11960r() {
        this.f20941I = false;
        if (m12826H() && this.f20954f.m10469k()) {
            this.f20962n.pause();
        }
    }

    /* renamed from: y */
    public final void m12813y() {
        int i = 0;
        while (true) {
            ja1[] ja1VarArr = this.f20974z;
            if (i < ja1VarArr.length) {
                ja1 ja1Var = ja1VarArr[i];
                ja1Var.mo10153g();
                this.f20933A[i] = ja1Var.mo10011c();
                i++;
            } else {
                return;
            }
        }
    }

    public bb2(g71 g71Var, ja1[] ja1VarArr, boolean z) {
        o22 o22Var = new o22(ja1VarArr);
        this.f20948P = o22Var;
        int i = C5979lc.f27164a;
        this.f20953e = new ConditionVariable(true);
        this.f20954f = new ix1(new s62(this, null));
        kz1 kz1Var = new kz1();
        this.f20949a = kz1Var;
        kk2 kk2Var = new kk2();
        this.f20950b = kk2Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new gg2(), kz1Var, kk2Var);
        Collections.addAll(arrayList, o22Var.m8924a());
        this.f20951c = (ja1[]) arrayList.toArray(new ja1[0]);
        this.f20952d = new ja1[]{new cc2()};
        this.f20973y = 1.0f;
        this.f20963o = dg3.f22251c;
        this.f20943K = 0;
        this.f20944L = new zs3(0, 0.0f);
        C6159q6 c6159q6 = C6159q6.f29990d;
        this.f20965q = new p32(c6159q6, false, 0L, 0L, null);
        this.f20966r = c6159q6;
        this.f20938F = -1;
        this.f20974z = new ja1[0];
        this.f20933A = new ByteBuffer[0];
        this.f20955g = new ArrayDeque<>();
        this.f20957i = new r52<>(100L);
        this.f20958j = new r52<>(100L);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please submit an issue!!! */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m12832B() {
        /*
            r9 = this;
            int r0 = r9.f20938F
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto Lb
            r9.f20938F = r3
        L9:
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            int r4 = r9.f20938F
            r4.ja1[] r5 = r9.f20974z
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.mo10155e()
        L1f:
            r9.m12812z(r7)
            boolean r0 = r4.mo10010d()
            if (r0 != 0) goto L29
            return r3
        L29:
            int r0 = r9.f20938F
            int r0 = r0 + r2
            r9.f20938F = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.f20935C
            if (r0 == 0) goto L3b
            r9.m12833A(r0, r7)
            java.nio.ByteBuffer r0 = r9.f20935C
            if (r0 == 0) goto L3b
            return r3
        L3b:
            r9.f20938F = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.bb2.m12832B():boolean");
    }

    /* renamed from: E */
    public final p32 m12829E() {
        p32 p32Var = this.f20964p;
        if (p32Var == null) {
            if (!this.f20955g.isEmpty()) {
                return this.f20955g.getLast();
            }
            return this.f20965q;
        }
        return p32Var;
    }

    /* renamed from: G */
    public final boolean m12827G() {
        if ("audio/raw".equals(this.f20961m.f28082a.f22814l)) {
            int i = this.f20961m.f28082a.f22797A;
            return true;
        }
        return false;
    }

    /* renamed from: I */
    public final long m12825I() {
        n12 n12Var = this.f20961m;
        int i = n12Var.f28084c;
        return this.f20967s / n12Var.f28083b;
    }

    /* renamed from: J */
    public final long m12824J() {
        n12 n12Var = this.f20961m;
        int i = n12Var.f28084c;
        return this.f20968t / n12Var.f28085d;
    }

    /* renamed from: L */
    public final void m12822L() {
        if (!this.f20940H) {
            this.f20940H = true;
            this.f20954f.m10471i(m12824J());
            this.f20962n.stop();
        }
    }

    @Override // p168r4.dt1
    /* renamed from: c */
    public final void mo11975c(zs3 zs3Var) {
        if (this.f20944L.equals(zs3Var)) {
            return;
        }
        int i = zs3Var.f34725a;
        if (this.f20962n != null) {
            int i2 = this.f20944L.f34725a;
        }
        this.f20944L = zs3Var;
    }

    @Override // p168r4.dt1
    /* renamed from: e */
    public final void mo11973e(C6159q6 c6159q6) {
        m12830D(new C6159q6(C5979lc.m9701e0(c6159q6.f29992a, 0.1f, 8.0f), C5979lc.m9701e0(c6159q6.f29993b, 0.1f, 8.0f)), m12829E().f29326b);
    }

    @Override // p168r4.dt1
    /* renamed from: f */
    public final int mo11972f(C5713e5 c5713e5) {
        if ("audio/raw".equals(c5713e5.f22814l)) {
            if (!C5979lc.m9690p(c5713e5.f22797A)) {
                int i = c5713e5.f22797A;
                StringBuilder sb = new StringBuilder(33);
                sb.append("Invalid PCM encoding: ");
                sb.append(i);
                Log.w("DefaultAudioSink", sb.toString());
                return 0;
            } else if (c5713e5.f22797A == 2) {
                return 2;
            } else {
                return 1;
            }
        }
        int i2 = C5979lc.f27164a;
        return 0;
    }

    @Override // p168r4.dt1
    /* renamed from: j */
    public final void mo11968j() {
        if (!this.f20939G && m12826H() && m12832B()) {
            m12822L();
            this.f20939G = true;
        }
    }

    @Override // p168r4.dt1
    /* renamed from: q */
    public final boolean mo11961q(ByteBuffer byteBuffer, long j, int i) {
        boolean z;
        boolean z2;
        ByteBuffer byteBuffer2 = this.f20934B;
        if (byteBuffer2 != null && byteBuffer != byteBuffer2) {
            z = false;
        } else {
            z = true;
        }
        C5903ja.m10374a(z);
        if (this.f20960l != null) {
            if (!m12832B()) {
                return false;
            }
            n12 n12Var = this.f20960l;
            n12 n12Var2 = this.f20961m;
            int i2 = n12Var2.f28084c;
            int i3 = n12Var.f28084c;
            if (n12Var2.f28088g == n12Var.f28088g && n12Var2.f28086e == n12Var.f28086e && n12Var2.f28087f == n12Var.f28087f && n12Var2.f28085d == n12Var.f28085d) {
                this.f20961m = n12Var;
                this.f20960l = null;
                if (m12823K(this.f20962n)) {
                    this.f20962n.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.f20962n;
                    C5713e5 c5713e5 = this.f20961m.f28082a;
                    audioTrack.setOffloadDelayPadding(c5713e5.f22798B, c5713e5.f22799C);
                    this.f20947O = true;
                }
            } else {
                m12822L();
                if (mo11969i()) {
                    return false;
                }
                mo11964n();
            }
            m12828F(j);
        }
        if (!m12826H()) {
            try {
                this.f20953e.block();
                try {
                    n12 n12Var3 = this.f20961m;
                    n12Var3.getClass();
                    AudioTrack m9210c = n12Var3.m9210c(false, this.f20963o, this.f20943K);
                    this.f20962n = m9210c;
                    if (m12823K(m9210c)) {
                        AudioTrack audioTrack2 = this.f20962n;
                        if (this.f20956h == null) {
                            this.f20956h = new x92(this);
                        }
                        this.f20956h.m5446a(audioTrack2);
                        AudioTrack audioTrack3 = this.f20962n;
                        C5713e5 c5713e52 = this.f20961m.f28082a;
                        audioTrack3.setOffloadDelayPadding(c5713e52.f22798B, c5713e52.f22799C);
                    }
                    this.f20943K = this.f20962n.getAudioSessionId();
                    ix1 ix1Var = this.f20954f;
                    AudioTrack audioTrack4 = this.f20962n;
                    n12 n12Var4 = this.f20961m;
                    int i4 = n12Var4.f28084c;
                    ix1Var.m10479a(audioTrack4, false, n12Var4.f28088g, n12Var4.f28085d, n12Var4.f28089h);
                    m12831C();
                    int i5 = this.f20944L.f34725a;
                    this.f20971w = true;
                } catch (yo1 e) {
                    aq1 aq1Var = this.f20959k;
                    if (aq1Var != null) {
                        aq1Var.mo12162a(e);
                    }
                    throw e;
                }
            } catch (yo1 e2) {
                this.f20957i.m7609a(e2);
                return false;
            }
        }
        this.f20957i.m7608b();
        if (this.f20971w) {
            this.f20972x = Math.max(0L, j);
            this.f20970v = false;
            this.f20971w = false;
            m12828F(j);
            if (this.f20941I) {
                mo11974d();
            }
        }
        if (!this.f20954f.m10475e(m12824J())) {
            return false;
        }
        if (this.f20934B == null) {
            if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
                z2 = true;
            } else {
                z2 = false;
            }
            C5903ja.m10374a(z2);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            int i6 = this.f20961m.f28084c;
            if (this.f20964p != null) {
                if (!m12832B()) {
                    return false;
                }
                m12828F(j);
                this.f20964p = null;
            }
            long m12825I = this.f20972x + (((m12825I() - this.f20950b.m10006q()) * 1000000) / this.f20961m.f28082a.f22828z);
            if (!this.f20970v && Math.abs(m12825I - j) > 200000) {
                this.f20959k.mo12162a(new br1(j, m12825I));
                this.f20970v = true;
            }
            if (this.f20970v) {
                if (!m12832B()) {
                    return false;
                }
                long j2 = j - m12825I;
                this.f20972x += j2;
                this.f20970v = false;
                m12828F(j);
                aq1 aq1Var2 = this.f20959k;
                if (aq1Var2 != null && j2 != 0) {
                    ((dd2) aq1Var2).f22229a.m11539M0();
                }
            }
            int i7 = this.f20961m.f28084c;
            this.f20967s += byteBuffer.remaining();
            this.f20934B = byteBuffer;
        }
        m12812z(j);
        if (!this.f20934B.hasRemaining()) {
            this.f20934B = null;
            return true;
        } else if (!this.f20954f.m10472h(m12824J())) {
            return false;
        } else {
            Log.w("DefaultAudioSink", "Resetting stalled audio track");
            mo11964n();
            return true;
        }
    }

    @Override // p168r4.dt1
    /* renamed from: s */
    public final void mo11959s(C5713e5 c5713e5, int i, int[] iArr) {
        if ("audio/raw".equals(c5713e5.f22814l)) {
            C5903ja.m10374a(C5979lc.m9690p(c5713e5.f22797A));
            int m9687s = C5979lc.m9687s(c5713e5.f22797A, c5713e5.f22827y);
            ja1[] ja1VarArr = this.f20951c;
            this.f20950b.m10008o(c5713e5.f22798B, c5713e5.f22799C);
            if (C5979lc.f27164a < 21 && c5713e5.f22827y == 8 && iArr == null) {
                iArr = new int[6];
                for (int i2 = 0; i2 < 6; i2++) {
                    iArr[i2] = i2;
                }
            }
            this.f20949a.m9822o(iArr);
            h81 h81Var = new h81(c5713e5.f22828z, c5713e5.f22827y, c5713e5.f22797A);
            for (ja1 ja1Var : ja1VarArr) {
                try {
                    h81 mo10156b = ja1Var.mo10156b(h81Var);
                    if (true == ja1Var.mo10157a()) {
                        h81Var = mo10156b;
                    }
                } catch (i91 e) {
                    throw new xn1(e, c5713e5);
                }
            }
            int i3 = h81Var.f24509c;
            int i4 = h81Var.f24507a;
            int m9688r = C5979lc.m9688r(h81Var.f24508b);
            int m9687s2 = C5979lc.m9687s(i3, h81Var.f24508b);
            if (i3 != 0) {
                if (m9688r != 0) {
                    this.f20946N = false;
                    n12 n12Var = new n12(c5713e5, m9687s, 0, m9687s2, i4, m9688r, i3, 0, false, ja1VarArr);
                    if (m12826H()) {
                        this.f20960l = n12Var;
                        return;
                    } else {
                        this.f20961m = n12Var;
                        return;
                    }
                }
                String valueOf = String.valueOf(c5713e5);
                StringBuilder sb = new StringBuilder(valueOf.length() + 54);
                sb.append("Invalid output channel config (mode=0) for: ");
                sb.append(valueOf);
                throw new xn1(sb.toString(), c5713e5);
            }
            String valueOf2 = String.valueOf(c5713e5);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 48);
            sb2.append("Invalid output encoding (mode=0) for: ");
            sb2.append(valueOf2);
            throw new xn1(sb2.toString(), c5713e5);
        }
        int i5 = C5979lc.f27164a;
        throw new xn1("Unable to configure passthrough for: ".concat(String.valueOf(c5713e5)), c5713e5);
    }

    @Override // p168r4.dt1
    /* renamed from: u */
    public final void mo11957u(dg3 dg3Var) {
        if (this.f20963o.equals(dg3Var)) {
            return;
        }
        this.f20963o = dg3Var;
        mo11964n();
    }

    /* renamed from: z */
    public final void m12812z(long j) {
        ByteBuffer byteBuffer;
        int length = this.f20974z.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f20933A[i - 1];
            } else {
                byteBuffer = this.f20934B;
                if (byteBuffer == null) {
                    byteBuffer = ja1.f25974a;
                }
            }
            if (i == length) {
                m12833A(byteBuffer, j);
            } else {
                ja1 ja1Var = this.f20974z[i];
                if (i > this.f20938F) {
                    ja1Var.mo9826h(byteBuffer);
                }
                ByteBuffer mo10011c = ja1Var.mo10011c();
                this.f20933A[i] = mo10011c;
                if (mo10011c.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* renamed from: A */
    public final void m12833A(ByteBuffer byteBuffer, long j) {
        int write;
        boolean z;
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ByteBuffer byteBuffer2 = this.f20935C;
        boolean z2 = true;
        if (byteBuffer2 != null) {
            if (byteBuffer2 == byteBuffer) {
                z = true;
            } else {
                z = false;
            }
            C5903ja.m10374a(z);
        } else {
            this.f20935C = byteBuffer;
            if (C5979lc.f27164a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.f20936D;
                if (bArr == null || bArr.length < remaining) {
                    this.f20936D = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.f20936D, 0, remaining);
                byteBuffer.position(position);
                this.f20937E = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        int i = C5979lc.f27164a;
        if (i < 21) {
            int m10474f = this.f20954f.m10474f(this.f20968t);
            if (m10474f > 0) {
                write = this.f20962n.write(this.f20936D, this.f20937E, Math.min(remaining2, m10474f));
                if (write > 0) {
                    this.f20937E += write;
                    byteBuffer.position(byteBuffer.position() + write);
                }
            } else {
                write = 0;
            }
        } else {
            write = this.f20962n.write(byteBuffer, remaining2, 1);
        }
        this.f20945M = SystemClock.elapsedRealtime();
        if (write < 0) {
            if ((i < 24 || write != -6) && write != -32) {
                z2 = false;
            }
            cs1 cs1Var = new cs1(write, this.f20961m.f28082a, z2);
            aq1 aq1Var = this.f20959k;
            if (aq1Var != null) {
                aq1Var.mo12162a(cs1Var);
            }
            if (!cs1Var.f21665a) {
                this.f20958j.m7609a(cs1Var);
                return;
            }
            throw cs1Var;
        }
        this.f20958j.m7608b();
        if (m12823K(this.f20962n) && this.f20941I && this.f20959k != null && write < remaining2 && !this.f20947O) {
            long m10473g = this.f20954f.m10473g(0L);
            dd2 dd2Var = (dd2) this.f20959k;
            if (ff2.m11540L0(dd2Var.f22229a) != null) {
                ff2.m11540L0(dd2Var.f22229a).mo8036V(m10473g);
            }
        }
        int i2 = this.f20961m.f28084c;
        this.f20968t += write;
        if (write == remaining2) {
            this.f20935C = null;
        }
    }

    /* renamed from: C */
    public final void m12831C() {
        if (!m12826H()) {
            return;
        }
        if (C5979lc.f27164a >= 21) {
            this.f20962n.setVolume(this.f20973y);
            return;
        }
        AudioTrack audioTrack = this.f20962n;
        float f = this.f20973y;
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: D */
    public final void m12830D(C6159q6 c6159q6, boolean z) {
        p32 m12829E = m12829E();
        if (c6159q6.equals(m12829E.f29325a) && z == m12829E.f29326b) {
            return;
        }
        p32 p32Var = new p32(c6159q6, z, -9223372036854775807L, -9223372036854775807L, null);
        if (m12826H()) {
            this.f20964p = p32Var;
        } else {
            this.f20965q = p32Var;
        }
    }

    /* renamed from: F */
    public final void m12828F(long j) {
        C6159q6 c6159q6;
        boolean z;
        if (m12827G()) {
            o22 o22Var = this.f20948P;
            c6159q6 = m12829E().f29325a;
            o22Var.m8923b(c6159q6);
        } else {
            c6159q6 = C6159q6.f29990d;
        }
        C6159q6 c6159q62 = c6159q6;
        if (m12827G()) {
            o22 o22Var2 = this.f20948P;
            boolean z2 = m12829E().f29326b;
            o22Var2.m8922c(z2);
            z = z2;
        } else {
            z = false;
        }
        this.f20955g.add(new p32(c6159q62, z, Math.max(0L, j), this.f20961m.m9212a(m12824J()), null));
        ja1[] ja1VarArr = this.f20961m.f28090i;
        ArrayList arrayList = new ArrayList();
        for (ja1 ja1Var : ja1VarArr) {
            if (ja1Var.mo10157a()) {
                arrayList.add(ja1Var);
            } else {
                ja1Var.mo10153g();
            }
        }
        int size = arrayList.size();
        this.f20974z = (ja1[]) arrayList.toArray(new ja1[size]);
        this.f20933A = new ByteBuffer[size];
        m12813y();
        aq1 aq1Var = this.f20959k;
        if (aq1Var != null) {
            ff2.m11543I0(((dd2) aq1Var).f22229a).m6101h(z);
        }
    }

    @Override // p168r4.dt1
    /* renamed from: b */
    public final long mo11976b(boolean z) {
        long m9696j;
        if (m12826H() && !this.f20971w) {
            long min = Math.min(this.f20954f.m10478b(z), this.f20961m.m9212a(m12824J()));
            while (!this.f20955g.isEmpty() && min >= this.f20955g.getFirst().f29328d) {
                this.f20965q = this.f20955g.remove();
            }
            p32 p32Var = this.f20965q;
            long j = min - p32Var.f29328d;
            if (p32Var.f29325a.equals(C6159q6.f29990d)) {
                m9696j = this.f20965q.f29327c + j;
            } else if (this.f20955g.isEmpty()) {
                m9696j = this.f20948P.m8921d(j) + this.f20965q.f29327c;
            } else {
                p32 first = this.f20955g.getFirst();
                m9696j = first.f29327c - C5979lc.m9696j(first.f29328d - min, this.f20965q.f29325a.f29992a);
            }
            return m9696j + this.f20961m.m9212a(this.f20948P.m8920e());
        }
        return Long.MIN_VALUE;
    }

    @Override // p168r4.dt1
    /* renamed from: n */
    public final void mo11964n() {
        if (m12826H()) {
            this.f20967s = 0L;
            this.f20968t = 0L;
            this.f20969u = 0L;
            this.f20947O = false;
            this.f20965q = new p32(m12829E().f29325a, m12829E().f29326b, 0L, 0L, null);
            this.f20972x = 0L;
            this.f20964p = null;
            this.f20955g.clear();
            this.f20934B = null;
            this.f20935C = null;
            this.f20940H = false;
            this.f20939G = false;
            this.f20938F = -1;
            this.f20950b.m10007p();
            m12813y();
            if (this.f20954f.m10476d()) {
                this.f20962n.pause();
            }
            if (m12823K(this.f20962n)) {
                x92 x92Var = this.f20956h;
                x92Var.getClass();
                x92Var.m5445b(this.f20962n);
            }
            AudioTrack audioTrack = this.f20962n;
            this.f20962n = null;
            if (C5979lc.f27164a < 21 && !this.f20942J) {
                this.f20943K = 0;
            }
            n12 n12Var = this.f20960l;
            if (n12Var != null) {
                this.f20961m = n12Var;
                this.f20960l = null;
            }
            this.f20954f.m10468l();
            this.f20953e.close();
            new l02(this, "ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.f20958j.m7608b();
        this.f20957i.m7608b();
    }

    @Override // p168r4.dt1
    /* renamed from: p */
    public final void mo11962p(boolean z) {
        m12830D(m12829E().f29325a, z);
    }

    @Override // p168r4.dt1
    /* renamed from: t */
    public final void mo11958t() {
        mo11964n();
        for (ja1 ja1Var : this.f20951c) {
            ja1Var.mo10154f();
        }
        ja1[] ja1VarArr = this.f20952d;
        int length = ja1VarArr.length;
        for (int i = 0; i <= 0; i++) {
            ja1VarArr[i].mo10154f();
        }
        this.f20941I = false;
        this.f20946N = false;
    }
}
