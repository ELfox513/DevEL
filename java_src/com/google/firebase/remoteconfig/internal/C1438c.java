package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;
import p126m7.C4662k;
import p126m7.InterfaceC4660i;
/* renamed from: com.google.firebase.remoteconfig.internal.c */
/* loaded from: classes2.dex */
public class C1438c {

    /* renamed from: d */
    public static final Date f7905d = new Date(-1);

    /* renamed from: e */
    public static final Date f7906e = new Date(-1);

    /* renamed from: a */
    public final SharedPreferences f7907a;

    /* renamed from: b */
    public final Object f7908b = new Object();

    /* renamed from: c */
    public final Object f7909c = new Object();

    /* renamed from: b */
    public long m22861b() {
        return this.f7907a.getLong("fetch_timeout_in_seconds", 60L);
    }

    /* renamed from: d */
    public String m22859d() {
        return this.f7907a.getString("last_fetch_etag", null);
    }

    /* renamed from: f */
    public long m22857f() {
        return this.f7907a.getLong("minimum_fetch_interval_in_seconds", C1436b.f7890j);
    }

    /* renamed from: g */
    public void m22856g() {
        m22855h(0, f7906e);
    }

    /* renamed from: com.google.firebase.remoteconfig.internal.c$a */
    /* loaded from: classes2.dex */
    public static class C1439a {

        /* renamed from: a */
        public int f7910a;

        /* renamed from: b */
        public Date f7911b;

        /* renamed from: a */
        public Date m22850a() {
            return this.f7911b;
        }

        /* renamed from: b */
        public int m22849b() {
            return this.f7910a;
        }

        public C1439a(int i, Date date) {
            this.f7910a = i;
            this.f7911b = date;
        }
    }

    /* renamed from: a */
    public C1439a m22862a() {
        C1439a c1439a;
        synchronized (this.f7909c) {
            c1439a = new C1439a(this.f7907a.getInt("num_failed_fetches", 0), new Date(this.f7907a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return c1439a;
    }

    /* renamed from: c */
    public InterfaceC4660i m22860c() {
        C1440d m22847a;
        synchronized (this.f7908b) {
            long j = this.f7907a.getLong("last_fetch_time_in_millis", -1L);
            int i = this.f7907a.getInt("last_fetch_status", 0);
            m22847a = C1440d.m22848b().m22845c(i).m22844d(j).m22846b(new C4662k.C4664b().m15851d(this.f7907a.getLong("fetch_timeout_in_seconds", 60L)).m15850e(this.f7907a.getLong("minimum_fetch_interval_in_seconds", C1436b.f7890j)).m15852c()).m22847a();
        }
        return m22847a;
    }

    /* renamed from: e */
    public Date m22858e() {
        return new Date(this.f7907a.getLong("last_fetch_time_in_millis", -1L));
    }

    /* renamed from: h */
    public void m22855h(int i, Date date) {
        synchronized (this.f7909c) {
            this.f7907a.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* renamed from: i */
    public void m22854i(String str) {
        synchronized (this.f7908b) {
            this.f7907a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* renamed from: j */
    public void m22853j() {
        synchronized (this.f7908b) {
            this.f7907a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    /* renamed from: k */
    public void m22852k(Date date) {
        synchronized (this.f7908b) {
            this.f7907a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    /* renamed from: l */
    public void m22851l() {
        synchronized (this.f7908b) {
            this.f7907a.edit().putInt("last_fetch_status", 2).apply();
        }
    }

    public C1438c(SharedPreferences sharedPreferences) {
        this.f7907a = sharedPreferences;
    }
}
