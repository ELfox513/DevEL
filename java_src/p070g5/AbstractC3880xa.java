package p070g5;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p018b5.C0729k3;
import p018b5.C0848r3;
import p220x3.C7297q;
/* renamed from: g5.xa */
/* loaded from: classes2.dex */
public abstract class AbstractC3880xa {

    /* renamed from: a */
    public final String f17084a;

    /* renamed from: b */
    public final int f17085b;

    /* renamed from: c */
    public Boolean f17086c;

    /* renamed from: d */
    public Boolean f17087d;

    /* renamed from: e */
    public Long f17088e;

    /* renamed from: f */
    public Long f17089f;

    public AbstractC3880xa(String str, int i) {
        this.f17084a = str;
        this.f17085b = i;
    }

    /* renamed from: d */
    public static Boolean m17850d(String str, int i, boolean z, String str2, List<String> list, String str3, C3789q3 c3789q3) {
        int i2;
        if (i == 7) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && i != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i - 1) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                if (true != z) {
                    i2 = 66;
                } else {
                    i2 = 0;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, i2).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (c3789q3 != null) {
                        c3789q3.m18013r().m18041b("Invalid regular expression in REGEXP audience filter. expression", str3);
                    }
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    /* renamed from: g */
    public static Boolean m17847g(double d, C0729k3 c0729k3) {
        try {
            return m17849e(new BigDecimal(d), c0729k3, Math.ulp(d));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: h */
    public static Boolean m17846h(long j, C0729k3 c0729k3) {
        try {
            return m17849e(new BigDecimal(j), c0729k3, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: j */
    public static Boolean m17844j(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: a */
    public abstract int mo17818a();

    /* renamed from: b */
    public abstract boolean mo17817b();

    /* renamed from: c */
    public abstract boolean mo17816c();

    /* renamed from: e */
    public static Boolean m17849e(BigDecimal bigDecimal, C0729k3 c0729k3, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        C7297q.m1883j(c0729k3);
        if (c0729k3.m25710z()) {
            boolean z = true;
            if (c0729k3.m25717E() != 1) {
                if (c0729k3.m25717E() == 5) {
                    if (!c0729k3.m25718D() || !c0729k3.m25719C()) {
                        return null;
                    }
                } else if (!c0729k3.m25721A()) {
                    return null;
                }
                int m25717E = c0729k3.m25717E();
                if (c0729k3.m25717E() == 5) {
                    if (C3640da.m18409M(c0729k3.m25712w()) && C3640da.m18409M(c0729k3.m25713v())) {
                        try {
                            BigDecimal bigDecimal5 = new BigDecimal(c0729k3.m25712w());
                            bigDecimal4 = new BigDecimal(c0729k3.m25713v());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    return null;
                } else if (!C3640da.m18409M(c0729k3.m25714u())) {
                    return null;
                } else {
                    try {
                        bigDecimal2 = new BigDecimal(c0729k3.m25714u());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                    } catch (NumberFormatException unused2) {
                    }
                }
                if (m25717E == 5) {
                    if (bigDecimal3 == null) {
                        return null;
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                }
                int i = m25717E - 1;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4 || bigDecimal3 == null) {
                                return null;
                            }
                            return Boolean.valueOf((bigDecimal.compareTo(bigDecimal3) < 0 || bigDecimal.compareTo(bigDecimal4) > 0) ? false : false);
                        } else if (bigDecimal2 == null) {
                            return null;
                        } else {
                            if (d != 0.0d) {
                                return Boolean.valueOf((bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) <= 0 || bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) >= 0) ? false : false);
                            }
                            if (bigDecimal.compareTo(bigDecimal2) != 0) {
                                z = false;
                            }
                            return Boolean.valueOf(z);
                        }
                    } else if (bigDecimal2 == null) {
                        return null;
                    } else {
                        if (bigDecimal.compareTo(bigDecimal2) <= 0) {
                            z = false;
                        }
                        return Boolean.valueOf(z);
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                } else {
                    if (bigDecimal.compareTo(bigDecimal2) >= 0) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            }
        }
        return null;
    }

    /* renamed from: f */
    public static Boolean m17848f(String str, C0848r3 c0848r3, C3789q3 c3789q3) {
        String m25443v;
        List<String> list;
        String str2;
        C7297q.m1883j(c0848r3);
        if (str == null || !c0848r3.m25448B() || c0848r3.m25447C() == 1) {
            return null;
        }
        if (c0848r3.m25447C() == 7) {
            if (c0848r3.m25446s() == 0) {
                return null;
            }
        } else if (!c0848r3.m25449A()) {
            return null;
        }
        int m25447C = c0848r3.m25447C();
        boolean m25441x = c0848r3.m25441x();
        if (!m25441x && m25447C != 2 && m25447C != 7) {
            m25443v = c0848r3.m25443v().toUpperCase(Locale.ENGLISH);
        } else {
            m25443v = c0848r3.m25443v();
        }
        String str3 = m25443v;
        if (c0848r3.m25446s() == 0) {
            list = null;
        } else {
            List<String> m25442w = c0848r3.m25442w();
            if (!m25441x) {
                ArrayList arrayList = new ArrayList(m25442w.size());
                for (String str4 : m25442w) {
                    arrayList.add(str4.toUpperCase(Locale.ENGLISH));
                }
                m25442w = Collections.unmodifiableList(arrayList);
            }
            list = m25442w;
        }
        if (m25447C == 2) {
            str2 = str3;
        } else {
            str2 = null;
        }
        return m17850d(str, m25447C, m25441x, str3, list, str2, c3789q3);
    }

    /* renamed from: i */
    public static Boolean m17845i(String str, C0729k3 c0729k3) {
        if (!C3640da.m18409M(str)) {
            return null;
        }
        try {
            return m17849e(new BigDecimal(str), c0729k3, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
