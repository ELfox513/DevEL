package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import p045d7.C3332b;
import p063f7.C3528c;
import p063f7.C3529d;
import p063f7.C3536k;
import p090i7.C4153k;
import p099j7.C4381h;
import p099j7.C4384j;
/* loaded from: classes2.dex */
public class FirebasePerfUrlConnection {
    @Keep
    public static Object getContent(URL url) {
        return m22923a(new C4384j(url), C4153k.m17283k(), new C4381h());
    }

    @Keep
    public static InputStream openStream(URL url) {
        return m22921c(new C4384j(url), C4153k.m17283k(), new C4381h());
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) {
        return m22922b(new C4384j(url), clsArr, C4153k.m17283k(), new C4381h());
    }

    @Keep
    public static Object instrument(Object obj) {
        if (obj instanceof HttpsURLConnection) {
            return new C3529d((HttpsURLConnection) obj, new C4381h(), C3332b.m19114j(C4153k.m17283k()));
        }
        if (obj instanceof HttpURLConnection) {
            return new C3528c((HttpURLConnection) obj, new C4381h(), C3332b.m19114j(C4153k.m17283k()));
        }
        return obj;
    }

    /* renamed from: a */
    public static Object m22923a(C4384j c4384j, C4153k c4153k, C4381h c4381h) {
        c4381h.m16729n();
        long m16730l = c4381h.m16730l();
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            URLConnection m16725a = c4384j.m16725a();
            if (m16725a instanceof HttpsURLConnection) {
                return new C3529d((HttpsURLConnection) m16725a, c4381h, m19114j).getContent();
            }
            if (m16725a instanceof HttpURLConnection) {
                return new C3528c((HttpURLConnection) m16725a, c4381h, m19114j).getContent();
            }
            return m16725a.getContent();
        } catch (IOException e) {
            m19114j.m19123D(m16730l);
            m19114j.m19119J(c4381h.m16732h());
            m19114j.m19117L(c4384j.toString());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: b */
    public static Object m22922b(C4384j c4384j, Class[] clsArr, C4153k c4153k, C4381h c4381h) {
        c4381h.m16729n();
        long m16730l = c4381h.m16730l();
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            URLConnection m16725a = c4384j.m16725a();
            if (m16725a instanceof HttpsURLConnection) {
                return new C3529d((HttpsURLConnection) m16725a, c4381h, m19114j).getContent(clsArr);
            }
            if (m16725a instanceof HttpURLConnection) {
                return new C3528c((HttpURLConnection) m16725a, c4381h, m19114j).getContent(clsArr);
            }
            return m16725a.getContent(clsArr);
        } catch (IOException e) {
            m19114j.m19123D(m16730l);
            m19114j.m19119J(c4381h.m16732h());
            m19114j.m19117L(c4384j.toString());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: c */
    public static InputStream m22921c(C4384j c4384j, C4153k c4153k, C4381h c4381h) {
        c4381h.m16729n();
        long m16730l = c4381h.m16730l();
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            URLConnection m16725a = c4384j.m16725a();
            if (m16725a instanceof HttpsURLConnection) {
                return new C3529d((HttpsURLConnection) m16725a, c4381h, m19114j).getInputStream();
            }
            if (m16725a instanceof HttpURLConnection) {
                return new C3528c((HttpURLConnection) m16725a, c4381h, m19114j).getInputStream();
            }
            return m16725a.getInputStream();
        } catch (IOException e) {
            m19114j.m19123D(m16730l);
            m19114j.m19119J(c4381h.m16732h());
            m19114j.m19117L(c4384j.toString());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }
}
