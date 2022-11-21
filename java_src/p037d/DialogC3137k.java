package p037d;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import p021c.C1008a;
import p038d0.C3169e;
import p073h.AbstractC3911b;
/* renamed from: d.k */
/* loaded from: classes.dex */
public class DialogC3137k extends Dialog implements InterfaceC3106c {

    /* renamed from: a */
    public AbstractC3107d f15410a;

    /* renamed from: b */
    public final C3169e.InterfaceC3170a f15411b;

    /* renamed from: d.k$a */
    /* loaded from: classes.dex */
    public class C3138a implements C3169e.InterfaceC3170a {
        public C3138a() {
        }

        @Override // p038d0.C3169e.InterfaceC3170a
        /* renamed from: e */
        public boolean mo13256e(KeyEvent keyEvent) {
            return DialogC3137k.this.m19567c(keyEvent);
        }
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m19569a().mo19633d(view, layoutParams);
    }

    /* renamed from: c */
    public boolean m19567c(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // p037d.InterfaceC3106c
    /* renamed from: d */
    public void mo19566d(AbstractC3911b abstractC3911b) {
    }

    /* renamed from: e */
    public boolean m19565e(int i) {
        return m19569a().mo19595z(i);
    }

    @Override // p037d.InterfaceC3106c
    /* renamed from: f */
    public AbstractC3911b mo19564f(AbstractC3911b.InterfaceC3912a interfaceC3912a) {
        return null;
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m19569a().mo19626i(i);
    }

    @Override // p037d.InterfaceC3106c
    /* renamed from: g */
    public void mo19563g(AbstractC3911b abstractC3911b) {
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m19569a().mo19615o();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m19569a().mo19675A(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m19569a().mo19667E(charSequence);
    }

    /* renamed from: b */
    public static int m19568b(Context context, int i) {
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C1008a.f2529y, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    /* renamed from: a */
    public AbstractC3107d m19569a() {
        if (this.f15410a == null) {
            this.f15410a = AbstractC3107d.m19680h(this, this);
        }
        return this.f15410a;
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m19569a().mo19673B(view);
    }

    public DialogC3137k(Context context, int i) {
        super(context, m19568b(context, i));
        this.f15411b = new C3138a();
        AbstractC3107d m19569a = m19569a();
        m19569a.mo19669D(m19568b(context, i));
        m19569a.mo19611q(null);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m19569a().mo19609r();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C3169e.m19455e(this.f15411b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m19569a().mo19617n();
        super.onCreate(bundle);
        m19569a().mo19611q(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        m19569a().mo19599w();
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m19569a().mo19671C(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m19569a().mo19667E(getContext().getString(i));
    }
}
