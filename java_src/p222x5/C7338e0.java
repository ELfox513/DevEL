package p222x5;

import android.app.ApplicationExitInfo;
import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import p028c6.C1075g;
import p028c6.InterfaceC1076h;
import p044d6.C3329c;
import p053e6.InterfaceC3385e;
import p080h6.InterfaceC4058d;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4330a;
import p196u5.C6930f;
import p230y5.C7503b;
import p238z5.AbstractC7762a0;
import p238z5.C7806b0;
/* renamed from: x5.e0 */
/* loaded from: classes2.dex */
public class C7338e0 {

    /* renamed from: a */
    public final C7374n f36830a;

    /* renamed from: b */
    public final C1075g f36831b;

    /* renamed from: c */
    public final C3329c f36832c;

    /* renamed from: d */
    public final C7503b f36833d;

    /* renamed from: e */
    public final C7343g0 f36834e;

    /* renamed from: l */
    public static /* synthetic */ int m1810l(AbstractC7762a0.AbstractC7766c abstractC7766c, AbstractC7762a0.AbstractC7766c abstractC7766c2) {
        return abstractC7766c.mo297b().compareTo(abstractC7766c2.mo297b());
    }

    /* renamed from: c */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d m1819c(AbstractC7762a0.AbstractC7772e.AbstractC7779d abstractC7779d) {
        return m1818d(abstractC7779d, this.f36833d, this.f36834e);
    }

    /* renamed from: i */
    public void m1813i(long j, String str) {
        this.f36831b.m24659n(str, j);
    }

    /* renamed from: k */
    public boolean m1811k() {
        return this.f36831b.m24649x();
    }

    /* renamed from: m */
    public List<String> m1809m() {
        return this.f36831b.m24688E();
    }

    /* renamed from: q */
    public final void m1805q(Throwable th, Thread thread, String str, String str2, long j, boolean z) {
        this.f36831b.m24684I(m1819c(this.f36830a.m1663c(th, thread, str2, j, 4, 8, z)), str, str2.equals("crash"));
    }

    /* renamed from: s */
    public void m1803s() {
        this.f36831b.m24661l();
    }

    /* renamed from: f */
    public static String m1816f(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName(StandardCharsets.UTF_8.name())));
        while (true) {
            try {
                int read = bufferedReader.read();
                if (read != -1) {
                    sb.append((char) read);
                } else {
                    String sb2 = sb.toString();
                    bufferedReader.close();
                    return sb2;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                }
                throw th;
            }
        }
    }

    /* renamed from: g */
    public static C7338e0 m1815g(Context context, C7386v c7386v, InterfaceC1076h interfaceC1076h, C7329a c7329a, C7503b c7503b, C7343g0 c7343g0, InterfaceC4058d interfaceC4058d, InterfaceC3385e interfaceC3385e) {
        return new C7338e0(new C7374n(context, c7386v, c7329a, interfaceC4058d), new C1075g(new File(interfaceC1076h.mo24646a()), interfaceC3385e), C3329c.m19136c(context), c7503b, c7343g0);
    }

    /* renamed from: j */
    public static List<AbstractC7762a0.AbstractC7766c> m1812j(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(AbstractC7762a0.AbstractC7766c.m362a().mo294b(entry.getKey()).mo293c(entry.getValue()).mo295a());
        }
        Collections.sort(arrayList, new Comparator() { // from class: x5.c0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m1810l;
                m1810l = C7338e0.m1810l((AbstractC7762a0.AbstractC7766c) obj, (AbstractC7762a0.AbstractC7766c) obj2);
                return m1810l;
            }
        });
        return arrayList;
    }

    /* renamed from: h */
    public void m1814h(String str, List<InterfaceC7330a0> list) {
        ArrayList arrayList = new ArrayList();
        for (InterfaceC7330a0 interfaceC7330a0 : list) {
            AbstractC7762a0.AbstractC7768d.AbstractC7770b mo1616c = interfaceC7330a0.mo1616c();
            if (mo1616c != null) {
                arrayList.add(mo1616c);
            }
        }
        this.f36831b.m24658o(str, AbstractC7762a0.AbstractC7768d.m361a().mo289b(C7806b0.m320d(arrayList)).mo290a());
    }

    /* renamed from: n */
    public void m1808n(String str, long j) {
        this.f36831b.m24683J(this.f36830a.m1662d(str, j));
    }

    /* renamed from: p */
    public void m1806p(String str, ApplicationExitInfo applicationExitInfo, C7503b c7503b, C7343g0 c7343g0) {
        if (applicationExitInfo.getTimestamp() < this.f36831b.m24650w(str) || applicationExitInfo.getReason() != 6) {
            return;
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d m1664b = this.f36830a.m1664b(m1817e(applicationExitInfo));
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3020b("Persisting anr for session " + str);
        this.f36831b.m24684I(m1818d(m1664b, c7503b, c7343g0), str, true);
    }

    /* renamed from: t */
    public AbstractC4346i<Void> m1802t(Executor executor) {
        List<AbstractC7375o> m24687F = this.f36831b.m24687F();
        ArrayList arrayList = new ArrayList();
        for (AbstractC7375o abstractC7375o : m24687F) {
            arrayList.add(this.f36832c.m19132g(abstractC7375o).mo16794h(executor, new InterfaceC4330a() { // from class: x5.d0
                @Override // p097j5.InterfaceC4330a
                /* renamed from: a */
                public final Object mo1688a(AbstractC4346i abstractC4346i) {
                    boolean m1807o;
                    m1807o = C7338e0.this.m1807o(abstractC4346i);
                    return Boolean.valueOf(m1807o);
                }
            }));
        }
        return C4352l.m16766e(arrayList);
    }

    public C7338e0(C7374n c7374n, C1075g c1075g, C3329c c3329c, C7503b c7503b, C7343g0 c7343g0) {
        this.f36830a = c7374n;
        this.f36831b = c1075g;
        this.f36832c = c3329c;
        this.f36833d = c7503b;
        this.f36834e = c7343g0;
    }

    /* renamed from: e */
    public static AbstractC7762a0.AbstractC7763a m1817e(ApplicationExitInfo applicationExitInfo) {
        String str;
        try {
            str = m1816f(applicationExitInfo.getTraceInputStream());
        } catch (IOException | NullPointerException e) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3011k("Could not get input trace in application exit info: " + applicationExitInfo.toString() + " Error: " + e);
            str = null;
        }
        return AbstractC7762a0.AbstractC7763a.m363a().mo309b(applicationExitInfo.getImportance()).mo307d(applicationExitInfo.getProcessName()).mo305f(applicationExitInfo.getReason()).mo303h(applicationExitInfo.getTimestamp()).mo308c(applicationExitInfo.getPid()).mo306e(applicationExitInfo.getPss()).mo304g(applicationExitInfo.getRss()).mo302i(str).mo310a();
    }

    /* renamed from: d */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d m1818d(AbstractC7762a0.AbstractC7772e.AbstractC7779d abstractC7779d, C7503b c7503b, C7343g0 c7343g0) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b mo219g = abstractC7779d.mo219g();
        String m1368c = c7503b.m1368c();
        if (m1368c != null) {
            mo219g.mo215d(AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d.m341a().mo129b(m1368c).mo130a());
        } else {
            C6930f.m3016f().m3013i("No log data to include with this event.");
        }
        List<AbstractC7762a0.AbstractC7766c> m1812j = m1812j(c7343g0.m1768a());
        List<AbstractC7762a0.AbstractC7766c> m1812j2 = m1812j(c7343g0.m1767b());
        if (!m1812j.isEmpty()) {
            mo219g.mo217b(abstractC7779d.mo224b().mo207g().mo204c(C7806b0.m320d(m1812j)).mo202e(C7806b0.m320d(m1812j2)).mo206a());
        }
        return mo219g.mo218a();
    }

    /* renamed from: o */
    public final boolean m1807o(AbstractC4346i<AbstractC7375o> abstractC4346i) {
        if (abstractC4346i.mo16786p()) {
            AbstractC7375o mo16790l = abstractC4346i.mo16790l();
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3020b("Crashlytics report successfully enqueued to DataTransport: " + mo16790l.mo1639c());
            this.f36831b.m24660m(mo16790l.mo1639c());
            return true;
        }
        C6930f.m3016f().m3010l("Crashlytics report could not be enqueued to DataTransport", abstractC4346i.mo16791k());
        return false;
    }

    /* renamed from: r */
    public void m1804r(Throwable th, Thread thread, String str, long j) {
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3013i("Persisting fatal event for session " + str);
        m1805q(th, thread, str, "crash", j, true);
    }
}
