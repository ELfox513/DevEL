package p093j1;

import com.android.billingclient.api.C1085b;
import java.util.concurrent.Callable;
/* renamed from: j1.w */
/* loaded from: classes.dex */
public final class CallableC4304w implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C4282e f18166a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC4285f f18167b;

    /* renamed from: c */
    public final /* synthetic */ C1085b f18168c;

    public CallableC4304w(C1085b c1085b, C4282e c4282e, InterfaceC4285f interfaceC4285f) {
        this.f18168c = c1085b;
        this.f18166a = c4282e;
        this.f18167b = interfaceC4285f;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() {
        this.f18168c.m24560v(this.f18166a, this.f18167b);
        return null;
    }
}
