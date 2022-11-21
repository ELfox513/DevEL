package p168r4;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: r4.mm0 */
/* loaded from: classes2.dex */
public final class mm0 implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f27784a = new AtomicInteger(1);

    /* renamed from: b */
    public final /* synthetic */ String f27785b;

    public mm0(String str) {
        this.f27785b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f27785b;
        int andIncrement = this.f27784a.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
