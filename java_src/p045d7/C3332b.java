package p045d7;

import com.badlogic.gdx.Net;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p029c7.C1078a;
import p063f7.C3536k;
import p072g7.C3907a;
import p072g7.InterfaceC3909b;
import p090i7.C4153k;
import p099j7.C4385k;
import p108k7.C4500h;
import p108k7.C4514k;
import p231y6.AbstractC7518b;
import p231y6.C7515a;
/* renamed from: d7.b */
/* loaded from: classes2.dex */
public final class C3332b extends AbstractC7518b implements InterfaceC3909b {

    /* renamed from: t */
    public static final C1078a f15660t = C1078a.m24639e();

    /* renamed from: a */
    public final List<C3907a> f15661a;

    /* renamed from: b */
    public final GaugeManager f15662b;

    /* renamed from: d */
    public final C4153k f15663d;

    /* renamed from: k */
    public final C4500h.C4502b f15664k;

    /* renamed from: p */
    public final WeakReference<InterfaceC3909b> f15665p;

    /* renamed from: q */
    public String f15666q;

    /* renamed from: r */
    public boolean f15667r;

    /* renamed from: s */
    public boolean f15668s;

    public C3332b(C4153k c4153k) {
        this(c4153k, C7515a.m1326b(), GaugeManager.getInstance());
    }

    /* renamed from: j */
    public static C3332b m19114j(C4153k c4153k) {
        return new C3332b(c4153k);
    }

    /* renamed from: A */
    public C3332b m19126A(int i) {
        this.f15664k.m16171Z(i);
        return this;
    }

    /* renamed from: B */
    public C3332b m19125B() {
        this.f15664k.m16170a0(C4500h.EnumC4507e.GENERIC_CLIENT_ERROR);
        return this;
    }

    /* renamed from: C */
    public C3332b m19124C(long j) {
        this.f15664k.m16169b0(j);
        return this;
    }

    /* renamed from: F */
    public C3332b m19121F(long j) {
        this.f15664k.m16167d0(j);
        return this;
    }

    /* renamed from: I */
    public C3332b m19120I(long j) {
        this.f15664k.m16166e0(j);
        return this;
    }

    /* renamed from: K */
    public C3332b m19118K(long j) {
        this.f15664k.m16164g0(j);
        return this;
    }

    /* renamed from: P */
    public C3332b m19116P(String str) {
        this.f15666q = str;
        return this;
    }

    /* renamed from: n */
    public long m19112n() {
        return this.f15664k.m16177T();
    }

    /* renamed from: p */
    public boolean m19111p() {
        return this.f15664k.m16175V();
    }

    /* renamed from: u */
    public final boolean m19110u() {
        return this.f15664k.m16176U();
    }

    /* renamed from: v */
    public final boolean m19109v() {
        return this.f15664k.m16174W();
    }

    public C3332b(C4153k c4153k, C7515a c7515a, GaugeManager gaugeManager) {
        super(c7515a);
        this.f15664k = C4500h.m16227B0();
        this.f15665p = new WeakReference<>(this);
        this.f15663d = c4153k;
        this.f15662b = gaugeManager;
        this.f15661a = Collections.synchronizedList(new ArrayList());
        registerForAppState();
    }

    /* renamed from: E */
    public C3332b m19122E(String str) {
        if (str == null) {
            this.f15664k.m16178S();
            return this;
        }
        if (m19108x(str)) {
            this.f15664k.m16168c0(str);
        } else {
            C1078a c1078a = f15660t;
            c1078a.m24635i("The content type of the response is not a valid content-type:" + str);
        }
        return this;
    }

    /* renamed from: J */
    public C3332b m19119J(long j) {
        this.f15664k.m16165f0(j);
        if (SessionManager.getInstance().perfSession().m17793p()) {
            this.f15662b.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().m17795l());
        }
        return this;
    }

    /* renamed from: L */
    public C3332b m19117L(String str) {
        if (str != null) {
            this.f15664k.m16163h0(C4385k.m16720e(C4385k.m16721d(str), 2000));
        }
        return this;
    }

    @Override // p072g7.InterfaceC3909b
    /* renamed from: a */
    public void mo17786a(C3907a c3907a) {
        if (c3907a == null) {
            f15660t.m24635i("Unable to add new SessionId to the Network Trace. Continuing without it.");
        } else if (m19110u() && !m19109v()) {
            this.f15661a.add(c3907a);
        }
    }

    /* renamed from: l */
    public List<C3907a> m19113l() {
        List<C3907a> unmodifiableList;
        synchronized (this.f15661a) {
            ArrayList arrayList = new ArrayList();
            for (C3907a c3907a : this.f15661a) {
                if (c3907a != null) {
                    arrayList.add(c3907a);
                }
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return unmodifiableList;
    }

    /* renamed from: z */
    public C3332b m19107z(String str) {
        C4500h.EnumC4504d enumC4504d;
        if (str != null) {
            C4500h.EnumC4504d enumC4504d2 = C4500h.EnumC4504d.HTTP_METHOD_UNKNOWN;
            String upperCase = str.toUpperCase();
            upperCase.hashCode();
            char c = 65535;
            switch (upperCase.hashCode()) {
                case -531492226:
                    if (upperCase.equals("OPTIONS")) {
                        c = 0;
                        break;
                    }
                    break;
                case 70454:
                    if (upperCase.equals(Net.HttpMethods.GET)) {
                        c = 1;
                        break;
                    }
                    break;
                case 79599:
                    if (upperCase.equals(Net.HttpMethods.PUT)) {
                        c = 2;
                        break;
                    }
                    break;
                case 2213344:
                    if (upperCase.equals(Net.HttpMethods.HEAD)) {
                        c = 3;
                        break;
                    }
                    break;
                case 2461856:
                    if (upperCase.equals(Net.HttpMethods.POST)) {
                        c = 4;
                        break;
                    }
                    break;
                case 75900968:
                    if (upperCase.equals(Net.HttpMethods.PATCH)) {
                        c = 5;
                        break;
                    }
                    break;
                case 80083237:
                    if (upperCase.equals("TRACE")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1669334218:
                    if (upperCase.equals("CONNECT")) {
                        c = 7;
                        break;
                    }
                    break;
                case 2012838315:
                    if (upperCase.equals(Net.HttpMethods.DELETE)) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    enumC4504d = C4500h.EnumC4504d.OPTIONS;
                    break;
                case 1:
                    enumC4504d = C4500h.EnumC4504d.GET;
                    break;
                case 2:
                    enumC4504d = C4500h.EnumC4504d.PUT;
                    break;
                case 3:
                    enumC4504d = C4500h.EnumC4504d.HEAD;
                    break;
                case 4:
                    enumC4504d = C4500h.EnumC4504d.POST;
                    break;
                case 5:
                    enumC4504d = C4500h.EnumC4504d.PATCH;
                    break;
                case 6:
                    enumC4504d = C4500h.EnumC4504d.TRACE;
                    break;
                case 7:
                    enumC4504d = C4500h.EnumC4504d.CONNECT;
                    break;
                case '\b':
                    enumC4504d = C4500h.EnumC4504d.DELETE;
                    break;
                default:
                    enumC4504d = C4500h.EnumC4504d.HTTP_METHOD_UNKNOWN;
                    break;
            }
            this.f15664k.m16172Y(enumC4504d);
        }
        return this;
    }

    /* renamed from: x */
    public static boolean m19108x(String str) {
        if (str.length() > 128) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt > 127) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: D */
    public C3332b m19123D(long j) {
        C3907a perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.f15665p);
        this.f15664k.m16173X(j);
        mo17786a(perfSession);
        if (perfSession.m17793p()) {
            this.f15662b.collectGaugeMetricOnce(perfSession.m17795l());
        }
        return this;
    }

    /* renamed from: h */
    public C4500h m19115h() {
        SessionManager.getInstance().unregisterForSessionUpdates(this.f15665p);
        unregisterForAppState();
        C4514k[] m17797h = C3907a.m17797h(m19113l());
        if (m17797h != null) {
            this.f15664k.m16179Q(Arrays.asList(m17797h));
        }
        C4500h build = this.f15664k.build();
        if (!C3536k.m18652c(this.f15666q)) {
            f15660t.m24643a("Dropping network request from a 'User-Agent' that is not allowed");
            return build;
        } else if (!this.f15667r) {
            this.f15663d.m17300B(build, getAppState());
            this.f15667r = true;
            return build;
        } else {
            if (this.f15668s) {
                f15660t.m24643a("This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response");
            }
            return build;
        }
    }
}
