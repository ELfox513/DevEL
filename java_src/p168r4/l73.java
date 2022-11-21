package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.l73 */
/* loaded from: classes2.dex */
public enum l73 implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
