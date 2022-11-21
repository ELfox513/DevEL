package p067g2;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p058f2.C3503b;
import p085i2.InterfaceC4102f;
/* renamed from: g2.a */
/* loaded from: classes.dex */
public final class C3572a implements InterfaceC4102f {

    /* renamed from: c */
    public static final String f16144c;

    /* renamed from: d */
    public static final String f16145d;

    /* renamed from: e */
    public static final String f16146e;

    /* renamed from: f */
    public static final Set<C3503b> f16147f;

    /* renamed from: g */
    public static final C3572a f16148g;

    /* renamed from: h */
    public static final C3572a f16149h;

    /* renamed from: a */
    public final String f16150a;

    /* renamed from: b */
    public final String f16151b;

    @Override // p085i2.InterfaceC4102f
    /* renamed from: a */
    public Set<C3503b> mo17401a() {
        return f16147f;
    }

    /* renamed from: d */
    public String m18605d() {
        return this.f16151b;
    }

    /* renamed from: e */
    public String m18604e() {
        return this.f16150a;
    }

    @Override // p085i2.InterfaceC4101e
    public byte[] getExtras() {
        return m18607b();
    }

    @Override // p085i2.InterfaceC4101e
    public String getName() {
        return "cct";
    }

    static {
        String m18590a = C3578e.m18590a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f16144c = m18590a;
        String m18590a2 = C3578e.m18590a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f16145d = m18590a2;
        String m18590a3 = C3578e.m18590a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f16146e = m18590a3;
        f16147f = Collections.unmodifiableSet(new HashSet(Arrays.asList(C3503b.m18748b("proto"), C3503b.m18748b("json"))));
        f16148g = new C3572a(m18590a, null);
        f16149h = new C3572a(m18590a2, m18590a3);
    }

    /* renamed from: c */
    public static C3572a m18606c(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new C3572a(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    /* renamed from: b */
    public byte[] m18607b() {
        String str = this.f16151b;
        if (str == null && this.f16150a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.f16150a;
        objArr[2] = "\\";
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    public C3572a(String str, String str2) {
        this.f16150a = str;
        this.f16151b = str2;
    }
}
