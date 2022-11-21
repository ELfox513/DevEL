package p168r4;

import android.os.Build;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
/* renamed from: r4.ll */
/* loaded from: classes2.dex */
public final class C5988ll {

    /* renamed from: a */
    public static final int f27242a;

    /* renamed from: b */
    public static final String f27243b;

    /* renamed from: c */
    public static final String f27244c;

    /* renamed from: d */
    public static final String f27245d;

    /* renamed from: e */
    public static final String f27246e;

    /* renamed from: f */
    public static final Pattern f27247f;

    /* renamed from: g */
    public static final Pattern f27248g;

    /* renamed from: h */
    public static final Pattern f27249h;

    /* renamed from: a */
    public static boolean m9653a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static ExecutorService m9652b(String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactoryC5951kl("Loader:ExtractorMediaPeriod"));
    }

    /* renamed from: c */
    public static void m9651c(InterfaceC5766fk interfaceC5766fk) {
        if (interfaceC5766fk != null) {
            try {
                interfaceC5766fk.mo4613e();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: d */
    public static byte[] m9650d(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    /* renamed from: e */
    public static int m9649e(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: f */
    public static int m9648f(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: g */
    public static float m9647g(float f, float f2, float f3) {
        return Math.max(0.1f, Math.min(f, 8.0f));
    }

    /* renamed from: o */
    public static int m9639o(int i) {
        if (i != 8) {
            if (i != 16) {
                if (i != 24) {
                    return i != 32 ? 0 : 1073741824;
                }
                return Integer.MIN_VALUE;
            }
            return 2;
        }
        return 3;
    }

    /* renamed from: p */
    public static int m9638p(int i, int i2) {
        if (i != Integer.MIN_VALUE) {
            if (i != 1073741824) {
                if (i != 2) {
                    if (i == 3) {
                        return i2;
                    }
                    throw new IllegalArgumentException();
                }
                return i2 + i2;
            }
            return i2 * 4;
        }
        return i2 * 3;
    }

    /* renamed from: q */
    public static int m9637q(int i) {
        return i != 1 ? 13107200 : 3538944;
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') {
            i = 26;
        }
        f27242a = i;
        String str = Build.DEVICE;
        f27243b = str;
        String str2 = Build.MANUFACTURER;
        f27244c = str2;
        String str3 = Build.MODEL;
        f27245d = str3;
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i);
        f27246e = sb.toString();
        f27247f = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f27248g = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f27249h = Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    /* renamed from: j */
    public static long m9644j(long j, long j2, long j3) {
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

    /* renamed from: k */
    public static void m9643k(long[] jArr, long j, long j2) {
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
    public static byte[] m9641m(String str) {
        byte[] bArr = new byte[38];
        for (int i = 0; i < 38; i++) {
            int i2 = i + i;
            bArr[i] = (byte) ((Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2), 16) << 4) + Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2 + 1), 16));
        }
        return bArr;
    }

    /* renamed from: n */
    public static String m9640n(Object[] objArr) {
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

    /* renamed from: h */
    public static int m9646h(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: i */
    public static int m9645i(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            i = binarySearch ^ (-1);
        } else {
            do {
                binarySearch++;
                if (binarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[binarySearch] == j);
            if (z) {
                i = binarySearch - 1;
            } else {
                i = binarySearch;
            }
        }
        if (z2) {
            return Math.min(jArr.length - 1, i);
        }
        return i;
    }

    /* renamed from: l */
    public static int m9642l(String str) {
        boolean z;
        int length = str.length();
        if (length <= 4) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6140a(z);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 8) | str.charAt(i2);
        }
        return i;
    }
}
