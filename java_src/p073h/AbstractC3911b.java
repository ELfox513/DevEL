package p073h;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* renamed from: h.b */
/* loaded from: classes.dex */
public abstract class AbstractC3911b {

    /* renamed from: a */
    public Object f17153a;

    /* renamed from: b */
    public boolean f17154b;

    /* renamed from: h.b$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3912a {
        /* renamed from: a */
        boolean mo17753a(AbstractC3911b abstractC3911b, Menu menu);

        /* renamed from: b */
        boolean mo17752b(AbstractC3911b abstractC3911b, Menu menu);

        /* renamed from: c */
        boolean mo17751c(AbstractC3911b abstractC3911b, MenuItem menuItem);

        /* renamed from: d */
        void mo17750d(AbstractC3911b abstractC3911b);
    }

    /* renamed from: c */
    public abstract void mo17767c();

    /* renamed from: d */
    public abstract View mo17766d();

    /* renamed from: e */
    public abstract Menu mo17765e();

    /* renamed from: f */
    public abstract MenuInflater mo17764f();

    /* renamed from: g */
    public abstract CharSequence mo17763g();

    /* renamed from: h */
    public Object m17777h() {
        return this.f17153a;
    }

    /* renamed from: i */
    public abstract CharSequence mo17762i();

    /* renamed from: j */
    public boolean m17776j() {
        return this.f17154b;
    }

    /* renamed from: k */
    public abstract void mo17761k();

    /* renamed from: l */
    public abstract boolean mo17760l();

    /* renamed from: m */
    public abstract void mo17759m(View view);

    /* renamed from: n */
    public abstract void mo17758n(int i);

    /* renamed from: o */
    public abstract void mo17757o(CharSequence charSequence);

    /* renamed from: p */
    public void m17775p(Object obj) {
        this.f17153a = obj;
    }

    /* renamed from: q */
    public abstract void mo17756q(int i);

    /* renamed from: r */
    public abstract void mo17755r(CharSequence charSequence);

    /* renamed from: s */
    public void mo17754s(boolean z) {
        this.f17154b = z;
    }
}
