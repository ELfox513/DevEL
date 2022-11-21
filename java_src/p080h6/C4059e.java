package p080h6;
/* renamed from: h6.e */
/* loaded from: classes2.dex */
public class C4059e {

    /* renamed from: a */
    public final String f17585a;

    /* renamed from: b */
    public final String f17586b;

    /* renamed from: c */
    public final StackTraceElement[] f17587c;

    /* renamed from: d */
    public final C4059e f17588d;

    public C4059e(Throwable th, InterfaceC4058d interfaceC4058d) {
        C4059e c4059e;
        this.f17585a = th.getLocalizedMessage();
        this.f17586b = th.getClass().getName();
        this.f17587c = interfaceC4058d.mo17478a(th.getStackTrace());
        Throwable cause = th.getCause();
        if (cause != null) {
            c4059e = new C4059e(cause, interfaceC4058d);
        } else {
            c4059e = null;
        }
        this.f17588d = c4059e;
    }
}
