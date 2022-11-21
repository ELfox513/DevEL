package p168r4;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* renamed from: r4.i83 */
/* loaded from: classes2.dex */
public interface i83 extends ExecutorService {
    /* renamed from: c */
    <T> h83<T> mo8015c(Callable<T> callable);

    /* renamed from: d */
    h83<?> mo8014d(Runnable runnable);
}
