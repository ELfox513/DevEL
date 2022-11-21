package p063f7;

import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import p029c7.C1078a;
import p045d7.C3332b;
/* renamed from: f7.k */
/* loaded from: classes2.dex */
public final class C3536k {

    /* renamed from: a */
    public static final Pattern f16039a = Pattern.compile("(^|.*\\s)datatransport/\\S+ android/($|\\s.*)");

    /* renamed from: c */
    public static boolean m18652c(String str) {
        return str == null || !f16039a.matcher(str).matches();
    }

    /* renamed from: a */
    public static Long m18654a(HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader("content-length");
            if (firstHeader != null) {
                return Long.valueOf(Long.parseLong(firstHeader.getValue()));
            }
            return null;
        } catch (NumberFormatException unused) {
            C1078a.m24639e().m24643a("The content-length value is not a valid number");
            return null;
        }
    }

    /* renamed from: b */
    public static String m18653b(HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader != null && (value = firstHeader.getValue()) != null) {
            return value;
        }
        return null;
    }

    /* renamed from: d */
    public static void m18651d(C3332b c3332b) {
        if (!c3332b.m19111p()) {
            c3332b.m19125B();
        }
        c3332b.m19115h();
    }
}
