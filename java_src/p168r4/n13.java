package p168r4;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: r4.n13 */
/* loaded from: classes2.dex */
public final class n13 {

    /* renamed from: a */
    public static final Object f28091a;

    /* renamed from: b */
    public static final Method f28092b;

    /* renamed from: c */
    public static final Method f28093c;

    /* renamed from: c */
    public static Object m9207c() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: d */
    public static Method m9206d(Object obj) {
        try {
            Method m9205e = m9205e("getStackTraceDepth", Throwable.class);
            if (m9205e == null) {
                return null;
            }
            m9205e.invoke(obj, new Throwable());
            return m9205e;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: e */
    public static Method m9205e(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m9209a(Throwable th) {
        if (!(th instanceof RuntimeException)) {
            if (!(th instanceof Error)) {
                return;
            }
            throw ((Error) th);
        }
        throw ((RuntimeException) th);
    }

    /* renamed from: b */
    public static String m9208b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        rk3.m7478c(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    static {
        Method m9205e;
        Object m9207c = m9207c();
        f28091a = m9207c;
        Method method = null;
        if (m9207c == null) {
            m9205e = null;
        } else {
            m9205e = m9205e("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        f28092b = m9205e;
        if (m9207c != null) {
            method = m9206d(m9207c);
        }
        f28093c = method;
    }
}
