package p168r4;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.prineside.tdi2.Config;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.bytebuddy.jar.asm.Opcodes;
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* renamed from: r4.vh */
/* loaded from: classes2.dex */
public final class C6355vh {

    /* renamed from: d */
    public static final SparseIntArray f32723d;

    /* renamed from: e */
    public static final SparseIntArray f32724e;

    /* renamed from: f */
    public static final Map<String, Integer> f32725f;

    /* renamed from: a */
    public static final C5947kh f32720a = C5947kh.m10036a("OMX.google.raw.decoder");

    /* renamed from: b */
    public static final Pattern f32721b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c */
    public static final HashMap<C6133ph, List<C5947kh>> f32722c = new HashMap<>();

    /* renamed from: g */
    public static int f32726g = -1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f32723d = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f32724e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, 256);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, 8192);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap hashMap = new HashMap();
        f32725f = hashMap;
        hashMap.put("L30", 1);
        hashMap.put("L60", 4);
        hashMap.put("L63", 16);
        hashMap.put("L90", 64);
        hashMap.put("L93", 256);
        hashMap.put("L120", 1024);
        hashMap.put("L123", 4096);
        hashMap.put("L150", 16384);
        hashMap.put("L153", 65536);
        hashMap.put("L156", 262144);
        hashMap.put("L180", 1048576);
        hashMap.put("L183", 4194304);
        hashMap.put("L186", 16777216);
        hashMap.put("H30", 2);
        hashMap.put("H60", 8);
        hashMap.put("H63", 32);
        hashMap.put("H90", 128);
        hashMap.put("H93", 512);
        hashMap.put("H120", 2048);
        hashMap.put("H123", 8192);
        hashMap.put("H150", 32768);
        hashMap.put("H153", 131072);
        hashMap.put("H156", Integer.valueOf((int) Opcodes.ASM8));
        hashMap.put("H180", 2097152);
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
    }

    /* renamed from: b */
    public static synchronized List<C5947kh> m6154b(String str, boolean z) {
        InterfaceC6207rh c6244sh;
        synchronized (C6355vh.class) {
            C6133ph c6133ph = new C6133ph(str, z);
            HashMap<C6133ph, List<C5947kh>> hashMap = f32722c;
            List<C5947kh> list = hashMap.get(c6133ph);
            if (list != null) {
                return list;
            }
            int i = C5988ll.f27242a;
            if (i >= 21) {
                c6244sh = new C6281th(z);
            } else {
                c6244sh = new C6244sh(null);
            }
            List<C5947kh> m6151e = m6151e(c6133ph, c6244sh);
            if (z && m6151e.isEmpty() && i >= 21 && i <= 23) {
                m6151e = m6151e(c6133ph, new C6244sh(null));
                if (!m6151e.isEmpty()) {
                    String str2 = m6151e.get(0).f26412a;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                    sb.append(str);
                    sb.append(". Assuming: ");
                    sb.append(str2);
                    Log.w("MediaCodecUtil", sb.toString());
                }
            }
            List<C5947kh> unmodifiableList = Collections.unmodifiableList(m6151e);
            hashMap.put(c6133ph, unmodifiableList);
            return unmodifiableList;
        }
    }

    /* renamed from: c */
    public static int m6153c() {
        int i;
        if (f32726g == -1) {
            int i2 = 0;
            C5947kh m6155a = m6155a("video/avc", false);
            if (m6155a != null) {
                MediaCodecInfo.CodecProfileLevel[] m10034c = m6155a.m10034c();
                int length = m10034c.length;
                int i3 = 0;
                while (i2 < length) {
                    int i4 = m10034c[i2].level;
                    int i5 = 9437184;
                    if (i4 != 1 && i4 != 2) {
                        switch (i4) {
                            case 8:
                            case 16:
                            case 32:
                                i5 = 101376;
                                continue;
                            case 64:
                                i5 = 202752;
                                continue;
                            case 128:
                            case 256:
                                i5 = 414720;
                                continue;
                            case 512:
                                i5 = 921600;
                                continue;
                            case 1024:
                                i5 = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i5 = 2097152;
                                continue;
                            case 8192:
                                i5 = 2228224;
                                continue;
                            case 16384:
                                i5 = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                break;
                            default:
                                i5 = -1;
                                continue;
                        }
                    } else {
                        i5 = 25344;
                    }
                    i3 = Math.max(i5, i3);
                    i2++;
                }
                if (C5988ll.f27242a >= 21) {
                    i = 345600;
                } else {
                    i = 172800;
                }
                i2 = Math.max(i3, i);
            }
            f32726g = i2;
        }
        return f32726g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public static Pair<Integer, Integer> m6152d(String str) {
        char c;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        Integer valueOf;
        Integer valueOf2;
        String str8;
        String[] split = str.split("\\.");
        String str9 = split[0];
        int i = 2;
        switch (str9.hashCode()) {
            case 3006243:
                if (str9.equals("avc1")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3006244:
                if (str9.equals("avc2")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3199032:
                if (str9.equals("hev1")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 3214780:
                if (str9.equals("hvc1")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0 && c != 1) {
            if (c != 2 && c != 3) {
                return null;
            }
            int length = split.length;
            if (length < 2) {
                if (str.length() != 0) {
                    str8 = "Ignoring malformed AVC codec string: ".concat(str);
                } else {
                    str8 = new String("Ignoring malformed AVC codec string: ");
                }
                Log.w("MediaCodecUtil", str8);
                return null;
            }
            try {
                if (split[1].length() == 6) {
                    valueOf = Integer.valueOf(Integer.parseInt(split[1].substring(0, 2), 16));
                    valueOf2 = Integer.valueOf(Integer.parseInt(split[1].substring(4), 16));
                } else if (length >= 3) {
                    valueOf = Integer.valueOf(Integer.parseInt(split[1]));
                    valueOf2 = Integer.valueOf(Integer.parseInt(split[2]));
                } else {
                    if (str.length() != 0) {
                        str7 = "Ignoring malformed AVC codec string: ".concat(str);
                    } else {
                        str7 = new String("Ignoring malformed AVC codec string: ");
                    }
                    Log.w("MediaCodecUtil", str7);
                    return null;
                }
                return new Pair<>(Integer.valueOf(f32723d.get(valueOf.intValue())), Integer.valueOf(f32724e.get(valueOf2.intValue())));
            } catch (NumberFormatException unused) {
                if (str.length() != 0) {
                    str6 = "Ignoring malformed AVC codec string: ".concat(str);
                } else {
                    str6 = new String("Ignoring malformed AVC codec string: ");
                }
                Log.w("MediaCodecUtil", str6);
                return null;
            }
        } else if (split.length < 4) {
            if (str.length() != 0) {
                str5 = "Ignoring malformed HEVC codec string: ".concat(str);
            } else {
                str5 = new String("Ignoring malformed HEVC codec string: ");
            }
            Log.w("MediaCodecUtil", str5);
            return null;
        } else {
            Matcher matcher = f32721b.matcher(split[1]);
            if (!matcher.matches()) {
                if (str.length() != 0) {
                    str4 = "Ignoring malformed HEVC codec string: ".concat(str);
                } else {
                    str4 = new String("Ignoring malformed HEVC codec string: ");
                }
                Log.w("MediaCodecUtil", str4);
                return null;
            }
            String group = matcher.group(1);
            if (Config.SITE_API_VERSION.equals(group)) {
                i = 1;
            } else if (!"2".equals(group)) {
                String valueOf3 = String.valueOf(group);
                if (valueOf3.length() != 0) {
                    str2 = "Unknown HEVC profile string: ".concat(valueOf3);
                } else {
                    str2 = new String("Unknown HEVC profile string: ");
                }
                Log.w("MediaCodecUtil", str2);
                return null;
            }
            Integer num = f32725f.get(split[3]);
            if (num == null) {
                String valueOf4 = String.valueOf(matcher.group(1));
                if (valueOf4.length() != 0) {
                    str3 = "Unknown HEVC level string: ".concat(valueOf4);
                } else {
                    str3 = new String("Unknown HEVC level string: ");
                }
                Log.w("MediaCodecUtil", str3);
                return null;
            }
            return new Pair<>(Integer.valueOf(i), num);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01be A[Catch: Exception -> 0x01b9, TryCatch #2 {Exception -> 0x01b9, blocks: (B:102:0x0195, B:104:0x019f, B:106:0x01a7, B:108:0x01af, B:115:0x01be, B:120:0x01c7), top: B:154:0x0195 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<p168r4.C5947kh> m6151e(p168r4.C6133ph r18, p168r4.InterfaceC6207rh r19) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6355vh.m6151e(r4.ph, r4.rh):java.util.List");
    }

    /* renamed from: a */
    public static C5947kh m6155a(String str, boolean z) {
        List<C5947kh> m6154b = m6154b(str, z);
        if (m6154b.isEmpty()) {
            return null;
        }
        return m6154b.get(0);
    }
}
