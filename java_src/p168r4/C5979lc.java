package p168r4;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.p010os.LocaleList;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.Display$Mode;
import android.view.WindowManager;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.net.HttpStatus;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.LuaDouble;
import com.prineside.tdi2.managers.BasicLevelManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Pattern;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: r4.lc */
/* loaded from: classes2.dex */
public final class C5979lc {

    /* renamed from: a */
    public static final int f27164a;

    /* renamed from: b */
    public static final String f27165b;

    /* renamed from: c */
    public static final String f27166c;

    /* renamed from: d */
    public static final String f27167d;

    /* renamed from: e */
    public static final String f27168e;

    /* renamed from: f */
    public static final byte[] f27169f;

    /* renamed from: g */
    public static final Pattern f27170g;

    /* renamed from: h */
    public static final Pattern f27171h;

    /* renamed from: i */
    public static final Pattern f27172i;

    /* renamed from: j */
    public static final Pattern f27173j;

    /* renamed from: k */
    public static HashMap<String, String> f27174k;

    /* renamed from: l */
    public static final String[] f27175l;

    /* renamed from: m */
    public static final String[] f27176m;

    /* renamed from: n */
    public static final int[] f27177n;

    /* renamed from: o */
    public static final int[] f27178o;

    static {
        int i = Build.VERSION.SDK_INT;
        f27164a = i;
        String str = Build.DEVICE;
        f27165b = str;
        String str2 = Build.MANUFACTURER;
        f27166c = str2;
        String str3 = Build.MODEL;
        f27167d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i);
        f27168e = sb.toString();
        f27169f = new byte[0];
        f27170g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f27171h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f27172i = Pattern.compile("%([A-Fa-f0-9]{2})");
        f27173j = Pattern.compile(".*\\.isml?(?:/(manifest(.*))?)?");
        f27175l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", LuaDouble.JSTR_NAN, "zh-nan", "hsn", "zh-hsn"};
        f27176m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f27177n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f27178o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, HttpStatus.SC_ACCEPTED, HttpStatus.SC_RESET_CONTENT, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, HttpStatus.SC_CREATED, HttpStatus.SC_PARTIAL_CONTENT, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, HttpStatus.SC_MULTI_STATUS, HttpStatus.SC_OK, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, BasicLevelManager.PREVIEW_HEIGHT, 225, 232, 239, 250, 253, 244, Input.Keys.COLON};
    }

    /* renamed from: D */
    public static String m9733D(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            return "YES";
                        }
                        throw new IllegalStateException();
                    }
                    return "NO_EXCEEDS_CAPABILITIES";
                }
                return "NO_UNSUPPORTED_DRM";
            }
            return "NO_UNSUPPORTED_TYPE";
        }
        return "NO";
    }

    /* renamed from: H */
    public static boolean m9729H(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: I */
    public static <T> T m9728I(T t) {
        return t;
    }

    /* renamed from: J */
    public static <T> T[] m9727J(T[] tArr) {
        return tArr;
    }

    /* renamed from: K */
    public static <T> T[] m9726K(T[] tArr, int i) {
        boolean z;
        if (i <= tArr.length) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: L */
    public static <T> T[] m9725L(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, length + length2);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }

    /* renamed from: N */
    public static Handler m9723N(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    /* renamed from: Q */
    public static ExecutorService m9720Q(String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory("ExoPlayer:Loader:ProgressiveMediaPeriod") { // from class: r4.hc

            /* renamed from: a */
            public final String f24545a = "ExoPlayer:Loader:ProgressiveMediaPeriod";

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, this.f24545a);
            }
        });
    }

    /* renamed from: R */
    public static void m9719R(InterfaceC6087o8 interfaceC6087o8) {
        try {
            interfaceC6087o8.mo4058h();
        } catch (IOException unused) {
        }
    }

    /* renamed from: S */
    public static boolean m9718S(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: T */
    public static void m9717T(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: W */
    public static String m9714W(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, n03.f28056c);
    }

    /* renamed from: X */
    public static byte[] m9713X(String str) {
        return str.getBytes(n03.f28056c);
    }

    /* renamed from: Y */
    public static String[] m9712Y(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: Z */
    public static String[] m9711Z(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: a */
    public static long m9710a(long j, long j2, long j3) {
        long j4 = j + j2;
        if (((j ^ j4) & (j2 ^ j4)) < 0) {
            return Long.MAX_VALUE;
        }
        return j4;
    }

    /* renamed from: a0 */
    public static String m9709a0(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: b */
    public static long m9708b(long j, long j2, long j3) {
        long j4 = j - j2;
        if (((j ^ j4) & (j2 ^ j)) < 0) {
            return Long.MIN_VALUE;
        }
        return j4;
    }

    /* renamed from: b0 */
    public static int m9707b0(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: c0 */
    public static int m9705c0(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: d0 */
    public static long m9703d0(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: e0 */
    public static float m9701e0(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: f */
    public static long m9700f(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j / 1000;
    }

    /* renamed from: g */
    public static long m9699g(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j * 1000;
    }

    /* renamed from: j */
    public static long m9696j(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        double d = j;
        double d2 = f;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.round(d * d2);
    }

    /* renamed from: k */
    public static long m9695k(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        double d = j;
        double d2 = f;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.round(d / d2);
    }

    /* renamed from: l */
    public static long m9694l(int i, int i2) {
        return (i2 & 4294967295L) | ((i & 4294967295L) << 32);
    }

    /* renamed from: o */
    public static int m9691o(int i) {
        if (i != 8) {
            if (i != 16) {
                if (i != 24) {
                    return i != 32 ? 0 : 805306368;
                }
                return 536870912;
            }
            return 2;
        }
        return 3;
    }

    /* renamed from: p */
    public static boolean m9690p(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: q */
    public static boolean m9689q(int i) {
        return i == 536870912 || i == 805306368 || i == 4;
    }

    /* renamed from: r */
    public static int m9688r(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return HttpStatus.SC_NO_CONTENT;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                int i2 = f27164a;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    /* renamed from: s */
    public static int m9687s(int i, int i2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    if (i != 268435456) {
                        if (i == 536870912) {
                            return i2 * 3;
                        }
                        if (i != 805306368) {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                return i2 * 4;
            }
            return i2;
        }
        return i2 + i2;
    }

    /* renamed from: u */
    public static int m9685u(int i) {
        if (i == 2 || i == 4) {
            return 6005;
        }
        if (i != 10) {
            if (i != 7) {
                if (i != 8) {
                    switch (i) {
                        case 15:
                            return 6003;
                        case 16:
                        case 18:
                            return 6005;
                        case 17:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            return 6004;
                        default:
                            switch (i) {
                                case 24:
                                case 25:
                                case 26:
                                case 27:
                                case 28:
                                    return 6002;
                                default:
                                    return 6006;
                            }
                    }
                }
                return 6003;
            }
            return 6005;
        }
        return 6004;
    }

    /* renamed from: v */
    public static int m9684v(byte[] bArr, int i, int i2, int i3) {
        int i4 = -1;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = f27177n[(i4 >>> 24) ^ (bArr[i5] & DefaultClassResolver.NAME)] ^ (i4 << 8);
        }
        return i4;
    }

    /* renamed from: w */
    public static int m9683w(byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        while (i < i2) {
            i4 = f27178o[i4 ^ (bArr[i] & DefaultClassResolver.NAME)];
            i++;
        }
        return i4;
    }

    /* renamed from: A */
    public static byte[] m9736A(InputStream inputStream) {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    /* renamed from: B */
    public static Point m9735B(Context context) {
        Display$Mode mode;
        String m9732E;
        String str;
        DisplayManager displayManager;
        int i = f27164a;
        Display display = null;
        if (i >= 17 && (displayManager = (DisplayManager) context.getSystemService("display")) != null) {
            display = displayManager.getDisplay(0);
        }
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && m9680z(context)) {
            if (i < 28) {
                m9732E = m9732E("sys.display-size");
            } else {
                m9732E = m9732E("vendor.display-size");
            }
            if (!TextUtils.isEmpty(m9732E)) {
                try {
                    String[] split = m9732E.trim().split("x", -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                String valueOf = String.valueOf(m9732E);
                if (valueOf.length() != 0) {
                    str = "Invalid display size: ".concat(valueOf);
                } else {
                    str = new String("Invalid display size: ");
                }
                Log.e("Util", str);
            }
            if ("Sony".equals(f27166c) && f27167d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i2 = f27164a;
        if (i2 >= 23) {
            mode = display.getMode();
            point.x = mode.getPhysicalWidth();
            point.y = mode.getPhysicalHeight();
            return point;
        } else if (i2 >= 17) {
            display.getRealSize(point);
            return point;
        } else {
            display.getSize(point);
            return point;
        }
    }

    /* renamed from: E */
    public static String m9732E(String str) {
        String str2;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            if (str.length() != 0) {
                str2 = "Failed to read system property ".concat(str);
            } else {
                str2 = new String("Failed to read system property ");
            }
            C5720eb.m11832b("Util", str2, e);
            return null;
        }
    }

    /* renamed from: U */
    public static String m9716U(Locale locale) {
        String languageTag;
        if (f27164a >= 21) {
            languageTag = locale.toLanguageTag();
            return languageTag;
        }
        return locale.toString();
    }

    /* renamed from: V */
    public static String m9715V(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', SignatureVisitor.SUPER);
        if (!replace.isEmpty() && !replace.equals("und")) {
            str = replace;
        }
        String m11018a = h03.m11018a(str);
        int i = 0;
        String str2 = m11018a.split("-", 2)[0];
        if (f27174k == null) {
            f27174k = m9731F();
        }
        String str3 = f27174k.get(str2);
        if (str3 != null) {
            String valueOf = String.valueOf(m11018a.substring(str2.length()));
            if (valueOf.length() != 0) {
                m11018a = str3.concat(valueOf);
            } else {
                m11018a = new String(str3);
            }
            str2 = str3;
        }
        if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
            return m11018a;
        }
        while (true) {
            String[] strArr = f27176m;
            int length = strArr.length;
            if (i < 18) {
                if (m11018a.startsWith(strArr[i])) {
                    String valueOf2 = String.valueOf(strArr[i + 1]);
                    String valueOf3 = String.valueOf(m11018a.substring(strArr[i].length()));
                    if (valueOf3.length() != 0) {
                        return valueOf2.concat(valueOf3);
                    }
                    return new String(valueOf2);
                }
                i += 2;
            } else {
                return m11018a;
            }
        }
    }

    /* renamed from: h */
    public static long m9698h(long j, long j2, long j3) {
        if (j3 >= j2 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return j * (j2 / j3);
        }
        double d = j;
        double d2 = j2;
        double d3 = j3;
        Double.isNaN(d2);
        Double.isNaN(d3);
        Double.isNaN(d);
        return (long) (d * (d2 / d3));
    }

    /* renamed from: i */
    public static void m9697i(long[] jArr, long j, long j2) {
        int i = 0;
        if (j2 >= 1000000 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            while (i < jArr.length) {
                jArr[i] = jArr[i] / j3;
                i++;
            }
        } else if (j2 < 1000000 && 1000000 % j2 == 0) {
            long j4 = 1000000 / j2;
            while (i < jArr.length) {
                jArr[i] = jArr[i] * j4;
                i++;
            }
        } else {
            double d = j2;
            Double.isNaN(d);
            double d2 = 1000000.0d / d;
            while (i < jArr.length) {
                double d3 = jArr[i];
                Double.isNaN(d3);
                jArr[i] = (long) (d3 * d2);
                i++;
            }
        }
    }

    /* renamed from: m */
    public static String m9693m(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int length = objArr.length;
            if (i < length) {
                sb.append(objArr[i].getClass().getSimpleName());
                if (i < length - 1) {
                    sb.append(", ");
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: n */
    public static C5713e5 m9692n(int i, int i2, int i3) {
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12564n("audio/raw");
        c5639c5.m12610B(i2);
        c5639c5.m12609C(i3);
        c5639c5.m12608D(i);
        return c5639c5.m12603I();
    }

    /* renamed from: t */
    public static int m9686t(Context context) {
        int generateAudioSessionId;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        generateAudioSessionId = audioManager.generateAudioSessionId();
        return generateAudioSessionId;
    }

    /* renamed from: x */
    public static String m9682x(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return h03.m11017b(networkCountryIso);
            }
        }
        return h03.m11017b(Locale.getDefault().getCountry());
    }

    /* renamed from: F */
    public static HashMap<String, String> m9731F() {
        String[] iSOLanguages = Locale.getISOLanguages();
        int length = iSOLanguages.length;
        int length2 = f27175l.length;
        HashMap<String, String> hashMap = new HashMap<>(length + 86);
        int i = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f27175l;
            int length3 = strArr.length;
            if (i < 86) {
                hashMap.put(strArr[i], strArr[i + 1]);
                i += 2;
            } else {
                return hashMap;
            }
        }
    }

    /* renamed from: G */
    public static boolean m9730G(Uri uri) {
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && !"file".equals(scheme)) {
            return false;
        }
        return true;
    }

    /* renamed from: M */
    public static Handler m9724M(Handler.Callback callback) {
        Looper myLooper = Looper.myLooper();
        C5903ja.m10370e(myLooper);
        return new Handler(myLooper, null);
    }

    /* renamed from: O */
    public static boolean m9722O(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    /* renamed from: P */
    public static Looper m9721P() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return myLooper;
        }
        return Looper.getMainLooper();
    }

    /* renamed from: c */
    public static int m9706c(int[] iArr, int i, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(iArr, i);
        if (binarySearch < 0) {
            return -(binarySearch + 2);
        }
        do {
            binarySearch--;
            if (binarySearch < 0) {
                break;
            }
        } while (iArr[binarySearch] == i);
        return binarySearch;
    }

    /* renamed from: d */
    public static int m9704d(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (jArr[binarySearch] == j);
            i = binarySearch + 1;
        }
        if (z2) {
            return Math.max(0, i);
        }
        return i;
    }

    /* renamed from: e */
    public static int m9702e(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            return binarySearch ^ (-1);
        }
        do {
            binarySearch++;
            if (binarySearch >= jArr.length) {
                break;
            }
        } while (jArr[binarySearch] == j);
        if (!z) {
            return binarySearch;
        }
        return binarySearch - 1;
    }

    /* renamed from: y */
    public static String[] m9681y() {
        String[] strArr;
        LocaleList locales;
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (f27164a >= 24) {
            locales = configuration.getLocales();
            strArr = locales.toLanguageTags().split(",", -1);
        } else {
            strArr = new String[]{m9716U(configuration.locale)};
        }
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = m9715V(strArr[i]);
        }
        return strArr;
    }

    /* renamed from: z */
    public static boolean m9680z(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    /* renamed from: C */
    public static long m9734C(long j) {
        if (j == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return j + SystemClock.elapsedRealtime();
    }
}
