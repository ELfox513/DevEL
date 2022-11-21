package p237z4;

import java.util.Iterator;
import java.util.Map;
/* renamed from: z4.w1 */
/* loaded from: classes2.dex */
public final class C7724w1<T> implements InterfaceC7640f2<T> {

    /* renamed from: a */
    public final InterfaceC7703r1 f37908a;

    /* renamed from: b */
    public final AbstractC7731x2<?, ?> f37909b;

    /* renamed from: c */
    public final boolean f37910c;

    /* renamed from: d */
    public final AbstractC7619c0<?> f37911d;

    /* renamed from: f */
    public static <T> C7724w1<T> m547f(AbstractC7731x2<?, ?> abstractC7731x2, AbstractC7619c0<?> abstractC7619c0, InterfaceC7703r1 interfaceC7703r1) {
        return new C7724w1<>(abstractC7731x2, abstractC7619c0, interfaceC7703r1);
    }

    @Override // p237z4.InterfaceC7640f2
    /* renamed from: a */
    public final int mo552a(T t) {
        AbstractC7731x2<?, ?> abstractC7731x2 = this.f37909b;
        int mo393h = abstractC7731x2.mo393h(abstractC7731x2.mo394g(t)) + 0;
        if (this.f37910c) {
            return mo393h + this.f37911d.mo875c(t).m790p();
        }
        return mo393h;
    }

    @Override // p237z4.InterfaceC7640f2
    /* renamed from: b */
    public final void mo551b(T t, T t2) {
        C7650h2.m723g(this.f37909b, t, t2);
        if (this.f37910c) {
            C7650h2.m725e(this.f37911d, t, t2);
        }
    }

    @Override // p237z4.InterfaceC7640f2
    /* renamed from: c */
    public final void mo550c(T t) {
        this.f37909b.mo398c(t);
        this.f37911d.mo873e(t);
    }

    @Override // p237z4.InterfaceC7640f2
    /* renamed from: d */
    public final void mo549d(T t, InterfaceC7705r3 interfaceC7705r3) {
        Iterator<Map.Entry<?, Object>> m802d = this.f37911d.mo875c(t).m802d();
        while (m802d.hasNext()) {
            Map.Entry<?, Object> next = m802d.next();
            InterfaceC7648h0 interfaceC7648h0 = (InterfaceC7648h0) next.getKey();
            if (interfaceC7648h0.m760q() == EnumC7700q3.MESSAGE && !interfaceC7648h0.m759s() && !interfaceC7648h0.m762m()) {
                if (next instanceof C7723w0) {
                    interfaceC7705r3.mo422k(interfaceC7648h0.m763g(), ((C7723w0) next).m553a().m461a());
                } else {
                    interfaceC7705r3.mo422k(interfaceC7648h0.m763g(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        AbstractC7731x2<?, ?> abstractC7731x2 = this.f37909b;
        abstractC7731x2.mo399b(abstractC7731x2.mo394g(t), interfaceC7705r3);
    }

    @Override // p237z4.InterfaceC7640f2
    /* renamed from: e */
    public final boolean mo548e(T t) {
        return this.f37911d.mo875c(t).m803c();
    }

    @Override // p237z4.InterfaceC7640f2
    public final boolean equals(T t, T t2) {
        if (!this.f37909b.mo394g(t).equals(this.f37909b.mo394g(t2))) {
            return false;
        }
        if (this.f37910c) {
            return this.f37911d.mo875c(t).equals(this.f37911d.mo875c(t2));
        }
        return true;
    }

    @Override // p237z4.InterfaceC7640f2
    public final int hashCode(T t) {
        int hashCode = this.f37909b.mo394g(t).hashCode();
        if (this.f37910c) {
            return (hashCode * 53) + this.f37911d.mo875c(t).hashCode();
        }
        return hashCode;
    }

    public C7724w1(AbstractC7731x2<?, ?> abstractC7731x2, AbstractC7619c0<?> abstractC7619c0, InterfaceC7703r1 interfaceC7703r1) {
        this.f37909b = abstractC7731x2;
        this.f37910c = abstractC7619c0.mo872f(interfaceC7703r1);
        this.f37911d = abstractC7619c0;
        this.f37908a = interfaceC7703r1;
    }
}
