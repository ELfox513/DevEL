package p023c1;

import java.util.ArrayList;
import java.util.List;
import p014b1.InterfaceC0424a;
import p039d1.AbstractC3272d;
import p057f1.C3482p;
/* renamed from: c1.c */
/* loaded from: classes.dex */
public abstract class AbstractC1028c<T> implements InterfaceC0424a<T> {

    /* renamed from: a */
    public final List<String> f2927a = new ArrayList();

    /* renamed from: b */
    public T f2928b;

    /* renamed from: c */
    public AbstractC3272d<T> f2929c;

    /* renamed from: d */
    public InterfaceC1029a f2930d;

    /* renamed from: c1.c$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1029a {
        /* renamed from: a */
        void mo24793a(List<String> list);

        /* renamed from: b */
        void mo24792b(List<String> list);
    }

    /* renamed from: b */
    public abstract boolean mo24787b(C3482p c3482p);

    /* renamed from: c */
    public abstract boolean mo24786c(T t);

    @Override // p014b1.InterfaceC0424a
    /* renamed from: a */
    public void mo24799a(T t) {
        this.f2928b = t;
        m24794h(this.f2930d, t);
    }

    /* renamed from: d */
    public boolean m24798d(String str) {
        T t = this.f2928b;
        if (t != null && mo24786c(t) && this.f2927a.contains(str)) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public void m24797e(Iterable<C3482p> iterable) {
        this.f2927a.clear();
        for (C3482p c3482p : iterable) {
            if (mo24787b(c3482p)) {
                this.f2927a.add(c3482p.f15921a);
            }
        }
        if (this.f2927a.isEmpty()) {
            this.f2929c.m19217c(this);
        } else {
            this.f2929c.m19218a(this);
        }
        m24794h(this.f2930d, this.f2928b);
    }

    /* renamed from: f */
    public void m24796f() {
        if (!this.f2927a.isEmpty()) {
            this.f2927a.clear();
            this.f2929c.m19217c(this);
        }
    }

    /* renamed from: g */
    public void m24795g(InterfaceC1029a interfaceC1029a) {
        if (this.f2930d != interfaceC1029a) {
            this.f2930d = interfaceC1029a;
            m24794h(interfaceC1029a, this.f2928b);
        }
    }

    /* renamed from: h */
    public final void m24794h(InterfaceC1029a interfaceC1029a, T t) {
        if (!this.f2927a.isEmpty() && interfaceC1029a != null) {
            if (t != null && !mo24786c(t)) {
                interfaceC1029a.mo24793a(this.f2927a);
            } else {
                interfaceC1029a.mo24792b(this.f2927a);
            }
        }
    }

    public AbstractC1028c(AbstractC3272d<T> abstractC3272d) {
        this.f2929c = abstractC3272d;
    }
}
