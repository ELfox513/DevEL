package p168r4;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: r4.ja3 */
/* loaded from: classes2.dex */
public final class ja3 {

    /* renamed from: a */
    public static final Logger f25977a = Logger.getLogger(ja3.class.getName());

    /* renamed from: b */
    public static final ConcurrentMap<String, ia3> f25978b = new ConcurrentHashMap();

    /* renamed from: c */
    public static final ConcurrentMap<String, ha3> f25979c = new ConcurrentHashMap();

    /* renamed from: d */
    public static final ConcurrentMap<String, Boolean> f25980d = new ConcurrentHashMap();

    /* renamed from: e */
    public static final ConcurrentMap<String, d93<?>> f25981e = new ConcurrentHashMap();

    /* renamed from: f */
    public static final ConcurrentMap<Class<?>, ba3<?, ?>> f25982f = new ConcurrentHashMap();

    /* renamed from: g */
    public static final ConcurrentMap<String, l93> f25983g = new ConcurrentHashMap();

    /* renamed from: m */
    public static synchronized Map<String, l93> m10356m() {
        Map<String, l93> unmodifiableMap;
        synchronized (ja3.class) {
            unmodifiableMap = Collections.unmodifiableMap(f25983g);
        }
        return unmodifiableMap;
    }

    /* renamed from: n */
    public static Class<?> m10355n(Class<?> cls) {
        ba3<?, ?> ba3Var = f25982f.get(cls);
        if (ba3Var == null) {
            return null;
        }
        return ba3Var.mo8854b();
    }

    @Deprecated
    /* renamed from: a */
    public static d93<?> m10368a(String str) {
        if (str != null) {
            ConcurrentMap<String, d93<?>> concurrentMap = f25981e;
            Locale locale = Locale.US;
            d93<?> d93Var = concurrentMap.get(str.toLowerCase(locale));
            if (d93Var == null) {
                String format = String.format("no catalogue found for %s. ", str);
                if (str.toLowerCase(locale).startsWith("tinkaead")) {
                    format = String.valueOf(format).concat("Maybe call AeadConfig.register().");
                }
                if (!str.toLowerCase(locale).startsWith("tinkdeterministicaead")) {
                    if (!str.toLowerCase(locale).startsWith("tinkstreamingaead")) {
                        if (!str.toLowerCase(locale).startsWith("tinkhybriddecrypt") && !str.toLowerCase(locale).startsWith("tinkhybridencrypt")) {
                            if (!str.toLowerCase(locale).startsWith("tinkmac")) {
                                if (!str.toLowerCase(locale).startsWith("tinkpublickeysign") && !str.toLowerCase(locale).startsWith("tinkpublickeyverify")) {
                                    if (str.toLowerCase(locale).startsWith("tink")) {
                                        format = String.valueOf(format).concat("Maybe call TinkConfig.register().");
                                    }
                                } else {
                                    format = String.valueOf(format).concat("Maybe call SignatureConfig.register().");
                                }
                            } else {
                                format = String.valueOf(format).concat("Maybe call MacConfig.register().");
                            }
                        } else {
                            format = String.valueOf(format).concat("Maybe call HybridConfig.register().");
                        }
                    } else {
                        format = String.valueOf(format).concat("Maybe call StreamingAeadConfig.register().");
                    }
                } else {
                    format = String.valueOf(format).concat("Maybe call DeterministicAeadConfig.register().");
                }
                throw new GeneralSecurityException(format);
            }
            return d93Var;
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }

    /* renamed from: b */
    public static synchronized <P> void m10367b(i93<P> i93Var, boolean z) {
        synchronized (ja3.class) {
            if (i93Var != null) {
                String mo10088e = i93Var.mo10088e();
                m10353p(mo10088e, i93Var.getClass(), Collections.emptyMap(), z);
                f25978b.putIfAbsent(mo10088e, new ea3(i93Var));
                f25980d.put(mo10088e, Boolean.valueOf(z));
            } else {
                throw new IllegalArgumentException("key manager must be non-null.");
            }
        }
    }

    /* renamed from: c */
    public static synchronized <KeyProtoT extends ao3> void m10366c(q93<KeyProtoT> q93Var, boolean z) {
        synchronized (ja3.class) {
            String mo4339b = q93Var.mo4339b();
            m10353p(mo4339b, q93Var.getClass(), q93Var.mo4336h().mo5371e(), true);
            if (ub3.m6560a(q93Var.mo5772j())) {
                ConcurrentMap<String, ia3> concurrentMap = f25978b;
                if (!concurrentMap.containsKey(mo4339b)) {
                    concurrentMap.put(mo4339b, new fa3(q93Var));
                    f25979c.put(mo4339b, new ha3(q93Var));
                    m10352q(mo4339b, q93Var.mo4336h().mo5371e());
                }
                f25980d.put(mo4339b, Boolean.TRUE);
            } else {
                String valueOf = String.valueOf(q93Var.getClass());
                StringBuilder sb = new StringBuilder(valueOf.length() + 61);
                sb.append("failed to register key manager ");
                sb.append(valueOf);
                sb.append(" as it is not FIPS compatible.");
                throw new GeneralSecurityException(sb.toString());
            }
        }
    }

    /* renamed from: d */
    public static synchronized <KeyProtoT extends ao3, PublicKeyProtoT extends ao3> void m10365d(da3<KeyProtoT, PublicKeyProtoT> da3Var, q93<PublicKeyProtoT> q93Var, boolean z) {
        Class<?> mo10698c;
        synchronized (ja3.class) {
            m10353p("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", da3Var.getClass(), da3Var.mo4336h().mo5371e(), true);
            m10353p("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", q93Var.getClass(), Collections.emptyMap(), false);
            if (ub3.m6560a(1)) {
                if (ub3.m6560a(1)) {
                    ConcurrentMap<String, ia3> concurrentMap = f25978b;
                    if (concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") && (mo10698c = concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").mo10698c()) != null && !mo10698c.getName().equals(q93Var.getClass().getName())) {
                        f25977a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey with inconsistent public key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
                        throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", da3Var.getClass().getName(), mo10698c.getName(), q93Var.getClass().getName()));
                    }
                    if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") || concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").mo10698c() == null) {
                        concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new ga3(da3Var, q93Var));
                        f25979c.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new ha3(da3Var));
                        m10352q("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", da3Var.mo4336h().mo5371e());
                    }
                    ConcurrentMap<String, Boolean> concurrentMap2 = f25980d;
                    concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", Boolean.TRUE);
                    if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
                        concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", new fa3(q93Var));
                    }
                    concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", Boolean.FALSE);
                } else {
                    String valueOf = String.valueOf(q93Var.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 61);
                    sb.append("failed to register key manager ");
                    sb.append(valueOf);
                    sb.append(" as it is not FIPS compatible.");
                    throw new GeneralSecurityException(sb.toString());
                }
            } else {
                String valueOf2 = String.valueOf(da3Var.getClass());
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 61);
                sb2.append("failed to register key manager ");
                sb2.append(valueOf2);
                sb2.append(" as it is not FIPS compatible.");
                throw new GeneralSecurityException(sb2.toString());
            }
        }
    }

    /* renamed from: e */
    public static synchronized <B, P> void m10364e(ba3<B, P> ba3Var) {
        synchronized (ja3.class) {
            if (ba3Var != null) {
                Class<P> mo8855a = ba3Var.mo8855a();
                ConcurrentMap<Class<?>, ba3<?, ?>> concurrentMap = f25982f;
                if (concurrentMap.containsKey(mo8855a)) {
                    ba3<?, ?> ba3Var2 = concurrentMap.get(mo8855a);
                    if (!ba3Var.getClass().getName().equals(ba3Var2.getClass().getName())) {
                        f25977a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", "Attempted overwrite of a registered PrimitiveWrapper for type ".concat(mo8855a.toString()));
                        throw new GeneralSecurityException(String.format("PrimitiveWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", mo8855a.getName(), ba3Var2.getClass().getName(), ba3Var.getClass().getName()));
                    }
                }
                concurrentMap.put(mo8855a, ba3Var);
            } else {
                throw new IllegalArgumentException("wrapper must be non-null");
            }
        }
    }

    /* renamed from: g */
    public static synchronized wg3 m10362g(zg3 zg3Var) {
        String str;
        wg3 mo10087p;
        synchronized (ja3.class) {
            i93<?> m10363f = m10363f(zg3Var.m4256C());
            if (f25980d.get(zg3Var.m4256C()).booleanValue()) {
                mo10087p = m10363f.mo10087p(zg3Var.m4255D());
            } else {
                String valueOf = String.valueOf(zg3Var.m4256C());
                if (valueOf.length() != 0) {
                    str = "newKey-operation not permitted for key type ".concat(valueOf);
                } else {
                    str = new String("newKey-operation not permitted for key type ");
                }
                throw new GeneralSecurityException(str);
            }
        }
        return mo10087p;
    }

    /* renamed from: h */
    public static synchronized ao3 m10361h(zg3 zg3Var) {
        String str;
        ao3 mo10086q;
        synchronized (ja3.class) {
            i93<?> m10363f = m10363f(zg3Var.m4256C());
            if (f25980d.get(zg3Var.m4256C()).booleanValue()) {
                mo10086q = m10363f.mo10086q(zg3Var.m4255D());
            } else {
                String valueOf = String.valueOf(zg3Var.m4256C());
                if (valueOf.length() != 0) {
                    str = "newKey-operation not permitted for key type ".concat(valueOf);
                } else {
                    str = new String("newKey-operation not permitted for key type ");
                }
                throw new GeneralSecurityException(str);
            }
        }
        return mo10086q;
    }

    /* renamed from: l */
    public static <B, P> P m10357l(aa3<B> aa3Var, Class<P> cls) {
        String str;
        ba3<?, ?> ba3Var = f25982f.get(cls);
        if (ba3Var == null) {
            String name = aa3Var.m13033e().getName();
            if (name.length() != 0) {
                str = "No wrapper found for ".concat(name);
            } else {
                str = new String("No wrapper found for ");
            }
            throw new GeneralSecurityException(str);
        } else if (ba3Var.mo8854b().equals(aa3Var.m13033e())) {
            return (P) ba3Var.mo8853c(aa3Var);
        } else {
            String obj = ba3Var.mo8854b().toString();
            String obj2 = aa3Var.m13033e().toString();
            StringBuilder sb = new StringBuilder(obj.length() + 44 + obj2.length());
            sb.append("Wrong input primitive class, expected ");
            sb.append(obj);
            sb.append(", got ");
            sb.append(obj2);
            throw new GeneralSecurityException(sb.toString());
        }
    }

    /* renamed from: o */
    public static synchronized ia3 m10354o(String str) {
        ia3 ia3Var;
        String str2;
        synchronized (ja3.class) {
            ConcurrentMap<String, ia3> concurrentMap = f25978b;
            if (!concurrentMap.containsKey(str)) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    str2 = "No key manager found for key type ".concat(valueOf);
                } else {
                    str2 = new String("No key manager found for key type ");
                }
                throw new GeneralSecurityException(str2);
            }
            ia3Var = concurrentMap.get(str);
        }
        return ia3Var;
    }

    /* renamed from: p */
    public static synchronized <KeyProtoT extends ao3, KeyFormatProtoT extends ao3> void m10353p(String str, Class cls, Map<String, n93<KeyFormatProtoT>> map, boolean z) {
        String str2;
        String str3;
        String str4;
        synchronized (ja3.class) {
            ConcurrentMap<String, ia3> concurrentMap = f25978b;
            ia3 ia3Var = concurrentMap.get(str);
            if (ia3Var != null && !ia3Var.mo10699b().equals(cls)) {
                Logger logger = f25977a;
                Level level = Level.WARNING;
                if (str.length() != 0) {
                    str4 = "Attempted overwrite of a registered key manager for key type ".concat(str);
                } else {
                    str4 = new String("Attempted overwrite of a registered key manager for key type ");
                }
                logger.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", str4);
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, ia3Var.mo10699b().getName(), cls.getName()));
            } else if (z) {
                ConcurrentMap<String, Boolean> concurrentMap2 = f25980d;
                if (concurrentMap2.containsKey(str) && !concurrentMap2.get(str).booleanValue()) {
                    if (str.length() != 0) {
                        str3 = "New keys are already disallowed for key type ".concat(str);
                    } else {
                        str3 = new String("New keys are already disallowed for key type ");
                    }
                    throw new GeneralSecurityException(str3);
                } else if (concurrentMap.containsKey(str)) {
                    for (Map.Entry<String, n93<KeyFormatProtoT>> entry : map.entrySet()) {
                        if (!f25983g.containsKey(entry.getKey())) {
                            String key = entry.getKey();
                            StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 79 + str.length());
                            sb.append("Attempted to register a new key template ");
                            sb.append(key);
                            sb.append(" from an existing key manager of type ");
                            sb.append(str);
                            throw new GeneralSecurityException(sb.toString());
                        }
                    }
                } else {
                    for (Map.Entry<String, n93<KeyFormatProtoT>> entry2 : map.entrySet()) {
                        if (f25983g.containsKey(entry2.getKey())) {
                            String valueOf = String.valueOf(entry2.getKey());
                            if (valueOf.length() != 0) {
                                str2 = "Attempted overwrite of a registered key template ".concat(valueOf);
                            } else {
                                str2 = new String("Attempted overwrite of a registered key template ");
                            }
                            throw new GeneralSecurityException(str2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: f */
    public static i93<?> m10363f(String str) {
        return m10354o(str).mo10700a();
    }

    /* renamed from: i */
    public static <P> P m10360i(String str, ao3 ao3Var, Class<P> cls) {
        return (P) m10351r(str, cls).mo10085r(ao3Var);
    }

    /* renamed from: j */
    public static <P> P m10359j(String str, byte[] bArr, Class<P> cls) {
        return (P) m10350s(str, ll3.m9632I(bArr), cls);
    }

    /* renamed from: k */
    public static <P> P m10358k(wg3 wg3Var, Class<P> cls) {
        return (P) m10350s(wg3Var.m5732C(), wg3Var.m5731D(), cls);
    }

    /* renamed from: q */
    public static <KeyFormatProtoT extends ao3> void m10352q(String str, Map<String, n93<KeyFormatProtoT>> map) {
        for (Map.Entry<String, n93<KeyFormatProtoT>> entry : map.entrySet()) {
            f25983g.put(entry.getKey(), l93.m9762c(str, entry.getValue().f28231a.mo6490t(), entry.getValue().f28232b));
        }
    }

    /* renamed from: r */
    public static <P> i93<P> m10351r(String str, Class<P> cls) {
        ia3 m10354o = m10354o(str);
        if (m10354o.mo10696e().contains(cls)) {
            return m10354o.mo10697d(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(m10354o.mo10699b());
        Set<Class<?>> mo10696e = m10354o.mo10696e();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : mo10696e) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder(name.length() + 77 + valueOf.length() + sb2.length());
        sb3.append("Primitive type ");
        sb3.append(name);
        sb3.append(" not supported by key manager of type ");
        sb3.append(valueOf);
        sb3.append(", supported primitives: ");
        sb3.append(sb2);
        throw new GeneralSecurityException(sb3.toString());
    }

    /* renamed from: s */
    public static <P> P m10350s(String str, ll3 ll3Var, Class<P> cls) {
        return (P) m10351r(str, cls).mo10084s(ll3Var);
    }
}
