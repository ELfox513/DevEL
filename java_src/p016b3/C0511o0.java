package p016b3;

import p168r4.cm0;
import p168r4.u84;
import p168r4.z84;
/* renamed from: b3.o0 */
/* loaded from: classes.dex */
public final class C0511o0 implements u84 {

    /* renamed from: a */
    public final /* synthetic */ String f1656a;

    /* renamed from: b */
    public final /* synthetic */ C0527s0 f1657b;

    public C0511o0(C0539v0 c0539v0, String str, C0527s0 c0527s0) {
        this.f1656a = str;
        this.f1657b = c0527s0;
    }

    @Override // p168r4.u84
    /* renamed from: a */
    public final void mo6600a(z84 z84Var) {
        String str = this.f1656a;
        String obj = z84Var.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(obj).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(obj);
        cm0.m12437f(sb.toString());
        this.f1657b.mo6200a(null);
    }
}
