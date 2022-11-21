package p220x3;

import android.accounts.Account;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p079h5.C4048a;
import p145p.C5272b;
import p194u3.C6883a;
/* renamed from: x3.d */
/* loaded from: classes.dex */
public final class C7254d {

    /* renamed from: a */
    public final Account f36681a;

    /* renamed from: b */
    public final Set<Scope> f36682b;

    /* renamed from: c */
    public final Set<Scope> f36683c;

    /* renamed from: d */
    public final Map<C6883a<?>, C7241a0> f36684d;

    /* renamed from: e */
    public final int f36685e;

    /* renamed from: f */
    public final View f36686f;

    /* renamed from: g */
    public final String f36687g;

    /* renamed from: h */
    public final String f36688h;

    /* renamed from: i */
    public final C4048a f36689i;

    /* renamed from: j */
    public Integer f36690j;

    /* renamed from: x3.d$a */
    /* loaded from: classes.dex */
    public static final class C7255a {

        /* renamed from: a */
        public Account f36691a;

        /* renamed from: b */
        public C5272b<Scope> f36692b;

        /* renamed from: c */
        public String f36693c;

        /* renamed from: d */
        public String f36694d;

        /* renamed from: e */
        public C4048a f36695e = C4048a.f17562u;

        @RecentlyNonNull
        /* renamed from: a */
        public C7254d m1963a() {
            return new C7254d(this.f36691a, this.f36692b, null, 0, null, this.f36693c, this.f36694d, this.f36695e, false);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C7255a m1962b(@RecentlyNonNull String str) {
            this.f36693c = str;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public final C7255a m1961c(Account account) {
            this.f36691a = account;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public final C7255a m1959e(@RecentlyNonNull String str) {
            this.f36694d = str;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public final C7255a m1960d(@RecentlyNonNull Collection<Scope> collection) {
            if (this.f36692b == null) {
                this.f36692b = new C5272b<>();
            }
            this.f36692b.addAll(collection);
            return this;
        }
    }

    @RecentlyNullable
    /* renamed from: a */
    public Account m1976a() {
        return this.f36681a;
    }

    @RecentlyNullable
    @Deprecated
    /* renamed from: b */
    public String m1975b() {
        Account account = this.f36681a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public Account m1974c() {
        Account account = this.f36681a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @RecentlyNonNull
    /* renamed from: d */
    public Set<Scope> m1973d() {
        return this.f36683c;
    }

    /* renamed from: f */
    public int m1971f() {
        return this.f36685e;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public String m1970g() {
        return this.f36687g;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public Set<Scope> m1969h() {
        return this.f36682b;
    }

    @RecentlyNullable
    /* renamed from: i */
    public View m1968i() {
        return this.f36686f;
    }

    @RecentlyNullable
    /* renamed from: j */
    public final String m1967j() {
        return this.f36688h;
    }

    @RecentlyNonNull
    /* renamed from: k */
    public final C4048a m1966k() {
        return this.f36689i;
    }

    @RecentlyNullable
    /* renamed from: l */
    public final Integer m1965l() {
        return this.f36690j;
    }

    /* renamed from: m */
    public final void m1964m(@RecentlyNonNull Integer num) {
        this.f36690j = num;
    }

    @RecentlyNonNull
    /* renamed from: e */
    public Set<Scope> m1972e(@RecentlyNonNull C6883a<?> c6883a) {
        C7241a0 c7241a0 = this.f36684d.get(c6883a);
        if (c7241a0 != null && !c7241a0.f36637a.isEmpty()) {
            HashSet hashSet = new HashSet(this.f36682b);
            hashSet.addAll(c7241a0.f36637a);
            return hashSet;
        }
        return this.f36682b;
    }

    public C7254d(Account account, @RecentlyNonNull Set<Scope> set, @RecentlyNonNull Map<C6883a<?>, C7241a0> map, int i, View view, @RecentlyNonNull String str, @RecentlyNonNull String str2, C4048a c4048a, boolean z) {
        Set<Scope> unmodifiableSet;
        this.f36681a = account;
        if (set == null) {
            unmodifiableSet = Collections.emptySet();
        } else {
            unmodifiableSet = Collections.unmodifiableSet(set);
        }
        this.f36682b = unmodifiableSet;
        map = map == null ? Collections.emptyMap() : map;
        this.f36684d = map;
        this.f36686f = view;
        this.f36685e = i;
        this.f36687g = str;
        this.f36688h = str2;
        this.f36689i = c4048a == null ? C4048a.f17562u : c4048a;
        HashSet hashSet = new HashSet(unmodifiableSet);
        for (C7241a0 c7241a0 : map.values()) {
            hashSet.addAll(c7241a0.f36637a);
        }
        this.f36683c = Collections.unmodifiableSet(hashSet);
    }
}
