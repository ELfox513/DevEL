package p120m1;

import p015b2.C0448p;
import p201v1.C6971c;
/* renamed from: m1.t */
/* loaded from: classes.dex */
public abstract class AbstractC4617t extends AbstractC4618u {

    /* renamed from: b */
    public final C6971c f18657b;

    /* renamed from: c */
    public final int f18658c;

    /* renamed from: a */
    public final C6971c m15922a() {
        return this.f18657b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public final int mo13348c() {
        return this.f18658c + 6;
    }

    public AbstractC4617t(String str, C6971c c6971c, int i) {
        super(str);
        try {
            if (!c6971c.isMutable()) {
                this.f18657b = c6971c;
                this.f18658c = i;
                return;
            }
            throw new C0448p("annotations.isMutable()");
        } catch (NullPointerException unused) {
            throw new NullPointerException("annotations == null");
        }
    }
}
