package p178s5;

import p161q6.InterfaceC5434b;
/* renamed from: s5.w */
/* loaded from: classes2.dex */
public class C6624w<T> implements InterfaceC5434b<T> {

    /* renamed from: c */
    public static final Object f35209c = new Object();

    /* renamed from: a */
    public volatile Object f35210a = f35209c;

    /* renamed from: b */
    public volatile InterfaceC5434b<T> f35211b;

    @Override // p161q6.InterfaceC5434b
    public T get() {
        T t = (T) this.f35210a;
        Object obj = f35209c;
        if (t == obj) {
            synchronized (this) {
                t = this.f35210a;
                if (t == obj) {
                    t = this.f35211b.get();
                    this.f35210a = t;
                    this.f35211b = null;
                }
            }
        }
        return t;
    }

    public C6624w(InterfaceC5434b<T> interfaceC5434b) {
        this.f35211b = interfaceC5434b;
    }
}
