package p018b5;

import java.util.List;
/* renamed from: b5.l0 */
/* loaded from: classes2.dex */
public final class C0743l0 extends AbstractC0946x {
    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    public final InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        if (str != null && !str.isEmpty() && c0917v4.m25066h(str)) {
            InterfaceC0827q m25070d = c0917v4.m25070d(str);
            if (m25070d instanceof AbstractC0708j) {
                return ((AbstractC0708j) m25070d).mo24853a(c0917v4, list);
            }
            throw new IllegalArgumentException(String.format("Function %s is not defined", str));
        }
        throw new IllegalArgumentException(String.format("Command not found: %s", str));
    }
}
