package p070g5;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.prineside.tdi2.tiles.CoreTile;
import java.io.ByteArrayInputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import javax.security.auth.x500.X500Principal;
import net.bytebuddy.utility.JavaConstant;
import p018b5.C0909ud;
import p018b5.InterfaceC0693i1;
import p026c4.C1046g;
import p042d4.C3325e;
import p185t3.C6746h;
import p185t3.C6756m;
import p220x3.C7297q;
/* renamed from: g5.ia */
/* loaded from: classes2.dex */
public final class C3700ia extends AbstractC3863w5 {

    /* renamed from: g */
    public static final String[] f16635g = {"firebase_", "google_", "ga_"};

    /* renamed from: h */
    public static final String[] f16636h = {"_err"};

    /* renamed from: i */
    public static final Pattern f16637i = Pattern.compile("^([^\\s@]+)@([^\\s@]+\\.[^\\s@]+)$");

    /* renamed from: j */
    public static final Pattern f16638j = Pattern.compile("^(gmail|googlemail)\\.");

    /* renamed from: k */
    public static final Pattern f16639k = Pattern.compile("[\\s-()/.]+");

    /* renamed from: l */
    public static final Pattern f16640l = Pattern.compile("^\\+\\d{11,15}$");

    /* renamed from: m */
    public static final Pattern f16641m = Pattern.compile("[0-9`~!@#$%^&*()_\\-+=:;<>,.?|/\\\\\\[\\]]+");

    /* renamed from: n */
    public static final Pattern f16642n = Pattern.compile("\\s+");

    /* renamed from: c */
    public SecureRandom f16643c;

    /* renamed from: d */
    public final AtomicLong f16644d;

    /* renamed from: e */
    public int f16645e;

    /* renamed from: f */
    public Integer f16646f;

    /* renamed from: V */
    public static boolean m18189V(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith(JavaConstant.Dynamic.DEFAULT_NAME);
    }

    /* renamed from: Z */
    public static boolean m18185Z(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    /* renamed from: a0 */
    public static boolean m18184a0(String str) {
        return !f16636h[0].equals(str);
    }

    /* renamed from: i0 */
    public static boolean m18176i0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* renamed from: n */
    public static MessageDigest m18167n(String str) {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    /* renamed from: I */
    public final boolean m18199I(String str, int i, String str2) {
        if (str2 == null) {
            this.f17008a.mo17858F().m18017n().m18041b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) > i) {
            this.f17008a.mo17858F().m18017n().m18039d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        } else {
            return true;
        }
    }

    /* renamed from: J */
    public final boolean m18198J(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.f17008a.mo17858F().m18017n().m18041b("Name is required and can't be null. Type", str);
            return false;
        }
        C7297q.m1883j(str2);
        String[] strArr3 = f16635g;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.f17008a.mo17858F().m18017n().m18040c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr != null && m18177h0(str2, strArr)) {
            if (strArr2 == null || !m18177h0(str2, strArr2)) {
                this.f17008a.mo17858F().m18017n().m18040c("Name is reserved. Type, name", str, str2);
                return false;
            }
            return true;
        }
        return true;
    }

    /* renamed from: K */
    public final boolean m18197K(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) > i) {
                this.f17008a.mo17858F().m18012s().m18039d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00de A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00df  */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m18196L(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.Object r18, android.os.Bundle r19, java.util.List<java.lang.String> r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3700ia.m18196L(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* renamed from: M */
    public final boolean m18195M(String str, String str2) {
        if (str2 == null) {
            this.f17008a.mo17858F().m18017n().m18041b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f17008a.mo17858F().m18017n().m18041b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt == 95) {
                    codePointAt = 95;
                } else {
                    this.f17008a.mo17858F().m18017n().m18040c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                    return false;
                }
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.f17008a.mo17858F().m18017n().m18040c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    /* renamed from: N */
    public final boolean m18194N(String str, String str2) {
        if (str2 == null) {
            this.f17008a.mo17858F().m18017n().m18041b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f17008a.mo17858F().m18017n().m18041b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.f17008a.mo17858F().m18017n().m18040c("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.f17008a.mo17858F().m18017n().m18040c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    /* renamed from: T */
    public final boolean m18191T(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    @Override // p070g5.AbstractC3863w5
    /* renamed from: e */
    public final boolean mo17838e() {
        return true;
    }

    /* renamed from: g0 */
    public final Object m18178g0(int i, Object obj, boolean z, boolean z2) {
        Parcelable[] parcelableArr;
        long j;
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Long) && !(obj instanceof Double)) {
            if (obj instanceof Integer) {
                return Long.valueOf(((Integer) obj).intValue());
            }
            if (obj instanceof Byte) {
                return Long.valueOf(((Byte) obj).byteValue());
            }
            if (obj instanceof Short) {
                return Long.valueOf(((Short) obj).shortValue());
            }
            if (obj instanceof Boolean) {
                if (true != ((Boolean) obj).booleanValue()) {
                    j = 0;
                } else {
                    j = 1;
                }
                return Long.valueOf(j);
            } else if (obj instanceof Float) {
                return Double.valueOf(((Float) obj).doubleValue());
            } else {
                if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                    if (z2 && ((obj instanceof Bundle[]) || (obj instanceof Parcelable[]))) {
                        ArrayList arrayList = new ArrayList();
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                Bundle m18152u0 = m18152u0((Bundle) parcelable);
                                if (!m18152u0.isEmpty()) {
                                    arrayList.add(m18152u0);
                                }
                            }
                        }
                        return arrayList.toArray(new Bundle[arrayList.size()]);
                    }
                    return null;
                }
                return m18171l(String.valueOf(obj), i, z);
            }
        }
        return obj;
    }

    /* renamed from: l */
    public final String m18171l(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) > i) {
            if (z) {
                return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
            }
            return null;
        }
        return str;
    }

    /* renamed from: s0 */
    public final long m18156s0(long j, long j2) {
        return (j + (j2 * 60000)) / 86400000;
    }

    /* renamed from: t0 */
    public final Bundle m18154t0(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    str = uri.getQueryParameter("utm_campaign");
                    str2 = uri.getQueryParameter("utm_source");
                    str3 = uri.getQueryParameter("utm_medium");
                    str4 = uri.getQueryParameter("gclid");
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                    str4 = null;
                }
                if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("campaign", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    bundle.putString("source", str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    bundle.putString("medium", str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    bundle.putString("gclid", str4);
                }
                String queryParameter = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("term", queryParameter);
                }
                String queryParameter2 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString("content", queryParameter2);
                }
                String queryParameter3 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("aclid", queryParameter3);
                }
                String queryParameter4 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("cp1", queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("anid", queryParameter5);
                }
                return bundle;
            } catch (UnsupportedOperationException e) {
                this.f17008a.mo17858F().m18013r().m18041b("Install referrer url isn't a hierarchical URI", e);
            }
        }
        return null;
    }

    /* renamed from: d0 */
    public static final boolean m18181d0(Bundle bundle, int i) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public static ArrayList<Bundle> m18163p(List<C3617c> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (C3617c c3617c : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", c3617c.f16309a);
            bundle.putString("origin", c3617c.f16310b);
            bundle.putLong("creation_timestamp", c3617c.f16312k);
            bundle.putString("name", c3617c.f16311d.f16463b);
            C3887y5.m17820b(bundle, c3617c.f16311d.m18386X0());
            bundle.putBoolean("active", c3617c.f16313p);
            String str = c3617c.f16314q;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            C3833u c3833u = c3617c.f16315r;
            if (c3833u != null) {
                bundle.putString("timed_out_event_name", c3833u.f16970a);
                C3809s c3809s = c3617c.f16315r.f16971b;
                if (c3809s != null) {
                    bundle.putBundle("timed_out_event_params", c3809s.m17990Z0());
                }
            }
            bundle.putLong("trigger_timeout", c3617c.f16316s);
            C3833u c3833u2 = c3617c.f16317t;
            if (c3833u2 != null) {
                bundle.putString("triggered_event_name", c3833u2.f16970a);
                C3809s c3809s2 = c3617c.f16317t.f16971b;
                if (c3809s2 != null) {
                    bundle.putBundle("triggered_event_params", c3809s2.m17990Z0());
                }
            }
            bundle.putLong("triggered_timestamp", c3617c.f16311d.f16464d);
            bundle.putLong("time_to_live", c3617c.f16318u);
            C3833u c3833u3 = c3617c.f16319v;
            if (c3833u3 != null) {
                bundle.putString("expired_event_name", c3833u3.f16970a);
                C3809s c3809s3 = c3617c.f16319v.f16971b;
                if (c3809s3 != null) {
                    bundle.putBundle("expired_event_params", c3809s3.m17990Z0());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: s */
    public static void m18157s(C3781p7 c3781p7, Bundle bundle, boolean z) {
        if (bundle != null && c3781p7 != null) {
            if (bundle.containsKey("_sc") && !z) {
                z = false;
            } else {
                String str = c3781p7.f16824a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = c3781p7.f16825b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", c3781p7.f16826c);
                return;
            }
        }
        if (bundle != null && c3781p7 == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    /* renamed from: A */
    public final void m18205A(InterfaceC0693i1 interfaceC0693i1, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error returning byte array to wrapper", e);
        }
    }

    /* renamed from: B */
    public final void m18204B(InterfaceC0693i1 interfaceC0693i1, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error returning int value to wrapper", e);
        }
    }

    /* renamed from: C */
    public final void m18203C(InterfaceC0693i1 interfaceC0693i1, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error returning long value to wrapper", e);
        }
    }

    /* renamed from: D */
    public final void m18202D(InterfaceC0693i1 interfaceC0693i1, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error returning string value to wrapper", e);
        }
    }

    /* renamed from: E */
    public final void m18201E(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        int i2;
        String str4;
        String str5;
        int m18196L;
        if (bundle == null) {
            return;
        }
        this.f17008a.m18513u();
        int i3 = 0;
        for (String str6 : new TreeSet(bundle.keySet())) {
            if (list != null && list.contains(str6)) {
                i2 = 0;
            } else {
                if (!z) {
                    i = m18168m0(str6);
                } else {
                    i = 0;
                }
                if (i == 0) {
                    i = m18170l0(str6);
                }
                i2 = i;
            }
            if (i2 != 0) {
                if (i2 == 3) {
                    str4 = str6;
                } else {
                    str4 = null;
                }
                m18159r(bundle, i2, str6, str6, str4);
                bundle.remove(str6);
            } else {
                if (m18191T(bundle.get(str6))) {
                    this.f17008a.mo17858F().m18012s().m18039d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str6);
                    str5 = str6;
                    m18196L = 22;
                } else {
                    str5 = str6;
                    m18196L = m18196L(str, str2, str6, bundle.get(str6), bundle, list, z, false);
                }
                if (m18196L != 0 && !"_ev".equals(str5)) {
                    m18159r(bundle, m18196L, str5, str5, bundle.get(str5));
                    bundle.remove(str5);
                } else if (m18188W(str5) && !m18177h0(str5, C3600a6.f16204d) && (i3 = i3 + 1) > 0) {
                    this.f17008a.mo17858F().m18017n().m18040c("Item cannot contain custom parameters", this.f17008a.m18509y().m18073d(str2), this.f17008a.m18509y().m18075b(bundle));
                    m18181d0(bundle, 23);
                    bundle.remove(str5);
                }
            }
        }
    }

    /* renamed from: U */
    public final boolean m18190U(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo m19143f = C3325e.m19140a(context).m19143f(str, 64);
            if (m19143f != null && (signatureArr = m19143f.signatures) != null && signatureArr.length > 0) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            this.f17008a.mo17858F().m18018m().m18041b("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.f17008a.mo17858F().m18018m().m18041b("Error obtaining certificate", e2);
            return true;
        }
    }

    /* renamed from: c0 */
    public final byte[] m18182c0(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: f0 */
    public final int m18179f0(String str) {
        if ("_ldl".equals(str)) {
            this.f17008a.m18513u();
            return 2048;
        } else if (!"_id".equals(str)) {
            if (this.f17008a.m18513u().m18356w(null, C3621c3.f16362d0) && "_lgclid".equals(str)) {
                this.f17008a.m18513u();
                return 100;
            }
            this.f17008a.m18513u();
            return 36;
        } else {
            this.f17008a.m18513u();
            return 256;
        }
    }

    /* renamed from: j */
    public final Object m18175j(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            this.f17008a.m18513u();
            return m18178g0(256, obj, true, true);
        }
        if (m18189V(str)) {
            this.f17008a.m18513u();
        } else {
            this.f17008a.m18513u();
            i = 100;
        }
        return m18178g0(i, obj, false, true);
    }

    /* renamed from: j0 */
    public final int m18174j0(String str, Object obj) {
        boolean m18197K;
        if ("_ldl".equals(str)) {
            m18197K = m18197K("user property referrer", str, m18179f0(str), obj);
        } else {
            m18197K = m18197K("user property", str, m18179f0(str), obj);
        }
        if (m18197K) {
            return 0;
        }
        return 7;
    }

    /* renamed from: k */
    public final Object m18173k(String str, Object obj) {
        if ("_ldl".equals(str)) {
            return m18178g0(m18179f0(str), obj, true, false);
        }
        return m18178g0(m18179f0(str), obj, false, false);
    }

    /* renamed from: k0 */
    public final int m18172k0(String str) {
        if (!m18195M("event", str)) {
            return 2;
        }
        if (!m18198J("event", C3899z5.f17130a, C3899z5.f17131b, str)) {
            return 13;
        }
        this.f17008a.m18513u();
        if (!m18199I("event", 40, str)) {
            return 2;
        }
        return 0;
    }

    /* renamed from: l0 */
    public final int m18170l0(String str) {
        if (!m18195M("event param", str)) {
            return 3;
        }
        if (!m18198J("event param", null, null, str)) {
            return 14;
        }
        this.f17008a.m18513u();
        if (!m18199I("event param", 40, str)) {
            return 3;
        }
        return 0;
    }

    /* renamed from: m0 */
    public final int m18168m0(String str) {
        if (!m18194N("event param", str)) {
            return 3;
        }
        if (!m18198J("event param", null, null, str)) {
            return 14;
        }
        this.f17008a.m18513u();
        if (!m18199I("event param", 40, str)) {
            return 3;
        }
        return 0;
    }

    /* renamed from: n0 */
    public final int m18166n0(String str) {
        if (!m18195M("user property", str)) {
            return 6;
        }
        if (!m18198J("user property", C3612b6.f16269a, null, str)) {
            return 15;
        }
        this.f17008a.m18513u();
        if (!m18199I("user property", 24, str)) {
            return 6;
        }
        return 0;
    }

    /* renamed from: o0 */
    public final int m18164o0() {
        if (this.f16646f == null) {
            this.f16646f = Integer.valueOf(C6746h.m3490f().m3495a(this.f17008a.mo17856O()) / CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
        }
        return this.f16646f.intValue();
    }

    /* renamed from: q */
    public final void m18161q(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.f17008a.mo17858F().m18013r().m18041b("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    /* renamed from: r0 */
    public final long m18158r0() {
        long andIncrement;
        long j;
        if (this.f16644d.get() == 0) {
            synchronized (this.f16644d) {
                long nextLong = new Random(System.nanoTime() ^ this.f17008a.mo17854Q().mo24763a()).nextLong();
                int i = this.f16645e + 1;
                this.f16645e = i;
                j = nextLong + i;
            }
            return j;
        }
        synchronized (this.f16644d) {
            this.f16644d.compareAndSet(-1L, 1L);
            andIncrement = this.f16644d.getAndIncrement();
        }
        return andIncrement;
    }

    /* renamed from: t */
    public final void m18155t(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.f17008a.m18538K().m18149w(bundle, str, bundle2.get(str));
            }
        }
    }

    /* renamed from: u */
    public final void m18153u(C3801r3 c3801r3, int i) {
        int i2 = 0;
        for (String str : new TreeSet(c3801r3.f16909d.keySet())) {
            if (m18188W(str) && (i2 = i2 + 1) > i) {
                StringBuilder sb = new StringBuilder(48);
                sb.append("Event can't contain more than ");
                sb.append(i);
                sb.append(" params");
                this.f17008a.mo17858F().m18017n().m18040c(sb.toString(), this.f17008a.m18509y().m18073d(c3801r3.f16906a), this.f17008a.m18509y().m18075b(c3801r3.f16909d));
                m18181d0(c3801r3.f16909d, 5);
                c3801r3.f16909d.remove(str);
            }
        }
    }

    /* renamed from: u0 */
    public final Bundle m18152u0(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object m18175j = m18175j(str, bundle.get(str));
                if (m18175j == null) {
                    this.f17008a.mo17858F().m18012s().m18041b("Param value can't be null", this.f17008a.m18509y().m18072e(str));
                } else {
                    m18149w(bundle2, str, m18175j);
                }
            }
        }
        return bundle2;
    }

    /* renamed from: v */
    public final void m18151v(InterfaceC3688ha interfaceC3688ha, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        m18181d0(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        interfaceC3688ha.mo17819a(str, "_err", bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0108 A[SYNTHETIC] */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m18150v0(java.lang.String r21, java.lang.String r22, android.os.Bundle r23, java.util.List<java.lang.String> r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3700ia.m18150v0(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean):android.os.Bundle");
    }

    /* renamed from: w */
    public final void m18149w(Bundle bundle, String str, Object obj) {
        String str2;
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            if (obj != null) {
                str2 = obj.getClass().getSimpleName();
            } else {
                str2 = null;
            }
            this.f17008a.mo17858F().m18012s().m18040c("Not putting event parameter. Invalid value type. name, type", this.f17008a.m18509y().m18072e(str), str2);
        }
    }

    /* renamed from: x */
    public final void m18147x(InterfaceC0693i1 interfaceC0693i1, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error returning boolean value to wrapper", e);
        }
    }

    /* renamed from: y */
    public final void m18146y(InterfaceC0693i1 interfaceC0693i1, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error returning bundle list to wrapper", e);
        }
    }

    public C3700ia(C3611b5 c3611b5) {
        super(c3611b5);
        this.f16646f = null;
        this.f16644d = new AtomicLong(0L);
    }

    /* renamed from: W */
    public static boolean m18188W(String str) {
        C7297q.m1887f(str);
        if (str.charAt(0) == '_' && !str.equals("_ep")) {
            return false;
        }
        return true;
    }

    /* renamed from: X */
    public static boolean m18187X(Context context) {
        ActivityInfo receiverInfo;
        C7297q.m1883j(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* renamed from: Y */
    public static boolean m18186Y(Context context, boolean z) {
        C7297q.m1883j(context);
        if (Build.VERSION.SDK_INT >= 24) {
            return m18176i0(context, "com.google.android.gms.measurement.AppMeasurementJobService");
        }
        return m18176i0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* renamed from: e0 */
    public static final boolean m18180e0(String str) {
        C7297q.m1883j(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* renamed from: h0 */
    public static boolean m18177h0(String str, String[] strArr) {
        C7297q.m1883j(strArr);
        for (String str2 : strArr) {
            if (m18185Z(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q0 */
    public static long m18160q0(byte[] bArr) {
        boolean z;
        C7297q.m1883j(bArr);
        int length = bArr.length;
        int i = 0;
        if (length > 0) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1880m(z);
        long j = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            j += (bArr[i2] & 255) << i;
            i += 8;
        }
        return j;
    }

    /* renamed from: H */
    public final boolean m18200H(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (!m18180e0(str)) {
                if (this.f17008a.m18522l()) {
                    this.f17008a.mo17858F().m18017n().m18041b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", C3789q3.m18010u(str));
                }
                return false;
            }
            return true;
        }
        C0909ud.m25089b();
        if (!this.f17008a.m18513u().m18356w(null, C3621c3.f16366f0) || TextUtils.isEmpty(str3)) {
            if (!TextUtils.isEmpty(str2)) {
                if (!m18180e0(str2)) {
                    this.f17008a.mo17858F().m18017n().m18041b("Invalid admob_app_id. Analytics disabled.", C3789q3.m18010u(str2));
                    return false;
                }
                return true;
            }
            if (this.f17008a.m18522l()) {
                this.f17008a.mo17858F().m18017n().m18042a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        }
        return true;
    }

    /* renamed from: R */
    public final boolean m18193R(String str) {
        mo17839c();
        if (C3325e.m19140a(this.f17008a.mo17856O()).m19148a(str) == 0) {
            return true;
        }
        this.f17008a.mo17858F().m18019l().m18041b("Permission not granted", str);
        return false;
    }

    /* renamed from: S */
    public final boolean m18192S(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String m18363p = this.f17008a.m18513u().m18363p();
        this.f17008a.mo17857G();
        return m18363p.equals(str);
    }

    /* renamed from: b0 */
    public final boolean m18183b0(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            C7297q.m1883j(str);
            if (!str.equals(str2)) {
                return true;
            }
            return false;
        } else if (isEmpty && isEmpty2) {
            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                if (!str3.equals(str4)) {
                    return true;
                }
                return false;
            } else if (!TextUtils.isEmpty(str4)) {
                return true;
            } else {
                return false;
            }
        } else if (!isEmpty) {
            if (TextUtils.isEmpty(str4)) {
                return false;
            }
            if (TextUtils.isEmpty(str3) || !str3.equals(str4)) {
                return true;
            }
            return false;
        } else if (TextUtils.isEmpty(str3) || !str3.equals(str4)) {
            return true;
        } else {
            return false;
        }
    }

    @Override // p070g5.AbstractC3863w5
    /* renamed from: d */
    public final void mo17923d() {
        mo17839c();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                this.f17008a.mo17858F().m18013r().m18042a("Utils falling back to Random for random id");
            }
        }
        this.f16644d.set(nextLong);
    }

    /* renamed from: m */
    public final URL m18169m(long j, String str, String str2, long j2) {
        try {
            C7297q.m1887f(str2);
            C7297q.m1887f(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 43042L, Integer.valueOf(m18164o0())), str2, str, Long.valueOf(j2));
            if (str.equals(this.f17008a.m18513u().m18362q())) {
                format = format.concat("&ddl_test=1");
            }
            return new URL(format);
        } catch (IllegalArgumentException | MalformedURLException e) {
            this.f17008a.mo17858F().m18018m().m18041b("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    /* renamed from: o */
    public final SecureRandom m18165o() {
        mo17839c();
        if (this.f16643c == null) {
            this.f16643c = new SecureRandom();
        }
        return this.f16643c;
    }

    /* renamed from: p0 */
    public final int m18162p0(int i) {
        return C6746h.m3490f().mo3488h(this.f17008a.mo17856O(), C6756m.f35427a);
    }

    /* renamed from: r */
    public final void m18159r(Bundle bundle, int i, String str, String str2, Object obj) {
        if (m18181d0(bundle, i)) {
            this.f17008a.m18513u();
            bundle.putString("_ev", m18171l(str, 40, true));
            if (obj != null) {
                C7297q.m1883j(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    /* renamed from: w0 */
    public final C3833u m18148w0(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        Bundle bundle2;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (m18172k0(str2) == 0) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            Bundle bundle3 = bundle2;
            bundle3.putString("_o", str3);
            Bundle m18150v0 = m18150v0(str, str2, bundle3, C1046g.m24772b("_o"), true);
            if (z) {
                m18150v0 = m18152u0(m18150v0);
            }
            C7297q.m1883j(m18150v0);
            return new C3833u(str2, new C3809s(m18150v0), str3, j);
        }
        this.f17008a.mo17858F().m18018m().m18041b("Invalid conditional property event name", this.f17008a.m18509y().m18071f(str2));
        throw new IllegalArgumentException();
    }

    /* renamed from: z */
    public final void m18145z(InterfaceC0693i1 interfaceC0693i1, Bundle bundle) {
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error returning bundle value to wrapper", e);
        }
    }
}
