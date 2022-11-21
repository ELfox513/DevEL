package p217x0;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p066g1.RunnableC3549b;
import p209w0.AbstractC7114j;
import p209w0.AbstractC7129r;
import p209w0.AbstractC7132u;
import p209w0.EnumC7107d;
import p209w0.InterfaceC7119m;
/* renamed from: x0.g */
/* loaded from: classes.dex */
public class C7197g extends AbstractC7129r {

    /* renamed from: j */
    public static final String f36490j = AbstractC7114j.m2489f("WorkContinuationImpl");

    /* renamed from: a */
    public final C7199i f36491a;

    /* renamed from: b */
    public final String f36492b;

    /* renamed from: c */
    public final EnumC7107d f36493c;

    /* renamed from: d */
    public final List<? extends AbstractC7132u> f36494d;

    /* renamed from: e */
    public final List<String> f36495e;

    /* renamed from: f */
    public final List<String> f36496f;

    /* renamed from: g */
    public final List<C7197g> f36497g;

    /* renamed from: h */
    public boolean f36498h;

    /* renamed from: i */
    public InterfaceC7119m f36499i;

    public C7197g(C7199i c7199i, List<? extends AbstractC7132u> list) {
        this(c7199i, null, EnumC7107d.KEEP, list, null);
    }

    /* renamed from: b */
    public EnumC7107d m2191b() {
        return this.f36493c;
    }

    /* renamed from: c */
    public List<String> m2190c() {
        return this.f36495e;
    }

    /* renamed from: d */
    public String m2189d() {
        return this.f36492b;
    }

    /* renamed from: e */
    public List<C7197g> m2188e() {
        return this.f36497g;
    }

    /* renamed from: f */
    public List<? extends AbstractC7132u> m2187f() {
        return this.f36494d;
    }

    /* renamed from: g */
    public C7199i m2186g() {
        return this.f36491a;
    }

    /* renamed from: h */
    public boolean m2185h() {
        return m2184i(this, new HashSet());
    }

    /* renamed from: j */
    public boolean m2183j() {
        return this.f36498h;
    }

    /* renamed from: k */
    public void m2182k() {
        this.f36498h = true;
    }

    public C7197g(C7199i c7199i, String str, EnumC7107d enumC7107d, List<? extends AbstractC7132u> list) {
        this(c7199i, str, enumC7107d, list, null);
    }

    /* renamed from: l */
    public static Set<String> m2181l(C7197g c7197g) {
        HashSet hashSet = new HashSet();
        List<C7197g> m2188e = c7197g.m2188e();
        if (m2188e != null && !m2188e.isEmpty()) {
            for (C7197g c7197g2 : m2188e) {
                hashSet.addAll(c7197g2.m2190c());
            }
        }
        return hashSet;
    }

    @Override // p209w0.AbstractC7129r
    /* renamed from: a */
    public InterfaceC7119m mo2192a() {
        if (!this.f36498h) {
            RunnableC3549b runnableC3549b = new RunnableC3549b(this);
            this.f36491a.m2158s().mo17407b(runnableC3549b);
            this.f36499i = runnableC3549b.m18634d();
        } else {
            AbstractC7114j.m2491c().mo2484h(f36490j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.f36495e)), new Throwable[0]);
        }
        return this.f36499i;
    }

    public C7197g(C7199i c7199i, String str, EnumC7107d enumC7107d, List<? extends AbstractC7132u> list, List<C7197g> list2) {
        this.f36491a = c7199i;
        this.f36492b = str;
        this.f36493c = enumC7107d;
        this.f36494d = list;
        this.f36497g = list2;
        this.f36495e = new ArrayList(list.size());
        this.f36496f = new ArrayList();
        if (list2 != null) {
            for (C7197g c7197g : list2) {
                this.f36496f.addAll(c7197g.f36496f);
            }
        }
        for (int i = 0; i < list.size(); i++) {
            String m2473a = list.get(i).m2473a();
            this.f36495e.add(m2473a);
            this.f36496f.add(m2473a);
        }
    }

    /* renamed from: i */
    public static boolean m2184i(C7197g c7197g, Set<String> set) {
        set.addAll(c7197g.m2190c());
        Set<String> m2181l = m2181l(c7197g);
        for (String str : set) {
            if (m2181l.contains(str)) {
                return true;
            }
        }
        List<C7197g> m2188e = c7197g.m2188e();
        if (m2188e != null && !m2188e.isEmpty()) {
            for (C7197g c7197g2 : m2188e) {
                if (m2184i(c7197g2, set)) {
                    return true;
                }
            }
        }
        set.removeAll(c7197g.m2190c());
        return false;
    }
}
