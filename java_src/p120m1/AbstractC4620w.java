package p120m1;

import p015b2.C0448p;
import p201v1.C6972d;
/* renamed from: m1.w */
/* loaded from: classes.dex */
public abstract class AbstractC4620w extends AbstractC4618u {

    /* renamed from: b */
    public final C6972d f18661b;

    /* renamed from: c */
    public final int f18662c;

    /* renamed from: a */
    public final C6972d m15920a() {
        return this.f18661b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public final int mo13348c() {
        return this.f18662c + 6;
    }

    public AbstractC4620w(String str, C6972d c6972d, int i) {
        super(str);
        try {
            if (!c6972d.isMutable()) {
                this.f18661b = c6972d;
                this.f18662c = i;
                return;
            }
            throw new C0448p("parameterAnnotations.isMutable()");
        } catch (NullPointerException unused) {
            throw new NullPointerException("parameterAnnotations == null");
        }
    }
}
