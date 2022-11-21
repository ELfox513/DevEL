package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.InterfaceC0342u;
import p022c0.C1024g;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes.dex */
public class C0259f {

    /* renamed from: a */
    public final AbstractC0261h<?> f997a;

    /* renamed from: b */
    public static C0259f m27076b(AbstractC0261h<?> abstractC0261h) {
        return new C0259f((AbstractC0261h) C1024g.m24808c(abstractC0261h, "callbacks == null"));
    }

    /* renamed from: a */
    public void m27077a(Fragment fragment) {
        AbstractC0261h<?> abstractC0261h = this.f997a;
        abstractC0261h.f1003p.m26938o(abstractC0261h, abstractC0261h, fragment);
    }

    /* renamed from: c */
    public void m27075c() {
        this.f997a.f1003p.m26919x();
    }

    /* renamed from: d */
    public void m27074d(Configuration configuration) {
        this.f997a.f1003p.m26917y(configuration);
    }

    /* renamed from: e */
    public boolean m27073e(MenuItem menuItem) {
        return this.f997a.f1003p.m26915z(menuItem);
    }

    /* renamed from: f */
    public void m27072f() {
        this.f997a.f1003p.m27031A();
    }

    /* renamed from: g */
    public boolean m27071g(Menu menu, MenuInflater menuInflater) {
        return this.f997a.f1003p.m27029B(menu, menuInflater);
    }

    /* renamed from: h */
    public void m27070h() {
        this.f997a.f1003p.m27027C();
    }

    /* renamed from: i */
    public void m27069i() {
        this.f997a.f1003p.m27023E();
    }

    /* renamed from: j */
    public void m27068j(boolean z) {
        this.f997a.f1003p.m27021F(z);
    }

    /* renamed from: k */
    public boolean m27067k(MenuItem menuItem) {
        return this.f997a.f1003p.m26991U(menuItem);
    }

    /* renamed from: l */
    public void m27066l(Menu menu) {
        this.f997a.f1003p.m26989V(menu);
    }

    /* renamed from: m */
    public void m27065m() {
        this.f997a.f1003p.m26985X();
    }

    /* renamed from: n */
    public void m27064n(boolean z) {
        this.f997a.f1003p.m26983Y(z);
    }

    /* renamed from: o */
    public boolean m27063o(Menu menu) {
        return this.f997a.f1003p.m26981Z(menu);
    }

    /* renamed from: p */
    public void m27062p() {
        this.f997a.f1003p.m26975b0();
    }

    /* renamed from: q */
    public void m27061q() {
        this.f997a.f1003p.m26972c0();
    }

    /* renamed from: r */
    public void m27060r() {
        this.f997a.f1003p.m26966e0();
    }

    /* renamed from: s */
    public boolean m27059s() {
        return this.f997a.f1003p.m26949k0();
    }

    /* renamed from: t */
    public Fragment m27058t(String str) {
        return this.f997a.f1003p.m26934p0(str);
    }

    /* renamed from: u */
    public AbstractC0262i m27057u() {
        return this.f997a.f1003p;
    }

    /* renamed from: v */
    public void m27056v() {
        this.f997a.f1003p.m26996R0();
    }

    /* renamed from: w */
    public View m27055w(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f997a.f1003p.onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: y */
    public Parcelable m27053y() {
        return this.f997a.f1003p.m26968d1();
    }

    /* renamed from: x */
    public void m27054x(Parcelable parcelable) {
        AbstractC0261h<?> abstractC0261h = this.f997a;
        if (abstractC0261h instanceof InterfaceC0342u) {
            abstractC0261h.f1003p.m26974b1(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    public C0259f(AbstractC0261h<?> abstractC0261h) {
        this.f997a = abstractC0261h;
    }
}
