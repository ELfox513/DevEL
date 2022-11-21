package p070g5;

import java.lang.Thread;
import p220x3.C7297q;
/* renamed from: g5.v4 */
/* loaded from: classes2.dex */
public final class C3850v4 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final String f17006a;

    /* renamed from: b */
    public final /* synthetic */ C3886y4 f17007b;

    public C3850v4(C3886y4 c3886y4, String str) {
        this.f17007b = c3886y4;
        C7297q.m1883j(str);
        this.f17006a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f17007b.f17008a.mo17858F().m18018m().m18041b(this.f17006a, th);
    }
}
