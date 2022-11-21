package p178s5;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import p143o6.C5096a;
import p143o6.InterfaceC5097b;
import p143o6.InterfaceC5098c;
import p143o6.InterfaceC5099d;
/* renamed from: s5.u */
/* loaded from: classes2.dex */
public class C6622u implements InterfaceC5099d, InterfaceC5098c {

    /* renamed from: a */
    public final Map<Class<?>, ConcurrentHashMap<InterfaceC5097b<Object>, Executor>> f35206a = new HashMap();

    /* renamed from: b */
    public Queue<C5096a<?>> f35207b = new ArrayDeque();

    /* renamed from: c */
    public final Executor f35208c;

    /* renamed from: e */
    public static /* synthetic */ void m3775e(Map.Entry entry, C5096a c5096a) {
        ((InterfaceC5097b) entry.getKey()).mo13306a(c5096a);
    }

    @Override // p143o6.InterfaceC5099d
    /* renamed from: a */
    public synchronized <T> void mo3779a(Class<T> cls, Executor executor, InterfaceC5097b<? super T> interfaceC5097b) {
        C6595d0.m3838b(cls);
        C6595d0.m3838b(interfaceC5097b);
        C6595d0.m3838b(executor);
        if (!this.f35206a.containsKey(cls)) {
            this.f35206a.put(cls, new ConcurrentHashMap<>());
        }
        this.f35206a.get(cls).put(interfaceC5097b, executor);
    }

    /* renamed from: c */
    public void m3777c() {
        Queue<C5096a<?>> queue;
        synchronized (this) {
            queue = this.f35207b;
            if (queue != null) {
                this.f35207b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (C5096a<?> c5096a : queue) {
                m3774f(c5096a);
            }
        }
    }

    /* renamed from: d */
    public final synchronized Set<Map.Entry<InterfaceC5097b<Object>, Executor>> m3776d(C5096a<?> c5096a) {
        Set<Map.Entry<InterfaceC5097b<Object>, Executor>> entrySet;
        ConcurrentHashMap<InterfaceC5097b<Object>, Executor> concurrentHashMap = this.f35206a.get(c5096a.m14669b());
        if (concurrentHashMap == null) {
            entrySet = Collections.emptySet();
        } else {
            entrySet = concurrentHashMap.entrySet();
        }
        return entrySet;
    }

    public C6622u(Executor executor) {
        this.f35208c = executor;
    }

    /* renamed from: f */
    public void m3774f(final C5096a<?> c5096a) {
        C6595d0.m3838b(c5096a);
        synchronized (this) {
            Queue<C5096a<?>> queue = this.f35207b;
            if (queue != null) {
                queue.add(c5096a);
                return;
            }
            for (final Map.Entry<InterfaceC5097b<Object>, Executor> entry : m3776d(c5096a)) {
                entry.getValue().execute(new Runnable() { // from class: s5.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        C6622u.m3775e(entry, c5096a);
                    }
                });
            }
        }
    }
}
