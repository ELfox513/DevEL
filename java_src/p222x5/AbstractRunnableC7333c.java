package p222x5;

import android.os.Process;
/* renamed from: x5.c */
/* loaded from: classes2.dex */
public abstract class AbstractRunnableC7333c implements Runnable {
    /* renamed from: a */
    public abstract void mo1619a();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        mo1619a();
    }
}
