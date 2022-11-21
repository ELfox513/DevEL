package p163r;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.C0323h;
import androidx.lifecycle.FragmentC0333p;
import androidx.lifecycle.InterfaceC0322g;
import p038d0.C3169e;
import p145p.C5283g;
/* renamed from: r.j */
/* loaded from: classes.dex */
public class ActivityC5468j extends Activity implements InterfaceC0322g, C3169e.InterfaceC3170a {

    /* renamed from: a */
    public C5283g<Class<Object>, Object> f20158a = new C5283g<>();

    /* renamed from: b */
    public C0323h f20159b = new C0323h(this);

    @Override // p038d0.C3169e.InterfaceC3170a
    /* renamed from: e */
    public boolean mo13256e(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public AbstractC0317d getLifecycle() {
        return this.f20159b;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f20159b.m26785k(AbstractC0317d.EnumC0319b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView != null && C3169e.m19456d(decorView, keyEvent)) {
            return true;
        }
        return C3169e.m19455e(this, decorView, this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView != null && C3169e.m19456d(decorView, keyEvent)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentC0333p.m26764e(this);
    }
}
