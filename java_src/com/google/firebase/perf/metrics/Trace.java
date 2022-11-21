package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.lang.ref.WeakReference;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p029c7.C1078a;
import p045d7.C3330a;
import p045d7.C3333c;
import p054e7.AbstractC3393e;
import p072g7.C3907a;
import p072g7.InterfaceC3909b;
import p090i7.C4153k;
import p099j7.C4368a;
import p099j7.C4381h;
import p231y6.AbstractC7518b;
import p231y6.C7515a;
import p239z6.C7873a;
/* loaded from: classes2.dex */
public class Trace extends AbstractC7518b implements Parcelable, InterfaceC3909b {

    /* renamed from: a */
    public final WeakReference<InterfaceC3909b> f7859a;

    /* renamed from: b */
    public final Trace f7860b;

    /* renamed from: d */
    public final GaugeManager f7861d;

    /* renamed from: k */
    public final String f7862k;

    /* renamed from: p */
    public final Map<String, C3330a> f7863p;

    /* renamed from: q */
    public final Map<String, String> f7864q;

    /* renamed from: r */
    public final List<C3907a> f7865r;

    /* renamed from: s */
    public final List<Trace> f7866s;

    /* renamed from: t */
    public final C4153k f7867t;

    /* renamed from: u */
    public final C4368a f7868u;

    /* renamed from: v */
    public C4381h f7869v;

    /* renamed from: w */
    public C4381h f7870w;

    /* renamed from: x */
    public static final C1078a f7856x = C1078a.m24639e();

    /* renamed from: y */
    public static final Map<String, Trace> f7857y = new ConcurrentHashMap();
    @Keep
    public static final Parcelable.Creator<Trace> CREATOR = new C1430a();

    /* renamed from: z */
    public static final Parcelable.Creator<Trace> f7858z = new C1431b();

    /* renamed from: com.google.firebase.perf.metrics.Trace$a */
    /* loaded from: classes2.dex */
    public class C1430a implements Parcelable.Creator<Trace> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, false, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Trace[] newArray(int i) {
            return new Trace[i];
        }
    }

    /* renamed from: com.google.firebase.perf.metrics.Trace$b */
    /* loaded from: classes2.dex */
    public class C1431b implements Parcelable.Creator<Trace> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, true, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Trace[] newArray(int i) {
            return new Trace[i];
        }
    }

    public /* synthetic */ Trace(Parcel parcel, boolean z, C1430a c1430a) {
        this(parcel, z);
    }

    @Override // android.os.Parcelable
    @Keep
    public int describeContents() {
        return 0;
    }

    @Keep
    public String getAttribute(String str) {
        return this.f7864q.get(str);
    }

    @Keep
    public Map<String, String> getAttributes() {
        return new HashMap(this.f7864q);
    }

    public String getName() {
        return this.f7862k;
    }

    /* renamed from: j */
    public Map<String, C3330a> m22944j() {
        return this.f7863p;
    }

    /* renamed from: l */
    public C4381h m22943l() {
        return this.f7870w;
    }

    /* renamed from: p */
    public C4381h m22941p() {
        return this.f7869v;
    }

    @Keep
    public void putAttribute(String str, String str2) {
        boolean z = false;
        try {
            str = str.trim();
            str2 = str2.trim();
            m22945h(str, str2);
            f7856x.m24642b("Setting attribute '%s' to '%s' on trace '%s'", str, str2, this.f7862k);
            z = true;
        } catch (Exception e) {
            f7856x.m24640d("Can not set attribute '%s' with value '%s' (%s)", str, str2, e.getMessage());
        }
        if (z) {
            this.f7864q.put(str, str2);
        }
    }

    /* renamed from: u */
    public List<Trace> m22940u() {
        return this.f7866s;
    }

    /* renamed from: v */
    public boolean m22939v() {
        return this.f7869v != null;
    }

    /* renamed from: x */
    public boolean m22938x() {
        return m22939v() && !m22937z();
    }

    /* renamed from: z */
    public boolean m22937z() {
        return this.f7870w != null;
    }

    public Trace(String str, C4153k c4153k, C4368a c4368a, C7515a c7515a) {
        this(str, c4153k, c4368a, c7515a, GaugeManager.getInstance());
    }

    /* renamed from: A */
    public final C3330a m22947A(String str) {
        C3330a c3330a = this.f7863p.get(str);
        if (c3330a == null) {
            C3330a c3330a2 = new C3330a(str);
            this.f7863p.put(str, c3330a2);
            return c3330a2;
        }
        return c3330a;
    }

    /* renamed from: B */
    public final void m22946B(C4381h c4381h) {
        if (this.f7866s.isEmpty()) {
            return;
        }
        Trace trace = this.f7866s.get(this.f7866s.size() - 1);
        if (trace.f7870w == null) {
            trace.f7870w = c4381h;
        }
    }

    @Override // p072g7.InterfaceC3909b
    /* renamed from: a */
    public void mo17786a(C3907a c3907a) {
        if (c3907a == null) {
            f7856x.m24635i("Unable to add new SessionId to the Trace. Continuing without it.");
        } else if (m22939v() && !m22937z()) {
            this.f7865r.add(c3907a);
        }
    }

    @Keep
    public long getLongMetric(String str) {
        C3330a c3330a;
        if (str != null) {
            c3330a = this.f7863p.get(str.trim());
        } else {
            c3330a = null;
        }
        if (c3330a == null) {
            return 0L;
        }
        return c3330a.m19131a();
    }

    /* renamed from: n */
    public List<C3907a> m22942n() {
        List<C3907a> unmodifiableList;
        synchronized (this.f7865r) {
            ArrayList arrayList = new ArrayList();
            for (C3907a c3907a : this.f7865r) {
                if (c3907a != null) {
                    arrayList.add(c3907a);
                }
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return unmodifiableList;
    }

    @Override // android.os.Parcelable
    @Keep
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f7860b, 0);
        parcel.writeString(this.f7862k);
        parcel.writeList(this.f7866s);
        parcel.writeMap(this.f7863p);
        parcel.writeParcelable(this.f7869v, 0);
        parcel.writeParcelable(this.f7870w, 0);
        synchronized (this.f7865r) {
            parcel.writeList(this.f7865r);
        }
    }

    public Trace(String str, C4153k c4153k, C4368a c4368a, C7515a c7515a, GaugeManager gaugeManager) {
        super(c7515a);
        this.f7859a = new WeakReference<>(this);
        this.f7860b = null;
        this.f7862k = str.trim();
        this.f7866s = new ArrayList();
        this.f7863p = new ConcurrentHashMap();
        this.f7864q = new ConcurrentHashMap();
        this.f7868u = c4368a;
        this.f7867t = c4153k;
        this.f7865r = Collections.synchronizedList(new ArrayList());
        this.f7861d = gaugeManager;
    }

    public void finalize() {
        try {
            if (m22938x()) {
                f7856x.m24634j("Trace '%s' is started but not stopped when it is destructed!", this.f7862k);
                incrementTsnsCount(1);
            }
        } finally {
            super.finalize();
        }
    }

    /* renamed from: h */
    public final void m22945h(String str, String str2) {
        if (!m22937z()) {
            if (!this.f7864q.containsKey(str) && this.f7864q.size() >= 5) {
                throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Exceeds max limit of number of attributes - %d", 5));
            }
            String m18977d = AbstractC3393e.m18977d(new AbstractMap.SimpleEntry(str, str2));
            if (m18977d == null) {
                return;
            }
            throw new IllegalArgumentException(m18977d);
        }
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Trace '%s' has been stopped", this.f7862k));
    }

    @Keep
    public void incrementMetric(String str, long j) {
        String m18976e = AbstractC3393e.m18976e(str);
        if (m18976e != null) {
            f7856x.m24640d("Cannot increment metric '%s'. Metric name is invalid.(%s)", str, m18976e);
        } else if (!m22939v()) {
            f7856x.m24634j("Cannot increment metric '%s' for trace '%s' because it's not started", str, this.f7862k);
        } else if (m22937z()) {
            f7856x.m24634j("Cannot increment metric '%s' for trace '%s' because it's been stopped", str, this.f7862k);
        } else {
            C3330a m22947A = m22947A(str.trim());
            m22947A.m19130h(j);
            f7856x.m24642b("Incrementing metric '%s' to %d on trace '%s'", str, Long.valueOf(m22947A.m19131a()), this.f7862k);
        }
    }

    @Keep
    public void putMetric(String str, long j) {
        String m18976e = AbstractC3393e.m18976e(str);
        if (m18976e != null) {
            f7856x.m24640d("Cannot set value for metric '%s'. Metric name is invalid.(%s)", str, m18976e);
        } else if (!m22939v()) {
            f7856x.m24634j("Cannot set value for metric '%s' for trace '%s' because it's not started", str, this.f7862k);
        } else if (m22937z()) {
            f7856x.m24634j("Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, this.f7862k);
        } else {
            m22947A(str.trim()).m19129j(j);
            f7856x.m24642b("Setting metric '%s' to '%s' on trace '%s'", str, Long.valueOf(j), this.f7862k);
        }
    }

    @Keep
    public void removeAttribute(String str) {
        if (m22937z()) {
            f7856x.m24641c("Can't remove a attribute from a Trace that's stopped.");
        } else {
            this.f7864q.remove(str);
        }
    }

    @Keep
    public void start() {
        if (!C7873a.m75f().m87I()) {
            f7856x.m24643a("Trace feature is disabled.");
            return;
        }
        String m18975f = AbstractC3393e.m18975f(this.f7862k);
        if (m18975f != null) {
            f7856x.m24640d("Cannot start trace '%s'. Trace name is invalid.(%s)", this.f7862k, m18975f);
        } else if (this.f7869v != null) {
            f7856x.m24640d("Trace '%s' has already started, should not start again!", this.f7862k);
        } else {
            this.f7869v = this.f7868u.m16746a();
            registerForAppState();
            C3907a perfSession = SessionManager.getInstance().perfSession();
            SessionManager.getInstance().registerForSessionUpdates(this.f7859a);
            mo17786a(perfSession);
            if (perfSession.m17793p()) {
                this.f7861d.collectGaugeMetricOnce(perfSession.m17795l());
            }
        }
    }

    @Keep
    public void stop() {
        if (!m22939v()) {
            f7856x.m24640d("Trace '%s' has not been started so unable to stop!", this.f7862k);
        } else if (m22937z()) {
            f7856x.m24640d("Trace '%s' has already stopped, should not stop again!", this.f7862k);
        } else {
            SessionManager.getInstance().unregisterForSessionUpdates(this.f7859a);
            unregisterForAppState();
            C4381h m16746a = this.f7868u.m16746a();
            this.f7870w = m16746a;
            if (this.f7860b == null) {
                m22946B(m16746a);
                if (!this.f7862k.isEmpty()) {
                    this.f7867t.m17299C(new C3333c(this).m19106a(), getAppState());
                    if (SessionManager.getInstance().perfSession().m17793p()) {
                        this.f7861d.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().m17795l());
                        return;
                    }
                    return;
                }
                f7856x.m24641c("Trace name is empty, no log is sent to server");
            }
        }
    }

    public Trace(Parcel parcel, boolean z) {
        super(z ? null : C7515a.m1326b());
        this.f7859a = new WeakReference<>(this);
        this.f7860b = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.f7862k = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.f7866s = arrayList;
        parcel.readList(arrayList, Trace.class.getClassLoader());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f7863p = concurrentHashMap;
        this.f7864q = new ConcurrentHashMap();
        parcel.readMap(concurrentHashMap, C3330a.class.getClassLoader());
        this.f7869v = (C4381h) parcel.readParcelable(C4381h.class.getClassLoader());
        this.f7870w = (C4381h) parcel.readParcelable(C4381h.class.getClassLoader());
        List<C3907a> synchronizedList = Collections.synchronizedList(new ArrayList());
        this.f7865r = synchronizedList;
        parcel.readList(synchronizedList, C3907a.class.getClassLoader());
        if (z) {
            this.f7867t = null;
            this.f7868u = null;
            this.f7861d = null;
            return;
        }
        this.f7867t = C4153k.m17283k();
        this.f7868u = new C4368a();
        this.f7861d = GaugeManager.getInstance();
    }
}
