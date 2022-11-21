package p168r4;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.d2 */
/* loaded from: classes2.dex */
public final class C5673d2 {

    /* renamed from: a */
    public final C6338v0 f22036a;

    /* renamed from: b */
    public final String f22037b;

    /* renamed from: c */
    public final String f22038c;

    /* renamed from: e */
    public final Class<?>[] f22040e;

    /* renamed from: d */
    public volatile Method f22039d = null;

    /* renamed from: f */
    public final CountDownLatch f22041f = new CountDownLatch(1);

    /* renamed from: b */
    public final Method m12237b() {
        if (this.f22039d != null) {
            return this.f22039d;
        }
        try {
            if (this.f22041f.await(2L, TimeUnit.SECONDS)) {
                return this.f22039d;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }

    /* renamed from: c */
    public final String m12236c(byte[] bArr, String str) {
        return new String(this.f22036a.m6279g().m4499b(bArr, str), "UTF-8");
    }

    /* renamed from: a */
    public static /* synthetic */ void m12238a(C5673d2 c5673d2) {
        CountDownLatch countDownLatch;
        Class<?> loadClass;
        try {
            loadClass = c5673d2.f22036a.m6280f().loadClass(c5673d2.m12236c(c5673d2.f22036a.m6278h(), c5673d2.f22037b));
        } catch (UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | C6448y unused) {
        } catch (NullPointerException unused2) {
            countDownLatch = c5673d2.f22041f;
        } catch (Throwable th) {
            c5673d2.f22041f.countDown();
            throw th;
        }
        if (loadClass == null) {
            countDownLatch = c5673d2.f22041f;
        } else {
            c5673d2.f22039d = loadClass.getMethod(c5673d2.m12236c(c5673d2.f22036a.m6278h(), c5673d2.f22038c), c5673d2.f22040e);
            if (c5673d2.f22039d == null) {
                countDownLatch = c5673d2.f22041f;
            }
            countDownLatch = c5673d2.f22041f;
        }
        countDownLatch.countDown();
    }

    public C5673d2(C6338v0 c6338v0, String str, String str2, Class<?>... clsArr) {
        this.f22036a = c6338v0;
        this.f22037b = str;
        this.f22038c = str2;
        this.f22040e = clsArr;
        c6338v0.m6281e().submit(new RunnableC5636c2(this));
    }
}
