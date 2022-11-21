package p133n5;

import android.content.Context;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p160q5.InterfaceC5424a;
import p161q6.InterfaceC5434b;
/* renamed from: n5.c */
/* loaded from: classes2.dex */
public class C4755c {

    /* renamed from: a */
    public final InterfaceC5434b<InterfaceC5424a> f19014a;

    /* renamed from: b */
    public final String f19015b;

    /* renamed from: c */
    public Integer f19016c = null;

    /* renamed from: a */
    public final void m15474a(InterfaceC5424a.C5427c c5427c) {
        this.f19014a.get().mo13314b(c5427c);
    }

    /* renamed from: c */
    public static List<C4754b> m15472c(List<Map<String, String>> list) {
        ArrayList arrayList = new ArrayList();
        for (Map<String, String> map : list) {
            arrayList.add(C4754b.m15479a(map));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final void m15473b(List<C4754b> list) {
        ArrayDeque arrayDeque = new ArrayDeque(m15471d());
        int m15468g = m15468g();
        for (C4754b c4754b : list) {
            while (arrayDeque.size() >= m15468g) {
                m15466i(((InterfaceC5424a.C5427c) arrayDeque.pollFirst()).f20106b);
            }
            InterfaceC5424a.C5427c m15476d = c4754b.m15476d(this.f19015b);
            m15474a(m15476d);
            arrayDeque.offer(m15476d);
        }
    }

    /* renamed from: d */
    public final List<InterfaceC5424a.C5427c> m15471d() {
        return this.f19014a.get().mo13310f(this.f19015b, "");
    }

    /* renamed from: e */
    public final ArrayList<C4754b> m15470e(List<C4754b> list, Set<String> set) {
        ArrayList<C4754b> arrayList = new ArrayList<>();
        for (C4754b c4754b : list) {
            if (!set.contains(c4754b.m15478b())) {
                arrayList.add(c4754b);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public final ArrayList<InterfaceC5424a.C5427c> m15469f(List<InterfaceC5424a.C5427c> list, Set<String> set) {
        ArrayList<InterfaceC5424a.C5427c> arrayList = new ArrayList<>();
        for (InterfaceC5424a.C5427c c5427c : list) {
            if (!set.contains(c5427c.f20106b)) {
                arrayList.add(c5427c);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public final int m15468g() {
        if (this.f19016c == null) {
            this.f19016c = Integer.valueOf(this.f19014a.get().mo13312d(this.f19015b));
        }
        return this.f19016c.intValue();
    }

    /* renamed from: i */
    public final void m15466i(String str) {
        this.f19014a.get().clearConditionalUserProperty(str, null, null);
    }

    /* renamed from: m */
    public final void m15462m() {
        if (this.f19014a.get() != null) {
            return;
        }
        throw new C4753a("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
    }

    public C4755c(Context context, InterfaceC5434b<InterfaceC5424a> interfaceC5434b, String str) {
        this.f19014a = interfaceC5434b;
        this.f19015b = str;
    }

    /* renamed from: h */
    public void m15467h() {
        m15462m();
        m15465j(m15471d());
    }

    /* renamed from: j */
    public final void m15465j(Collection<InterfaceC5424a.C5427c> collection) {
        for (InterfaceC5424a.C5427c c5427c : collection) {
            m15466i(c5427c.f20106b);
        }
    }

    /* renamed from: k */
    public void m15464k(List<Map<String, String>> list) {
        m15462m();
        if (list != null) {
            m15463l(m15472c(list));
            return;
        }
        throw new IllegalArgumentException("The replacementExperiments list is null.");
    }

    /* renamed from: l */
    public final void m15463l(List<C4754b> list) {
        if (list.isEmpty()) {
            m15467h();
            return;
        }
        HashSet hashSet = new HashSet();
        for (C4754b c4754b : list) {
            hashSet.add(c4754b.m15478b());
        }
        List<InterfaceC5424a.C5427c> m15471d = m15471d();
        HashSet hashSet2 = new HashSet();
        for (InterfaceC5424a.C5427c c5427c : m15471d) {
            hashSet2.add(c5427c.f20106b);
        }
        m15465j(m15469f(m15471d, hashSet));
        m15473b(m15470e(list, hashSet2));
    }
}
