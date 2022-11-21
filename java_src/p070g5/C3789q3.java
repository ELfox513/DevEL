package p070g5;

import android.text.TextUtils;
import android.util.Log;
import p220x3.C7297q;
/* renamed from: g5.q3 */
/* loaded from: classes2.dex */
public final class C3789q3 extends AbstractC3863w5 {

    /* renamed from: c */
    public char f16875c;

    /* renamed from: d */
    public long f16876d;

    /* renamed from: e */
    public String f16877e;

    /* renamed from: f */
    public final C3765o3 f16878f;

    /* renamed from: g */
    public final C3765o3 f16879g;

    /* renamed from: h */
    public final C3765o3 f16880h;

    /* renamed from: i */
    public final C3765o3 f16881i;

    /* renamed from: j */
    public final C3765o3 f16882j;

    /* renamed from: k */
    public final C3765o3 f16883k;

    /* renamed from: l */
    public final C3765o3 f16884l;

    /* renamed from: m */
    public final C3765o3 f16885m;

    /* renamed from: n */
    public final C3765o3 f16886n;

    /* renamed from: u */
    public static Object m18010u(String str) {
        if (str == null) {
            return null;
        }
        return new C3777p3(str);
    }

    @Override // p070g5.AbstractC3863w5
    /* renamed from: e */
    public final boolean mo17838e() {
        return false;
    }

    /* renamed from: l */
    public final C3765o3 m18019l() {
        return this.f16885m;
    }

    /* renamed from: m */
    public final C3765o3 m18018m() {
        return this.f16878f;
    }

    /* renamed from: n */
    public final C3765o3 m18017n() {
        return this.f16880h;
    }

    /* renamed from: o */
    public final C3765o3 m18016o() {
        return this.f16879g;
    }

    /* renamed from: p */
    public final C3765o3 m18015p() {
        return this.f16884l;
    }

    /* renamed from: q */
    public final C3765o3 m18014q() {
        return this.f16886n;
    }

    /* renamed from: r */
    public final C3765o3 m18013r() {
        return this.f16881i;
    }

    /* renamed from: s */
    public final C3765o3 m18012s() {
        return this.f16883k;
    }

    /* renamed from: t */
    public final C3765o3 m18011t() {
        return this.f16882j;
    }

    /* renamed from: x */
    public final String m18007x() {
        String str;
        synchronized (this) {
            if (this.f16877e == null) {
                if (this.f17008a.m18535N() != null) {
                    this.f16877e = this.f17008a.m18535N();
                } else {
                    this.f16877e = this.f17008a.m18513u().m18361r();
                }
            }
            C7297q.m1883j(this.f16877e);
            str = this.f16877e;
        }
        return str;
    }

    /* renamed from: v */
    public static String m18009v(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String m18008w = m18008w(z, obj);
        String m18008w2 = m18008w(z, obj2);
        String m18008w3 = m18008w(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(m18008w)) {
            sb.append(str2);
            sb.append(m18008w);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(m18008w2)) {
            sb.append(str2);
            sb.append(m18008w2);
        } else {
            str3 = str2;
        }
        if (!TextUtils.isEmpty(m18008w3)) {
            sb.append(str3);
            sb.append(m18008w3);
        }
        return sb.toString();
    }

    /* renamed from: w */
    public static String m18008w(boolean z, Object obj) {
        String str;
        String th;
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) >= 100) {
                String str2 = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
                String valueOf = String.valueOf(Math.abs(l.longValue()));
                long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
                long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
                StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
                sb.append(str2);
                sb.append(round);
                sb.append("...");
                sb.append(str2);
                sb.append(round2);
                return sb.toString();
            }
            return String.valueOf(obj);
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            if (obj instanceof Throwable) {
                Throwable th2 = (Throwable) obj;
                if (z) {
                    th = th2.getClass().getName();
                } else {
                    th = th2.toString();
                }
                StringBuilder sb2 = new StringBuilder(th);
                String m18022B = m18022B(C3611b5.class.getCanonicalName());
                StackTraceElement[] stackTrace = th2.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m18022B(className).equals(m18022B)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                    i++;
                }
                return sb2.toString();
            } else if (obj instanceof C3777p3) {
                str = ((C3777p3) obj).f16816a;
                return str;
            } else if (z) {
                return "-";
            } else {
                return String.valueOf(obj);
            }
        }
    }

    /* renamed from: A */
    public final void m18023A(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        int i2;
        if (!z && Log.isLoggable(m18007x(), i)) {
            Log.println(i, m18007x(), m18009v(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            C7297q.m1883j(str);
            C3886y4 m18545B = this.f17008a.m18545B();
            if (m18545B == null) {
                Log.println(6, m18007x(), "Scheduler not set. Not logging error/warn");
            } else if (!m18545B.m17919i()) {
                Log.println(6, m18007x(), "Scheduler not initialized. Not logging error/warn");
            } else {
                if (i >= 9) {
                    i2 = 8;
                } else {
                    i2 = i;
                }
                m18545B.m17826u(new RunnableC3753n3(this, i2, str, obj, obj2, obj3));
            }
        }
    }

    public C3789q3(C3611b5 c3611b5) {
        super(c3611b5);
        this.f16875c = (char) 0;
        this.f16876d = -1L;
        this.f16878f = new C3765o3(this, 6, false, false);
        this.f16879g = new C3765o3(this, 6, true, false);
        this.f16880h = new C3765o3(this, 6, false, true);
        this.f16881i = new C3765o3(this, 5, false, false);
        this.f16882j = new C3765o3(this, 5, true, false);
        this.f16883k = new C3765o3(this, 5, false, true);
        this.f16884l = new C3765o3(this, 4, false, false);
        this.f16885m = new C3765o3(this, 3, false, false);
        this.f16886n = new C3765o3(this, 2, false, false);
    }

    /* renamed from: B */
    public static String m18022B(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return str;
        }
        return str.substring(0, lastIndexOf);
    }
}
