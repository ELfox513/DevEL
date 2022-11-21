package p168r4;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import net.bytebuddy.jar.asm.Opcodes;
@SuppressLint({"InlinedApi"})
/* renamed from: r4.nk3 */
/* loaded from: classes2.dex */
public final class nk3 {

    /* renamed from: a */
    public static final Pattern f28315a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    public static final HashMap<zc3, List<e33>> f28316b = new HashMap<>();

    /* renamed from: c */
    public static int f28317c = -1;

    /* renamed from: a */
    public static e33 m9075a() {
        return m9074b("audio/raw", false, false);
    }

    /* renamed from: b */
    public static e33 m9074b(String str, boolean z, boolean z2) {
        List<e33> m9073c = m9073c(str, false, false);
        if (m9073c.isEmpty()) {
            return null;
        }
        return m9073c.get(0);
    }

    /* renamed from: i */
    public static <T> void m9067i(List<T> list, final ij3<T> ij3Var) {
        Collections.sort(list, new Comparator(ij3Var) { // from class: r4.yb3

            /* renamed from: a */
            public final ij3 f34023a;

            {
                this.f34023a = ij3Var;
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                ij3 ij3Var2 = this.f34023a;
                Pattern pattern = nk3.f28315a;
                return ij3Var2.mo5428a(obj2) - ij3Var2.mo5428a(obj);
            }
        });
    }

    /* renamed from: c */
    public static synchronized List<e33> m9073c(String str, boolean z, boolean z2) {
        bf3 eg3Var;
        synchronized (nk3.class) {
            zc3 zc3Var = new zc3(str, z, z2);
            HashMap<zc3, List<e33>> hashMap = f28316b;
            List<e33> list = hashMap.get(zc3Var);
            if (list != null) {
                return list;
            }
            int i = C5979lc.f27164a;
            if (i >= 21) {
                eg3Var = new gh3(z, z2);
            } else {
                eg3Var = new eg3(null);
            }
            ArrayList<e33> m9069g = m9069g(zc3Var, eg3Var);
            if (z && m9069g.isEmpty() && i >= 21 && i <= 23) {
                m9069g = m9069g(zc3Var, new eg3(null));
                if (!m9069g.isEmpty()) {
                    String str2 = m9069g.get(0).f22777a;
                    StringBuilder sb = new StringBuilder(str.length() + 63 + String.valueOf(str2).length());
                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                    sb.append(str);
                    sb.append(". Assuming: ");
                    sb.append(str2);
                    Log.w("MediaCodecUtil", sb.toString());
                }
            }
            if ("audio/raw".equals(str)) {
                if (i < 26 && C5979lc.f27165b.equals("R9") && m9069g.size() == 1 && m9069g.get(0).f22777a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                    m9069g.add(e33.m11867a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                }
                m9067i(m9069g, w93.f33143a);
            }
            if (i < 21 && m9069g.size() > 1) {
                String str3 = m9069g.get(0).f22777a;
                if ("OMX.SEC.mp3.dec".equals(str3) || "OMX.SEC.MP3.Decoder".equals(str3) || "OMX.brcm.audio.mp3.decoder".equals(str3)) {
                    m9067i(m9069g, xa3.f33536a);
                }
            }
            if (i < 32 && m9069g.size() > 1 && "OMX.qti.audio.decoder.flac".equals(m9069g.get(0).f22777a)) {
                m9069g.add(m9069g.remove(0));
            }
            List<e33> unmodifiableList = Collections.unmodifiableList(m9069g);
            hashMap.put(zc3Var, unmodifiableList);
            return unmodifiableList;
        }
    }

    /* renamed from: d */
    public static List<e33> m9072d(List<e33> list, final C5713e5 c5713e5) {
        ArrayList arrayList = new ArrayList(list);
        m9067i(arrayList, new ij3(c5713e5) { // from class: r4.v83

            /* renamed from: a */
            public final C5713e5 f32652a;

            {
                this.f32652a = c5713e5;
            }

            @Override // p168r4.ij3
            /* renamed from: a */
            public final int mo5428a(Object obj) {
                C5713e5 c5713e52 = this.f32652a;
                e33 e33Var = (e33) obj;
                Pattern pattern = nk3.f28315a;
                try {
                    if (!e33Var.m11865c(c5713e52)) {
                        return 0;
                    }
                    return 1;
                } catch (ae3 unused) {
                    return -1;
                }
            }
        });
        return arrayList;
    }

    /* renamed from: e */
    public static int m9071e() {
        int i;
        int i2;
        if (f28317c == -1) {
            int i3 = 0;
            e33 m9074b = m9074b("video/avc", false, false);
            if (m9074b != null) {
                MediaCodecInfo.CodecProfileLevel[] m11866b = m9074b.m11866b();
                int length = m11866b.length;
                int i4 = 0;
                while (i3 < length) {
                    int i5 = m11866b[i3].level;
                    if (i5 != 1 && i5 != 2) {
                        switch (i5) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                continue;
                            case 64:
                                i2 = 202752;
                                continue;
                            case 128:
                            case 256:
                                i2 = 414720;
                                continue;
                            case 512:
                                i2 = 921600;
                                continue;
                            case 1024:
                                i2 = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i2 = 2097152;
                                continue;
                            case 8192:
                                i2 = 2228224;
                                continue;
                            case 16384:
                                i2 = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i2 = 9437184;
                                continue;
                            case 131072:
                            case 262144:
                            case Opcodes.ASM8 /* 524288 */:
                                i2 = 35651584;
                                continue;
                            default:
                                i2 = -1;
                                continue;
                        }
                    } else {
                        i2 = 25344;
                    }
                    i4 = Math.max(i2, i4);
                    i3++;
                }
                if (C5979lc.f27164a >= 21) {
                    i = 345600;
                } else {
                    i = 172800;
                }
                i3 = Math.max(i4, i);
            }
            f28317c = i3;
        }
        return f28317c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0301 A[Catch: NumberFormatException -> 0x0311, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x0311, blocks: (B:168:0x02a6, B:170:0x02b8, B:181:0x02d4, B:197:0x0301), top: B:554:0x02a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x068f  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x078a  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x07a0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0142  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m9070f(p168r4.C5713e5 r17) {
        /*
            Method dump skipped, instructions count: 2744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.nk3.m9070f(r4.e5):android.util.Pair");
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x019b, code lost:
        if ("SCV31".equals(r5) == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d9, code lost:
        if (r8.startsWith("t0") == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a1, code lost:
        if (r11.startsWith("HM") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x010f, code lost:
        if ("SO-02E".equals(r11) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x013b, code lost:
        if ("C1605".equals(r10) == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        if (r9 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0292 A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:157:0x0261, B:163:0x0278, B:169:0x028c, B:171:0x0292, B:176:0x02a0, B:178:0x02a8, B:188:0x02d2, B:191:0x02d8, B:179:0x02ad, B:181:0x02bd, B:183:0x02c5, B:172:0x0297), top: B:218:0x0261 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0297 A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:157:0x0261, B:163:0x0278, B:169:0x028c, B:171:0x0292, B:176:0x02a0, B:178:0x02a8, B:188:0x02d2, B:191:0x02d8, B:179:0x02ad, B:181:0x02bd, B:183:0x02c5, B:172:0x0297), top: B:218:0x0261 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02a8 A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:157:0x0261, B:163:0x0278, B:169:0x028c, B:171:0x0292, B:176:0x02a0, B:178:0x02a8, B:188:0x02d2, B:191:0x02d8, B:179:0x02ad, B:181:0x02bd, B:183:0x02c5, B:172:0x0297), top: B:218:0x0261 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02ad A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:157:0x0261, B:163:0x0278, B:169:0x028c, B:171:0x0292, B:176:0x02a0, B:178:0x02a8, B:188:0x02d2, B:191:0x02d8, B:179:0x02ad, B:181:0x02bd, B:183:0x02c5, B:172:0x0297), top: B:218:0x0261 }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<p168r4.e33> m9069g(p168r4.zc3 r23, p168r4.bf3 r24) {
        /*
            Method dump skipped, instructions count: 927
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.nk3.m9069g(r4.zc3, r4.bf3):java.util.ArrayList");
    }

    /* renamed from: h */
    public static boolean m9068h(MediaCodecInfo mediaCodecInfo) {
        boolean isSoftwareOnly;
        if (C5979lc.f27164a >= 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        }
        String m11018a = h03.m11018a(mediaCodecInfo.getName());
        if (m11018a.startsWith("arc.")) {
            return false;
        }
        if (!m11018a.startsWith("omx.google.") && !m11018a.startsWith("omx.ffmpeg.") && ((!m11018a.startsWith("omx.sec.") || !m11018a.contains(".sw.")) && !m11018a.equals("omx.qcom.video.decoder.hevcswvdec") && !m11018a.startsWith("c2.android.") && !m11018a.startsWith("c2.google.") && (m11018a.startsWith("omx.") || m11018a.startsWith("c2.")))) {
            return false;
        }
        return true;
    }
}
