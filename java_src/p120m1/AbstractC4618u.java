package p120m1;

import p156q1.InterfaceC5391a;
/* renamed from: m1.u */
/* loaded from: classes.dex */
public abstract class AbstractC4618u implements InterfaceC5391a {

    /* renamed from: a */
    public final String f18659a;

    @Override // p156q1.InterfaceC5391a
    public String getName() {
        return this.f18659a;
    }

    public AbstractC4618u(String str) {
        if (str != null) {
            this.f18659a = str;
            return;
        }
        throw new NullPointerException("name == null");
    }
}
