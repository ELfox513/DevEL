package p001a0;

import android.graphics.Typeface;
import android.os.Handler;
import p001a0.C0012e;
import p001a0.C0018f;
/* renamed from: a0.a */
/* loaded from: classes.dex */
public class C0005a {

    /* renamed from: a */
    public final C0018f.C0021c f1a;

    /* renamed from: b */
    public final Handler f2b;

    /* renamed from: a0.a$a */
    /* loaded from: classes.dex */
    public class RunnableC0006a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C0018f.C0021c f3a;

        /* renamed from: b */
        public final /* synthetic */ Typeface f4b;

        public RunnableC0006a(C0018f.C0021c c0021c, Typeface typeface) {
            this.f3a = c0021c;
            this.f4b = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3a.mo2925b(this.f4b);
        }
    }

    /* renamed from: a0.a$b */
    /* loaded from: classes.dex */
    public class RunnableC0007b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C0018f.C0021c f6a;

        /* renamed from: b */
        public final /* synthetic */ int f7b;

        public RunnableC0007b(C0018f.C0021c c0021c, int i) {
            this.f6a = c0021c;
            this.f7b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6a.mo2926a(this.f7b);
        }
    }

    /* renamed from: a */
    public final void m27840a(int i) {
        this.f2b.post(new RunnableC0007b(this.f1a, i));
    }

    /* renamed from: c */
    public final void m27838c(Typeface typeface) {
        this.f2b.post(new RunnableC0006a(this.f1a, typeface));
    }

    public C0005a(C0018f.C0021c c0021c, Handler handler) {
        this.f1a = c0021c;
        this.f2b = handler;
    }

    /* renamed from: b */
    public void m27839b(C0012e.C0017e c0017e) {
        if (c0017e.m27813a()) {
            m27838c(c0017e.f30a);
        } else {
            m27840a(c0017e.f31b);
        }
    }
}
