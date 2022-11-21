package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.AbstractC0317d;
/* renamed from: androidx.lifecycle.q */
/* loaded from: classes.dex */
public class C0335q {

    /* renamed from: a */
    public final C0323h f1242a;

    /* renamed from: b */
    public final Handler f1243b = new Handler();

    /* renamed from: c */
    public RunnableC0336a f1244c;

    /* renamed from: androidx.lifecycle.q$a */
    /* loaded from: classes.dex */
    public static class RunnableC0336a implements Runnable {

        /* renamed from: a */
        public final C0323h f1245a;

        /* renamed from: b */
        public final AbstractC0317d.EnumC0318a f1246b;

        /* renamed from: d */
        public boolean f1247d = false;

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f1247d) {
                this.f1245a.m26787i(this.f1246b);
                this.f1247d = true;
            }
        }

        public RunnableC0336a(C0323h c0323h, AbstractC0317d.EnumC0318a enumC0318a) {
            this.f1245a = c0323h;
            this.f1246b = enumC0318a;
        }
    }

    /* renamed from: a */
    public AbstractC0317d m26761a() {
        return this.f1242a;
    }

    /* renamed from: b */
    public void m26760b() {
        m26756f(AbstractC0317d.EnumC0318a.ON_START);
    }

    /* renamed from: c */
    public void m26759c() {
        m26756f(AbstractC0317d.EnumC0318a.ON_CREATE);
    }

    /* renamed from: e */
    public void m26757e() {
        m26756f(AbstractC0317d.EnumC0318a.ON_START);
    }

    /* renamed from: d */
    public void m26758d() {
        m26756f(AbstractC0317d.EnumC0318a.ON_STOP);
        m26756f(AbstractC0317d.EnumC0318a.ON_DESTROY);
    }

    /* renamed from: f */
    public final void m26756f(AbstractC0317d.EnumC0318a enumC0318a) {
        RunnableC0336a runnableC0336a = this.f1244c;
        if (runnableC0336a != null) {
            runnableC0336a.run();
        }
        RunnableC0336a runnableC0336a2 = new RunnableC0336a(this.f1242a, enumC0318a);
        this.f1244c = runnableC0336a2;
        this.f1243b.postAtFrontOfQueue(runnableC0336a2);
    }

    public C0335q(InterfaceC0322g interfaceC0322g) {
        this.f1242a = new C0323h(interfaceC0322g);
    }
}
