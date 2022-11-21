package p018b5;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: b5.vf */
/* loaded from: classes2.dex */
public final class C0928vf extends AbstractC0708j {

    /* renamed from: d */
    public final Callable<Object> f2367d;

    public C0928vf(String str, Callable<Object> callable) {
        super("internal.appMetadata");
        this.f2367d = callable;
    }

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        try {
            return C0953x6.m24988b(this.f2367d.call());
        } catch (Exception unused) {
            return InterfaceC0827q.f2154c;
        }
    }
}
