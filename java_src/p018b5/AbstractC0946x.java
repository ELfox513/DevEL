package p018b5;

import java.util.ArrayList;
import java.util.List;
/* renamed from: b5.x */
/* loaded from: classes2.dex */
public abstract class AbstractC0946x {

    /* renamed from: a */
    public final List<EnumC0777n0> f2385a = new ArrayList();

    /* renamed from: a */
    public abstract InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list);

    /* renamed from: b */
    public final InterfaceC0827q m25015b(String str) {
        String str2;
        if (this.f2385a.contains(C0935w5.m25049e(str))) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "Command not implemented: ".concat(valueOf);
            } else {
                str2 = new String("Command not implemented: ");
            }
            throw new UnsupportedOperationException(str2);
        }
        throw new IllegalArgumentException("Command not supported");
    }
}
