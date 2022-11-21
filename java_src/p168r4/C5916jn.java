package p168r4;

import android.webkit.ValueCallback;
/* renamed from: r4.jn */
/* loaded from: classes2.dex */
public final class C5916jn implements ValueCallback<String> {

    /* renamed from: a */
    public final /* synthetic */ RunnableC5990ln f26079a;

    public C5916jn(RunnableC5990ln runnableC5990ln) {
        this.f26079a = runnableC5990ln;
    }

    @Override // android.webkit.ValueCallback
    /* renamed from: a */
    public final void onReceiveValue(String str) {
        RunnableC5990ln runnableC5990ln = this.f26079a;
        runnableC5990ln.f27273p.m9030d(runnableC5990ln.f27270b, runnableC5990ln.f27271d, str, runnableC5990ln.f27272k);
    }
}
