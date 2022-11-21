package p128n0;

import p155q0.InterfaceC5390f;
/* renamed from: n0.b */
/* loaded from: classes.dex */
public abstract class AbstractC4673b<T> extends AbstractC4689l {
    public AbstractC4673b(AbstractC4676e abstractC4676e) {
        super(abstractC4676e);
    }

    /* renamed from: g */
    public abstract void mo15835g(InterfaceC5390f interfaceC5390f, T t);

    /* renamed from: h */
    public final void m15834h(T t) {
        InterfaceC5390f m15775a = m15775a();
        try {
            mo15835g(m15775a, t);
            m15775a.mo13116T0();
        } finally {
            m15770f(m15775a);
        }
    }
}
