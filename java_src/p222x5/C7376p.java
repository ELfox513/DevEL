package p222x5;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
import p053e6.InterfaceC3385e;
import p196u5.C6930f;
import p196u5.InterfaceC6923a;
/* renamed from: x5.p */
/* loaded from: classes2.dex */
public class C7376p implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final InterfaceC7377a f36940a;

    /* renamed from: b */
    public final InterfaceC3385e f36941b;

    /* renamed from: c */
    public final Thread.UncaughtExceptionHandler f36942c;

    /* renamed from: d */
    public final InterfaceC6923a f36943d;

    /* renamed from: e */
    public final AtomicBoolean f36944e = new AtomicBoolean(false);

    /* renamed from: x5.p$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC7377a {
        /* renamed from: a */
        void mo1636a(InterfaceC3385e interfaceC3385e, Thread thread, Throwable th);
    }

    /* renamed from: a */
    public boolean m1638a() {
        return this.f36944e.get();
    }

    /* renamed from: b */
    public final boolean m1637b(Thread thread, Throwable th) {
        if (thread == null) {
            C6930f.m3016f().m3018d("Crashlytics will not record uncaught exception; null thread");
            return false;
        } else if (th == null) {
            C6930f.m3016f().m3018d("Crashlytics will not record uncaught exception; null throwable");
            return false;
        } else if (this.f36943d.mo3030c()) {
            C6930f.m3016f().m3020b("Crashlytics will not record uncaught exception; native crash exists for session.");
            return false;
        } else {
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Thread$UncaughtExceptionHandler] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Thread$UncaughtExceptionHandler] */
    /* JADX WARN: Type inference failed for: r2v3, types: [u5.f] */
    /* JADX WARN: Type inference failed for: r3v1, types: [u5.f] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Thread] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Thread] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.concurrent.atomic.AtomicBoolean] */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        ?? r0 = "Completed exception processing. Invoking default exception handler.";
        this.f36944e.set(true);
        try {
            try {
                if (m1637b(thread, th)) {
                    this.f36940a.mo1636a(this.f36941b, thread, th);
                } else {
                    C6930f.m3016f().m3020b("Uncaught exception will not be recorded by Crashlytics.");
                }
            } catch (Exception e) {
                C6930f.m3016f().m3017e("An error occurred in the uncaught exception handler", e);
            }
        } finally {
            C6930f.m3016f().m3020b(r0);
            this.f36942c.uncaughtException(thread, th);
            this.f36944e.set(false);
        }
    }

    public C7376p(InterfaceC7377a interfaceC7377a, InterfaceC3385e interfaceC3385e, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, InterfaceC6923a interfaceC6923a) {
        this.f36940a = interfaceC7377a;
        this.f36941b = interfaceC3385e;
        this.f36942c = uncaughtExceptionHandler;
        this.f36943d = interfaceC6923a;
    }
}
