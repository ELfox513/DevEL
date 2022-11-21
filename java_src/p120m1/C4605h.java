package p120m1;

import p015b2.C0448p;
/* renamed from: m1.h */
/* loaded from: classes.dex */
public final class C4605h extends AbstractC4618u {

    /* renamed from: b */
    public final C4621x f18652b;

    /* renamed from: a */
    public C4621x m15927a() {
        return this.f18652b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return (this.f18652b.size() * 8) + 8;
    }

    public C4605h(C4621x c4621x) {
        super("InnerClasses");
        try {
            if (!c4621x.isMutable()) {
                this.f18652b = c4621x;
                return;
            }
            throw new C0448p("innerClasses.isMutable()");
        } catch (NullPointerException unused) {
            throw new NullPointerException("innerClasses == null");
        }
    }
}
