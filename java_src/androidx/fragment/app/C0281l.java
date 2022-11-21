package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.AbstractC0337r;
import androidx.lifecycle.C0338s;
import androidx.lifecycle.C0341t;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes.dex */
public class C0281l extends AbstractC0337r {

    /* renamed from: i */
    public static final C0338s.InterfaceC0339a f1076i = new C0282a();

    /* renamed from: f */
    public final boolean f1080f;

    /* renamed from: c */
    public final HashSet<Fragment> f1077c = new HashSet<>();

    /* renamed from: d */
    public final HashMap<String, C0281l> f1078d = new HashMap<>();

    /* renamed from: e */
    public final HashMap<String, C0341t> f1079e = new HashMap<>();

    /* renamed from: g */
    public boolean f1081g = false;

    /* renamed from: h */
    public boolean f1082h = false;

    /* renamed from: androidx.fragment.app.l$a */
    /* loaded from: classes.dex */
    public static class C0282a implements C0338s.InterfaceC0339a {
        @Override // androidx.lifecycle.C0338s.InterfaceC0339a
        /* renamed from: a */
        public <T extends AbstractC0337r> T mo16682a(Class<T> cls) {
            return new C0281l(true);
        }
    }

    /* renamed from: d */
    public boolean m26903d(Fragment fragment) {
        return this.f1077c.add(fragment);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0281l c0281l = (C0281l) obj;
        return this.f1077c.equals(c0281l.f1077c) && this.f1078d.equals(c0281l.f1078d) && this.f1079e.equals(c0281l.f1079e);
    }

    /* renamed from: h */
    public Collection<Fragment> m26899h() {
        return this.f1077c;
    }

    /* renamed from: j */
    public boolean m26897j() {
        return this.f1081g;
    }

    /* renamed from: k */
    public boolean m26896k(Fragment fragment) {
        return this.f1077c.remove(fragment);
    }

    /* renamed from: g */
    public static C0281l m26900g(C0341t c0341t) {
        return (C0281l) new C0338s(c0341t, f1076i).m26753a(C0281l.class);
    }

    @Override // androidx.lifecycle.AbstractC0337r
    /* renamed from: c */
    public void mo16691c() {
        if (LayoutInflater$Factory2C0264j.f1006S) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f1081g = true;
    }

    /* renamed from: e */
    public void m26902e(Fragment fragment) {
        if (LayoutInflater$Factory2C0264j.f1006S) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        C0281l c0281l = this.f1078d.get(fragment.f923p);
        if (c0281l != null) {
            c0281l.mo16691c();
            this.f1078d.remove(fragment.f923p);
        }
        C0341t c0341t = this.f1079e.get(fragment.f923p);
        if (c0341t != null) {
            c0341t.m26750a();
            this.f1079e.remove(fragment.f923p);
        }
    }

    /* renamed from: f */
    public C0281l m26901f(Fragment fragment) {
        C0281l c0281l = this.f1078d.get(fragment.f923p);
        if (c0281l == null) {
            C0281l c0281l2 = new C0281l(this.f1080f);
            this.f1078d.put(fragment.f923p, c0281l2);
            return c0281l2;
        }
        return c0281l;
    }

    public int hashCode() {
        return (((this.f1077c.hashCode() * 31) + this.f1078d.hashCode()) * 31) + this.f1079e.hashCode();
    }

    /* renamed from: i */
    public C0341t m26898i(Fragment fragment) {
        C0341t c0341t = this.f1079e.get(fragment.f923p);
        if (c0341t == null) {
            C0341t c0341t2 = new C0341t();
            this.f1079e.put(fragment.f923p, c0341t2);
            return c0341t2;
        }
        return c0341t;
    }

    /* renamed from: l */
    public boolean m26895l(Fragment fragment) {
        if (!this.f1077c.contains(fragment)) {
            return true;
        }
        if (this.f1080f) {
            return this.f1081g;
        }
        return !this.f1082h;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f1077c.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f1078d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f1079e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public C0281l(boolean z) {
        this.f1080f = z;
    }
}
