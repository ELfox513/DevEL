package p178s5;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: s5.d */
/* loaded from: classes2.dex */
public final class C6592d<T> {

    /* renamed from: a */
    public final Set<Class<? super T>> f35153a;

    /* renamed from: b */
    public final Set<C6618q> f35154b;

    /* renamed from: c */
    public final int f35155c;

    /* renamed from: d */
    public final int f35156d;

    /* renamed from: e */
    public final InterfaceC6604h<T> f35157e;

    /* renamed from: f */
    public final Set<Class<?>> f35158f;

    /* renamed from: s5.d$b */
    /* loaded from: classes2.dex */
    public static class C6594b<T> {

        /* renamed from: a */
        public final Set<Class<? super T>> f35159a;

        /* renamed from: b */
        public final Set<C6618q> f35160b;

        /* renamed from: c */
        public int f35161c;

        /* renamed from: d */
        public int f35162d;

        /* renamed from: e */
        public InterfaceC6604h<T> f35163e;

        /* renamed from: f */
        public Set<Class<?>> f35164f;

        /* renamed from: d */
        public C6594b<T> m3844d() {
            return m3841g(2);
        }

        /* renamed from: e */
        public C6594b<T> m3843e(InterfaceC6604h<T> interfaceC6604h) {
            this.f35163e = (InterfaceC6604h) C6595d0.m3837c(interfaceC6604h, "Null factory");
            return this;
        }

        /* renamed from: f */
        public final C6594b<T> m3842f() {
            this.f35162d = 1;
            return this;
        }

        @SafeVarargs
        public C6594b(Class<T> cls, Class<? super T>... clsArr) {
            HashSet hashSet = new HashSet();
            this.f35159a = hashSet;
            this.f35160b = new HashSet();
            this.f35161c = 0;
            this.f35162d = 0;
            this.f35164f = new HashSet();
            C6595d0.m3837c(cls, "Null interface");
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                C6595d0.m3837c(cls2, "Null interface");
            }
            Collections.addAll(this.f35159a, clsArr);
        }

        /* renamed from: b */
        public C6594b<T> m3846b(C6618q c6618q) {
            C6595d0.m3837c(c6618q, "Null dependency");
            m3840h(c6618q.m3788c());
            this.f35160b.add(c6618q);
            return this;
        }

        /* renamed from: c */
        public C6592d<T> m3845c() {
            boolean z;
            if (this.f35163e != null) {
                z = true;
            } else {
                z = false;
            }
            C6595d0.m3836d(z, "Missing required property: factory.");
            return new C6592d<>(new HashSet(this.f35159a), new HashSet(this.f35160b), this.f35161c, this.f35162d, this.f35163e, this.f35164f);
        }

        /* renamed from: g */
        public final C6594b<T> m3841g(int i) {
            boolean z;
            if (this.f35161c == 0) {
                z = true;
            } else {
                z = false;
            }
            C6595d0.m3836d(z, "Instantiation type has already been set.");
            this.f35161c = i;
            return this;
        }

        /* renamed from: h */
        public final void m3840h(Class<?> cls) {
            C6595d0.m3839a(!this.f35159a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }
    }

    /* renamed from: c */
    public static <T> C6594b<T> m3861c(Class<T> cls) {
        return new C6594b<>(cls, new Class[0]);
    }

    @SafeVarargs
    /* renamed from: d */
    public static <T> C6594b<T> m3860d(Class<T> cls, Class<? super T>... clsArr) {
        return new C6594b<>(cls, clsArr);
    }

    /* renamed from: i */
    public static <T> C6592d<T> m3855i(final T t, Class<T> cls) {
        return m3854j(cls).m3843e(new InterfaceC6604h() { // from class: s5.b
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                Object m3850n;
                m3850n = C6592d.m3850n(t, interfaceC6596e);
                return m3850n;
            }
        }).m3845c();
    }

    /* renamed from: j */
    public static <T> C6594b<T> m3854j(Class<T> cls) {
        return m3861c(cls).m3842f();
    }

    /* renamed from: n */
    public static /* synthetic */ Object m3850n(Object obj, InterfaceC6596e interfaceC6596e) {
        return obj;
    }

    /* renamed from: o */
    public static /* synthetic */ Object m3849o(Object obj, InterfaceC6596e interfaceC6596e) {
        return obj;
    }

    @SafeVarargs
    /* renamed from: p */
    public static <T> C6592d<T> m3848p(final T t, Class<T> cls, Class<? super T>... clsArr) {
        return m3860d(cls, clsArr).m3843e(new InterfaceC6604h() { // from class: s5.c
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                Object m3849o;
                m3849o = C6592d.m3849o(t, interfaceC6596e);
                return m3849o;
            }
        }).m3845c();
    }

    /* renamed from: e */
    public Set<C6618q> m3859e() {
        return this.f35154b;
    }

    /* renamed from: f */
    public InterfaceC6604h<T> m3858f() {
        return this.f35157e;
    }

    /* renamed from: g */
    public Set<Class<? super T>> m3857g() {
        return this.f35153a;
    }

    /* renamed from: h */
    public Set<Class<?>> m3856h() {
        return this.f35158f;
    }

    /* renamed from: k */
    public boolean m3853k() {
        return this.f35155c == 1;
    }

    /* renamed from: l */
    public boolean m3852l() {
        return this.f35155c == 2;
    }

    /* renamed from: m */
    public boolean m3851m() {
        return this.f35156d == 0;
    }

    public C6592d(Set<Class<? super T>> set, Set<C6618q> set2, int i, int i2, InterfaceC6604h<T> interfaceC6604h, Set<Class<?>> set3) {
        this.f35153a = Collections.unmodifiableSet(set);
        this.f35154b = Collections.unmodifiableSet(set2);
        this.f35155c = i;
        this.f35156d = i2;
        this.f35157e = interfaceC6604h;
        this.f35158f = Collections.unmodifiableSet(set3);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f35153a.toArray()) + ">{" + this.f35155c + ", type=" + this.f35156d + ", deps=" + Arrays.toString(this.f35154b.toArray()) + "}";
    }
}
