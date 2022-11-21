package p168r4;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p086i3.C4123a;
import p113l3.C4561a;
import p184t2.C6723t;
/* renamed from: r4.sx */
/* loaded from: classes2.dex */
public final class C6260sx {

    /* renamed from: a */
    public final Date f31554a;

    /* renamed from: b */
    public final String f31555b;

    /* renamed from: c */
    public final List<String> f31556c;

    /* renamed from: d */
    public final int f31557d;

    /* renamed from: e */
    public final Set<String> f31558e;

    /* renamed from: f */
    public final Location f31559f;

    /* renamed from: g */
    public final Bundle f31560g;

    /* renamed from: h */
    public final Map<Class<Object>, Object> f31561h;

    /* renamed from: i */
    public final String f31562i;

    /* renamed from: j */
    public final String f31563j;

    /* renamed from: k */
    public final int f31564k;

    /* renamed from: l */
    public final Set<String> f31565l;

    /* renamed from: m */
    public final Bundle f31566m;

    /* renamed from: n */
    public final Set<String> f31567n;

    /* renamed from: o */
    public final boolean f31568o;

    /* renamed from: p */
    public final String f31569p;

    /* renamed from: q */
    public final int f31570q;

    @Deprecated
    /* renamed from: a */
    public final Date m6975a() {
        return this.f31554a;
    }

    /* renamed from: b */
    public final String m6974b() {
        return this.f31555b;
    }

    /* renamed from: c */
    public final List<String> m6973c() {
        return new ArrayList(this.f31556c);
    }

    @Deprecated
    /* renamed from: d */
    public final int m6972d() {
        return this.f31557d;
    }

    /* renamed from: e */
    public final Set<String> m6971e() {
        return this.f31558e;
    }

    /* renamed from: f */
    public final Location m6970f() {
        return this.f31559f;
    }

    /* renamed from: g */
    public final Bundle m6969g(Class<Object> cls) {
        return this.f31560g.getBundle(cls.getName());
    }

    /* renamed from: h */
    public final String m6968h() {
        return this.f31562i;
    }

    /* renamed from: i */
    public final String m6967i() {
        return this.f31563j;
    }

    /* renamed from: j */
    public final C4561a m6966j() {
        return null;
    }

    /* renamed from: l */
    public final Map<Class<Object>, Object> m6964l() {
        return this.f31561h;
    }

    /* renamed from: m */
    public final Bundle m6963m() {
        return this.f31560g;
    }

    /* renamed from: n */
    public final int m6962n() {
        return this.f31564k;
    }

    /* renamed from: o */
    public final Bundle m6961o() {
        return this.f31566m;
    }

    /* renamed from: p */
    public final Set<String> m6960p() {
        return this.f31567n;
    }

    @Deprecated
    /* renamed from: q */
    public final boolean m6959q() {
        return this.f31568o;
    }

    /* renamed from: r */
    public final C4123a m6958r() {
        return null;
    }

    /* renamed from: s */
    public final String m6957s() {
        return this.f31569p;
    }

    /* renamed from: t */
    public final int m6956t() {
        return this.f31570q;
    }

    public C6260sx(C6223rx c6223rx, C4561a c4561a) {
        Date date;
        String str;
        List<String> list;
        int i;
        HashSet hashSet;
        Location location;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z;
        String str4;
        int i3;
        date = c6223rx.f30730g;
        this.f31554a = date;
        str = c6223rx.f30731h;
        this.f31555b = str;
        list = c6223rx.f30732i;
        this.f31556c = list;
        i = c6223rx.f30733j;
        this.f31557d = i;
        hashSet = c6223rx.f30724a;
        this.f31558e = Collections.unmodifiableSet(hashSet);
        location = c6223rx.f30734k;
        this.f31559f = location;
        bundle = c6223rx.f30725b;
        this.f31560g = bundle;
        hashMap = c6223rx.f30726c;
        this.f31561h = Collections.unmodifiableMap(hashMap);
        str2 = c6223rx.f30735l;
        this.f31562i = str2;
        str3 = c6223rx.f30736m;
        this.f31563j = str3;
        i2 = c6223rx.f30737n;
        this.f31564k = i2;
        hashSet2 = c6223rx.f30727d;
        this.f31565l = Collections.unmodifiableSet(hashSet2);
        bundle2 = c6223rx.f30728e;
        this.f31566m = bundle2;
        hashSet3 = c6223rx.f30729f;
        this.f31567n = Collections.unmodifiableSet(hashSet3);
        z = c6223rx.f30738o;
        this.f31568o = z;
        c6223rx.getClass();
        str4 = c6223rx.f30739p;
        this.f31569p = str4;
        i3 = c6223rx.f30740q;
        this.f31570q = i3;
    }

    /* renamed from: k */
    public final boolean m6965k(Context context) {
        C6723t m4048i = C6519zx.m4053d().m4048i();
        C6479yu.m4568a();
        String m6110r = vl0.m6110r(context);
        if (!this.f31565l.contains(m6110r) && !m4048i.m3554d().contains(m6110r)) {
            return false;
        }
        return true;
    }
}
