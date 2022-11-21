package p185t3;

import java.util.concurrent.Callable;
/* renamed from: t3.l0 */
/* loaded from: classes.dex */
public final class C6755l0 extends C6757m0 {

    /* renamed from: e */
    public final Callable<String> f35426e;

    public /* synthetic */ C6755l0(Callable callable, C6753k0 c6753k0) {
        super(false, null, null);
        this.f35426e = callable;
    }

    @Override // p185t3.C6757m0
    /* renamed from: a */
    public final String mo3471a() {
        try {
            return this.f35426e.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
