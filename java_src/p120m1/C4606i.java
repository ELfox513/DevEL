package p120m1;

import p015b2.C0448p;
import p129n1.C4709m;
/* renamed from: m1.i */
/* loaded from: classes.dex */
public final class C4606i extends AbstractC4618u {

    /* renamed from: b */
    public final C4709m f18653b;

    /* renamed from: a */
    public C4709m m15926a() {
        return this.f18653b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return (this.f18653b.size() * 4) + 8;
    }

    public C4606i(C4709m c4709m) {
        super("LineNumberTable");
        try {
            if (!c4709m.isMutable()) {
                this.f18653b = c4709m;
                return;
            }
            throw new C0448p("lineNumbers.isMutable()");
        } catch (NullPointerException unused) {
            throw new NullPointerException("lineNumbers == null");
        }
    }
}
