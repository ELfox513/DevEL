package p178s5;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p107k6.InterfaceC4477a;
import p143o6.InterfaceC5098c;
import p143o6.InterfaceC5099d;
import p161q6.InterfaceC5432a;
import p161q6.InterfaceC5434b;
import p178s5.C6610n;
import p203v3.C7013g1;
/* renamed from: s5.n */
/* loaded from: classes2.dex */
public class C6610n extends AbstractC6586a implements InterfaceC4477a {

    /* renamed from: g */
    public static final InterfaceC5434b<Set<Object>> f35184g = new InterfaceC5434b() { // from class: s5.k
        @Override // p161q6.InterfaceC5434b
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* renamed from: a */
    public final Map<C6592d<?>, InterfaceC5434b<?>> f35185a;

    /* renamed from: b */
    public final Map<Class<?>, InterfaceC5434b<?>> f35186b;

    /* renamed from: c */
    public final Map<Class<?>, C6625x<?>> f35187c;

    /* renamed from: d */
    public final List<InterfaceC5434b<InterfaceC6605i>> f35188d;

    /* renamed from: e */
    public final C6622u f35189e;

    /* renamed from: f */
    public final AtomicReference<Boolean> f35190f;

    /* renamed from: i */
    public static C6612b m3819i(Executor executor) {
        return new C6612b(executor);
    }

    @Override // p178s5.AbstractC6586a, p178s5.InterfaceC6596e
    /* renamed from: a */
    public /* bridge */ /* synthetic */ Object mo3827a(Class cls) {
        return super.mo3827a(cls);
    }

    @Override // p178s5.InterfaceC6596e
    /* renamed from: b */
    public synchronized <T> InterfaceC5434b<T> mo3826b(Class<T> cls) {
        C6595d0.m3837c(cls, "Null interface requested.");
        return (InterfaceC5434b<T>) this.f35186b.get(cls);
    }

    @Override // p178s5.InterfaceC6596e
    /* renamed from: c */
    public synchronized <T> InterfaceC5434b<Set<T>> mo3825c(Class<T> cls) {
        C6625x<?> c6625x = this.f35187c.get(cls);
        if (c6625x != null) {
            return c6625x;
        }
        return (InterfaceC5434b<Set<T>>) f35184g;
    }

    @Override // p178s5.AbstractC6586a, p178s5.InterfaceC6596e
    /* renamed from: d */
    public /* bridge */ /* synthetic */ Set mo3824d(Class cls) {
        return super.mo3824d(cls);
    }

    /* renamed from: s5.n$b */
    /* loaded from: classes2.dex */
    public static final class C6612b {

        /* renamed from: a */
        public final Executor f35191a;

        /* renamed from: b */
        public final List<InterfaceC5434b<InterfaceC6605i>> f35192b = new ArrayList();

        /* renamed from: c */
        public final List<C6592d<?>> f35193c = new ArrayList();

        /* renamed from: f */
        public static /* synthetic */ InterfaceC6605i m3802f(InterfaceC6605i interfaceC6605i) {
            return interfaceC6605i;
        }

        /* renamed from: b */
        public C6612b m3806b(C6592d<?> c6592d) {
            this.f35193c.add(c6592d);
            return this;
        }

        /* renamed from: c */
        public C6612b m3805c(final InterfaceC6605i interfaceC6605i) {
            this.f35192b.add(new InterfaceC5434b() { // from class: s5.o
                @Override // p161q6.InterfaceC5434b
                public final Object get() {
                    InterfaceC6605i m3802f;
                    m3802f = C6610n.C6612b.m3802f(InterfaceC6605i.this);
                    return m3802f;
                }
            });
            return this;
        }

        /* renamed from: d */
        public C6612b m3804d(Collection<InterfaceC5434b<InterfaceC6605i>> collection) {
            this.f35192b.addAll(collection);
            return this;
        }

        /* renamed from: e */
        public C6610n m3803e() {
            return new C6610n(this.f35191a, this.f35192b, this.f35193c);
        }

        public C6612b(Executor executor) {
            this.f35191a = executor;
        }
    }

    public C6610n(Executor executor, Iterable<InterfaceC5434b<InterfaceC6605i>> iterable, Collection<C6592d<?>> collection) {
        this.f35185a = new HashMap();
        this.f35186b = new HashMap();
        this.f35187c = new HashMap();
        this.f35190f = new AtomicReference<>();
        C6622u c6622u = new C6622u(executor);
        this.f35189e = c6622u;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C6592d.m3848p(c6622u, C6622u.class, InterfaceC5099d.class, InterfaceC5098c.class));
        arrayList.add(C6592d.m3848p(this, InterfaceC4477a.class, new Class[0]));
        for (C6592d<?> c6592d : collection) {
            if (c6592d != null) {
                arrayList.add(c6592d);
            }
        }
        this.f35188d = m3815m(iterable);
        m3818j(arrayList);
    }

    /* renamed from: m */
    public static <T> List<T> m3815m(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            arrayList.add(t);
        }
        return arrayList;
    }

    /* renamed from: j */
    public final void m3818j(List<C6592d<?>> list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<InterfaceC5434b<InterfaceC6605i>> it = this.f35188d.iterator();
            while (it.hasNext()) {
                try {
                    InterfaceC6605i interfaceC6605i = it.next().get();
                    if (interfaceC6605i != null) {
                        list.addAll(interfaceC6605i.getComponents());
                        it.remove();
                    }
                } catch (C6623v e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            if (this.f35185a.isEmpty()) {
                C6614p.m3801a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f35185a.keySet());
                arrayList2.addAll(list);
                C6614p.m3801a(arrayList2);
            }
            for (final C6592d<?> c6592d : list) {
                this.f35185a.put(c6592d, new C6624w(new InterfaceC5434b() { // from class: s5.j
                    @Override // p161q6.InterfaceC5434b
                    public final Object get() {
                        Object m3814n;
                        m3814n = C6610n.this.m3814n(c6592d);
                        return m3814n;
                    }
                }));
            }
            arrayList.addAll(m3809s(list));
            arrayList.addAll(m3808t());
            m3810r();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        m3811q();
    }

    /* renamed from: l */
    public void m3816l(boolean z) {
        HashMap hashMap;
        if (!C7013g1.m2669a(this.f35190f, null, Boolean.valueOf(z))) {
            return;
        }
        synchronized (this) {
            hashMap = new HashMap(this.f35185a);
        }
        m3817k(hashMap, z);
    }

    /* renamed from: q */
    public final void m3811q() {
        Boolean bool = this.f35190f.get();
        if (bool != null) {
            m3817k(this.f35185a, bool.booleanValue());
        }
    }

    /* renamed from: r */
    public final void m3810r() {
        for (C6592d<?> c6592d : this.f35185a.keySet()) {
            for (C6618q c6618q : c6592d.m3859e()) {
                if (c6618q.m3784g() && !this.f35187c.containsKey(c6618q.m3788c())) {
                    this.f35187c.put(c6618q.m3788c(), C6625x.m3772b(Collections.emptySet()));
                } else if (this.f35186b.containsKey(c6618q.m3788c())) {
                    continue;
                } else if (!c6618q.m3785f()) {
                    if (!c6618q.m3784g()) {
                        this.f35186b.put(c6618q.m3788c(), C6591c0.m3869e());
                    }
                } else {
                    throw new C6626y(String.format("Unsatisfied dependency for component %s: %s", c6592d, c6618q.m3788c()));
                }
            }
        }
    }

    /* renamed from: s */
    public final List<Runnable> m3809s(List<C6592d<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (C6592d<?> c6592d : list) {
            if (c6592d.m3851m()) {
                final InterfaceC5434b<?> interfaceC5434b = this.f35185a.get(c6592d);
                for (Class<? super Object> cls : c6592d.m3857g()) {
                    if (!this.f35186b.containsKey(cls)) {
                        this.f35186b.put(cls, interfaceC5434b);
                    } else {
                        final C6591c0 c6591c0 = (C6591c0) this.f35186b.get(cls);
                        arrayList.add(new Runnable() { // from class: s5.l
                            @Override // java.lang.Runnable
                            public final void run() {
                                C6591c0.this.m3864j(interfaceC5434b);
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: t */
    public final List<Runnable> m3808t() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<C6592d<?>, InterfaceC5434b<?>> entry : this.f35185a.entrySet()) {
            C6592d<?> key = entry.getKey();
            if (!key.m3851m()) {
                InterfaceC5434b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m3857g()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f35187c.containsKey(entry2.getKey())) {
                this.f35187c.put((Class) entry2.getKey(), C6625x.m3772b((Collection) entry2.getValue()));
            } else {
                final C6625x<?> c6625x = this.f35187c.get(entry2.getKey());
                for (final InterfaceC5434b interfaceC5434b : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: s5.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            C6625x.this.m3773a(interfaceC5434b);
                        }
                    });
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ Object m3814n(C6592d c6592d) {
        return c6592d.m3858f().mo1588a(new C6597e0(c6592d, this));
    }

    @Override // p178s5.InterfaceC6596e
    /* renamed from: e */
    public <T> InterfaceC5432a<T> mo3823e(Class<T> cls) {
        InterfaceC5434b<T> mo3826b = mo3826b(cls);
        if (mo3826b == null) {
            return C6591c0.m3869e();
        }
        if (mo3826b instanceof C6591c0) {
            return (C6591c0) mo3826b;
        }
        return C6591c0.m3865i(mo3826b);
    }

    /* renamed from: k */
    public final void m3817k(Map<C6592d<?>, InterfaceC5434b<?>> map, boolean z) {
        for (Map.Entry<C6592d<?>, InterfaceC5434b<?>> entry : map.entrySet()) {
            C6592d<?> key = entry.getKey();
            InterfaceC5434b<?> value = entry.getValue();
            if (key.m3853k() || (key.m3852l() && z)) {
                value.get();
            }
        }
        this.f35189e.m3777c();
    }
}
