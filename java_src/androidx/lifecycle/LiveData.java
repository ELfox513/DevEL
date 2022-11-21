package androidx.lifecycle;

import androidx.lifecycle.AbstractC0317d;
import p100k.C4386a;
import p109l.C4533b;
/* loaded from: classes.dex */
public abstract class LiveData<T> {

    /* renamed from: j */
    public static final Object f1192j = new Object();

    /* renamed from: a */
    public final Object f1193a = new Object();

    /* renamed from: b */
    public C4533b<InterfaceC0331n<? super T>, LiveData<T>.AbstractC0311b> f1194b = new C4533b<>();

    /* renamed from: c */
    public int f1195c = 0;

    /* renamed from: d */
    public volatile Object f1196d;

    /* renamed from: e */
    public volatile Object f1197e;

    /* renamed from: f */
    public int f1198f;

    /* renamed from: g */
    public boolean f1199g;

    /* renamed from: h */
    public boolean f1200h;

    /* renamed from: i */
    public final Runnable f1201i;

    /* loaded from: classes.dex */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0311b implements InterfaceC0320e {

        /* renamed from: e */
        public final InterfaceC0322g f1202e;

        @Override // androidx.lifecycle.LiveData.AbstractC0311b
        /* renamed from: i */
        public void mo26814i() {
            this.f1202e.getLifecycle().mo26793c(this);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0311b
        /* renamed from: j */
        public boolean mo26813j(InterfaceC0322g interfaceC0322g) {
            return this.f1202e == interfaceC0322g;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0311b
        /* renamed from: k */
        public boolean mo26812k() {
            return this.f1202e.getLifecycle().mo26794b().m26796c(AbstractC0317d.EnumC0319b.STARTED);
        }

        public LifecycleBoundObserver(InterfaceC0322g interfaceC0322g, InterfaceC0331n<? super T> interfaceC0331n) {
            super(interfaceC0331n);
            this.f1202e = interfaceC0322g;
        }

        @Override // androidx.lifecycle.InterfaceC0320e
        /* renamed from: c */
        public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
            if (this.f1202e.getLifecycle().mo26794b() == AbstractC0317d.EnumC0319b.DESTROYED) {
                LiveData.this.mo16702k(this.f1205a);
            } else {
                m26815h(mo26812k());
            }
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes.dex */
    public class RunnableC0310a implements Runnable {
        public RunnableC0310a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1193a) {
                obj = LiveData.this.f1197e;
                LiveData.this.f1197e = LiveData.f1192j;
            }
            LiveData.this.mo16701l(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes.dex */
    public abstract class AbstractC0311b {

        /* renamed from: a */
        public final InterfaceC0331n<? super T> f1205a;

        /* renamed from: b */
        public boolean f1206b;

        /* renamed from: c */
        public int f1207c = -1;

        /* renamed from: i */
        public void mo26814i() {
        }

        /* renamed from: j */
        public boolean mo26813j(InterfaceC0322g interfaceC0322g) {
            return false;
        }

        /* renamed from: k */
        public abstract boolean mo26812k();

        public AbstractC0311b(InterfaceC0331n<? super T> interfaceC0331n) {
            this.f1205a = interfaceC0331n;
        }

        /* renamed from: h */
        public void m26815h(boolean z) {
            boolean z2;
            if (z == this.f1206b) {
                return;
            }
            this.f1206b = z;
            LiveData liveData = LiveData.this;
            int i = liveData.f1195c;
            int i2 = 1;
            if (i == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z) {
                i2 = -1;
            }
            liveData.f1195c = i + i2;
            if (z2 && z) {
                liveData.mo16704h();
            }
            LiveData liveData2 = LiveData.this;
            if (liveData2.f1195c == 0 && !this.f1206b) {
                liveData2.mo16703i();
            }
            if (this.f1206b) {
                LiveData.this.m26819d(this);
            }
        }
    }

    /* renamed from: f */
    public boolean m26817f() {
        return this.f1195c > 0;
    }

    /* renamed from: h */
    public void mo16704h() {
    }

    /* renamed from: i */
    public void mo16703i() {
    }

    /* renamed from: c */
    public final void m26820c(LiveData<T>.AbstractC0311b abstractC0311b) {
        if (!abstractC0311b.f1206b) {
            return;
        }
        if (!abstractC0311b.mo26812k()) {
            abstractC0311b.m26815h(false);
            return;
        }
        int i = abstractC0311b.f1207c;
        int i2 = this.f1198f;
        if (i >= i2) {
            return;
        }
        abstractC0311b.f1207c = i2;
        abstractC0311b.f1205a.mo16695a((Object) this.f1196d);
    }

    /* renamed from: d */
    public void m26819d(LiveData<T>.AbstractC0311b abstractC0311b) {
        if (this.f1199g) {
            this.f1200h = true;
            return;
        }
        this.f1199g = true;
        do {
            this.f1200h = false;
            if (abstractC0311b != null) {
                m26820c(abstractC0311b);
                abstractC0311b = null;
            } else {
                C4533b<InterfaceC0331n<? super T>, LiveData<T>.AbstractC0311b>.C4537d m16067g = this.f1194b.m16067g();
                while (m16067g.hasNext()) {
                    m26820c((AbstractC0311b) m16067g.next().getValue());
                    if (this.f1200h) {
                        break;
                    }
                }
            }
        } while (this.f1200h);
        this.f1199g = false;
    }

    /* renamed from: e */
    public T m26818e() {
        T t = (T) this.f1196d;
        if (t != f1192j) {
            return t;
        }
        return null;
    }

    /* renamed from: g */
    public void m26816g(InterfaceC0322g interfaceC0322g, InterfaceC0331n<? super T> interfaceC0331n) {
        m26821b("observe");
        if (interfaceC0322g.getLifecycle().mo26794b() == AbstractC0317d.EnumC0319b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(interfaceC0322g, interfaceC0331n);
        LiveData<T>.AbstractC0311b mo16064l = this.f1194b.mo16064l(interfaceC0331n, lifecycleBoundObserver);
        if (mo16064l != null && !mo16064l.mo26813j(interfaceC0322g)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo16064l != null) {
            return;
        }
        interfaceC0322g.getLifecycle().mo26795a(lifecycleBoundObserver);
    }

    /* renamed from: j */
    public void mo26769j(T t) {
        boolean z;
        synchronized (this.f1193a) {
            if (this.f1197e == f1192j) {
                z = true;
            } else {
                z = false;
            }
            this.f1197e = t;
        }
        if (!z) {
            return;
        }
        C4386a.m16718e().mo16713c(this.f1201i);
    }

    /* renamed from: k */
    public void mo16702k(InterfaceC0331n<? super T> interfaceC0331n) {
        m26821b("removeObserver");
        LiveData<T>.AbstractC0311b mo16063m = this.f1194b.mo16063m(interfaceC0331n);
        if (mo16063m == null) {
            return;
        }
        mo16063m.mo26814i();
        mo16063m.m26815h(false);
    }

    /* renamed from: l */
    public void mo16701l(T t) {
        m26821b("setValue");
        this.f1198f++;
        this.f1196d = t;
        m26819d(null);
    }

    public LiveData() {
        Object obj = f1192j;
        this.f1197e = obj;
        this.f1201i = new RunnableC0310a();
        this.f1196d = obj;
        this.f1198f = -1;
    }

    /* renamed from: b */
    public static void m26821b(String str) {
        if (C4386a.m16718e().mo16714b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }
}
