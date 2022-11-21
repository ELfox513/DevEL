package p189t7;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.Closeable;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
import okio.Buffer;
import okio.ByteString;
import p180s7.AbstractC6635f;
import p180s7.AbstractC6638h;
/* renamed from: t7.a */
/* loaded from: classes.dex */
public final class C6806a {

    /* renamed from: a */
    public static final byte[] f35511a;

    /* renamed from: c */
    public static final AbstractC6638h f35513c;

    /* renamed from: d */
    public static final AbstractC6635f f35514d;

    /* renamed from: r */
    public static final Method f35528r;

    /* renamed from: s */
    public static final Pattern f35529s;

    /* renamed from: b */
    public static final String[] f35512b = new String[0];

    /* renamed from: e */
    public static final ByteString f35515e = ByteString.decodeHex("efbbbf");

    /* renamed from: f */
    public static final ByteString f35516f = ByteString.decodeHex("feff");

    /* renamed from: g */
    public static final ByteString f35517g = ByteString.decodeHex("fffe");

    /* renamed from: h */
    public static final ByteString f35518h = ByteString.decodeHex("0000ffff");

    /* renamed from: i */
    public static final ByteString f35519i = ByteString.decodeHex("ffff0000");

    /* renamed from: j */
    public static final Charset f35520j = Charset.forName("UTF-8");

    /* renamed from: k */
    public static final Charset f35521k = Charset.forName("ISO-8859-1");

    /* renamed from: l */
    public static final Charset f35522l = Charset.forName("UTF-16BE");

    /* renamed from: m */
    public static final Charset f35523m = Charset.forName("UTF-16LE");

    /* renamed from: n */
    public static final Charset f35524n = Charset.forName("UTF-32BE");

    /* renamed from: o */
    public static final Charset f35525o = Charset.forName("UTF-32LE");

    /* renamed from: p */
    public static final TimeZone f35526p = TimeZone.getTimeZone("GMT");

    /* renamed from: q */
    public static final Comparator<String> f35527q = new C6807a();

    /* renamed from: t7.a$a */
    /* loaded from: classes.dex */
    public class C6807a implements Comparator<String> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    static {
        byte[] bArr = new byte[0];
        f35511a = bArr;
        Method method = null;
        f35513c = AbstractC6638h.m3723d(null, bArr);
        f35514d = AbstractC6635f.m3726a(null, bArr);
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        f35528r = method;
        f35529s = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    /* renamed from: b */
    public static void m3377b(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: d */
    public static boolean m3375d(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static int m3374e(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    return -1;
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: f */
    public static boolean m3373f(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i3;
        while (i < i2) {
            if (i4 == bArr.length) {
                return false;
            }
            if (i4 != i3) {
                if (str.charAt(i) != '.') {
                    return false;
                }
                i++;
            }
            int i5 = i;
            int i6 = 0;
            while (i5 < i2) {
                char charAt = str.charAt(i5);
                if (charAt < '0' || charAt > '9') {
                    break;
                } else if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + charAt) - 48) > 255) {
                    return false;
                } else {
                    i5++;
                }
            }
            if (i5 - i == 0) {
                return false;
            }
            bArr[i4] = (byte) i6;
            i4++;
            i = i5;
        }
        if (i4 != i3 + 4) {
            return false;
        }
        return true;
    }

    /* renamed from: h */
    public static int m3371h(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: i */
    public static int m3370i(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: j */
    public static String m3369j(byte[] bArr) {
        int i = 0;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            int i5 = i3;
            while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            if (i6 > i4 && i6 >= 4) {
                i2 = i3;
                i4 = i6;
            }
            i3 = i5 + 2;
        }
        Buffer buffer = new Buffer();
        while (i < bArr.length) {
            if (i == i2) {
                buffer.writeByte(58);
                i += i4;
                if (i == 16) {
                    buffer.writeByte(58);
                }
            } else {
                if (i > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong(((bArr[i] & DefaultClassResolver.NAME) << 8) | (bArr[i + 1] & DefaultClassResolver.NAME));
                i += 2;
            }
        }
        return buffer.readUtf8();
    }

    /* renamed from: k */
    public static int m3368k(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: l */
    public static int m3367l(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            char charAt = str.charAt(i3);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i3 + 1;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static String m3378a(String str) {
        InetAddress m3372g;
        if (str.contains(":")) {
            if (str.startsWith("[") && str.endsWith("]")) {
                m3372g = m3372g(str, 1, str.length() - 1);
            } else {
                m3372g = m3372g(str, 0, str.length());
            }
            if (m3372g == null) {
                return null;
            }
            byte[] address = m3372g.getAddress();
            if (address.length == 16) {
                return m3369j(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (m3375d(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* renamed from: c */
    public static void m3376c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0079, code lost:
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.InetAddress m3372g(java.lang.String r11, int r12, int r13) {
        /*
            r0 = 16
            byte[] r1 = new byte[r0]
            r2 = -1
            r3 = 0
            r4 = 0
            r5 = -1
            r6 = -1
        L9:
            r7 = 0
            if (r12 >= r13) goto L7a
            if (r4 != r0) goto Lf
            return r7
        Lf:
            int r8 = r12 + 2
            if (r8 > r13) goto L27
            java.lang.String r9 = "::"
            r10 = 2
            boolean r9 = r11.regionMatches(r12, r9, r3, r10)
            if (r9 == 0) goto L27
            if (r5 == r2) goto L1f
            return r7
        L1f:
            int r4 = r4 + 2
            r5 = r4
            if (r8 != r13) goto L25
            goto L7a
        L25:
            r6 = r8
            goto L4b
        L27:
            if (r4 == 0) goto L4a
            java.lang.String r8 = ":"
            r9 = 1
            boolean r8 = r11.regionMatches(r12, r8, r3, r9)
            if (r8 == 0) goto L35
            int r12 = r12 + 1
            goto L4a
        L35:
            java.lang.String r8 = "."
            boolean r12 = r11.regionMatches(r12, r8, r3, r9)
            if (r12 == 0) goto L49
            int r12 = r4 + (-2)
            boolean r11 = m3373f(r11, r6, r13, r1, r12)
            if (r11 != 0) goto L46
            return r7
        L46:
            int r4 = r4 + 2
            goto L7a
        L49:
            return r7
        L4a:
            r6 = r12
        L4b:
            r12 = r6
            r8 = 0
        L4d:
            if (r12 >= r13) goto L60
            char r9 = r11.charAt(r12)
            int r9 = m3374e(r9)
            if (r9 != r2) goto L5a
            goto L60
        L5a:
            int r8 = r8 << 4
            int r8 = r8 + r9
            int r12 = r12 + 1
            goto L4d
        L60:
            int r9 = r12 - r6
            if (r9 == 0) goto L79
            r10 = 4
            if (r9 <= r10) goto L68
            goto L79
        L68:
            int r7 = r4 + 1
            int r9 = r8 >>> 8
            r9 = r9 & 255(0xff, float:3.57E-43)
            byte r9 = (byte) r9
            r1[r4] = r9
            int r4 = r7 + 1
            r8 = r8 & 255(0xff, float:3.57E-43)
            byte r8 = (byte) r8
            r1[r7] = r8
            goto L9
        L79:
            return r7
        L7a:
            if (r4 == r0) goto L8b
            if (r5 != r2) goto L7f
            return r7
        L7f:
            int r11 = r4 - r5
            int r12 = 16 - r11
            java.lang.System.arraycopy(r1, r5, r1, r12, r11)
            int r0 = r0 - r4
            int r0 = r0 + r5
            java.util.Arrays.fill(r1, r5, r0, r3)
        L8b:
            java.net.InetAddress r11 = java.net.InetAddress.getByAddress(r1)     // Catch: java.net.UnknownHostException -> L90
            return r11
        L90:
            java.lang.AssertionError r11 = new java.lang.AssertionError
            r11.<init>()
            goto L97
        L96:
            throw r11
        L97:
            goto L96
        */
        throw new UnsupportedOperationException("Method not decompiled: p189t7.C6806a.m3372g(java.lang.String, int, int):java.net.InetAddress");
    }
}
