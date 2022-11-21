package p168r4;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
import p168r4.sj3;
/* renamed from: r4.kj3 */
/* loaded from: classes2.dex */
public final class kj3<T_WRAPPER extends sj3<T_ENGINE>, T_ENGINE> {

    /* renamed from: b */
    public static final Logger f26440b = Logger.getLogger(kj3.class.getName());

    /* renamed from: c */
    public static final List<Provider> f26441c;

    /* renamed from: d */
    public static final boolean f26442d;

    /* renamed from: e */
    public static final kj3<lj3, Cipher> f26443e;

    /* renamed from: f */
    public static final kj3<pj3, Mac> f26444f;

    /* renamed from: g */
    public static final kj3<rj3, Signature> f26445g;

    /* renamed from: h */
    public static final kj3<qj3, MessageDigest> f26446h;

    /* renamed from: i */
    public static final kj3<mj3, KeyAgreement> f26447i;

    /* renamed from: j */
    public static final kj3<oj3, KeyPairGenerator> f26448j;

    /* renamed from: k */
    public static final kj3<nj3, KeyFactory> f26449k;

    /* renamed from: a */
    public final T_WRAPPER f26450a;

    public kj3(T_WRAPPER t_wrapper) {
        this.f26450a = t_wrapper;
    }

    static {
        if (vb3.m6175a()) {
            f26441c = m10018a("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt");
            f26442d = false;
        } else if (ck3.m12445a()) {
            f26441c = m10018a("GmsCore_OpenSSL", "AndroidOpenSSL");
            f26442d = true;
        } else {
            f26441c = new ArrayList();
            f26442d = true;
        }
        f26443e = new kj3<>(new lj3());
        f26444f = new kj3<>(new pj3());
        f26445g = new kj3<>(new rj3());
        f26446h = new kj3<>(new qj3());
        f26447i = new kj3<>(new mj3());
        f26448j = new kj3<>(new oj3());
        f26449k = new kj3<>(new nj3());
    }

    /* renamed from: a */
    public static List<Provider> m10018a(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            } else {
                f26440b.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final T_ENGINE m10017b(String str) {
        Exception exc = null;
        for (Provider provider : f26441c) {
            try {
                return (T_ENGINE) this.f26450a.mo7150a(str, provider);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        if (f26442d) {
            return (T_ENGINE) this.f26450a.mo7150a(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
