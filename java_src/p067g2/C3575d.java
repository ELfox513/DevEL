package p067g2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.net.HttpRequestHeader;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.badlogic.gdx.net.HttpStatus;
import com.prineside.tdi2.tiles.CoreTile;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import p058f2.C3503b;
import p067g2.C3575d;
import p076h2.AbstractC3945a;
import p076h2.AbstractC3971j;
import p076h2.AbstractC3972k;
import p076h2.AbstractC3975l;
import p076h2.AbstractC3977m;
import p076h2.AbstractC3979n;
import p076h2.AbstractC3980o;
import p076h2.EnumC3984p;
import p085i2.AbstractC4104h;
import p085i2.C4103g;
import p094j2.AbstractC4315f;
import p094j2.AbstractC4317g;
import p094j2.InterfaceC4325m;
import p112l2.C4560a;
import p116l6.C4569c;
import p116l6.InterfaceC4567a;
import p121m2.C4625b;
import p121m2.InterfaceC4624a;
import p121m2.InterfaceC4626c;
import p166r2.InterfaceC5525a;
/* renamed from: g2.d */
/* loaded from: classes.dex */
public final class C3575d implements InterfaceC4325m {

    /* renamed from: a */
    public final InterfaceC4567a f16153a;

    /* renamed from: b */
    public final ConnectivityManager f16154b;

    /* renamed from: c */
    public final Context f16155c;

    /* renamed from: d */
    public final URL f16156d;

    /* renamed from: e */
    public final InterfaceC5525a f16157e;

    /* renamed from: f */
    public final InterfaceC5525a f16158f;

    /* renamed from: g */
    public final int f16159g;

    public C3575d(Context context, InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2, int i) {
        this.f16153a = AbstractC3971j.m17657b();
        this.f16155c = context;
        this.f16154b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f16156d = m18592n(C3572a.f16144c);
        this.f16157e = interfaceC5525a2;
        this.f16158f = interfaceC5525a;
        this.f16159g = i;
    }

    /* renamed from: j */
    public static TelephonyManager m18596j(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: g2.d$a */
    /* loaded from: classes.dex */
    public static final class C3576a {

        /* renamed from: a */
        public final URL f16160a;

        /* renamed from: b */
        public final AbstractC3971j f16161b;

        /* renamed from: c */
        public final String f16162c;

        /* renamed from: a */
        public C3576a m18591a(URL url) {
            return new C3576a(url, this.f16161b, this.f16162c);
        }

        public C3576a(URL url, AbstractC3971j abstractC3971j, String str) {
            this.f16160a = url;
            this.f16161b = abstractC3971j;
            this.f16162c = str;
        }
    }

    /* renamed from: g2.d$b */
    /* loaded from: classes.dex */
    public static final class C3577b {

        /* renamed from: a */
        public final int f16163a;

        /* renamed from: b */
        public final URL f16164b;

        /* renamed from: c */
        public final long f16165c;

        public C3577b(int i, URL url, long j) {
            this.f16163a = i;
            this.f16164b = url;
            this.f16165c = j;
        }
    }

    /* renamed from: f */
    public static int m18600f(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return AbstractC3980o.EnumC3982b.UNKNOWN_MOBILE_SUBTYPE.m17603d();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return AbstractC3980o.EnumC3982b.COMBINED.m17603d();
        }
        if (AbstractC3980o.EnumC3982b.m17604c(subtype) == null) {
            return 0;
        }
        return subtype;
    }

    /* renamed from: g */
    public static int m18599g(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return AbstractC3980o.EnumC3983c.NONE.m17601d();
        }
        return networkInfo.getType();
    }

    /* renamed from: l */
    public static /* synthetic */ C3576a m18594l(C3576a c3576a, C3577b c3577b) {
        URL url = c3577b.f16164b;
        if (url != null) {
            C4560a.m16005a("CctTransportBackend", "Following redirect to: %s", url);
            return c3576a.m18591a(c3577b.f16164b);
        }
        return null;
    }

    /* renamed from: m */
    public static InputStream m18593m(InputStream inputStream, String str) {
        if ("gzip".equals(str)) {
            return new GZIPInputStream(inputStream);
        }
        return inputStream;
    }

    /* renamed from: n */
    public static URL m18592n(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    @Override // p094j2.InterfaceC4325m
    /* renamed from: a */
    public AbstractC4104h mo16813a(AbstractC4104h abstractC4104h) {
        NetworkInfo activeNetworkInfo = this.f16154b.getActiveNetworkInfo();
        return abstractC4104h.m17387l().m17386a("sdk-version", Build.VERSION.SDK_INT).m17384c("model", Build.MODEL).m17384c("hardware", Build.HARDWARE).m17384c("device", Build.DEVICE).m17384c("product", Build.PRODUCT).m17384c("os-uild", Build.ID).m17384c("manufacturer", Build.MANUFACTURER).m17384c("fingerprint", Build.FINGERPRINT).m17385b("tz-offset", m18595k()).m17386a("net-type", m18599g(activeNetworkInfo)).m17386a("mobile-subtype", m18600f(activeNetworkInfo)).m17384c("country", Locale.getDefault().getCountry()).m17384c("locale", Locale.getDefault().getLanguage()).m17384c("mcc_mnc", m18596j(this.f16155c).getSimOperator()).m17384c("application_build", Integer.toString(m18598h(this.f16155c))).mo17383d();
    }

    /* renamed from: e */
    public final C3577b m18601e(C3576a c3576a) {
        C4560a.m16005a("CctTransportBackend", "Making request to: %s", c3576a.f16160a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) c3576a.f16160a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f16159g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod(Net.HttpMethods.POST);
        httpURLConnection.setRequestProperty(HttpRequestHeader.UserAgent, String.format("datatransport/%s android/", "3.0.0"));
        httpURLConnection.setRequestProperty(HttpResponseHeader.ContentEncoding, "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty(HttpRequestHeader.AcceptEncoding, "gzip");
        String str = c3576a.f16162c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f16153a.mo15445a(c3576a.f16161b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                C4560a.m16001e("CctTransportBackend", "Status Code: " + responseCode);
                C4560a.m16001e("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                C4560a.m16001e("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField(HttpResponseHeader.ContentEncoding));
                if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                    if (responseCode != 200) {
                        return new C3577b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream m18593m = m18593m(inputStream, httpURLConnection.getHeaderField(HttpResponseHeader.ContentEncoding));
                        C3577b c3577b = new C3577b(responseCode, null, AbstractC3979n.m17612b(new BufferedReader(new InputStreamReader(m18593m))).mo17611c());
                        if (m18593m != null) {
                            m18593m.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        return c3577b;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                            }
                        }
                        throw th;
                    }
                }
                return new C3577b(responseCode, new URL(httpURLConnection.getHeaderField(HttpResponseHeader.Location)), 0L);
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th4) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                    }
                }
                throw th3;
            }
        } catch (ConnectException e) {
            e = e;
            C4560a.m16003c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C3577b(500, null, 0L);
        } catch (UnknownHostException e2) {
            e = e2;
            C4560a.m16003c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C3577b(500, null, 0L);
        } catch (IOException e3) {
            e = e3;
            C4560a.m16003c("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new C3577b(HttpStatus.SC_BAD_REQUEST, null, 0L);
        } catch (C4569c e4) {
            e = e4;
            C4560a.m16003c("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new C3577b(HttpStatus.SC_BAD_REQUEST, null, 0L);
        }
    }

    /* renamed from: i */
    public final AbstractC3971j m18597i(AbstractC4315f abstractC4315f) {
        AbstractC3975l.AbstractC3976a m17640j;
        HashMap hashMap = new HashMap();
        for (AbstractC4104h abstractC4104h : abstractC4315f.mo16840b()) {
            String mo17389j = abstractC4104h.mo17389j();
            if (!hashMap.containsKey(mo17389j)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(abstractC4104h);
                hashMap.put(mo17389j, arrayList);
            } else {
                ((List) hashMap.get(mo17389j)).add(abstractC4104h);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            AbstractC4104h abstractC4104h2 = (AbstractC4104h) ((List) entry.getValue()).get(0);
            AbstractC3977m.AbstractC3978a mo17622b = AbstractC3977m.m17631a().mo17618f(EnumC3984p.DEFAULT).mo17617g(this.f16158f.getTime()).mo17616h(this.f16157e.getTime()).mo17622b(AbstractC3972k.m17655a().mo17650c(AbstractC3972k.EnumC3974b.ANDROID_FIREBASE).mo17651b(AbstractC3945a.m17690a().mo17659m(Integer.valueOf(abstractC4104h2.m17392g("sdk-version"))).mo17662j(abstractC4104h2.m17397b("model")).mo17666f(abstractC4104h2.m17397b("hardware")).mo17668d(abstractC4104h2.m17397b("device")).mo17660l(abstractC4104h2.m17397b("product")).mo17661k(abstractC4104h2.m17397b("os-uild")).mo17664h(abstractC4104h2.m17397b("manufacturer")).mo17667e(abstractC4104h2.m17397b("fingerprint")).mo17669c(abstractC4104h2.m17397b("country")).mo17665g(abstractC4104h2.m17397b("locale")).mo17663i(abstractC4104h2.m17397b("mcc_mnc")).mo17670b(abstractC4104h2.m17397b("application_build")).mo17671a()).mo17652a());
            try {
                mo17622b.m17615i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                mo17622b.m17614j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (AbstractC4104h abstractC4104h3 : (List) entry.getValue()) {
                C4103g mo17394e = abstractC4104h3.mo17394e();
                C3503b m17399b = mo17394e.m17399b();
                if (m17399b.equals(C3503b.m18748b("proto"))) {
                    m17640j = AbstractC3975l.m17640j(mo17394e.m17400a());
                } else if (m17399b.equals(C3503b.m18748b("json"))) {
                    m17640j = AbstractC3975l.m17641i(new String(mo17394e.m17400a(), Charset.forName("UTF-8")));
                } else {
                    C4560a.m16000f("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", m17399b);
                }
                m17640j.mo17637c(abstractC4104h3.mo17393f()).mo17636d(abstractC4104h3.mo17388k()).mo17632h(abstractC4104h3.m17391h("tz-offset")).mo17635e(AbstractC3980o.m17610a().mo17605c(AbstractC3980o.EnumC3983c.m17602c(abstractC4104h3.m17392g("net-type"))).mo17606b(AbstractC3980o.EnumC3982b.m17604c(abstractC4104h3.m17392g("mobile-subtype"))).mo17607a());
                if (abstractC4104h3.mo17395d() != null) {
                    m17640j.mo17638b(abstractC4104h3.mo17395d());
                }
                arrayList3.add(m17640j.mo17639a());
            }
            mo17622b.mo17621c(arrayList3);
            arrayList2.add(mo17622b.mo17623a());
        }
        return AbstractC3971j.m17658a(arrayList2);
    }

    /* renamed from: h */
    public static int m18598h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            C4560a.m16003c("CctTransportBackend", "Unable to find version code for package", e);
            return -1;
        }
    }

    /* renamed from: k */
    public static long m18595k() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    }

    @Override // p094j2.InterfaceC4325m
    /* renamed from: b */
    public AbstractC4317g mo16812b(AbstractC4315f abstractC4315f) {
        AbstractC3971j m18597i = m18597i(abstractC4315f);
        URL url = this.f16156d;
        String str = null;
        if (abstractC4315f.mo16839c() != null) {
            try {
                C3572a m18606c = C3572a.m18606c(abstractC4315f.mo16839c());
                if (m18606c.m18605d() != null) {
                    str = m18606c.m18605d();
                }
                if (m18606c.m18604e() != null) {
                    url = m18592n(m18606c.m18604e());
                }
            } catch (IllegalArgumentException unused) {
                return AbstractC4317g.m16835a();
            }
        }
        try {
            C3577b c3577b = (C3577b) C4625b.m15913a(5, new C3576a(url, m18597i, str), new InterfaceC4624a() { // from class: g2.b
                @Override // p121m2.InterfaceC4624a
                public final Object apply(Object obj) {
                    C3575d.C3577b m18601e;
                    m18601e = C3575d.this.m18601e((C3575d.C3576a) obj);
                    return m18601e;
                }
            }, new InterfaceC4626c() { // from class: g2.c
                @Override // p121m2.InterfaceC4626c
                /* renamed from: a */
                public final Object mo15912a(Object obj, Object obj2) {
                    C3575d.C3576a m18594l;
                    m18594l = C3575d.m18594l((C3575d.C3576a) obj, (C3575d.C3577b) obj2);
                    return m18594l;
                }
            });
            int i = c3577b.f16163a;
            if (i == 200) {
                return AbstractC4317g.m16832d(c3577b.f16165c);
            }
            if (i < 500 && i != 404) {
                return AbstractC4317g.m16835a();
            }
            return AbstractC4317g.m16831e();
        } catch (IOException e) {
            C4560a.m16003c("CctTransportBackend", "Could not make request to the backend", e);
            return AbstractC4317g.m16831e();
        }
    }

    public C3575d(Context context, InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2) {
        this(context, interfaceC5525a, interfaceC5525a2, 40000);
    }
}
