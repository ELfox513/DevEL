package p075h1;

import java.util.concurrent.Executor;
/* renamed from: h1.c */
/* loaded from: classes.dex */
public enum EnumC3943c implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "DirectExecutor";
    }
}
