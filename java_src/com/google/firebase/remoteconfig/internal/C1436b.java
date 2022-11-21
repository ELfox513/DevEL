package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.google.firebase.remoteconfig.internal.C1433a;
import com.google.firebase.remoteconfig.internal.C1436b;
import com.google.firebase.remoteconfig.internal.C1438c;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p026c4.InterfaceC1045f;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4330a;
import p097j5.InterfaceC4344h;
import p126m7.C4657f;
import p126m7.C4658g;
import p126m7.C4659h;
import p126m7.C4661j;
import p135n7.C4767e;
import p160q5.InterfaceC5424a;
import p161q6.InterfaceC5434b;
import p170r6.AbstractC6544l;
import p170r6.InterfaceC6538g;
/* renamed from: com.google.firebase.remoteconfig.internal.b */
/* loaded from: classes2.dex */
public class C1436b {

    /* renamed from: j */
    public static final long f7890j = TimeUnit.HOURS.toSeconds(12);

    /* renamed from: k */
    public static final int[] f7891k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: a */
    public final InterfaceC6538g f7892a;

    /* renamed from: b */
    public final InterfaceC5434b<InterfaceC5424a> f7893b;

    /* renamed from: c */
    public final Executor f7894c;

    /* renamed from: d */
    public final InterfaceC1045f f7895d;

    /* renamed from: e */
    public final Random f7896e;

    /* renamed from: f */
    public final C4767e f7897f;

    /* renamed from: g */
    public final ConfigFetchHttpClient f7898g;

    /* renamed from: h */
    public final C1438c f7899h;

    /* renamed from: i */
    public final Map<String, String> f7900i;

    /* renamed from: com.google.firebase.remoteconfig.internal.b$a */
    /* loaded from: classes2.dex */
    public static class C1437a {

        /* renamed from: a */
        public final Date f7901a;

        /* renamed from: b */
        public final int f7902b;

        /* renamed from: c */
        public final C1433a f7903c;

        /* renamed from: d */
        public final String f7904d;

        /* renamed from: a */
        public static C1437a m22868a(Date date) {
            return new C1437a(date, 1, null, null);
        }

        /* renamed from: c */
        public static C1437a m22866c(Date date) {
            return new C1437a(date, 2, null, null);
        }

        /* renamed from: d */
        public C1433a m22865d() {
            return this.f7903c;
        }

        /* renamed from: e */
        public String m22864e() {
            return this.f7904d;
        }

        /* renamed from: f */
        public int m22863f() {
            return this.f7902b;
        }

        /* renamed from: b */
        public static C1437a m22867b(C1433a c1433a, String str) {
            return new C1437a(c1433a.m22900e(), 0, c1433a, str);
        }

        public C1437a(Date date, int i, C1433a c1433a, String str) {
            this.f7901a = date;
            this.f7902b = i;
            this.f7903c = c1433a;
            this.f7904d = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ AbstractC4346i m22873t(Date date, AbstractC4346i abstractC4346i) {
        m22869x(abstractC4346i, date);
        return abstractC4346i;
    }

    /* renamed from: g */
    public final String m22886g(long j) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j)));
    }

    /* renamed from: h */
    public AbstractC4346i<C1437a> m22885h() {
        return m22884i(this.f7899h.m22857f());
    }

    /* renamed from: p */
    public final boolean m22877p(int i) {
        return i == 429 || i == 502 || i == 503 || i == 504;
    }

    /* renamed from: u */
    public final boolean m22872u(C1438c.C1439a c1439a, int i) {
        return c1439a.m22849b() > 1 || i == 429;
    }

    /* renamed from: e */
    public final boolean m22888e(long j, Date date) {
        Date m22858e = this.f7899h.m22858e();
        if (m22858e.equals(C1438c.f7905d)) {
            return false;
        }
        return date.before(new Date(m22858e.getTime() + TimeUnit.SECONDS.toMillis(j)));
    }

    /* renamed from: i */
    public AbstractC4346i<C1437a> m22884i(final long j) {
        return this.f7897f.m15416e().mo16792j(this.f7894c, new InterfaceC4330a() { // from class: n7.f
            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i) {
                AbstractC4346i m22876q;
                m22876q = C1436b.this.m22876q(j, abstractC4346i);
                return m22876q;
            }
        });
    }

    /* renamed from: j */
    public final C1437a m22883j(String str, String str2, Date date) {
        try {
            C1437a fetch = this.f7898g.fetch(this.f7898g.m22914c(), str, str2, m22878o(), this.f7899h.m22859d(), this.f7900i, date);
            if (fetch.m22864e() != null) {
                this.f7899h.m22854i(fetch.m22864e());
            }
            this.f7899h.m22856g();
            return fetch;
        } catch (C4661j e) {
            C1438c.C1439a m22871v = m22871v(e.m15855a(), date);
            if (m22872u(m22871v, e.m15855a())) {
                throw new C4659h(m22871v.m22850a().getTime());
            }
            throw m22887f(e);
        }
    }

    /* renamed from: l */
    public final AbstractC4346i<C1437a> m22876q(AbstractC4346i<C1433a> abstractC4346i, long j) {
        AbstractC4346i mo16792j;
        final Date date = new Date(this.f7895d.mo24763a());
        if (abstractC4346i.mo16786p() && m22888e(j, date)) {
            return C4352l.m16767d(C1437a.m22866c(date));
        }
        Date m22880m = m22880m(date);
        if (m22880m != null) {
            mo16792j = C4352l.m16768c(new C4659h(m22886g(m22880m.getTime() - date.getTime()), m22880m.getTime()));
        } else {
            final AbstractC4346i<String> id = this.f7892a.getId();
            final AbstractC4346i<AbstractC6544l> mo3960a = this.f7892a.mo3960a(false);
            mo16792j = C4352l.m16763h(id, mo3960a).mo16792j(this.f7894c, new InterfaceC4330a() { // from class: n7.g
                @Override // p097j5.InterfaceC4330a
                /* renamed from: a */
                public final Object mo1688a(AbstractC4346i abstractC4346i2) {
                    AbstractC4346i m22874s;
                    m22874s = C1436b.this.m22874s(id, mo3960a, date, abstractC4346i2);
                    return m22874s;
                }
            });
        }
        return mo16792j.mo16792j(this.f7894c, new InterfaceC4330a() { // from class: n7.h
            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i2) {
                AbstractC4346i m22873t;
                m22873t = C1436b.this.m22873t(date, abstractC4346i2);
                return m22873t;
            }
        });
    }

    /* renamed from: m */
    public final Date m22880m(Date date) {
        Date m22850a = this.f7899h.m22862a().m22850a();
        if (date.before(m22850a)) {
            return m22850a;
        }
        return null;
    }

    /* renamed from: n */
    public final long m22879n(int i) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f7891k;
        long millis = timeUnit.toMillis(iArr[Math.min(i, iArr.length) - 1]);
        return (millis / 2) + this.f7896e.nextInt((int) millis);
    }

    /* renamed from: o */
    public final Map<String, String> m22878o() {
        HashMap hashMap = new HashMap();
        InterfaceC5424a interfaceC5424a = this.f7893b.get();
        if (interfaceC5424a == null) {
            return hashMap;
        }
        for (Map.Entry<String, Object> entry : interfaceC5424a.mo13315a(false).entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }

    /* renamed from: w */
    public final void m22870w(Date date) {
        int m22849b = this.f7899h.m22862a().m22849b() + 1;
        this.f7899h.m22855h(m22849b, new Date(date.getTime() + m22879n(m22849b)));
    }

    public C1436b(InterfaceC6538g interfaceC6538g, InterfaceC5434b<InterfaceC5424a> interfaceC5434b, Executor executor, InterfaceC1045f interfaceC1045f, Random random, C4767e c4767e, ConfigFetchHttpClient configFetchHttpClient, C1438c c1438c, Map<String, String> map) {
        this.f7892a = interfaceC6538g;
        this.f7893b = interfaceC5434b;
        this.f7894c = executor;
        this.f7895d = interfaceC1045f;
        this.f7896e = random;
        this.f7897f = c4767e;
        this.f7898g = configFetchHttpClient;
        this.f7899h = c1438c;
        this.f7900i = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ AbstractC4346i m22874s(AbstractC4346i abstractC4346i, AbstractC4346i abstractC4346i2, Date date, AbstractC4346i abstractC4346i3) {
        if (!abstractC4346i.mo16786p()) {
            return C4352l.m16768c(new C4657f("Firebase Installations failed to get installation ID for fetch.", abstractC4346i.mo16791k()));
        }
        if (!abstractC4346i2.mo16786p()) {
            return C4352l.m16768c(new C4657f("Firebase Installations failed to get installation auth token for fetch.", abstractC4346i2.mo16791k()));
        }
        return m22882k((String) abstractC4346i.mo16790l(), ((AbstractC6544l) abstractC4346i2.mo16790l()).mo3958b(), date);
    }

    /* renamed from: f */
    public final C4661j m22887f(C4661j c4661j) {
        String str;
        int m15855a = c4661j.m15855a();
        if (m15855a != 401) {
            if (m15855a != 403) {
                if (m15855a != 429) {
                    if (m15855a != 500) {
                        switch (m15855a) {
                            case HttpStatus.SC_BAD_GATEWAY /* 502 */:
                            case HttpStatus.SC_SERVICE_UNAVAILABLE /* 503 */:
                            case HttpStatus.SC_GATEWAY_TIMEOUT /* 504 */:
                                str = "The server is unavailable. Please try again later.";
                                break;
                            default:
                                str = "The server returned an unexpected error.";
                                break;
                        }
                    } else {
                        str = "There was an internal server error.";
                    }
                } else {
                    throw new C4657f("The throttled response from the server was not handled correctly by the FRC SDK.");
                }
            } else {
                str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
            }
        } else {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        }
        int m15855a2 = c4661j.m15855a();
        return new C4661j(m15855a2, "Fetch failed: " + str, c4661j);
    }

    /* renamed from: k */
    public final AbstractC4346i<C1437a> m22882k(String str, String str2, Date date) {
        try {
            final C1437a m22883j = m22883j(str, str2, date);
            if (m22883j.m22863f() != 0) {
                return C4352l.m16767d(m22883j);
            }
            return this.f7897f.m15410k(m22883j.m22865d()).mo16784r(this.f7894c, new InterfaceC4344h() { // from class: n7.i
                @Override // p097j5.InterfaceC4344h
                /* renamed from: a */
                public final AbstractC4346i mo1703a(Object obj) {
                    AbstractC4346i m16767d;
                    C1433a c1433a = (C1433a) obj;
                    m16767d = C4352l.m16767d(C1436b.C1437a.this);
                    return m16767d;
                }
            });
        } catch (C4658g e) {
            return C4352l.m16768c(e);
        }
    }

    /* renamed from: v */
    public final C1438c.C1439a m22871v(int i, Date date) {
        if (m22877p(i)) {
            m22870w(date);
        }
        return this.f7899h.m22862a();
    }

    /* renamed from: x */
    public final void m22869x(AbstractC4346i<C1437a> abstractC4346i, Date date) {
        if (abstractC4346i.mo16786p()) {
            this.f7899h.m22852k(date);
            return;
        }
        Exception mo16791k = abstractC4346i.mo16791k();
        if (mo16791k == null) {
            return;
        }
        if (mo16791k instanceof C4659h) {
            this.f7899h.m22851l();
        } else {
            this.f7899h.m22853j();
        }
    }
}
