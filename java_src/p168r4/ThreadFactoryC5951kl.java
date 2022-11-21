package p168r4;

import java.util.concurrent.ThreadFactory;
/* renamed from: r4.kl */
/* loaded from: classes2.dex */
public final class ThreadFactoryC5951kl implements ThreadFactory {

    /* renamed from: a */
    public final /* synthetic */ String f26474a = "Loader:ExtractorMediaPeriod";

    public ThreadFactoryC5951kl(String str) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f26474a);
    }
}
