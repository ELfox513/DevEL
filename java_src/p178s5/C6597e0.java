package p178s5;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p143o6.InterfaceC5098c;
import p161q6.InterfaceC5432a;
import p161q6.InterfaceC5434b;
/* renamed from: s5.e0 */
/* loaded from: classes2.dex */
public final class C6597e0 extends AbstractC6586a {

    /* renamed from: a */
    public final Set<Class<?>> f35165a;

    /* renamed from: b */
    public final Set<Class<?>> f35166b;

    /* renamed from: c */
    public final Set<Class<?>> f35167c;

    /* renamed from: d */
    public final Set<Class<?>> f35168d;

    /* renamed from: e */
    public final Set<Class<?>> f35169e;

    /* renamed from: f */
    public final Set<Class<?>> f35170f;

    /* renamed from: g */
    public final InterfaceC6596e f35171g;

    /* renamed from: s5.e0$a */
    /* loaded from: classes2.dex */
    public static class C6598a implements InterfaceC5098c {

        /* renamed from: a */
        public final Set<Class<?>> f35172a;

        /* renamed from: b */
        public final InterfaceC5098c f35173b;

        public C6598a(Set<Class<?>> set, InterfaceC5098c interfaceC5098c) {
            this.f35172a = set;
            this.f35173b = interfaceC5098c;
        }
    }

    @Override // p178s5.AbstractC6586a, p178s5.InterfaceC6596e
    /* renamed from: a */
    public <T> T mo3827a(Class<T> cls) {
        if (this.f35165a.contains(cls)) {
            T t = (T) this.f35171g.mo3827a(cls);
            if (!cls.equals(InterfaceC5098c.class)) {
                return t;
            }
            return (T) new C6598a(this.f35170f, (InterfaceC5098c) t);
        }
        throw new C6620s(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // p178s5.InterfaceC6596e
    /* renamed from: b */
    public <T> InterfaceC5434b<T> mo3826b(Class<T> cls) {
        if (this.f35166b.contains(cls)) {
            return this.f35171g.mo3826b(cls);
        }
        throw new C6620s(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // p178s5.InterfaceC6596e
    /* renamed from: c */
    public <T> InterfaceC5434b<Set<T>> mo3825c(Class<T> cls) {
        if (this.f35169e.contains(cls)) {
            return this.f35171g.mo3825c(cls);
        }
        throw new C6620s(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // p178s5.AbstractC6586a, p178s5.InterfaceC6596e
    /* renamed from: d */
    public <T> Set<T> mo3824d(Class<T> cls) {
        if (this.f35168d.contains(cls)) {
            return this.f35171g.mo3824d(cls);
        }
        throw new C6620s(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // p178s5.InterfaceC6596e
    /* renamed from: e */
    public <T> InterfaceC5432a<T> mo3823e(Class<T> cls) {
        if (this.f35167c.contains(cls)) {
            return this.f35171g.mo3823e(cls);
        }
        throw new C6620s(String.format("Attempting to request an undeclared dependency Deferred<%s>.", cls));
    }

    public C6597e0(C6592d<?> c6592d, InterfaceC6596e interfaceC6596e) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (C6618q c6618q : c6592d.m3859e()) {
            if (c6618q.m3786e()) {
                if (c6618q.m3784g()) {
                    hashSet4.add(c6618q.m3788c());
                } else {
                    hashSet.add(c6618q.m3788c());
                }
            } else if (c6618q.m3787d()) {
                hashSet3.add(c6618q.m3788c());
            } else if (c6618q.m3784g()) {
                hashSet5.add(c6618q.m3788c());
            } else {
                hashSet2.add(c6618q.m3788c());
            }
        }
        if (!c6592d.m3856h().isEmpty()) {
            hashSet.add(InterfaceC5098c.class);
        }
        this.f35165a = Collections.unmodifiableSet(hashSet);
        this.f35166b = Collections.unmodifiableSet(hashSet2);
        this.f35167c = Collections.unmodifiableSet(hashSet3);
        this.f35168d = Collections.unmodifiableSet(hashSet4);
        this.f35169e = Collections.unmodifiableSet(hashSet5);
        this.f35170f = c6592d.m3856h();
        this.f35171g = interfaceC6596e;
    }
}
