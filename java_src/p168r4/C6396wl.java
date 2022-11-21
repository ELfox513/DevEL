package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
@TargetApi(16)
/* renamed from: r4.wl */
/* loaded from: classes2.dex */
public final class C6396wl extends AbstractC6021mh {

    /* renamed from: Q */
    public final Context f33219Q;

    /* renamed from: R */
    public final C6470yl f33220R;

    /* renamed from: S */
    public final C5805gm f33221S;

    /* renamed from: T */
    public final boolean f33222T;

    /* renamed from: U */
    public final long[] f33223U;

    /* renamed from: V */
    public C5870id[] f33224V;

    /* renamed from: W */
    public C6285tl f33225W;

    /* renamed from: X */
    public Surface f33226X;

    /* renamed from: Y */
    public Surface f33227Y;

    /* renamed from: Z */
    public boolean f33228Z;

    /* renamed from: a0 */
    public long f33229a0;

    /* renamed from: b0 */
    public long f33230b0;

    /* renamed from: c0 */
    public int f33231c0;

    /* renamed from: d0 */
    public int f33232d0;

    /* renamed from: e0 */
    public int f33233e0;

    /* renamed from: f0 */
    public float f33234f0;

    /* renamed from: g0 */
    public int f33235g0;

    /* renamed from: h0 */
    public int f33236h0;

    /* renamed from: i0 */
    public int f33237i0;

    /* renamed from: j0 */
    public float f33238j0;

    /* renamed from: k0 */
    public int f33239k0;

    /* renamed from: l0 */
    public int f33240l0;

    /* renamed from: m0 */
    public int f33241m0;

    /* renamed from: n0 */
    public float f33242n0;

    /* renamed from: o0 */
    public long f33243o0;

    /* renamed from: p0 */
    public int f33244p0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6396wl(Context context, InterfaceC6096oh interfaceC6096oh, long j, Handler handler, InterfaceC5842hm interfaceC5842hm, int i) {
        super(2, interfaceC6096oh, null, false);
        boolean z = false;
        this.f33219Q = context.getApplicationContext();
        this.f33220R = new C6470yl(context);
        this.f33221S = new C5805gm(handler, interfaceC5842hm);
        if (C5988ll.f27242a <= 22 && "foster".equals(C5988ll.f27243b) && "NVIDIA".equals(C5988ll.f27244c)) {
            z = true;
        }
        this.f33222T = z;
        this.f33223U = new long[10];
        this.f33243o0 = -9223372036854775807L;
        this.f33229a0 = -9223372036854775807L;
        this.f33235g0 = -1;
        this.f33236h0 = -1;
        this.f33238j0 = -1.0f;
        this.f33234f0 = -1.0f;
        m5689d0();
    }

    /* renamed from: h0 */
    public static boolean m5685h0(long j) {
        return j < -30000;
    }

    /* renamed from: i0 */
    public static int m5684i0(C5870id c5870id) {
        int i = c5870id.f25067x;
        if (i == -1) {
            return 0;
        }
        return i;
    }

    @Override // p168r4.AbstractC6202rc
    /* renamed from: A */
    public final void mo5354A() {
        m5686g0();
    }

    @Override // p168r4.AbstractC6021mh, p168r4.AbstractC6202rc
    /* renamed from: B */
    public final void mo5353B() {
        this.f33235g0 = -1;
        this.f33236h0 = -1;
        this.f33238j0 = -1.0f;
        this.f33234f0 = -1.0f;
        this.f33243o0 = -9223372036854775807L;
        this.f33244p0 = 0;
        m5689d0();
        this.f33228Z = false;
        int i = C5988ll.f27242a;
        this.f33220R.m4635b();
        try {
            super.mo5353B();
        } finally {
            this.f27705O.m11185a();
            this.f33221S.m11110h(this.f27705O);
        }
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: L */
    public final void mo5348L(String str, long j, long j2) {
        this.f33221S.m11115c(str, j, j2);
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: S */
    public final boolean mo5698S(C5947kh c5947kh) {
        return this.f33226X != null || m5690c0(c5947kh.f26415d);
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: V */
    public final void mo5697V() {
        try {
            super.mo5697V();
        } finally {
            Surface surface = this.f33227Y;
            if (surface != null) {
                if (this.f33226X == surface) {
                    this.f33226X = null;
                }
                surface.release();
                this.f33227Y = null;
            }
        }
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: W */
    public final void mo5696W(C5835hf c5835hf) {
        int i = C5988ll.f27242a;
    }

    /* renamed from: b0 */
    public final void m5691b0() {
        if (this.f33228Z) {
            return;
        }
        this.f33228Z = true;
        this.f33221S.m11111g(this.f33226X);
    }

    /* renamed from: d0 */
    public final void m5689d0() {
        this.f33239k0 = -1;
        this.f33240l0 = -1;
        this.f33242n0 = -1.0f;
        this.f33241m0 = -1;
    }

    /* renamed from: e0 */
    public final void m5688e0() {
        int i = this.f33239k0;
        int i2 = this.f33235g0;
        if (i == i2 && this.f33240l0 == this.f33236h0 && this.f33241m0 == this.f33237i0 && this.f33242n0 == this.f33238j0) {
            return;
        }
        this.f33221S.m11112f(i2, this.f33236h0, this.f33237i0, this.f33238j0);
        this.f33239k0 = this.f33235g0;
        this.f33240l0 = this.f33236h0;
        this.f33241m0 = this.f33237i0;
        this.f33242n0 = this.f33238j0;
    }

    @Override // p168r4.InterfaceC6387wc
    /* renamed from: f */
    public final void mo5339f(int i, Object obj) {
        if (i == 1) {
            Surface surface = (Surface) obj;
            if (surface == null) {
                Surface surface2 = this.f33227Y;
                if (surface2 != null) {
                    surface = surface2;
                } else {
                    C5947kh m9388U = m9388U();
                    if (m9388U != null && m5690c0(m9388U.f26415d)) {
                        surface = C6211rl.m7476h(this.f33219Q, m9388U.f26415d);
                        this.f33227Y = surface;
                    }
                }
            }
            if (this.f33226X != surface) {
                this.f33226X = surface;
                int mo7543c = mo7543c();
                if (mo7543c == 1 || mo7543c == 2) {
                    MediaCodec m9389T = m9389T();
                    if (C5988ll.f27242a >= 23 && m9389T != null && surface != null) {
                        m9389T.setOutputSurface(surface);
                    } else {
                        mo5697V();
                        m9390R();
                    }
                }
                if (surface != null && surface != this.f33227Y) {
                    m5687f0();
                    this.f33228Z = false;
                    int i2 = C5988ll.f27242a;
                    if (mo7543c == 2) {
                        this.f33229a0 = -9223372036854775807L;
                        return;
                    }
                    return;
                }
                m5689d0();
                this.f33228Z = false;
                int i3 = C5988ll.f27242a;
            } else if (surface != null && surface != this.f33227Y) {
                m5687f0();
                if (this.f33228Z) {
                    this.f33221S.m11111g(this.f33226X);
                }
            }
        }
    }

    /* renamed from: f0 */
    public final void m5687f0() {
        if (this.f33239k0 == -1 && this.f33240l0 == -1) {
            return;
        }
        this.f33221S.m11112f(this.f33235g0, this.f33236h0, this.f33237i0, this.f33238j0);
    }

    @Override // p168r4.AbstractC6202rc
    /* renamed from: z */
    public final void mo5336z() {
        this.f33231c0 = 0;
        this.f33230b0 = SystemClock.elapsedRealtime();
        this.f33229a0 = -9223372036854775807L;
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: I */
    public final int mo5351I(InterfaceC6096oh interfaceC6096oh, C5870id c5870id) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        String str = c5870id.f25060q;
        int i5 = 0;
        if (!C5582al.m13003b(str)) {
            return 0;
        }
        C5982lf c5982lf = c5870id.f25063t;
        if (c5982lf != null) {
            z = false;
            for (int i6 = 0; i6 < c5982lf.f27199d; i6++) {
                z |= c5982lf.m9671a(i6).f26388p;
            }
        } else {
            z = false;
        }
        C5947kh m6155a = C6355vh.m6155a(str, z);
        if (m6155a == null) {
            return 1;
        }
        boolean m10033d = m6155a.m10033d(c5870id.f25057d);
        if (m10033d && (i3 = c5870id.f25064u) > 0 && (i4 = c5870id.f25065v) > 0) {
            if (C5988ll.f27242a >= 21) {
                m10033d = m6155a.m10032e(i3, i4, c5870id.f25066w);
            } else {
                if (i3 * i4 <= C6355vh.m6153c()) {
                    m10033d = true;
                } else {
                    m10033d = false;
                }
                if (!m10033d) {
                    int i7 = c5870id.f25064u;
                    int i8 = c5870id.f25065v;
                    String str2 = C5988ll.f27246e;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                    sb.append("FalseCheck [legacyFrameSize, ");
                    sb.append(i7);
                    sb.append("x");
                    sb.append(i8);
                    sb.append("] [");
                    sb.append(str2);
                    sb.append("]");
                    Log.d("MediaCodecVideoRenderer", sb.toString());
                }
            }
        }
        if (true != m6155a.f26413b) {
            i = 4;
        } else {
            i = 8;
        }
        if (true == m6155a.f26414c) {
            i5 = 16;
        }
        if (true != m10033d) {
            i2 = 2;
        } else {
            i2 = 3;
        }
        return i2 | i | i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p168r4.AbstractC6021mh
    /* renamed from: K */
    public final void mo5349K(C5947kh c5947kh, MediaCodec mediaCodec, C5870id c5870id, MediaCrypto mediaCrypto) {
        char c;
        int i;
        C5870id[] c5870idArr = this.f33224V;
        int i2 = c5870id.f25064u;
        int i3 = c5870id.f25065v;
        int i4 = c5870id.f25061r;
        if (i4 == -1) {
            String str = c5870id.f25060q;
            if (i2 != -1 && i3 != -1) {
                int i5 = 4;
                switch (str.hashCode()) {
                    case -1664118616:
                        if (str.equals("video/3gpp")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1662541442:
                        if (str.equals("video/hevc")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1187890754:
                        if (str.equals("video/mp4v-es")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1331836730:
                        if (str.equals("video/avc")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1599127256:
                        if (str.equals("video/x-vnd.on2.vp8")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1599127257:
                        if (str.equals("video/x-vnd.on2.vp9")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c != 0 && c != 1) {
                    if (c != 2) {
                        if (c != 3) {
                            if (c == 4 || c == 5) {
                                i = i2 * i3;
                                i4 = (i * 3) / (i5 + i5);
                            }
                        }
                    } else if (!"BRAVIA 4K 2015".equals(C5988ll.f27245d)) {
                        i = C5988ll.m9649e(i2, 16) * C5988ll.m9649e(i3, 16) * 256;
                        i5 = 2;
                        i4 = (i * 3) / (i5 + i5);
                    }
                }
                i = i2 * i3;
                i5 = 2;
                i4 = (i * 3) / (i5 + i5);
            }
            i4 = -1;
        }
        int length = c5870idArr.length;
        C6285tl c6285tl = new C6285tl(i2, i3, i4);
        this.f33225W = c6285tl;
        boolean z = this.f33222T;
        MediaFormat m10687B = c5870id.m10687B();
        m10687B.setInteger("max-width", c6285tl.f31887a);
        m10687B.setInteger("max-height", c6285tl.f31888b);
        int i6 = c6285tl.f31889c;
        if (i6 != -1) {
            m10687B.setInteger("max-input-size", i6);
        }
        if (z) {
            m10687B.setInteger("auto-frc", 0);
        }
        if (this.f33226X == null) {
            C6358vk.m6137d(m5690c0(c5947kh.f26415d));
            if (this.f33227Y == null) {
                this.f33227Y = C6211rl.m7476h(this.f33219Q, c5947kh.f26415d);
            }
            this.f33226X = this.f33227Y;
        }
        mediaCodec.configure(m10687B, this.f33226X, (MediaCrypto) null, 0);
        int i7 = C5988ll.f27242a;
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: O */
    public final void mo5345O(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z = false;
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            z = true;
        }
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        this.f33235g0 = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        this.f33236h0 = integer2;
        float f = this.f33234f0;
        this.f33238j0 = f;
        if (C5988ll.f27242a >= 21) {
            int i = this.f33233e0;
            if (i == 90 || i == 270) {
                int i2 = this.f33235g0;
                this.f33235g0 = integer2;
                this.f33236h0 = i2;
                this.f33238j0 = 1.0f / f;
            }
        } else {
            this.f33237i0 = this.f33233e0;
        }
        mediaCodec.setVideoScalingMode(1);
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: P */
    public final boolean mo5344P(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.f33244p0;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.f33223U;
            long j4 = jArr[0];
            if (j3 < j4) {
                break;
            }
            this.f33243o0 = j4;
            int i4 = i3 - 1;
            this.f33244p0 = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        long j5 = j3 - this.f33243o0;
        if (z) {
            m5694Y(mediaCodec, i, j5);
            return true;
        }
        long j6 = j3 - j;
        if (this.f33226X == this.f33227Y) {
            if (!m5685h0(j6)) {
                return false;
            }
            m5694Y(mediaCodec, i, j5);
            return true;
        } else if (!this.f33228Z) {
            if (C5988ll.f27242a >= 21) {
                m5692a0(mediaCodec, i, j5, System.nanoTime());
            } else {
                m5693Z(mediaCodec, i, j5);
            }
            return true;
        } else if (mo7543c() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long m4634c = this.f33220R.m4634c(j3, ((j6 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j7 = (m4634c - nanoTime) / 1000;
            if (m5685h0(j7)) {
                C5914jl.m10254a("dropVideoBuffer");
                mediaCodec.releaseOutputBuffer(i, false);
                C5914jl.m10253b();
                C5798gf c5798gf = this.f27705O;
                c5798gf.f24011f++;
                this.f33231c0++;
                int i5 = this.f33232d0 + 1;
                this.f33232d0 = i5;
                c5798gf.f24012g = Math.max(i5, c5798gf.f24012g);
                if (this.f33231c0 == -1) {
                    m5686g0();
                }
                return true;
            }
            if (C5988ll.f27242a >= 21) {
                if (j7 < 50000) {
                    m5692a0(mediaCodec, i, j5, m4634c);
                    return true;
                }
            } else if (j7 < 30000) {
                if (j7 > 11000) {
                    try {
                        Thread.sleep((j7 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                m5693Z(mediaCodec, i, j5);
                return true;
            }
            return false;
        }
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: X */
    public final boolean mo5695X(MediaCodec mediaCodec, boolean z, C5870id c5870id, C5870id c5870id2) {
        if (c5870id.f25060q.equals(c5870id2.f25060q) && m5684i0(c5870id) == m5684i0(c5870id2)) {
            if (z || (c5870id.f25064u == c5870id2.f25064u && c5870id.f25065v == c5870id2.f25065v)) {
                int i = c5870id2.f25064u;
                C6285tl c6285tl = this.f33225W;
                if (i <= c6285tl.f31887a && c5870id2.f25065v <= c6285tl.f31888b && c5870id2.f25061r <= c6285tl.f31889c) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: Y */
    public final void m5694Y(MediaCodec mediaCodec, int i, long j) {
        C5914jl.m10254a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C5914jl.m10253b();
        this.f27705O.f24010e++;
    }

    /* renamed from: c0 */
    public final boolean m5690c0(boolean z) {
        if (C5988ll.f27242a >= 23 && (!z || C6211rl.m7477a(this.f33219Q))) {
            return true;
        }
        return false;
    }

    /* renamed from: g0 */
    public final void m5686g0() {
        if (this.f33231c0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f33221S.m11113e(this.f33231c0, elapsedRealtime - this.f33230b0);
            this.f33231c0 = 0;
            this.f33230b0 = elapsedRealtime;
        }
    }

    @Override // p168r4.AbstractC6202rc
    /* renamed from: x */
    public final void mo5683x(C5870id[] c5870idArr, long j) {
        this.f33224V = c5870idArr;
        if (this.f33243o0 == -9223372036854775807L) {
            this.f33243o0 = j;
            return;
        }
        int i = this.f33244p0;
        if (i == 10) {
            long j2 = this.f33223U[9];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j2);
            Log.w("MediaCodecVideoRenderer", sb.toString());
        } else {
            this.f33244p0 = i + 1;
        }
        this.f33223U[this.f33244p0 - 1] = j;
    }

    @Override // p168r4.AbstractC6021mh
    /* renamed from: M */
    public final void mo5347M(C5870id c5870id) {
        super.mo5347M(c5870id);
        this.f33221S.m11114d(c5870id);
        float f = c5870id.f25068y;
        if (f == -1.0f) {
            f = 1.0f;
        }
        this.f33234f0 = f;
        this.f33233e0 = m5684i0(c5870id);
    }

    @Override // p168r4.AbstractC6021mh, p168r4.InterfaceC6055nd
    /* renamed from: N */
    public final boolean mo5346N() {
        Surface surface;
        if (super.mo5346N() && (this.f33228Z || (((surface = this.f33227Y) != null && this.f33226X == surface) || m9389T() == null))) {
            this.f33229a0 = -9223372036854775807L;
            return true;
        } else if (this.f33229a0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f33229a0) {
                return true;
            }
            this.f33229a0 = -9223372036854775807L;
            return false;
        }
    }

    /* renamed from: Z */
    public final void m5693Z(MediaCodec mediaCodec, int i, long j) {
        m5688e0();
        C5914jl.m10254a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        C5914jl.m10253b();
        this.f27705O.f24009d++;
        this.f33232d0 = 0;
        m5691b0();
    }

    @TargetApi(21)
    /* renamed from: a0 */
    public final void m5692a0(MediaCodec mediaCodec, int i, long j, long j2) {
        m5688e0();
        C5914jl.m10254a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        C5914jl.m10253b();
        this.f27705O.f24009d++;
        this.f33232d0 = 0;
        m5691b0();
    }

    @Override // p168r4.AbstractC6021mh, p168r4.AbstractC6202rc
    /* renamed from: w */
    public final void mo5338w(boolean z) {
        super.mo5338w(z);
        int i = m7548C().f29429a;
        this.f33221S.m11116b(this.f27705O);
        this.f33220R.m4636a();
    }

    @Override // p168r4.AbstractC6021mh, p168r4.AbstractC6202rc
    /* renamed from: y */
    public final void mo5337y(long j, boolean z) {
        super.mo5337y(j, z);
        this.f33228Z = false;
        int i = C5988ll.f27242a;
        this.f33232d0 = 0;
        int i2 = this.f33244p0;
        if (i2 != 0) {
            this.f33243o0 = this.f33223U[i2 - 1];
            this.f33244p0 = 0;
        }
        this.f33229a0 = -9223372036854775807L;
    }
}
