package p152p6;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p152p6.InterfaceC5365f;
import p161q6.InterfaceC5434b;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.C6624w;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
/* renamed from: p6.d */
/* loaded from: classes2.dex */
public class C5363d implements InterfaceC5365f {

    /* renamed from: d */
    public static final ThreadFactory f19962d = new ThreadFactory() { // from class: p6.a
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread m13396h;
            m13396h = C5363d.m13396h(runnable);
            return m13396h;
        }
    };

    /* renamed from: a */
    public InterfaceC5434b<C5367g> f19963a;

    /* renamed from: b */
    public final Set<InterfaceC5364e> f19964b;

    /* renamed from: c */
    public final Executor f19965c;

    public C5363d(final Context context, Set<InterfaceC5364e> set) {
        this(new C6624w(new InterfaceC5434b() { // from class: p6.c
            @Override // p161q6.InterfaceC5434b
            public final Object get() {
                C5367g m13393a;
                m13393a = C5367g.m13393a(context);
                return m13393a;
            }
        }), set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f19962d));
    }

    /* renamed from: f */
    public static /* synthetic */ InterfaceC5365f m13398f(InterfaceC6596e interfaceC6596e) {
        return new C5363d((Context) interfaceC6596e.mo3827a(Context.class), interfaceC6596e.mo3824d(InterfaceC5364e.class));
    }

    /* renamed from: h */
    public static /* synthetic */ Thread m13396h(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    public C5363d(InterfaceC5434b<C5367g> interfaceC5434b, Set<InterfaceC5364e> set, Executor executor) {
        this.f19963a = interfaceC5434b;
        this.f19964b = set;
        this.f19965c = executor;
    }

    /* renamed from: e */
    public static C6592d<InterfaceC5365f> m13399e() {
        return C6592d.m3861c(InterfaceC5365f.class).m3846b(C6618q.m3782i(Context.class)).m3846b(C6618q.m3780k(InterfaceC5364e.class)).m3843e(new InterfaceC6604h() { // from class: p6.b
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                InterfaceC5365f m13398f;
                m13398f = C5363d.m13398f(interfaceC6596e);
                return m13398f;
            }
        }).m3845c();
    }

    @Override // p152p6.InterfaceC5365f
    /* renamed from: a */
    public InterfaceC5365f.EnumC5366a mo13395a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean m13390d = this.f19963a.get().m13390d(str, currentTimeMillis);
        boolean m13391c = this.f19963a.get().m13391c(currentTimeMillis);
        if (m13390d && m13391c) {
            return InterfaceC5365f.EnumC5366a.COMBINED;
        }
        if (m13391c) {
            return InterfaceC5365f.EnumC5366a.GLOBAL;
        }
        if (m13390d) {
            return InterfaceC5365f.EnumC5366a.SDK;
        }
        return InterfaceC5365f.EnumC5366a.NONE;
    }
}
