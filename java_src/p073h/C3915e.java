package p073h;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p073h.AbstractC3911b;
/* renamed from: h.e */
/* loaded from: classes.dex */
public class C3915e extends AbstractC3911b implements C0162e.InterfaceC0163a {

    /* renamed from: d */
    public Context f17160d;

    /* renamed from: k */
    public ActionBarContextView f17161k;

    /* renamed from: p */
    public AbstractC3911b.InterfaceC3912a f17162p;

    /* renamed from: q */
    public WeakReference<View> f17163q;

    /* renamed from: r */
    public boolean f17164r;

    /* renamed from: s */
    public boolean f17165s;

    /* renamed from: t */
    public C0162e f17166t;

    @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
    /* renamed from: a */
    public boolean mo17769a(C0162e c0162e, MenuItem menuItem) {
        return this.f17162p.mo17751c(this, menuItem);
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: d */
    public View mo17766d() {
        WeakReference<View> weakReference = this.f17163q;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: e */
    public Menu mo17765e() {
        return this.f17166t;
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: f */
    public MenuInflater mo17764f() {
        return new C3918g(this.f17161k.getContext());
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: g */
    public CharSequence mo17763g() {
        return this.f17161k.getSubtitle();
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: i */
    public CharSequence mo17762i() {
        return this.f17161k.getTitle();
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: k */
    public void mo17761k() {
        this.f17162p.mo17752b(this, this.f17166t);
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: l */
    public boolean mo17760l() {
        return this.f17161k.m27440j();
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: n */
    public void mo17758n(int i) {
        mo17757o(this.f17160d.getString(i));
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: o */
    public void mo17757o(CharSequence charSequence) {
        this.f17161k.setSubtitle(charSequence);
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: q */
    public void mo17756q(int i) {
        mo17755r(this.f17160d.getString(i));
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: r */
    public void mo17755r(CharSequence charSequence) {
        this.f17161k.setTitle(charSequence);
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: c */
    public void mo17767c() {
        if (this.f17164r) {
            return;
        }
        this.f17164r = true;
        this.f17161k.sendAccessibilityEvent(32);
        this.f17162p.mo17750d(this);
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: m */
    public void mo17759m(View view) {
        WeakReference<View> weakReference;
        this.f17161k.setCustomView(view);
        if (view != null) {
            weakReference = new WeakReference<>(view);
        } else {
            weakReference = null;
        }
        this.f17163q = weakReference;
    }

    public C3915e(Context context, ActionBarContextView actionBarContextView, AbstractC3911b.InterfaceC3912a interfaceC3912a, boolean z) {
        this.f17160d = context;
        this.f17161k = actionBarContextView;
        this.f17162p = interfaceC3912a;
        C0162e m27534S = new C0162e(actionBarContextView.getContext()).m27534S(1);
        this.f17166t = m27534S;
        m27534S.mo27451R(this);
        this.f17165s = z;
    }

    @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
    /* renamed from: b */
    public void mo17768b(C0162e c0162e) {
        mo17761k();
        this.f17161k.m27438l();
    }

    @Override // p073h.AbstractC3911b
    /* renamed from: s */
    public void mo17754s(boolean z) {
        super.mo17754s(z);
        this.f17161k.setTitleOptional(z);
    }
}
