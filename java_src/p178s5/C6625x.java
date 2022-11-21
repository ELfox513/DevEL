package p178s5;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p161q6.InterfaceC5434b;
/* renamed from: s5.x */
/* loaded from: classes2.dex */
public class C6625x<T> implements InterfaceC5434b<Set<T>> {

    /* renamed from: b */
    public volatile Set<T> f35213b = null;

    /* renamed from: a */
    public volatile Set<InterfaceC5434b<T>> f35212a = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: a */
    public synchronized void m3773a(InterfaceC5434b<T> interfaceC5434b) {
        if (this.f35213b == null) {
            this.f35212a.add(interfaceC5434b);
        } else {
            this.f35213b.add(interfaceC5434b.get());
        }
    }

    /* renamed from: d */
    public final synchronized void m3770d() {
        for (InterfaceC5434b<T> interfaceC5434b : this.f35212a) {
            this.f35213b.add(interfaceC5434b.get());
        }
        this.f35212a = null;
    }

    /* renamed from: b */
    public static C6625x<?> m3772b(Collection<InterfaceC5434b<?>> collection) {
        return new C6625x<>((Set) collection);
    }

    @Override // p161q6.InterfaceC5434b
    /* renamed from: c */
    public Set<T> get() {
        if (this.f35213b == null) {
            synchronized (this) {
                if (this.f35213b == null) {
                    this.f35213b = Collections.newSetFromMap(new ConcurrentHashMap());
                    m3770d();
                }
            }
        }
        return Collections.unmodifiableSet(this.f35213b);
    }

    public C6625x(Collection<InterfaceC5434b<T>> collection) {
        this.f35212a.addAll(collection);
    }
}
