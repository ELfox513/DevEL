package p168r4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: r4.db */
/* loaded from: classes2.dex */
public final class C5682db<T> {

    /* renamed from: a */
    public final InterfaceC5940ka f22208a;

    /* renamed from: b */
    public final InterfaceC6422xa f22209b;

    /* renamed from: c */
    public final InterfaceC5609bb<T> f22210c;

    /* renamed from: d */
    public final CopyOnWriteArraySet<C5645cb<T>> f22211d;

    /* renamed from: e */
    public final ArrayDeque<Runnable> f22212e;

    /* renamed from: f */
    public final ArrayDeque<Runnable> f22213f;

    /* renamed from: g */
    public boolean f22214g;

    public C5682db(Looper looper, InterfaceC5940ka interfaceC5940ka, InterfaceC5609bb<T> interfaceC5609bb) {
        this(new CopyOnWriteArraySet(), looper, interfaceC5940ka, interfaceC5609bb);
    }

    /* renamed from: a */
    public final C5682db<T> m12178a(Looper looper, InterfaceC5609bb<T> interfaceC5609bb) {
        return new C5682db<>(this.f22211d, looper, this.f22208a, interfaceC5609bb);
    }

    public C5682db(CopyOnWriteArraySet<C5645cb<T>> copyOnWriteArraySet, Looper looper, InterfaceC5940ka interfaceC5940ka, InterfaceC5609bb<T> interfaceC5609bb) {
        this.f22208a = interfaceC5940ka;
        this.f22211d = copyOnWriteArraySet;
        this.f22210c = interfaceC5609bb;
        this.f22212e = new ArrayDeque<>();
        this.f22213f = new ArrayDeque<>();
        this.f22209b = interfaceC5940ka.mo10082a(looper, new Handler.Callback(this) { // from class: r4.ya

            /* renamed from: a */
            public final C5682db f34010a;

            {
                this.f34010a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                this.f34010a.m12172g(message);
                return true;
            }
        });
    }

    /* renamed from: b */
    public final void m12177b(T t) {
        if (!this.f22214g) {
            t.getClass();
            this.f22211d.add(new C5645cb<>(t));
        }
    }

    /* renamed from: c */
    public final void m12176c(T t) {
        Iterator<C5645cb<T>> it = this.f22211d.iterator();
        while (it.hasNext()) {
            C5645cb<T> next = it.next();
            if (next.f21459a.equals(t)) {
                next.m12502a(this.f22210c);
                this.f22211d.remove(next);
            }
        }
    }

    /* renamed from: d */
    public final void m12175d(final int i, final InterfaceC5572ab<T> interfaceC5572ab) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f22211d);
        this.f22213f.add(new Runnable(copyOnWriteArraySet, i, interfaceC5572ab) { // from class: r4.za

            /* renamed from: a */
            public final CopyOnWriteArraySet f34405a;

            /* renamed from: b */
            public final int f34406b;

            /* renamed from: d */
            public final InterfaceC5572ab f34407d;

            {
                this.f34405a = copyOnWriteArraySet;
                this.f34406b = i;
                this.f34407d = interfaceC5572ab;
            }

            @Override // java.lang.Runnable
            public final void run() {
                CopyOnWriteArraySet copyOnWriteArraySet2 = this.f34405a;
                int i2 = this.f34406b;
                InterfaceC5572ab interfaceC5572ab2 = this.f34407d;
                Iterator it = copyOnWriteArraySet2.iterator();
                while (it.hasNext()) {
                    ((C5645cb) it.next()).m12501b(i2, interfaceC5572ab2);
                }
            }
        });
    }

    /* renamed from: e */
    public final void m12174e() {
        if (this.f22213f.isEmpty()) {
            return;
        }
        if (!this.f22209b.mo5432h(0)) {
            InterfaceC6422xa interfaceC6422xa = this.f22209b;
            interfaceC6422xa.mo5435e(interfaceC6422xa.mo5431x(0));
        }
        boolean isEmpty = this.f22212e.isEmpty();
        this.f22212e.addAll(this.f22213f);
        this.f22213f.clear();
        if (!(!isEmpty)) {
            while (!this.f22212e.isEmpty()) {
                this.f22212e.peekFirst().run();
                this.f22212e.removeFirst();
            }
        }
    }

    /* renamed from: f */
    public final void m12173f() {
        Iterator<C5645cb<T>> it = this.f22211d.iterator();
        while (it.hasNext()) {
            it.next().m12502a(this.f22210c);
        }
        this.f22211d.clear();
        this.f22214g = true;
    }

    /* renamed from: g */
    public final /* bridge */ /* synthetic */ boolean m12172g(Message message) {
        Iterator<C5645cb<T>> it = this.f22211d.iterator();
        while (it.hasNext()) {
            it.next().m12500c(this.f22210c);
            if (this.f22209b.mo5432h(0)) {
                return true;
            }
        }
        return true;
    }
}
