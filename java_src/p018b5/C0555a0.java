package p018b5;

import java.util.ArrayList;
import java.util.List;
/* renamed from: b5.a0 */
/* loaded from: classes2.dex */
public final class C0555a0 extends AbstractC0946x {
    /* renamed from: c */
    public static InterfaceC0827q m26182c(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        C0935w5.m25045i(EnumC0777n0.FN.name(), 2, list);
        InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
        InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(1));
        if (m25072b2 instanceof C0640f) {
            List<InterfaceC0827q> m26014r = ((C0640f) m25072b2).m26014r();
            List<InterfaceC0827q> arrayList = new ArrayList<>();
            if (list.size() > 2) {
                arrayList = list.subList(2, list.size());
            }
            return new C0810p(m25072b.mo25083j(), m26014r, arrayList, c0917v4);
        }
        throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", m25072b2.getClass().getCanonicalName()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0129, code lost:
        if (r8.equals("continue") == false) goto L67;
     */
    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p018b5.InterfaceC0827q mo24903a(java.lang.String r8, p018b5.C0917v4 r9, java.util.List<p018b5.InterfaceC0827q> r10) {
        /*
            Method dump skipped, instructions count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0555a0.mo24903a(java.lang.String, b5.v4, java.util.List):b5.q");
    }

    public C0555a0() {
        this.f2385a.add(EnumC0777n0.APPLY);
        this.f2385a.add(EnumC0777n0.BLOCK);
        this.f2385a.add(EnumC0777n0.BREAK);
        this.f2385a.add(EnumC0777n0.CASE);
        this.f2385a.add(EnumC0777n0.DEFAULT);
        this.f2385a.add(EnumC0777n0.CONTINUE);
        this.f2385a.add(EnumC0777n0.DEFINE_FUNCTION);
        this.f2385a.add(EnumC0777n0.FN);
        this.f2385a.add(EnumC0777n0.IF);
        this.f2385a.add(EnumC0777n0.QUOTE);
        this.f2385a.add(EnumC0777n0.RETURN);
        this.f2385a.add(EnumC0777n0.SWITCH);
        this.f2385a.add(EnumC0777n0.TERNARY);
    }
}
