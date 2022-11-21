package p178s5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: s5.p */
/* loaded from: classes2.dex */
public class C6614p {

    /* renamed from: s5.p$c */
    /* loaded from: classes2.dex */
    public static class C6617c {

        /* renamed from: a */
        public final Class<?> f35198a;

        /* renamed from: b */
        public final boolean f35199b;

        public C6617c(Class<?> cls, boolean z) {
            this.f35198a = cls;
            this.f35199b = z;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C6617c)) {
                return false;
            }
            C6617c c6617c = (C6617c) obj;
            if (!c6617c.f35198a.equals(this.f35198a) || c6617c.f35199b != this.f35199b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return ((this.f35198a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f35199b).hashCode();
        }
    }

    /* renamed from: s5.p$b */
    /* loaded from: classes2.dex */
    public static class C6616b {

        /* renamed from: a */
        public final C6592d<?> f35195a;

        /* renamed from: b */
        public final Set<C6616b> f35196b = new HashSet();

        /* renamed from: c */
        public final Set<C6616b> f35197c = new HashSet();

        /* renamed from: a */
        public void m3798a(C6616b c6616b) {
            this.f35196b.add(c6616b);
        }

        /* renamed from: b */
        public void m3797b(C6616b c6616b) {
            this.f35197c.add(c6616b);
        }

        /* renamed from: c */
        public C6592d<?> m3796c() {
            return this.f35195a;
        }

        /* renamed from: d */
        public Set<C6616b> m3795d() {
            return this.f35196b;
        }

        /* renamed from: e */
        public boolean m3794e() {
            return this.f35196b.isEmpty();
        }

        /* renamed from: f */
        public boolean m3793f() {
            return this.f35197c.isEmpty();
        }

        /* renamed from: g */
        public void m3792g(C6616b c6616b) {
            this.f35197c.remove(c6616b);
        }

        public C6616b(C6592d<?> c6592d) {
            this.f35195a = c6592d;
        }
    }

    /* renamed from: b */
    public static Set<C6616b> m3800b(Set<C6616b> set) {
        HashSet hashSet = new HashSet();
        for (C6616b c6616b : set) {
            if (c6616b.m3793f()) {
                hashSet.add(c6616b);
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public static Set<C6616b> m3799c(List<C6592d<?>> list) {
        Set<C6616b> set;
        HashMap hashMap = new HashMap(list.size());
        for (C6592d<?> c6592d : list) {
            C6616b c6616b = new C6616b(c6592d);
            for (Class<? super Object> cls : c6592d.m3857g()) {
                C6617c c6617c = new C6617c(cls, !c6592d.m3851m());
                if (!hashMap.containsKey(c6617c)) {
                    hashMap.put(c6617c, new HashSet());
                }
                Set set2 = (Set) hashMap.get(c6617c);
                if (!set2.isEmpty() && !c6617c.f35199b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(c6616b);
            }
        }
        for (Set<C6616b> set3 : hashMap.values()) {
            for (C6616b c6616b2 : set3) {
                for (C6618q c6618q : c6616b2.m3796c().m3859e()) {
                    if (c6618q.m3786e() && (set = (Set) hashMap.get(new C6617c(c6618q.m3788c(), c6618q.m3784g()))) != null) {
                        for (C6616b c6616b3 : set) {
                            c6616b2.m3798a(c6616b3);
                            c6616b3.m3797b(c6616b2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m3801a(List<C6592d<?>> list) {
        Set<C6616b> m3799c = m3799c(list);
        Set<C6616b> m3800b = m3800b(m3799c);
        int i = 0;
        while (!m3800b.isEmpty()) {
            C6616b next = m3800b.iterator().next();
            m3800b.remove(next);
            i++;
            for (C6616b c6616b : next.m3795d()) {
                c6616b.m3792g(next);
                if (c6616b.m3793f()) {
                    m3800b.add(c6616b);
                }
            }
        }
        if (i == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (C6616b c6616b2 : m3799c) {
            if (!c6616b2.m3793f() && !c6616b2.m3794e()) {
                arrayList.add(c6616b2.m3796c());
            }
        }
        throw new C6619r(arrayList);
    }
}
