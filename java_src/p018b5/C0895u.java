package p018b5;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: b5.u */
/* loaded from: classes2.dex */
public final class C0895u implements Iterable<InterfaceC0827q>, InterfaceC0827q {

    /* renamed from: a */
    public final String f2324a;

    public C0895u(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.f2324a = str;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        return new C0895u(this.f2324a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: g */
    public final Boolean mo25084g() {
        return Boolean.valueOf(!this.f2324a.isEmpty());
    }

    public final int hashCode() {
        return this.f2324a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<InterfaceC0827q> iterator() {
        return new C0878t(this);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        return this.f2324a;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return new C0861s(this);
    }

    public final String toString() {
        String str = this.f2324a;
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0895u)) {
            return false;
        }
        return this.f2324a.equals(((C0895u) obj).f2324a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: f */
    public final Double mo25085f() {
        if (this.f2324a.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(this.f2324a);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        String str2;
        Object obj;
        String str3;
        String str4;
        char c;
        int i;
        C0895u c0895u;
        int i2;
        double doubleValue;
        InterfaceC0827q c0691i;
        double doubleValue2;
        double m25053a;
        Matcher matcher;
        double d;
        double min;
        double length;
        double min2;
        C0895u c0895u2;
        long j;
        int i3;
        int i4;
        C0917v4 c0917v42;
        int i5;
        int length2;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || "search".equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str)) {
            str2 = "toLocaleUpperCase";
        } else {
            str2 = "toLocaleUpperCase";
            if (!str2.equals(str) && !"trim".equals(str)) {
                throw new IllegalArgumentException(String.format("%s is not a String function", str));
            }
        }
        switch (str.hashCode()) {
            case -1789698943:
                obj = "charAt";
                str3 = "hasOwnProperty";
                if (str.equals(str3)) {
                    str4 = "toString";
                    c = 2;
                    break;
                }
                c = 65535;
                str4 = "toString";
                break;
            case -1776922004:
                obj = "charAt";
                if (str.equals("toString")) {
                    c = 14;
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -1464939364:
                obj = "charAt";
                if (str.equals("toLocaleLowerCase")) {
                    c = '\f';
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -1361633751:
                obj = "charAt";
                if (str.equals(obj)) {
                    str3 = "hasOwnProperty";
                    c = 0;
                    str4 = "toString";
                    break;
                }
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -1354795244:
                if (str.equals("concat")) {
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    c = 1;
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    c = '\r';
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -906336856:
                if (str.equals("search")) {
                    c = 7;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -726908483:
                if (str.equals(str2)) {
                    c = 11;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c = 4;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case -399551817:
                if (str.equals("toUpperCase")) {
                    c = 15;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case 3568674:
                if (str.equals("trim")) {
                    c = 16;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case 103668165:
                if (str.equals("match")) {
                    c = 5;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case 109526418:
                if (str.equals("slice")) {
                    c = '\b';
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case 109648666:
                if (str.equals("split")) {
                    c = '\t';
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case 530542161:
                if (str.equals("substring")) {
                    c = '\n';
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case 1094496948:
                if (str.equals("replace")) {
                    c = 6;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            case 1943291465:
                if (str.equals("indexOf")) {
                    c = 3;
                    obj = "charAt";
                    str3 = "hasOwnProperty";
                    str4 = "toString";
                    break;
                }
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
            default:
                obj = "charAt";
                str3 = "hasOwnProperty";
                c = 65535;
                str4 = "toString";
                break;
        }
        String str5 = "";
        String str6 = "undefined";
        String str7 = obj;
        switch (c) {
            case 0:
                C0935w5.m25044j(str7, 1, list);
                if (list.size() > 0) {
                    i = (int) C0935w5.m25053a(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue());
                } else {
                    i = 0;
                }
                String str8 = this.f2324a;
                if (i >= 0 && i < str8.length()) {
                    return new C0895u(String.valueOf(str8.charAt(i)));
                }
                return InterfaceC0827q.f2161l;
            case 1:
                c0895u = this;
                if (list.size() != 0) {
                    StringBuilder sb = new StringBuilder(c0895u.f2324a);
                    for (int i6 = 0; i6 < list.size(); i6++) {
                        sb.append(c0917v4.m25072b(list.get(i6)).mo25083j());
                    }
                    return new C0895u(sb.toString());
                }
                return c0895u;
            case 2:
                C0935w5.m25046h(str3, 1, list);
                String str9 = this.f2324a;
                InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
                if ("length".equals(m25072b.mo25083j())) {
                    return InterfaceC0827q.f2159i;
                }
                double doubleValue3 = m25072b.mo25085f().doubleValue();
                if (doubleValue3 == Math.floor(doubleValue3) && (i2 = (int) doubleValue3) >= 0 && i2 < str9.length()) {
                    return InterfaceC0827q.f2159i;
                }
                return InterfaceC0827q.f2160j;
            case 3:
                C0935w5.m25044j("indexOf", 2, list);
                String str10 = this.f2324a;
                if (list.size() > 0) {
                    str6 = c0917v4.m25072b(list.get(0)).mo25083j();
                }
                String str11 = str6;
                if (list.size() < 2) {
                    doubleValue = 0.0d;
                } else {
                    doubleValue = c0917v4.m25072b(list.get(1)).mo25085f().doubleValue();
                }
                c0691i = new C0691i(Double.valueOf(str10.indexOf(str11, (int) C0935w5.m25053a(doubleValue))));
                return c0691i;
            case 4:
                C0935w5.m25044j("lastIndexOf", 2, list);
                String str12 = this.f2324a;
                if (list.size() > 0) {
                    str6 = c0917v4.m25072b(list.get(0)).mo25083j();
                }
                String str13 = str6;
                if (list.size() < 2) {
                    doubleValue2 = Double.NaN;
                } else {
                    doubleValue2 = c0917v4.m25072b(list.get(1)).mo25085f().doubleValue();
                }
                if (Double.isNaN(doubleValue2)) {
                    m25053a = Double.POSITIVE_INFINITY;
                } else {
                    m25053a = C0935w5.m25053a(doubleValue2);
                }
                return new C0691i(Double.valueOf(str12.lastIndexOf(str13, (int) m25053a)));
            case 5:
                C0935w5.m25044j("match", 1, list);
                String str14 = this.f2324a;
                if (list.size() > 0) {
                    str5 = c0917v4.m25072b(list.get(0)).mo25083j();
                }
                Matcher matcher2 = Pattern.compile(str5).matcher(str14);
                if (matcher2.find()) {
                    return new C0640f(Arrays.asList(new C0895u(matcher2.group())));
                }
                return InterfaceC0827q.f2155e;
            case 6:
                c0895u = this;
                C0935w5.m25044j("replace", 2, list);
                InterfaceC0827q interfaceC0827q = InterfaceC0827q.f2154c;
                if (list.size() > 0) {
                    str6 = c0917v4.m25072b(list.get(0)).mo25083j();
                    if (list.size() > 1) {
                        interfaceC0827q = c0917v4.m25072b(list.get(1));
                    }
                }
                String str15 = str6;
                String str16 = c0895u.f2324a;
                int indexOf = str16.indexOf(str15);
                if (indexOf >= 0) {
                    if (interfaceC0827q instanceof AbstractC0708j) {
                        interfaceC0827q = ((AbstractC0708j) interfaceC0827q).mo24853a(c0917v4, Arrays.asList(new C0895u(str15), new C0691i(Double.valueOf(indexOf)), c0895u));
                    }
                    String substring = str16.substring(0, indexOf);
                    String mo25083j = interfaceC0827q.mo25083j();
                    String substring2 = str16.substring(indexOf + str15.length());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(substring).length() + String.valueOf(mo25083j).length() + String.valueOf(substring2).length());
                    sb2.append(substring);
                    sb2.append(mo25083j);
                    sb2.append(substring2);
                    c0691i = new C0895u(sb2.toString());
                    return c0691i;
                }
                return c0895u;
            case 7:
                C0935w5.m25044j("search", 1, list);
                if (list.size() > 0) {
                    str6 = c0917v4.m25072b(list.get(0)).mo25083j();
                }
                if (Pattern.compile(str6).matcher(this.f2324a).find()) {
                    return new C0691i(Double.valueOf(matcher.start()));
                }
                return new C0691i(Double.valueOf(-1.0d));
            case '\b':
                C0935w5.m25044j("slice", 2, list);
                String str17 = this.f2324a;
                if (list.size() > 0) {
                    d = c0917v4.m25072b(list.get(0)).mo25085f().doubleValue();
                } else {
                    d = 0.0d;
                }
                double m25053a2 = C0935w5.m25053a(d);
                if (m25053a2 < 0.0d) {
                    double length3 = str17.length();
                    Double.isNaN(length3);
                    min = Math.max(length3 + m25053a2, 0.0d);
                } else {
                    min = Math.min(m25053a2, str17.length());
                }
                int i7 = (int) min;
                if (list.size() > 1) {
                    length = c0917v4.m25072b(list.get(1)).mo25085f().doubleValue();
                } else {
                    length = str17.length();
                }
                double m25053a3 = C0935w5.m25053a(length);
                if (m25053a3 < 0.0d) {
                    double length4 = str17.length();
                    Double.isNaN(length4);
                    min2 = Math.max(length4 + m25053a3, 0.0d);
                } else {
                    min2 = Math.min(m25053a3, str17.length());
                }
                c0895u2 = new C0895u(str17.substring(i7, Math.max(0, ((int) min2) - i7) + i7));
                return c0895u2;
            case '\t':
                C0935w5.m25044j("split", 2, list);
                String str18 = this.f2324a;
                if (str18.length() == 0) {
                    return new C0640f(Arrays.asList(this));
                }
                ArrayList arrayList = new ArrayList();
                if (list.size() == 0) {
                    arrayList.add(this);
                } else {
                    String mo25083j2 = c0917v4.m25072b(list.get(0)).mo25083j();
                    if (list.size() > 1) {
                        j = C0935w5.m25050d(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue());
                    } else {
                        j = 2147483647L;
                    }
                    if (j == 0) {
                        return new C0640f();
                    }
                    String[] split = str18.split(Pattern.quote(mo25083j2), ((int) j) + 1);
                    int length5 = split.length;
                    if (mo25083j2.equals("") && length5 > 0) {
                        boolean equals = split[0].equals("");
                        i3 = length5 - 1;
                        if (!split[i3].equals("")) {
                            i3 = length5;
                        }
                        i4 = equals;
                    } else {
                        i3 = length5;
                        i4 = 0;
                    }
                    if (length5 > j) {
                        i3--;
                    }
                    for (int i8 = i4; i8 < i3; i8++) {
                        arrayList.add(new C0895u(split[i8]));
                    }
                }
                return new C0640f(arrayList);
            case '\n':
                C0935w5.m25044j("substring", 2, list);
                String str19 = this.f2324a;
                if (list.size() > 0) {
                    c0917v42 = c0917v4;
                    i5 = (int) C0935w5.m25053a(c0917v42.m25072b(list.get(0)).mo25085f().doubleValue());
                } else {
                    c0917v42 = c0917v4;
                    i5 = 0;
                }
                if (list.size() > 1) {
                    length2 = (int) C0935w5.m25053a(c0917v42.m25072b(list.get(1)).mo25085f().doubleValue());
                } else {
                    length2 = str19.length();
                }
                int min3 = Math.min(Math.max(i5, 0), str19.length());
                int min4 = Math.min(Math.max(length2, 0), str19.length());
                c0895u2 = new C0895u(str19.substring(Math.min(min3, min4), Math.max(min3, min4)));
                return c0895u2;
            case 11:
                C0935w5.m25046h(str2, 0, list);
                return new C0895u(this.f2324a.toUpperCase());
            case '\f':
                C0935w5.m25046h("toLocaleLowerCase", 0, list);
                return new C0895u(this.f2324a.toLowerCase());
            case '\r':
                C0935w5.m25046h("toLowerCase", 0, list);
                return new C0895u(this.f2324a.toLowerCase(Locale.ENGLISH));
            case 14:
                c0895u = this;
                C0935w5.m25046h(str4, 0, list);
                return c0895u;
            case 15:
                C0935w5.m25046h("toUpperCase", 0, list);
                return new C0895u(this.f2324a.toUpperCase(Locale.ENGLISH));
            case 16:
                C0935w5.m25046h("toUpperCase", 0, list);
                return new C0895u(this.f2324a.trim());
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }
}
