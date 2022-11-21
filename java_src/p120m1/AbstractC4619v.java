package p120m1;

import p015b2.C0448p;
import p129n1.C4711n;
/* renamed from: m1.v */
/* loaded from: classes.dex */
public abstract class AbstractC4619v extends AbstractC4618u {

    /* renamed from: b */
    public final C4711n f18660b;

    /* renamed from: a */
    public final C4711n m15921a() {
        return this.f18660b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public final int mo13348c() {
        return (this.f18660b.size() * 10) + 8;
    }

    public AbstractC4619v(String str, C4711n c4711n) {
        super(str);
        try {
            if (!c4711n.isMutable()) {
                this.f18660b = c4711n;
                return;
            }
            throw new C0448p("localVariables.isMutable()");
        } catch (NullPointerException unused) {
            throw new NullPointerException("localVariables == null");
        }
    }
}
