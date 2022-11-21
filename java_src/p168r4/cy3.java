package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import com.badlogic.gdx.pay.PurchaseManagerConfig;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.cy3 */
/* loaded from: classes2.dex */
public final class cy3 extends f53 {

    /* renamed from: r1 */
    public static final int[] f21943r1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: s1 */
    public static boolean f21944s1;

    /* renamed from: t1 */
    public static boolean f21945t1;

    /* renamed from: M0 */
    public final Context f21946M0;

    /* renamed from: N0 */
    public final ny3 f21947N0;

    /* renamed from: O0 */
    public final yy3 f21948O0;

    /* renamed from: P0 */
    public final boolean f21949P0;

    /* renamed from: Q0 */
    public by3 f21950Q0;

    /* renamed from: R0 */
    public boolean f21951R0;

    /* renamed from: S0 */
    public boolean f21952S0;

    /* renamed from: T0 */
    public Surface f21953T0;

    /* renamed from: U0 */
    public xx3 f21954U0;

    /* renamed from: V0 */
    public boolean f21955V0;

    /* renamed from: W0 */
    public int f21956W0;

    /* renamed from: X0 */
    public boolean f21957X0;

    /* renamed from: Y0 */
    public boolean f21958Y0;

    /* renamed from: Z0 */
    public boolean f21959Z0;

    /* renamed from: a1 */
    public long f21960a1;

    /* renamed from: b1 */
    public long f21961b1;

    /* renamed from: c1 */
    public long f21962c1;

    /* renamed from: d1 */
    public int f21963d1;

    /* renamed from: e1 */
    public int f21964e1;

    /* renamed from: f1 */
    public int f21965f1;

    /* renamed from: g1 */
    public long f21966g1;

    /* renamed from: h1 */
    public long f21967h1;

    /* renamed from: i1 */
    public long f21968i1;

    /* renamed from: j1 */
    public int f21969j1;

    /* renamed from: k1 */
    public int f21970k1;

    /* renamed from: l1 */
    public int f21971l1;

    /* renamed from: m1 */
    public int f21972m1;

    /* renamed from: n1 */
    public float f21973n1;

    /* renamed from: o1 */
    public pa4 f21974o1;

    /* renamed from: p1 */
    public int f21975p1;

    /* renamed from: q1 */
    public ey3 f21976q1;

    public cy3(Context context, c13 c13Var, u73 u73Var, long j, boolean z, Handler handler, zy3 zy3Var, int i) {
        super(2, c13Var, u73Var, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.f21946M0 = applicationContext;
        this.f21947N0 = new ny3(applicationContext);
        this.f21948O0 = new yy3(handler, zy3Var);
        this.f21949P0 = "NVIDIA".equals(C5979lc.f27166c);
        this.f21961b1 = -9223372036854775807L;
        this.f21970k1 = -1;
        this.f21971l1 = -1;
        this.f21973n1 = -1.0f;
        this.f21956W0 = 1;
        this.f21975p1 = 0;
        this.f21974o1 = null;
    }

    /* renamed from: M0 */
    public static boolean m12274M0(long j) {
        return j < -30000;
    }

    /* renamed from: o0 */
    private final void m12265o0() {
        pa4 pa4Var = this.f21974o1;
        if (pa4Var != null) {
            this.f21948O0.m4521f(pa4Var);
        }
    }

    @Override // p168r4.f53
    /* renamed from: A0 */
    public final void mo11547A0(String str) {
        this.f21948O0.m4519h(str);
    }

    @Override // p168r4.f53
    /* renamed from: D */
    public final boolean mo11634D(e33 e33Var) {
        return this.f21953T0 != null || m12275L0(e33Var);
    }

    @Override // p168r4.f53
    /* renamed from: P */
    public final void mo11626P() {
        super.mo11626P();
        this.f21965f1 = 0;
    }

    /* renamed from: Q0 */
    public final void m12270Q0(long j) {
        C5808gp c5808gp = this.f23325E0;
        c5808gp.f24168j += j;
        c5808gp.f24169k++;
        this.f21968i1 += j;
        this.f21969j1++;
    }

    /* renamed from: R0 */
    public final void m12269R0() {
        this.f21959Z0 = true;
        if (this.f21957X0) {
            return;
        }
        this.f21957X0 = true;
        this.f21948O0.m4520g(this.f21953T0);
        this.f21955V0 = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v8, types: [android.view.Surface] */
    @Override // p168r4.AbstractC5637c3, p168r4.InterfaceC5641c7
    /* renamed from: a */
    public final void mo8872a(int i, Object obj) {
        xx3 xx3Var;
        if (i != 1) {
            if (i != 7) {
                if (i != 10) {
                    if (i != 4) {
                        if (i == 5) {
                            this.f21947N0.m8976a(((Integer) obj).intValue());
                            return;
                        }
                        return;
                    }
                    this.f21956W0 = ((Integer) obj).intValue();
                    rn3 m11618j0 = m11618j0();
                    if (m11618j0 != null) {
                        m11618j0.m7419n(this.f21956W0);
                        return;
                    }
                    return;
                }
                int intValue = ((Integer) obj).intValue();
                if (this.f21975p1 != intValue) {
                    this.f21975p1 = intValue;
                    return;
                }
                return;
            }
            this.f21976q1 = (ey3) obj;
            return;
        }
        if (obj instanceof Surface) {
            xx3Var = (Surface) obj;
        } else {
            xx3Var = null;
        }
        if (xx3Var == null) {
            xx3 xx3Var2 = this.f21954U0;
            if (xx3Var2 != null) {
                xx3Var = xx3Var2;
            } else {
                e33 m11630I = m11630I();
                if (m11630I != null && m12275L0(m11630I)) {
                    xx3Var = xx3.m4954h(this.f21946M0, m11630I.f22782f);
                    this.f21954U0 = xx3Var;
                }
            }
        }
        if (this.f21953T0 != xx3Var) {
            this.f21953T0 = xx3Var;
            this.f21947N0.m8973d(xx3Var);
            this.f21955V0 = false;
            int mo11270F0 = mo11270F0();
            rn3 m11618j02 = m11618j0();
            if (m11618j02 != null) {
                if (C5979lc.f27164a >= 23 && xx3Var != null && !this.f21951R0) {
                    m11618j02.m7421l(xx3Var);
                } else {
                    m11629L();
                    m11635A();
                }
            }
            if (xx3Var != null && xx3Var != this.f21954U0) {
                m12265o0();
                this.f21957X0 = false;
                int i2 = C5979lc.f27164a;
                if (mo11270F0 == 2) {
                    this.f21961b1 = -9223372036854775807L;
                    return;
                }
                return;
            }
            this.f21974o1 = null;
            this.f21957X0 = false;
            int i3 = C5979lc.f27164a;
        } else if (xx3Var != null && xx3Var != this.f21954U0) {
            m12265o0();
            if (this.f21955V0) {
                this.f21948O0.m4520g(this.f21953T0);
            }
        }
    }

    @Override // p168r4.InterfaceC5790g7, p168r4.InterfaceC5827h7
    /* renamed from: b */
    public final String mo10707b() {
        return "MediaCodecVideoRenderer";
    }

    @Override // p168r4.f53
    /* renamed from: d0 */
    public final d23 mo11624d0(Throwable th, e33 e33Var) {
        return new ay3(th, e33Var, this.f21953T0);
    }

    @Override // p168r4.f53
    /* renamed from: f0 */
    public final void mo11622f0(long j) {
        super.mo11622f0(j);
        this.f21965f1--;
    }

    @Override // p168r4.AbstractC5637c3
    /* renamed from: p */
    public final void mo11537p() {
        this.f21963d1 = 0;
        this.f21962c1 = SystemClock.elapsedRealtime();
        this.f21967h1 = SystemClock.elapsedRealtime() * 1000;
        this.f21968i1 = 0L;
        this.f21969j1 = 0;
        this.f21947N0.m8974c();
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    /* renamed from: r */
    public final void mo10703r() {
        this.f21974o1 = null;
        this.f21957X0 = false;
        int i = C5979lc.f27164a;
        this.f21955V0 = false;
        this.f21947N0.m8967j();
        try {
            super.mo10703r();
        } finally {
            this.f21948O0.m4518i(this.f23325E0);
        }
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    @TargetApi(17)
    /* renamed from: s */
    public final void mo11535s() {
        try {
            super.mo11535s();
        } finally {
            xx3 xx3Var = this.f21954U0;
            if (xx3Var != null) {
                if (this.f21953T0 == xx3Var) {
                    this.f21953T0 = null;
                }
                xx3Var.release();
                this.f21954U0 = null;
            }
        }
    }

    @Override // p168r4.f53
    /* renamed from: u0 */
    public final List<e33> mo11533u0(u73 u73Var, C5713e5 c5713e5, boolean z) {
        return m12276K0(u73Var, c5713e5, false, false);
    }

    @Override // p168r4.f53
    /* renamed from: v */
    public final void mo11532v(C5861i4 c5861i4) {
        this.f21965f1++;
        int i = C5979lc.f27164a;
    }

    @Override // p168r4.f53
    /* renamed from: w */
    public final void mo11530w() {
        this.f21957X0 = false;
        int i = C5979lc.f27164a;
    }

    @Override // p168r4.f53
    /* renamed from: y */
    public final boolean mo11526y(long j, long j2, rn3 rn3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C5713e5 c5713e5) {
        boolean z3;
        int m12644l;
        rn3Var.getClass();
        if (this.f21960a1 == -9223372036854775807L) {
            this.f21960a1 = j;
        }
        if (j3 != this.f21966g1) {
            this.f21947N0.m8969h(j3);
            this.f21966g1 = j3;
        }
        long m11620h0 = m11620h0();
        long j4 = j3 - m11620h0;
        if (z && !z2) {
            m12267T0(rn3Var, i, j4);
            return true;
        }
        float m11621g0 = m11621g0();
        int mo11270F0 = mo11270F0();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        double d = j3 - j;
        double d2 = m11621g0;
        Double.isNaN(d);
        Double.isNaN(d2);
        long j5 = (long) (d / d2);
        if (mo11270F0 == 2) {
            j5 -= elapsedRealtime - j2;
        }
        if (this.f21953T0 == this.f21954U0) {
            if (m12274M0(j5)) {
                m12267T0(rn3Var, i, j4);
                m12270Q0(j5);
                return true;
            }
            return false;
        }
        long j6 = elapsedRealtime - this.f21967h1;
        boolean z4 = this.f21959Z0 ? !this.f21957X0 : mo11270F0 == 2 || this.f21958Y0;
        if (this.f21961b1 == -9223372036854775807L && j >= m11620h0 && (z4 || (mo11270F0 == 2 && m12274M0(j5) && j6 > 100000))) {
            long nanoTime = System.nanoTime();
            if (C5979lc.f27164a >= 21) {
                m12272O0(rn3Var, i, j4, nanoTime);
            } else {
                m12278I0(rn3Var, i, j4);
            }
            m12270Q0(j5);
            return true;
        } else if (mo11270F0 != 2 || j == this.f21960a1) {
            return false;
        } else {
            long nanoTime2 = System.nanoTime();
            long m8966k = this.f21947N0.m8966k((j5 * 1000) + nanoTime2);
            long j7 = (m8966k - nanoTime2) / 1000;
            long j8 = this.f21961b1;
            if (j7 < -500000 && !z2 && (m12644l = m12644l(j)) != 0) {
                C5808gp c5808gp = this.f23325E0;
                c5808gp.f24167i++;
                int i4 = this.f21965f1 + m12644l;
                if (j8 != -9223372036854775807L) {
                    c5808gp.f24164f += i4;
                } else {
                    m12277J0(i4);
                }
                m11628M();
                return false;
            } else if (m12274M0(j7) && !z2) {
                if (j8 != -9223372036854775807L) {
                    m12267T0(rn3Var, i, j4);
                    z3 = true;
                } else {
                    C5795gc.m11246a("dropVideoBuffer");
                    rn3Var.m7425h(i, false);
                    C5795gc.m11245b();
                    z3 = true;
                    m12277J0(1);
                }
                m12270Q0(j7);
                return z3;
            } else if (C5979lc.f27164a >= 21) {
                if (j7 < 50000) {
                    m12272O0(rn3Var, i, j4, m8966k);
                    m12270Q0(j7);
                    return true;
                }
                return false;
            } else if (j7 < 30000) {
                if (j7 > 11000) {
                    try {
                        Thread.sleep(((-10000) + j7) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                m12278I0(rn3Var, i, j4);
                m12270Q0(j7);
                return true;
            } else {
                return false;
            }
        }
    }

    @Override // p168r4.f53
    /* renamed from: y0 */
    public final float mo11525y0(float f, C5713e5 c5713e5, C5713e5[] c5713e5Arr) {
        float f2 = -1.0f;
        for (C5713e5 c5713e52 : c5713e5Arr) {
            float f3 = c5713e52.f22821s;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    /* renamed from: K0 */
    public static List<e33> m12276K0(u73 u73Var, C5713e5 c5713e5, boolean z, boolean z2) {
        Pair<Integer, Integer> m9070f;
        String str = c5713e5.f22814l;
        if (str == null) {
            return Collections.emptyList();
        }
        List<e33> m9072d = nk3.m9072d(nk3.m9073c(str, z, z2), c5713e5);
        if ("video/dolby-vision".equals(str) && (m9070f = nk3.m9070f(c5713e5)) != null) {
            int intValue = ((Integer) m9070f.first).intValue();
            if (intValue != 16 && intValue != 256) {
                if (intValue == 512) {
                    m9072d.addAll(nk3.m9073c("video/avc", z, z2));
                }
            } else {
                m9072d.addAll(nk3.m9073c("video/hevc", z, z2));
            }
        }
        return Collections.unmodifiableList(m9072d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: N0 */
    public static int m12273N0(e33 e33Var, C5713e5 c5713e5) {
        char c;
        int i;
        int intValue;
        int i2 = c5713e5.f22819q;
        int i3 = c5713e5.f22820r;
        if (i2 == -1 || i3 == -1) {
            return -1;
        }
        String str = c5713e5.f22814l;
        int i4 = 2;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> m9070f = nk3.m9070f(c5713e5);
            if (m9070f != null && ((intValue = ((Integer) m9070f.first).intValue()) == 512 || intValue == 1 || intValue == 2)) {
                str = "video/avc";
            } else {
                str = "video/hevc";
            }
        }
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
                    if (c != 4 && c != 5) {
                        return -1;
                    }
                    i = i2 * i3;
                    i4 = 4;
                }
            } else {
                String str2 = C5979lc.f27167d;
                if ("BRAVIA 4K 2015".equals(str2) || (PurchaseManagerConfig.STORE_NAME_ANDROID_AMAZON.equals(C5979lc.f27166c) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && e33Var.f22782f)))) {
                    return -1;
                }
                i = C5979lc.m9707b0(i2, 16) * C5979lc.m9707b0(i3, 16) * 256;
            }
            return (i * 3) / (i4 + i4);
        }
        i = i2 * i3;
        return (i * 3) / (i4 + i4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0351, code lost:
        if (r1.equals("602LV") != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x074d, code lost:
        if (r7 != 2) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073 A[FALL_THROUGH] */
    /* renamed from: P0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m12271P0(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 2778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.cy3.m12271P0(java.lang.String):boolean");
    }

    /* renamed from: S0 */
    public static int m12268S0(e33 e33Var, C5713e5 c5713e5) {
        if (c5713e5.f22815m != -1) {
            int size = c5713e5.f22816n.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += c5713e5.f22816n.get(i2).length;
            }
            return c5713e5.f22815m + i;
        }
        return m12273N0(e33Var, c5713e5);
    }

    /* renamed from: n0 */
    private final void m12266n0() {
        int i = this.f21970k1;
        if (i == -1) {
            if (this.f21971l1 != -1) {
                i = -1;
            } else {
                return;
            }
        }
        pa4 pa4Var = this.f21974o1;
        if (pa4Var != null && pa4Var.f29411a == i && pa4Var.f29412b == this.f21971l1 && pa4Var.f29413c == this.f21972m1 && pa4Var.f29414d == this.f21973n1) {
            return;
        }
        pa4 pa4Var2 = new pa4(i, this.f21971l1, this.f21972m1, this.f21973n1);
        this.f21974o1 = pa4Var2;
        this.f21948O0.m4521f(pa4Var2);
    }

    @Override // p168r4.f53
    /* renamed from: B0 */
    public final void mo11546B0(Exception exc) {
        C5720eb.m11832b("MediaCodecVideoRenderer", "Video codec error", exc);
        this.f21948O0.m4517j(exc);
    }

    /* renamed from: J0 */
    public final void m12277J0(int i) {
        C5808gp c5808gp = this.f23325E0;
        c5808gp.f24165g += i;
        this.f21963d1 += i;
        int i2 = this.f21964e1 + i;
        this.f21964e1 = i2;
        c5808gp.f24166h = Math.max(i2, c5808gp.f24166h);
    }

    /* renamed from: L0 */
    public final boolean m12275L0(e33 e33Var) {
        if (C5979lc.f27164a >= 23 && !m12271P0(e33Var.f22777a) && (!e33Var.f22782f || xx3.m4955a(this.f21946M0))) {
            return true;
        }
        return false;
    }

    /* renamed from: T0 */
    public final void m12267T0(rn3 rn3Var, int i, long j) {
        C5795gc.m11246a("skipVideoBuffer");
        rn3Var.m7425h(i, false);
        C5795gc.m11245b();
        this.f23325E0.f24164f++;
    }

    @Override // p168r4.f53
    @TargetApi(29)
    /* renamed from: e0 */
    public final void mo11623e0(C5861i4 c5861i4) {
        if (!this.f21952S0) {
            return;
        }
        ByteBuffer byteBuffer = c5861i4.f24961f;
        byteBuffer.getClass();
        if (byteBuffer.remaining() >= 7) {
            byte b = byteBuffer.get();
            short s = byteBuffer.getShort();
            short s2 = byteBuffer.getShort();
            byte b2 = byteBuffer.get();
            byte b3 = byteBuffer.get();
            byteBuffer.position(0);
            if (b == -75 && s == 60 && s2 == 1 && b2 == 4 && b3 == 0) {
                byte[] bArr = new byte[byteBuffer.remaining()];
                byteBuffer.get(bArr);
                byteBuffer.position(0);
                rn3 m11618j0 = m11618j0();
                Bundle bundle = new Bundle();
                bundle.putByteArray("hdr10-plus-info", bArr);
                m11618j0.m7420m(bundle);
            }
        }
    }

    @Override // p168r4.f53
    /* renamed from: t0 */
    public final int mo11534t0(u73 u73Var, C5713e5 c5713e5) {
        boolean z;
        int i;
        int i2;
        int i3 = 0;
        if (!C5941kb.m10070b(c5713e5.f22814l)) {
            return 0;
        }
        if (c5713e5.f22817o != null) {
            z = true;
        } else {
            z = false;
        }
        List<e33> m12276K0 = m12276K0(u73Var, c5713e5, z, false);
        if (z && m12276K0.isEmpty()) {
            m12276K0 = m12276K0(u73Var, c5713e5, false, false);
        }
        if (m12276K0.isEmpty()) {
            return 1;
        }
        if (!f53.m11619i0(c5713e5)) {
            return 2;
        }
        e33 e33Var = m12276K0.get(0);
        boolean m11865c = e33Var.m11865c(c5713e5);
        if (true != e33Var.m11864d(c5713e5)) {
            i = 8;
        } else {
            i = 16;
        }
        if (m11865c) {
            List<e33> m12276K02 = m12276K0(u73Var, c5713e5, z, true);
            if (!m12276K02.isEmpty()) {
                e33 e33Var2 = m12276K02.get(0);
                if (e33Var2.m11865c(c5713e5) && e33Var2.m11864d(c5713e5)) {
                    i3 = 32;
                }
            }
        }
        if (true != m11865c) {
            i2 = 3;
        } else {
            i2 = 4;
        }
        return i2 | i | i3;
    }

    @Override // p168r4.f53
    @TargetApi(17)
    /* renamed from: w0 */
    public final b03 mo11529w0(e33 e33Var, C5713e5 c5713e5, MediaCrypto mediaCrypto, float f) {
        String str;
        by3 by3Var;
        int i;
        int i2;
        int i3;
        String str2;
        Point point;
        int i4;
        int i5;
        boolean z;
        Pair<Integer, Integer> m9070f;
        int m12273N0;
        xx3 xx3Var = this.f21954U0;
        if (xx3Var != null && xx3Var.f33799a != e33Var.f22782f) {
            xx3Var.release();
            this.f21954U0 = null;
        }
        String str3 = e33Var.f22779c;
        C5713e5[] m12648g = m12648g();
        int i6 = c5713e5.f22819q;
        int i7 = c5713e5.f22820r;
        int m12268S0 = m12268S0(e33Var, c5713e5);
        int length = m12648g.length;
        if (length == 1) {
            if (m12268S0 != -1 && (m12273N0 = m12273N0(e33Var, c5713e5)) != -1) {
                m12268S0 = Math.min((int) (m12268S0 * 1.5f), m12273N0);
            }
            by3Var = new by3(i6, i7, m12268S0);
            str = str3;
        } else {
            boolean z2 = false;
            for (int i8 = 0; i8 < length; i8++) {
                C5713e5 c5713e52 = m12648g[i8];
                if (c5713e5.f22826x != null && c5713e52.f22826x == null) {
                    C5639c5 m11856a = c5713e52.m11856a();
                    m11856a.m12552z(c5713e5.f22826x);
                    c5713e52 = m11856a.m12603I();
                }
                if (e33Var.m11863e(c5713e5, c5713e52).f25249d != 0) {
                    int i9 = c5713e52.f22819q;
                    if (i9 != -1 && c5713e52.f22820r != -1) {
                        z = false;
                    } else {
                        z = true;
                    }
                    z2 |= z;
                    i6 = Math.max(i6, i9);
                    i7 = Math.max(i7, c5713e52.f22820r);
                    m12268S0 = Math.max(m12268S0, m12268S0(e33Var, c5713e52));
                }
            }
            if (z2) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i6);
                sb.append("x");
                sb.append(i7);
                String str4 = "MediaCodecVideoRenderer";
                Log.w("MediaCodecVideoRenderer", sb.toString());
                int i10 = c5713e5.f22820r;
                int i11 = c5713e5.f22819q;
                if (i10 > i11) {
                    i = i10;
                } else {
                    i = i11;
                }
                if (i10 <= i11) {
                    i2 = i10;
                } else {
                    i2 = i11;
                }
                float f2 = i2 / i;
                int[] iArr = f21943r1;
                str = str3;
                int i12 = 0;
                while (i12 < 9) {
                    int i13 = iArr[i12];
                    int[] iArr2 = iArr;
                    int i14 = (int) (i13 * f2);
                    if (i13 <= i || i14 <= i2) {
                        break;
                    }
                    int i15 = i;
                    int i16 = i2;
                    if (C5979lc.f27164a >= 21) {
                        if (i10 <= i11) {
                            i5 = i13;
                        } else {
                            i5 = i14;
                        }
                        if (i10 <= i11) {
                            i13 = i14;
                        }
                        point = e33Var.m11861g(i5, i13);
                        i3 = m12268S0;
                        str2 = str4;
                        if (e33Var.m11862f(point.x, point.y, c5713e5.f22821s)) {
                            break;
                        }
                        i12++;
                        iArr = iArr2;
                        i = i15;
                        i2 = i16;
                        m12268S0 = i3;
                        str4 = str2;
                    } else {
                        i3 = m12268S0;
                        str2 = str4;
                        try {
                            int m9707b0 = C5979lc.m9707b0(i13, 16) * 16;
                            int m9707b02 = C5979lc.m9707b0(i14, 16) * 16;
                            if (m9707b0 * m9707b02 <= nk3.m9071e()) {
                                if (i10 <= i11) {
                                    i4 = m9707b0;
                                } else {
                                    i4 = m9707b02;
                                }
                                if (i10 <= i11) {
                                    m9707b0 = m9707b02;
                                }
                                point = new Point(i4, m9707b0);
                            } else {
                                i12++;
                                iArr = iArr2;
                                i = i15;
                                i2 = i16;
                                m12268S0 = i3;
                                str4 = str2;
                            }
                        } catch (ae3 unused) {
                        }
                    }
                }
                i3 = m12268S0;
                str2 = str4;
                point = null;
                if (point != null) {
                    i6 = Math.max(i6, point.x);
                    i7 = Math.max(i7, point.y);
                    C5639c5 m11856a2 = c5713e5.m11856a();
                    m11856a2.m12559s(i6);
                    m11856a2.m12558t(i7);
                    m12268S0 = Math.max(i3, m12273N0(e33Var, m11856a2.m12603I()));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i6);
                    sb2.append("x");
                    sb2.append(i7);
                    Log.w(str2, sb2.toString());
                } else {
                    m12268S0 = i3;
                }
            } else {
                str = str3;
            }
            by3Var = new by3(i6, i7, m12268S0);
        }
        this.f21950Q0 = by3Var;
        boolean z3 = this.f21949P0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", c5713e5.f22819q);
        mediaFormat.setInteger("height", c5713e5.f22820r);
        C5831hb.m10952a(mediaFormat, c5713e5.f22816n);
        float f3 = c5713e5.f22821s;
        if (f3 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f3);
        }
        C5831hb.m10951b(mediaFormat, "rotation-degrees", c5713e5.f22822t);
        av3 av3Var = c5713e5.f22826x;
        if (av3Var != null) {
            C5831hb.m10951b(mediaFormat, "color-transfer", av3Var.f20638c);
            C5831hb.m10951b(mediaFormat, "color-standard", av3Var.f20636a);
            C5831hb.m10951b(mediaFormat, "color-range", av3Var.f20637b);
            byte[] bArr = av3Var.f20639d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(c5713e5.f22814l) && (m9070f = nk3.m9070f(c5713e5)) != null) {
            C5831hb.m10951b(mediaFormat, "profile", ((Integer) m9070f.first).intValue());
        }
        mediaFormat.setInteger("max-width", by3Var.f21272a);
        mediaFormat.setInteger("max-height", by3Var.f21273b);
        C5831hb.m10951b(mediaFormat, "max-input-size", by3Var.f21274c);
        if (C5979lc.f27164a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (this.f21953T0 == null) {
            if (m12275L0(e33Var)) {
                if (this.f21954U0 == null) {
                    this.f21954U0 = xx3.m4954h(this.f21946M0, e33Var.f22782f);
                }
                this.f21953T0 = this.f21954U0;
            } else {
                throw new IllegalStateException();
            }
        }
        return b03.m12890b(e33Var, mediaFormat, c5713e5, this.f21953T0, null);
    }

    @Override // p168r4.f53
    /* renamed from: z0 */
    public final void mo11524z0(String str, long j, long j2) {
        this.f21948O0.m4525b(str, j, j2);
        this.f21951R0 = m12271P0(str);
        e33 m11630I = m11630I();
        m11630I.getClass();
        boolean z = false;
        if (C5979lc.f27164a >= 29 && "video/x-vnd.on2.vp9".equals(m11630I.f22778b)) {
            MediaCodecInfo.CodecProfileLevel[] m11866b = m11630I.m11866b();
            int length = m11866b.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (m11866b[i].profile == 16384) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        this.f21952S0 = z;
    }

    @Override // p168r4.f53
    /* renamed from: C0 */
    public final C5883iq mo11545C0(C5751f5 c5751f5) {
        C5883iq mo11545C0 = super.mo11545C0(c5751f5);
        this.f21948O0.m4524c(c5751f5.f23299a, mo11545C0);
        return mo11545C0;
    }

    @Override // p168r4.f53
    /* renamed from: D0 */
    public final void mo11544D0(C5713e5 c5713e5, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        rn3 m11618j0 = m11618j0();
        if (m11618j0 != null) {
            m11618j0.m7419n(this.f21956W0);
        }
        mediaFormat.getClass();
        boolean z = false;
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            z = true;
        }
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        this.f21970k1 = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        this.f21971l1 = integer2;
        float f = c5713e5.f22823u;
        this.f21973n1 = f;
        if (C5979lc.f27164a >= 21) {
            int i = c5713e5.f22822t;
            if (i == 90 || i == 270) {
                int i2 = this.f21970k1;
                this.f21970k1 = integer2;
                this.f21971l1 = i2;
                this.f21973n1 = 1.0f / f;
            }
        } else {
            this.f21972m1 = c5713e5.f22822t;
        }
        this.f21947N0.m8970g(c5713e5.f22821s);
    }

    /* renamed from: I0 */
    public final void m12278I0(rn3 rn3Var, int i, long j) {
        m12266n0();
        C5795gc.m11246a("releaseOutputBuffer");
        rn3Var.m7425h(i, true);
        C5795gc.m11245b();
        this.f21967h1 = SystemClock.elapsedRealtime() * 1000;
        this.f23325E0.f24163e++;
        this.f21964e1 = 0;
        m12269R0();
    }

    @Override // p168r4.f53, p168r4.InterfaceC5790g7
    /* renamed from: O */
    public final boolean mo10709O() {
        xx3 xx3Var;
        if (super.mo10709O() && (this.f21957X0 || (((xx3Var = this.f21954U0) != null && this.f21953T0 == xx3Var) || m11618j0() == null))) {
            this.f21961b1 = -9223372036854775807L;
            return true;
        } else if (this.f21961b1 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f21961b1) {
                return true;
            }
            this.f21961b1 = -9223372036854775807L;
            return false;
        }
    }

    /* renamed from: O0 */
    public final void m12272O0(rn3 rn3Var, int i, long j, long j2) {
        m12266n0();
        C5795gc.m11246a("releaseOutputBuffer");
        rn3Var.m7424i(i, j2);
        C5795gc.m11245b();
        this.f21967h1 = SystemClock.elapsedRealtime() * 1000;
        this.f23325E0.f24163e++;
        this.f21964e1 = 0;
        m12269R0();
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3, p168r4.InterfaceC5790g7
    /* renamed from: a0 */
    public final void mo11260a0(float f, float f2) {
        super.mo11260a0(f, f2);
        this.f21947N0.m8971f(f);
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    /* renamed from: n */
    public final void mo11538n(boolean z, boolean z2) {
        super.mo11538n(z, z2);
        m12647h();
        this.f21948O0.m4526a(this.f23325E0);
        this.f21947N0.m8975b();
        this.f21958Y0 = z2;
        this.f21959Z0 = false;
    }

    @Override // p168r4.f53, p168r4.AbstractC5637c3
    /* renamed from: o */
    public final void mo10704o(long j, boolean z) {
        super.mo10704o(j, z);
        this.f21957X0 = false;
        int i = C5979lc.f27164a;
        this.f21947N0.m8972e();
        this.f21966g1 = -9223372036854775807L;
        this.f21960a1 = -9223372036854775807L;
        this.f21964e1 = 0;
        this.f21961b1 = -9223372036854775807L;
    }

    @Override // p168r4.f53
    /* renamed from: x0 */
    public final C5883iq mo11527x0(e33 e33Var, C5713e5 c5713e5, C5713e5 c5713e52) {
        int i;
        int i2;
        C5883iq m11863e = e33Var.m11863e(c5713e5, c5713e52);
        int i3 = m11863e.f25250e;
        int i4 = c5713e52.f22819q;
        by3 by3Var = this.f21950Q0;
        if (i4 > by3Var.f21272a || c5713e52.f22820r > by3Var.f21273b) {
            i3 |= 256;
        }
        if (m12268S0(e33Var, c5713e52) > this.f21950Q0.f21274c) {
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

    @Override // p168r4.AbstractC5637c3
    /* renamed from: q */
    public final void mo11536q() {
        this.f21961b1 = -9223372036854775807L;
        if (this.f21963d1 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f21948O0.m4523d(this.f21963d1, elapsedRealtime - this.f21962c1);
            this.f21963d1 = 0;
            this.f21962c1 = elapsedRealtime;
        }
        int i = this.f21969j1;
        if (i != 0) {
            this.f21948O0.m4522e(this.f21968i1, i);
            this.f21968i1 = 0L;
            this.f21969j1 = 0;
        }
        this.f21947N0.m8968i();
    }
}
