package p070g5;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import p220x3.C7297q;
/* renamed from: g5.l3 */
/* loaded from: classes2.dex */
public final class C3729l3 {

    /* renamed from: b */
    public static final AtomicReference<String[]> f16700b = new AtomicReference<>();

    /* renamed from: c */
    public static final AtomicReference<String[]> f16701c = new AtomicReference<>();

    /* renamed from: d */
    public static final AtomicReference<String[]> f16702d = new AtomicReference<>();

    /* renamed from: a */
    public final InterfaceC3717k3 f16703a;

    public C3729l3(InterfaceC3717k3 interfaceC3717k3) {
        this.f16703a = interfaceC3717k3;
    }

    /* renamed from: a */
    public final String m18076a(Object[] objArr) {
        String valueOf;
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            if (obj instanceof Bundle) {
                valueOf = m18075b((Bundle) obj);
            } else {
                valueOf = String.valueOf(obj);
            }
            if (valueOf != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(valueOf);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: b */
    public final String m18075b(Bundle bundle) {
        String valueOf;
        if (bundle == null) {
            return null;
        }
        if (!this.f16703a.zza()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(m18072e(str));
            sb.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                valueOf = m18076a(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                valueOf = m18076a((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                valueOf = m18076a(((ArrayList) obj).toArray());
            } else {
                valueOf = String.valueOf(obj);
            }
            sb.append(valueOf);
        }
        sb.append("}]");
        return sb.toString();
    }

    /* renamed from: c */
    public final String m18074c(C3833u c3833u) {
        String m18075b;
        if (!this.f16703a.zza()) {
            return c3833u.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("origin=");
        sb.append(c3833u.f16972d);
        sb.append(",name=");
        sb.append(m18073d(c3833u.f16970a));
        sb.append(",params=");
        C3809s c3809s = c3833u.f16971b;
        if (c3809s == null) {
            m18075b = null;
        } else if (!this.f16703a.zza()) {
            m18075b = c3809s.toString();
        } else {
            m18075b = m18075b(c3809s.m17990Z0());
        }
        sb.append(m18075b);
        return sb.toString();
    }

    /* renamed from: d */
    public final String m18073d(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f16703a.zza()) {
            return str;
        }
        return m18070g(str, C3899z5.f17132c, C3899z5.f17130a, f16700b);
    }

    /* renamed from: e */
    public final String m18072e(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f16703a.zza()) {
            return str;
        }
        return m18070g(str, C3600a6.f16202b, C3600a6.f16201a, f16701c);
    }

    /* renamed from: f */
    public final String m18071f(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f16703a.zza()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return "experiment_id(" + str + ")";
        }
        return m18070g(str, C3612b6.f16270b, C3612b6.f16269a, f16702d);
    }

    /* renamed from: g */
    public static final String m18070g(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        boolean z;
        String str2;
        C7297q.m1883j(strArr);
        C7297q.m1883j(strArr2);
        C7297q.m1883j(atomicReference);
        if (strArr.length == strArr2.length) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1892a(z);
        for (int i = 0; i < strArr.length; i++) {
            if (C3700ia.m18185Z(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    str2 = strArr3[i];
                    if (str2 == null) {
                        str2 = strArr2[i] + "(" + strArr[i] + ")";
                        strArr3[i] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }
}
