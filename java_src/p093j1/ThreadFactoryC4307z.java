package p093j1;

import com.android.billingclient.api.C1085b;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: j1.z */
/* loaded from: classes.dex */
public final class ThreadFactoryC4307z implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f18174a = Executors.defaultThreadFactory();

    /* renamed from: b */
    public final AtomicInteger f18175b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f18174a.newThread(runnable);
        int andIncrement = this.f18175b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }

    public ThreadFactoryC4307z(C1085b c1085b) {
    }
}
