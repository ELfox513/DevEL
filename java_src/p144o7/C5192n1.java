package p144o7;

import java.util.List;
/* renamed from: o7.n1 */
/* loaded from: classes2.dex */
public class C5192n1 extends RuntimeException {

    /* renamed from: a */
    public final List<String> f19515a;

    /* renamed from: a */
    public C5117c0 m14180a() {
        return new C5117c0(getMessage());
    }

    public C5192n1(InterfaceC5210s0 interfaceC5210s0) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f19515a = null;
    }
}
