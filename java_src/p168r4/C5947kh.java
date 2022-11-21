package p168r4;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo$AudioCapabilities;
import android.media.MediaCodecInfo$VideoCapabilities;
import android.util.Log;
import android.util.Pair;
@TargetApi(16)
/* renamed from: r4.kh */
/* loaded from: classes2.dex */
public final class C5947kh {

    /* renamed from: a */
    public final String f26412a;

    /* renamed from: b */
    public final boolean f26413b;

    /* renamed from: c */
    public final boolean f26414c;

    /* renamed from: d */
    public final boolean f26415d;

    /* renamed from: e */
    public final String f26416e;

    /* renamed from: f */
    public final MediaCodecInfo.CodecCapabilities f26417f;

    /* renamed from: a */
    public static C5947kh m10036a(String str) {
        return new C5947kh("OMX.google.raw.decoder", null, null, false, false);
    }

    /* renamed from: b */
    public static C5947kh m10035b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new C5947kh(str, str2, codecCapabilities, z, z2);
    }

    /* renamed from: c */
    public final MediaCodecInfo.CodecProfileLevel[] m10034c() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f26417f;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    /* renamed from: d */
    public final boolean m10033d(String str) {
        String str2;
        MediaCodecInfo.CodecProfileLevel[] m10034c;
        if (str == null || this.f26416e == null) {
            return true;
        }
        String trim = str.trim();
        if (!trim.startsWith("avc1") && !trim.startsWith("avc3")) {
            if (!trim.startsWith("hev1") && !trim.startsWith("hvc1")) {
                if (trim.startsWith("vp9")) {
                    str2 = "video/x-vnd.on2.vp9";
                } else if (trim.startsWith("vp8")) {
                    str2 = "video/x-vnd.on2.vp8";
                } else if (trim.startsWith("mp4a")) {
                    str2 = "audio/mp4a-latm";
                } else if (!trim.startsWith("ac-3") && !trim.startsWith("dac3")) {
                    if (!trim.startsWith("ec-3") && !trim.startsWith("dec3")) {
                        if (!trim.startsWith("dtsc") && !trim.startsWith("dtse")) {
                            if (!trim.startsWith("dtsh") && !trim.startsWith("dtsl")) {
                                if (trim.startsWith("opus")) {
                                    str2 = "audio/opus";
                                } else if (trim.startsWith("vorbis")) {
                                    str2 = "audio/vorbis";
                                } else {
                                    str2 = null;
                                }
                            } else {
                                str2 = "audio/vnd.dts.hd";
                            }
                        } else {
                            str2 = "audio/vnd.dts";
                        }
                    } else {
                        str2 = "audio/eac3";
                    }
                } else {
                    str2 = "audio/ac3";
                }
            } else {
                str2 = "video/hevc";
            }
        } else {
            str2 = "video/avc";
        }
        if (str2 == null) {
            return true;
        }
        if (!this.f26416e.equals(str2)) {
            StringBuilder sb = new StringBuilder(str.length() + 13 + str2.length());
            sb.append("codec.mime ");
            sb.append(str);
            sb.append(", ");
            sb.append(str2);
            m10029h(sb.toString());
            return false;
        }
        Pair<Integer, Integer> m6152d = C6355vh.m6152d(str);
        if (m6152d == null) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m10034c()) {
            if (codecProfileLevel.profile == ((Integer) m6152d.first).intValue() && codecProfileLevel.level >= ((Integer) m6152d.second).intValue()) {
                return true;
            }
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 22 + str2.length());
        sb2.append("codec.profileLevel, ");
        sb2.append(str);
        sb2.append(", ");
        sb2.append(str2);
        m10029h(sb2.toString());
        return false;
    }

    /* renamed from: h */
    public final void m10029h(String str) {
        String str2 = this.f26412a;
        String str3 = this.f26416e;
        String str4 = C5988ll.f27246e;
        int length = String.valueOf(str2).length();
        int length2 = String.valueOf(str3).length();
        StringBuilder sb = new StringBuilder(str.length() + 20 + length + length2 + String.valueOf(str4).length());
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

    @TargetApi(21)
    /* renamed from: i */
    public static boolean m10028i(MediaCodecInfo$VideoCapabilities mediaCodecInfo$VideoCapabilities, int i, int i2, double d) {
        if (d != -1.0d && d > 0.0d) {
            return mediaCodecInfo$VideoCapabilities.areSizeAndRateSupported(i, i2, d);
        }
        return mediaCodecInfo$VideoCapabilities.isSizeSupported(i, i2);
    }

    @TargetApi(21)
    /* renamed from: e */
    public final boolean m10032e(int i, int i2, double d) {
        MediaCodecInfo$VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f26417f;
        if (codecCapabilities == null) {
            m10029h("sizeAndRate.caps");
            return false;
        }
        videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m10029h("sizeAndRate.vCaps");
            return false;
        } else if (!m10028i(videoCapabilities, i, i2, d)) {
            if (i < i2 && m10028i(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.rotated, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                String sb2 = sb.toString();
                String str = this.f26412a;
                String str2 = this.f26416e;
                String str3 = C5988ll.f27246e;
                int length = String.valueOf(str).length();
                int length2 = String.valueOf(str2).length();
                StringBuilder sb3 = new StringBuilder(sb2.length() + 25 + length + length2 + String.valueOf(str3).length());
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
            m10029h(sb4.toString());
            return false;
        } else {
            return true;
        }
    }

    @TargetApi(21)
    /* renamed from: f */
    public final boolean m10031f(int i) {
        MediaCodecInfo$AudioCapabilities audioCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f26417f;
        if (codecCapabilities == null) {
            m10029h("sampleRate.caps");
            return false;
        }
        audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m10029h("sampleRate.aCaps");
            return false;
        } else if (!audioCapabilities.isSampleRateSupported(i)) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            m10029h(sb.toString());
            return false;
        } else {
            return true;
        }
    }

    @TargetApi(21)
    /* renamed from: g */
    public final boolean m10030g(int i) {
        MediaCodecInfo$AudioCapabilities audioCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f26417f;
        if (codecCapabilities == null) {
            m10029h("channelCount.caps");
            return false;
        }
        audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m10029h("channelCount.aCaps");
            return false;
        } else if (audioCapabilities.getMaxInputChannelCount() < i) {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            m10029h(sb.toString());
            return false;
        } else {
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
        if (r4 != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5947kh(java.lang.String r2, java.lang.String r3, android.media.MediaCodecInfo.CodecCapabilities r4, boolean r5, boolean r6) {
        /*
            r1 = this;
            r1.<init>()
            r2.getClass()
            r1.f26412a = r2
            r1.f26416e = r3
            r1.f26417f = r4
            r2 = 1
            r3 = 0
            if (r5 != 0) goto L22
            if (r4 == 0) goto L22
            int r5 = p168r4.C5988ll.f27242a
            r0 = 19
            if (r5 < r0) goto L22
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = p168r4.C5910jh.m10287a(r4, r5)
            if (r5 == 0) goto L22
            r5 = 1
            goto L23
        L22:
            r5 = 0
        L23:
            r1.f26413b = r5
            r5 = 21
            if (r4 == 0) goto L37
            int r0 = p168r4.C5988ll.f27242a
            if (r0 < r5) goto L37
            java.lang.String r0 = "tunneled-playback"
            boolean r0 = p168r4.C5910jh.m10287a(r4, r0)
            if (r0 == 0) goto L37
            r0 = 1
            goto L38
        L37:
            r0 = 0
        L38:
            r1.f26414c = r0
            if (r6 != 0) goto L4c
            if (r4 == 0) goto L4b
            int r6 = p168r4.C5988ll.f27242a
            if (r6 < r5) goto L4b
            java.lang.String r5 = "secure-playback"
            boolean r4 = p168r4.C5910jh.m10287a(r4, r5)
            if (r4 == 0) goto L4b
            goto L4c
        L4b:
            r2 = 0
        L4c:
            r1.f26415d = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5947kh.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }
}
