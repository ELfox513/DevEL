package p120m1;

import p015b2.C0448p;
import p226y1.InterfaceC7404e;
/* renamed from: m1.g */
/* loaded from: classes.dex */
public final class C4604g extends AbstractC4618u {

    /* renamed from: b */
    public final InterfaceC7404e f18651b;

    /* renamed from: a */
    public InterfaceC7404e m15928a() {
        return this.f18651b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return (this.f18651b.size() * 2) + 8;
    }

    public C4604g(InterfaceC7404e interfaceC7404e) {
        super("Exceptions");
        try {
            if (!interfaceC7404e.isMutable()) {
                this.f18651b = interfaceC7404e;
                return;
            }
            throw new C0448p("exceptions.isMutable()");
        } catch (NullPointerException unused) {
            throw new NullPointerException("exceptions == null");
        }
    }
}
