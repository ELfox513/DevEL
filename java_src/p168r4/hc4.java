package p168r4;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* renamed from: r4.hc4 */
/* loaded from: classes2.dex */
public final class hc4 implements Runnable {
    public /* synthetic */ hc4(ic4 ic4Var) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            jc4.m10308a(MessageDigest.getInstance("MD5"));
            countDownLatch = jc4.f26004e;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = jc4.f26004e;
        } catch (Throwable th) {
            jc4.f26004e.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
