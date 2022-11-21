package p038d0;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: d0.b */
/* loaded from: classes.dex */
public abstract class AbstractC3155b {

    /* renamed from: a */
    public final Context f15488a;

    /* renamed from: b */
    public InterfaceC3156a f15489b;

    /* renamed from: c */
    public InterfaceC3157b f15490c;

    /* renamed from: d0.b$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3156a {
    }

    /* renamed from: d0.b$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3157b {
        void onActionProviderVisibilityChanged(boolean z);
    }

    /* renamed from: a */
    public boolean mo17435a() {
        return false;
    }

    /* renamed from: b */
    public boolean mo17431b() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo17434c();

    /* renamed from: d */
    public View mo17430d(MenuItem menuItem) {
        return mo17434c();
    }

    /* renamed from: e */
    public boolean mo17433e() {
        return false;
    }

    /* renamed from: f */
    public void mo17432f(SubMenu subMenu) {
    }

    /* renamed from: g */
    public boolean mo17429g() {
        return false;
    }

    /* renamed from: h */
    public void m19477h() {
        this.f15490c = null;
        this.f15489b = null;
    }

    /* renamed from: i */
    public void m19476i(InterfaceC3156a interfaceC3156a) {
        this.f15489b = interfaceC3156a;
    }

    /* renamed from: j */
    public void mo17428j(InterfaceC3157b interfaceC3157b) {
        if (this.f15490c != null && interfaceC3157b != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f15490c = interfaceC3157b;
    }

    public AbstractC3155b(Context context) {
        this.f15488a = context;
    }
}
