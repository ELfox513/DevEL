package p180s7;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.pool.TypePool;
import okio.Buffer;
import p189t7.C6806a;
/* renamed from: s7.c */
/* loaded from: classes.dex */
public final class C6631c {

    /* renamed from: j */
    public static final char[] f35214j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public final String f35215a;

    /* renamed from: b */
    public final String f35216b;

    /* renamed from: c */
    public final String f35217c;

    /* renamed from: d */
    public final String f35218d;

    /* renamed from: e */
    public final int f35219e;

    /* renamed from: f */
    public final List<String> f35220f;

    /* renamed from: g */
    public final List<String> f35221g;

    /* renamed from: h */
    public final String f35222h;

    /* renamed from: i */
    public final String f35223i;

    /* renamed from: s7.c$a */
    /* loaded from: classes.dex */
    public static final class C6632a {

        /* renamed from: a */
        public String f35224a;

        /* renamed from: d */
        public String f35227d;

        /* renamed from: f */
        public final List<String> f35229f;

        /* renamed from: g */
        public List<String> f35230g;

        /* renamed from: h */
        public String f35231h;

        /* renamed from: b */
        public String f35225b = "";

        /* renamed from: c */
        public String f35226c = "";

        /* renamed from: e */
        public int f35228e = -1;

        /* renamed from: b */
        public static String m3743b(String str, int i, int i2) {
            return C6806a.m3378a(C6631c.m3750p(str, i, i2, false));
        }

        /* renamed from: i */
        public static int m3736i(String str, int i, int i2) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(C6631c.m3765a(str, i, i2, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        /* renamed from: q */
        public static int m3728q(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        /* renamed from: c */
        public int m3742c() {
            int i = this.f35228e;
            return i != -1 ? i : C6631c.m3762d(this.f35224a);
        }

        /* renamed from: f */
        public final boolean m3739f(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: l */
        public static int m3733l(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != ':') {
                    if (charAt == '[') {
                        do {
                            i++;
                            if (i < i2) {
                            }
                        } while (str.charAt(i) != ']');
                    }
                    i++;
                } else {
                    return i;
                }
            }
            return i2;
        }

        /* renamed from: p */
        public static int m3729p(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char charAt = str.charAt(i);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        /* renamed from: a */
        public C6631c m3744a() {
            if (this.f35224a != null) {
                if (this.f35227d != null) {
                    return new C6631c(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        /* renamed from: d */
        public C6632a m3741d(String str) {
            List<String> list;
            if (str != null) {
                list = C6631c.m3745u(C6631c.m3764b(str, " \"'<>#", true, false, true, true));
            } else {
                list = null;
            }
            this.f35230g = list;
            return this;
        }

        /* renamed from: e */
        public C6632a m3740e(String str) {
            String str2;
            if (str != null) {
                str2 = C6631c.m3764b(str, "", false, false, false, false);
            } else {
                str2 = null;
            }
            this.f35231h = str2;
            return this;
        }

        /* renamed from: g */
        public final boolean m3738g(String str) {
            if (!str.equals("..") && !str.equalsIgnoreCase("%2e.") && !str.equalsIgnoreCase(".%2e") && !str.equalsIgnoreCase("%2e%2e")) {
                return false;
            }
            return true;
        }

        /* renamed from: h */
        public C6632a m3737h(C6631c c6631c, String str) {
            int m3729p;
            int m3370i;
            char c;
            int i;
            int m3368k = C6806a.m3368k(str, 0, str.length());
            int m3367l = C6806a.m3367l(str, m3368k, str.length());
            if (m3729p(str, m3368k, m3367l) != -1) {
                if (str.regionMatches(true, m3368k, "https:", 0, 6)) {
                    this.f35224a = "https";
                    m3368k += 6;
                } else if (str.regionMatches(true, m3368k, "http:", 0, 5)) {
                    this.f35224a = "http";
                    m3368k += 5;
                } else {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, m3729p) + "'");
                }
            } else if (c6631c != null) {
                this.f35224a = c6631c.f35215a;
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int m3728q = m3728q(str, m3368k, m3367l);
            char c2 = '?';
            char c3 = '#';
            if (m3728q < 2 && c6631c != null && c6631c.f35215a.equals(this.f35224a)) {
                this.f35225b = c6631c.m3756j();
                this.f35226c = c6631c.m3760f();
                this.f35227d = c6631c.f35218d;
                this.f35228e = c6631c.f35219e;
                this.f35229f.clear();
                this.f35229f.addAll(c6631c.m3758h());
                if (m3368k == m3367l || str.charAt(m3368k) == '#') {
                    m3741d(c6631c.m3757i());
                }
            } else {
                int i2 = m3368k + m3728q;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    m3370i = C6806a.m3370i(str, i2, m3367l, "@/\\?#");
                    if (m3370i != m3367l) {
                        c = str.charAt(m3370i);
                    } else {
                        c = 65535;
                    }
                    if (c == 65535 || c == c3 || c == '/' || c == '\\' || c == c2) {
                        break;
                    }
                    if (c == '@') {
                        if (!z) {
                            int m3371h = C6806a.m3371h(str, i2, m3370i, ':');
                            i = m3370i;
                            String m3765a = C6631c.m3765a(str, i2, m3371h, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z2) {
                                m3765a = this.f35225b + "%40" + m3765a;
                            }
                            this.f35225b = m3765a;
                            if (m3371h != i) {
                                this.f35226c = C6631c.m3765a(str, m3371h + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            }
                            z2 = true;
                        } else {
                            i = m3370i;
                            this.f35226c += "%40" + C6631c.m3765a(str, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i2 = i + 1;
                    }
                    c2 = '?';
                    c3 = '#';
                }
                int m3733l = m3733l(str, i2, m3370i);
                int i3 = m3733l + 1;
                if (i3 < m3370i) {
                    this.f35227d = m3743b(str, i2, m3733l);
                    int m3736i = m3736i(str, i3, m3370i);
                    this.f35228e = m3736i;
                    if (m3736i == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i3, m3370i) + '\"');
                    }
                } else {
                    this.f35227d = m3743b(str, i2, m3733l);
                    this.f35228e = C6631c.m3762d(this.f35224a);
                }
                if (this.f35227d != null) {
                    m3368k = m3370i;
                } else {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i2, m3733l) + '\"');
                }
            }
            int m3370i2 = C6806a.m3370i(str, m3368k, m3367l, "?#");
            m3730o(str, m3368k, m3370i2);
            if (m3370i2 < m3367l && str.charAt(m3370i2) == '?') {
                int m3371h2 = C6806a.m3371h(str, m3370i2, m3367l, '#');
                this.f35230g = C6631c.m3745u(C6631c.m3765a(str, m3370i2 + 1, m3371h2, " \"'<>#", true, false, true, true, null));
                m3370i2 = m3371h2;
            }
            if (m3370i2 < m3367l && str.charAt(m3370i2) == '#') {
                this.f35231h = C6631c.m3765a(str, 1 + m3370i2, m3367l, "", true, false, false, false, null);
            }
            return this;
        }

        /* renamed from: j */
        public C6632a m3735j(String str) {
            if (str != null) {
                this.f35226c = C6631c.m3764b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("password == null");
        }

        /* renamed from: k */
        public final void m3734k() {
            List<String> list = this.f35229f;
            if (list.remove(list.size() - 1).isEmpty() && !this.f35229f.isEmpty()) {
                List<String> list2 = this.f35229f;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.f35229f.add("");
        }

        /* renamed from: m */
        public final void m3732m(String str, int i, int i2, boolean z, boolean z2) {
            String m3765a = C6631c.m3765a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (m3739f(m3765a)) {
                return;
            }
            if (m3738g(m3765a)) {
                m3734k();
                return;
            }
            List<String> list = this.f35229f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f35229f;
                list2.set(list2.size() - 1, m3765a);
            } else {
                this.f35229f.add(m3765a);
            }
            if (z) {
                this.f35229f.add("");
            }
        }

        /* renamed from: n */
        public C6632a m3731n(String str) {
            List<String> list;
            if (str != null) {
                list = C6631c.m3745u(C6631c.m3764b(str, " \"'<>#", false, false, true, true));
            } else {
                list = null;
            }
            this.f35230g = list;
            return this;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0044 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0041 -> B:11:0x0029). Please submit an issue!!! */
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m3730o(java.lang.String r11, int r12, int r13) {
            /*
                r10 = this;
                if (r12 != r13) goto L3
                return
            L3:
                char r0 = r11.charAt(r12)
                r1 = 47
                java.lang.String r2 = ""
                r3 = 1
                if (r0 == r1) goto L1e
                r1 = 92
                if (r0 != r1) goto L13
                goto L1e
            L13:
                java.util.List<java.lang.String> r0 = r10.f35229f
                int r1 = r0.size()
                int r1 = r1 - r3
                r0.set(r1, r2)
                goto L29
            L1e:
                java.util.List<java.lang.String> r0 = r10.f35229f
                r0.clear()
                java.util.List<java.lang.String> r0 = r10.f35229f
                r0.add(r2)
                goto L41
            L29:
                r6 = r12
                if (r6 >= r13) goto L44
                java.lang.String r12 = "/\\"
                int r12 = p189t7.C6806a.m3370i(r11, r6, r13, r12)
                if (r12 >= r13) goto L36
                r0 = 1
                goto L37
            L36:
                r0 = 0
            L37:
                r9 = 1
                r4 = r10
                r5 = r11
                r7 = r12
                r8 = r0
                r4.m3732m(r5, r6, r7, r8, r9)
                if (r0 == 0) goto L29
            L41:
                int r12 = r12 + 1
                goto L29
            L44:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p180s7.C6631c.C6632a.m3730o(java.lang.String, int, int):void");
        }

        /* renamed from: r */
        public C6632a m3727r(String str) {
            if (str != null) {
                this.f35225b = C6631c.m3764b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("username == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f35224a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f35225b.isEmpty() || !this.f35226c.isEmpty()) {
                sb.append(this.f35225b);
                if (!this.f35226c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f35226c);
                }
                sb.append('@');
            }
            String str2 = this.f35227d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
                    sb.append(this.f35227d);
                    sb.append(']');
                } else {
                    sb.append(this.f35227d);
                }
            }
            if (this.f35228e != -1 || this.f35224a != null) {
                int m3742c = m3742c();
                String str3 = this.f35224a;
                if (str3 == null || m3742c != C6631c.m3762d(str3)) {
                    sb.append(':');
                    sb.append(m3742c);
                }
            }
            C6631c.m3751o(sb, this.f35229f);
            if (this.f35230g != null) {
                sb.append('?');
                C6631c.m3754l(sb, this.f35230g);
            }
            if (this.f35231h != null) {
                sb.append('#');
                sb.append(this.f35231h);
            }
            return sb.toString();
        }

        public C6632a() {
            ArrayList arrayList = new ArrayList();
            this.f35229f = arrayList;
            arrayList.add("");
        }
    }

    /* renamed from: a */
    public static String m3765a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || !z4)) {
                if (str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || (z && (!z2 || m3746t(str, i3, i2)))) && (codePointAt != 43 || !z3))) {
                    i3 += Character.charCount(codePointAt);
                }
            }
            Buffer buffer = new Buffer();
            buffer.writeUtf8(str, i, i3);
            m3763c(buffer, str, i3, i2, str2, z, z2, z3, z4, charset);
            return buffer.readUtf8();
        }
        return str.substring(i, i2);
    }

    /* renamed from: c */
    public static void m3763c(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z3) {
                    buffer.writeUtf8(z ? "+" : "%2B");
                } else if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || !z4) && str2.indexOf(codePointAt) == -1 && (codePointAt != 37 || (z && (!z2 || m3746t(str, i, i2)))))) {
                    buffer.writeUtf8CodePoint(codePointAt);
                } else {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    if (charset != null && !charset.equals(C6806a.f35520j)) {
                        buffer2.writeString(str, i, Character.charCount(codePointAt) + i, charset);
                    } else {
                        buffer2.writeUtf8CodePoint(codePointAt);
                    }
                    while (!buffer2.exhausted()) {
                        int readByte = buffer2.readByte() & DefaultClassResolver.NAME;
                        buffer.writeByte(37);
                        char[] cArr = f35214j;
                        buffer.writeByte((int) cArr[(readByte >> 4) & 15]);
                        buffer.writeByte((int) cArr[readByte & 15]);
                    }
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: k */
    public static C6631c m3755k(String str) {
        return new C6632a().m3737h(null, str).m3744a();
    }

    /* renamed from: n */
    public static C6631c m3752n(String str) {
        try {
            return m3755k(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* renamed from: p */
    public static String m3750p(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                m3747s(buffer, str, i3, i2, z);
                return buffer.readUtf8();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: q */
    public static String m3749q(String str, boolean z) {
        return m3750p(str, 0, str.length(), z);
    }

    public boolean equals(Object obj) {
        return (obj instanceof C6631c) && ((C6631c) obj).f35223i.equals(this.f35223i);
    }

    public int hashCode() {
        return this.f35223i.hashCode();
    }

    public String toString() {
        return this.f35223i;
    }

    /* renamed from: d */
    public static int m3762d(String str) {
        if (str.equals("http")) {
            return 80;
        }
        if (str.equals("https")) {
            return 443;
        }
        return -1;
    }

    /* renamed from: s */
    public static void m3747s(Buffer buffer, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 37 && (i3 = i + 2) < i2) {
                int m3374e = C6806a.m3374e(str.charAt(i + 1));
                int m3374e2 = C6806a.m3374e(str.charAt(i3));
                if (m3374e != -1 && m3374e2 != -1) {
                    buffer.writeByte((m3374e << 4) + m3374e2);
                    i = i3;
                }
                buffer.writeUtf8CodePoint(codePointAt);
            } else {
                if (codePointAt == 43 && z) {
                    buffer.writeByte(32);
                }
                buffer.writeUtf8CodePoint(codePointAt);
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: t */
    public static boolean m3746t(String str, int i, int i2) {
        int i3 = i + 2;
        if (i3 < i2 && str.charAt(i) == '%' && C6806a.m3374e(str.charAt(i + 1)) != -1 && C6806a.m3374e(str.charAt(i3)) != -1) {
            return true;
        }
        return false;
    }

    /* renamed from: u */
    public static List<String> m3745u(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 != -1 && indexOf2 <= indexOf) {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            } else {
                arrayList.add(str.substring(i, indexOf));
                arrayList.add(null);
            }
            i = indexOf + 1;
        }
        return arrayList;
    }

    /* renamed from: e */
    public String m3761e() {
        if (this.f35222h == null) {
            return null;
        }
        return this.f35223i.substring(this.f35223i.indexOf(35) + 1);
    }

    /* renamed from: f */
    public String m3760f() {
        if (this.f35217c.isEmpty()) {
            return "";
        }
        int indexOf = this.f35223i.indexOf(64);
        return this.f35223i.substring(this.f35223i.indexOf(58, this.f35215a.length() + 3) + 1, indexOf);
    }

    /* renamed from: g */
    public String m3759g() {
        int indexOf = this.f35223i.indexOf(47, this.f35215a.length() + 3);
        String str = this.f35223i;
        return this.f35223i.substring(indexOf, C6806a.m3370i(str, indexOf, str.length(), "?#"));
    }

    /* renamed from: h */
    public List<String> m3758h() {
        int indexOf = this.f35223i.indexOf(47, this.f35215a.length() + 3);
        String str = this.f35223i;
        int m3370i = C6806a.m3370i(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m3370i) {
            int i = indexOf + 1;
            int m3371h = C6806a.m3371h(this.f35223i, i, m3370i, '/');
            arrayList.add(this.f35223i.substring(i, m3371h));
            indexOf = m3371h;
        }
        return arrayList;
    }

    /* renamed from: i */
    public String m3757i() {
        if (this.f35221g == null) {
            return null;
        }
        int indexOf = this.f35223i.indexOf(63) + 1;
        String str = this.f35223i;
        return this.f35223i.substring(indexOf, C6806a.m3371h(str, indexOf, str.length(), '#'));
    }

    /* renamed from: j */
    public String m3756j() {
        if (this.f35216b.isEmpty()) {
            return "";
        }
        int length = this.f35215a.length() + 3;
        String str = this.f35223i;
        return this.f35223i.substring(length, C6806a.m3370i(str, length, str.length(), ":@"));
    }

    /* renamed from: m */
    public C6632a m3753m() {
        int i;
        C6632a c6632a = new C6632a();
        c6632a.f35224a = this.f35215a;
        c6632a.f35225b = m3756j();
        c6632a.f35226c = m3760f();
        c6632a.f35227d = this.f35218d;
        if (this.f35219e != m3762d(this.f35215a)) {
            i = this.f35219e;
        } else {
            i = -1;
        }
        c6632a.f35228e = i;
        c6632a.f35229f.clear();
        c6632a.f35229f.addAll(m3758h());
        c6632a.m3741d(m3757i());
        c6632a.f35231h = m3761e();
        return c6632a;
    }

    public C6631c(C6632a c6632a) {
        List<String> list;
        this.f35215a = c6632a.f35224a;
        this.f35216b = m3749q(c6632a.f35225b, false);
        this.f35217c = m3749q(c6632a.f35226c, false);
        this.f35218d = c6632a.f35227d;
        this.f35219e = c6632a.m3742c();
        this.f35220f = m3748r(c6632a.f35229f, false);
        List<String> list2 = c6632a.f35230g;
        if (list2 != null) {
            list = m3748r(list2, true);
        } else {
            list = null;
        }
        this.f35221g = list;
        String str = c6632a.f35231h;
        this.f35222h = str != null ? m3749q(str, false) : null;
        this.f35223i = c6632a.toString();
    }

    /* renamed from: b */
    public static String m3764b(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m3765a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: l */
    public static void m3754l(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append(SignatureVisitor.INSTANCEOF);
                sb.append(str2);
            }
        }
    }

    /* renamed from: o */
    public static void m3751o(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: r */
    public final List<String> m3748r(List<String> list, boolean z) {
        String str;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str2 = list.get(i);
            if (str2 != null) {
                str = m3749q(str2, z);
            } else {
                str = null;
            }
            arrayList.add(str);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
