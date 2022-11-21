package p168r4;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: r4.kb */
/* loaded from: classes2.dex */
public final class C5941kb {

    /* renamed from: a */
    public static final ArrayList<C5868ib> f26359a = new ArrayList<>();

    /* renamed from: b */
    public static final Pattern f26360b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* renamed from: a */
    public static boolean m10071a(String str) {
        return "audio".equals(m10063i(str));
    }

    /* renamed from: b */
    public static boolean m10070b(String str) {
        return "video".equals(m10063i(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static boolean m10069c(String str, String str2) {
        char c;
        C5904jb m10064h;
        if (str == null) {
            return false;
        }
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
                return true;
            case '\n':
                if (str2 == null || (m10064h = m10064h(str2)) == null) {
                    return false;
                }
                int i = m10064h.f25985b;
                char c2 = i != 2 ? i != 5 ? i != 29 ? i != 42 ? i != 22 ? i != 23 ? (char) 0 : (char) 15 : (char) 0 : (char) 16 : '\f' : (char) 11 : '\n';
                return (c2 == 0 || c2 == 16) ? false : true;
            default:
                return false;
        }
    }

    /* renamed from: e */
    public static String m10067e(int i) {
        if (i != 32) {
            if (i != 33) {
                if (i != 35) {
                    if (i != 64) {
                        if (i != 163) {
                            if (i != 177) {
                                if (i != 165) {
                                    if (i != 166) {
                                        switch (i) {
                                            case 96:
                                            case 97:
                                            case 98:
                                            case 99:
                                            case 100:
                                            case 101:
                                                return "video/mpeg2";
                                            case 102:
                                            case 103:
                                            case 104:
                                                return "audio/mp4a-latm";
                                            case 105:
                                            case 107:
                                                return "audio/mpeg";
                                            case 106:
                                                return "video/mpeg";
                                            default:
                                                switch (i) {
                                                    case 169:
                                                    case 172:
                                                        return "audio/vnd.dts";
                                                    case 170:
                                                    case 171:
                                                        return "audio/vnd.dts.hd";
                                                    case 173:
                                                        return "audio/opus";
                                                    case 174:
                                                        return "audio/ac4";
                                                    default:
                                                        return null;
                                                }
                                        }
                                    }
                                    return "audio/eac3";
                                }
                                return "audio/ac3";
                            }
                            return "video/x-vnd.on2.vp9";
                        }
                        return "video/wvc1";
                    }
                    return "audio/mp4a-latm";
                }
                return "video/hevc";
            }
            return "video/avc";
        }
        return "video/mp4v-es";
    }

    /* renamed from: g */
    public static String m10065g(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1007807498) {
            if (str.equals("audio/x-flac")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != -586683234) {
            if (hashCode == 187090231 && str.equals("audio/mp3")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("audio/x-wav")) {
                c = 2;
            }
            c = 65535;
        }
        return c != 0 ? c != 1 ? c != 2 ? str : "audio/wav" : "audio/mpeg" : "audio/flac";
    }

    /* renamed from: i */
    public static String m10063i(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: h */
    public static C5904jb m10064h(String str) {
        int i;
        Matcher matcher = f26360b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String group = matcher.group(1);
        group.getClass();
        String group2 = matcher.group(2);
        try {
            int parseInt = Integer.parseInt(group, 16);
            if (group2 != null) {
                i = Integer.parseInt(group2);
            } else {
                i = 0;
            }
            return new C5904jb(parseInt, i);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: d */
    public static String m10068d(String str) {
        C5904jb m10064h;
        String m11018a = h03.m11018a(str.trim());
        if (!m11018a.startsWith("avc1") && !m11018a.startsWith("avc3")) {
            if (!m11018a.startsWith("hev1") && !m11018a.startsWith("hvc1")) {
                if (!m11018a.startsWith("dvav") && !m11018a.startsWith("dva1") && !m11018a.startsWith("dvhe") && !m11018a.startsWith("dvh1")) {
                    if (m11018a.startsWith("av01")) {
                        return "video/av01";
                    }
                    if (!m11018a.startsWith("vp9") && !m11018a.startsWith("vp09")) {
                        if (!m11018a.startsWith("vp8") && !m11018a.startsWith("vp08")) {
                            String str2 = null;
                            if (m11018a.startsWith("mp4a")) {
                                if (m11018a.startsWith("mp4a.") && (m10064h = m10064h(m11018a)) != null) {
                                    str2 = m10067e(m10064h.f25984a);
                                }
                                if (str2 == null) {
                                    return "audio/mp4a-latm";
                                }
                                return str2;
                            } else if (m11018a.startsWith("mha1")) {
                                return "audio/mha1";
                            } else {
                                if (m11018a.startsWith("mhm1")) {
                                    return "audio/mhm1";
                                }
                                if (!m11018a.startsWith("ac-3") && !m11018a.startsWith("dac3")) {
                                    if (!m11018a.startsWith("ec-3") && !m11018a.startsWith("dec3")) {
                                        if (m11018a.startsWith("ec+3")) {
                                            return "audio/eac3-joc";
                                        }
                                        if (!m11018a.startsWith("ac-4") && !m11018a.startsWith("dac4")) {
                                            if (m11018a.startsWith("dtsc")) {
                                                return "audio/vnd.dts";
                                            }
                                            if (m11018a.startsWith("dtse")) {
                                                return "audio/vnd.dts.hd;profile=lbr";
                                            }
                                            if (!m11018a.startsWith("dtsh") && !m11018a.startsWith("dtsl")) {
                                                if (m11018a.startsWith("dtsx")) {
                                                    return "audio/vnd.dts.uhd";
                                                }
                                                if (m11018a.startsWith("opus")) {
                                                    return "audio/opus";
                                                }
                                                if (m11018a.startsWith("vorbis")) {
                                                    return "audio/vorbis";
                                                }
                                                if (m11018a.startsWith("flac")) {
                                                    return "audio/flac";
                                                }
                                                if (m11018a.startsWith("stpp")) {
                                                    return "application/ttml+xml";
                                                }
                                                if (m11018a.startsWith("wvtt")) {
                                                    return "text/vtt";
                                                }
                                                if (m11018a.contains("cea708")) {
                                                    return "application/cea-708";
                                                }
                                                if (!m11018a.contains("eia608") && !m11018a.contains("cea608")) {
                                                    int size = f26359a.size();
                                                    for (int i = 0; i < size; i++) {
                                                        String str3 = f26359a.get(i).f25025b;
                                                        if (m11018a.startsWith(null)) {
                                                            break;
                                                        }
                                                    }
                                                    return null;
                                                }
                                                return "application/cea-608";
                                            }
                                            return "audio/vnd.dts.hd";
                                        }
                                        return "audio/ac4";
                                    }
                                    return "audio/eac3";
                                }
                                return "audio/ac3";
                            }
                        }
                        return "video/x-vnd.on2.vp8";
                    }
                    return "video/x-vnd.on2.vp9";
                }
                return "video/dolby-vision";
            }
            return "video/hevc";
        }
        return "video/avc";
    }

    /* renamed from: f */
    public static int m10066f(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m10071a(str)) {
            return 1;
        }
        if (!m10070b(str)) {
            if (!"text".equals(m10063i(str)) && !"application/cea-608".equals(str) && !"application/cea-708".equals(str) && !"application/x-mp4-cea-608".equals(str) && !"application/x-subrip".equals(str) && !"application/ttml+xml".equals(str) && !"application/x-quicktime-tx3g".equals(str) && !"application/x-mp4-vtt".equals(str) && !"application/x-rawcc".equals(str) && !"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
                if (!"application/id3".equals(str) && !"application/x-emsg".equals(str) && !"application/x-scte35".equals(str)) {
                    if (!"application/x-camera-motion".equals(str)) {
                        int size = f26359a.size();
                        for (int i = 0; i < size; i++) {
                            String str2 = f26359a.get(i).f25024a;
                            if (str.equals(null)) {
                                return 0;
                            }
                        }
                        return -1;
                    }
                    return 6;
                }
                return 5;
            }
            return 3;
        }
        return 2;
    }
}
