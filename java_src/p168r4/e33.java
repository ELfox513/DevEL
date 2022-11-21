package p168r4;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo$VideoCapabilities;
import android.util.Log;
import android.util.Pair;
/* renamed from: r4.e33 */
/* loaded from: classes2.dex */
public final class e33 {

    /* renamed from: a */
    public final String f22777a;

    /* renamed from: b */
    public final String f22778b;

    /* renamed from: c */
    public final String f22779c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f22780d;

    /* renamed from: e */
    public final boolean f22781e;

    /* renamed from: f */
    public final boolean f22782f;

    /* renamed from: g */
    public final boolean f22783g;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        if ("Nexus 10".equals(r3) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
        if ("OMX.Exynos.AVC.Decoder.secure".equals(r12) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0061, code lost:
        if (r3 != false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.e33 m11867a(java.lang.String r12, java.lang.String r13, java.lang.String r14, android.media.MediaCodecInfo.CodecCapabilities r15, boolean r16, boolean r17, boolean r18, boolean r19, boolean r20) {
        /*
            r1 = r12
            r4 = r15
            r4.e33 r11 = new r4.e33
            r0 = 1
            r2 = 0
            if (r4 == 0) goto L3f
            int r3 = p168r4.C5979lc.f27164a
            r5 = 19
            if (r3 < r5) goto L3f
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = p168r4.C5910jh.m10287a(r15, r5)
            if (r5 == 0) goto L3f
            r5 = 22
            if (r3 > r5) goto L3d
            java.lang.String r3 = p168r4.C5979lc.f27167d
            java.lang.String r5 = "ODROID-XU3"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L2c
            java.lang.String r5 = "Nexus 10"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L3d
        L2c:
            java.lang.String r3 = "OMX.Exynos.AVC.Decoder"
            boolean r3 = r3.equals(r12)
            if (r3 != 0) goto L3f
            java.lang.String r3 = "OMX.Exynos.AVC.Decoder.secure"
            boolean r3 = r3.equals(r12)
            if (r3 == 0) goto L3d
            goto L3f
        L3d:
            r8 = 1
            goto L40
        L3f:
            r8 = 0
        L40:
            r3 = 21
            if (r4 == 0) goto L52
            int r5 = p168r4.C5979lc.f27164a
            if (r5 < r3) goto L52
            java.lang.String r5 = "tunneled-playback"
            boolean r5 = p168r4.C5910jh.m10287a(r15, r5)
            if (r5 == 0) goto L52
            r9 = 1
            goto L53
        L52:
            r9 = 0
        L53:
            if (r20 != 0) goto L66
            if (r4 == 0) goto L64
            int r5 = p168r4.C5979lc.f27164a
            if (r5 < r3) goto L64
            java.lang.String r3 = "secure-playback"
            boolean r3 = p168r4.C5910jh.m10287a(r15, r3)
            if (r3 == 0) goto L64
            goto L66
        L64:
            r10 = 0
            goto L67
        L66:
            r10 = 1
        L67:
            r0 = r11
            r1 = r12
            r2 = r13
            r3 = r14
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.e33.m11867a(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean):r4.e33");
    }

    /* renamed from: b */
    public final MediaCodecInfo.CodecProfileLevel[] m11866b() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f22780d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public final String toString() {
        return this.f22777a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0082, code lost:
        r7 = r7.getVideoCapabilities();
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11865c(p168r4.C5713e5 r13) {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.e33.m11865c(r4.e5):boolean");
    }

    /* renamed from: d */
    public final boolean m11864d(C5713e5 c5713e5) {
        if (this.f22783g) {
            return this.f22781e;
        }
        Pair<Integer, Integer> m9070f = nk3.m9070f(c5713e5);
        if (m9070f != null && ((Integer) m9070f.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public final C5883iq m11863e(C5713e5 c5713e5, C5713e5 c5713e52) {
        int i;
        int i2;
        if (true != C5979lc.m9729H(c5713e5.f22814l, c5713e52.f22814l)) {
            i = 8;
        } else {
            i = 0;
        }
        if (this.f22783g) {
            if (c5713e5.f22822t != c5713e52.f22822t) {
                i |= 1024;
            }
            if (!this.f22781e && (c5713e5.f22819q != c5713e52.f22819q || c5713e5.f22820r != c5713e52.f22820r)) {
                i |= 512;
            }
            if (!C5979lc.m9729H(c5713e5.f22826x, c5713e52.f22826x)) {
                i |= 2048;
            }
            String str = this.f22777a;
            if (C5979lc.f27167d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !c5713e5.m11853d(c5713e52)) {
                i |= 2;
            }
            if (i == 0) {
                String str2 = this.f22777a;
                if (true != c5713e5.m11853d(c5713e52)) {
                    i2 = 2;
                } else {
                    i2 = 3;
                }
                return new C5883iq(str2, c5713e5, c5713e52, i2, 0);
            }
        } else {
            if (c5713e5.f22827y != c5713e52.f22827y) {
                i |= 4096;
            }
            if (c5713e5.f22828z != c5713e52.f22828z) {
                i |= 8192;
            }
            if (c5713e5.f22797A != c5713e52.f22797A) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.f22778b)) {
                Pair<Integer, Integer> m9070f = nk3.m9070f(c5713e5);
                Pair<Integer, Integer> m9070f2 = nk3.m9070f(c5713e52);
                if (m9070f != null && m9070f2 != null) {
                    int intValue = ((Integer) m9070f.first).intValue();
                    int intValue2 = ((Integer) m9070f2.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new C5883iq(this.f22777a, c5713e5, c5713e52, 3, 0);
                    }
                }
            }
            if (!c5713e5.m11853d(c5713e52)) {
                i |= 32;
            }
            if ("audio/opus".equals(this.f22778b)) {
                i |= 2;
            }
            if (i == 0) {
                return new C5883iq(this.f22777a, c5713e5, c5713e52, 1, 0);
            }
        }
        return new C5883iq(this.f22777a, c5713e5, c5713e52, 0, i);
    }

    /* renamed from: f */
    public final boolean m11862f(int i, int i2, double d) {
        MediaCodecInfo$VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f22780d;
        if (codecCapabilities == null) {
            m11860h("sizeAndRate.caps");
            return false;
        }
        videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m11860h("sizeAndRate.vCaps");
            return false;
        } else if (!m11859i(videoCapabilities, i, i2, d)) {
            if (i < i2 && ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(this.f22777a) || !"mcv5a".equals(C5979lc.f27165b)) && m11859i(videoCapabilities, i2, i, d))) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.rotated, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                String sb2 = sb.toString();
                String str = this.f22777a;
                String str2 = this.f22778b;
                String str3 = C5979lc.f27168e;
                int length = String.valueOf(str).length();
                StringBuilder sb3 = new StringBuilder(sb2.length() + 25 + length + str2.length() + String.valueOf(str3).length());
                sb3.append("AssumedSupport [");
                sb3.append(sb2);
                sb3.append("] [");
                sb3.append(str);
                sb3.append(", ");
                sb3.append(str2);
                sb3.append("] [");
                sb3.append(str3);
                sb3.append("]");
                Log.d("MediaCodecInfo", sb3.toString());
                return true;
            }
            StringBuilder sb4 = new StringBuilder(69);
            sb4.append("sizeAndRate.support, ");
            sb4.append(i);
            sb4.append("x");
            sb4.append(i2);
            sb4.append("x");
            sb4.append(d);
            m11860h(sb4.toString());
            return false;
        } else {
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0006, code lost:
        r0 = r0.getVideoCapabilities();
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Point m11861g(int r3, int r4) {
        /*
            r2 = this;
            android.media.MediaCodecInfo$CodecCapabilities r0 = r2.f22780d
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            android.media.MediaCodecInfo$VideoCapabilities r0 = p016b3.C0520q1.m26277a(r0)
            if (r0 != 0) goto Ld
            return r1
        Ld:
            android.graphics.Point r3 = m11858j(r0, r3, r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.e33.m11861g(int, int):android.graphics.Point");
    }

    /* renamed from: h */
    public final void m11860h(String str) {
        String str2 = this.f22777a;
        String str3 = this.f22778b;
        String str4 = C5979lc.f27168e;
        int length = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(str.length() + 20 + length + str3.length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        Log.d("MediaCodecInfo", sb.toString());
    }

    public e33(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        str.getClass();
        this.f22777a = str;
        this.f22778b = str2;
        this.f22779c = str3;
        this.f22780d = codecCapabilities;
        this.f22781e = z4;
        this.f22782f = z6;
        this.f22783g = C5941kb.m10070b(str2);
    }

    /* renamed from: i */
    public static boolean m11859i(MediaCodecInfo$VideoCapabilities mediaCodecInfo$VideoCapabilities, int i, int i2, double d) {
        Point m11858j = m11858j(mediaCodecInfo$VideoCapabilities, i, i2);
        int i3 = m11858j.x;
        int i4 = m11858j.y;
        if (d != -1.0d && d >= 1.0d) {
            return mediaCodecInfo$VideoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
        }
        return mediaCodecInfo$VideoCapabilities.isSizeSupported(i3, i4);
    }

    /* renamed from: j */
    public static Point m11858j(MediaCodecInfo$VideoCapabilities mediaCodecInfo$VideoCapabilities, int i, int i2) {
        int widthAlignment = mediaCodecInfo$VideoCapabilities.getWidthAlignment();
        int heightAlignment = mediaCodecInfo$VideoCapabilities.getHeightAlignment();
        return new Point(C5979lc.m9707b0(i, widthAlignment) * widthAlignment, C5979lc.m9707b0(i2, heightAlignment) * heightAlignment);
    }
}
