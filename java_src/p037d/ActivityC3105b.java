package p037d;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.ActivityC0256d;
import p073h.AbstractC3911b;
import p091j.C4267y1;
import p163r.C5442b1;
import p163r.C5444c;
import p163r.C5477m;
/* renamed from: d.b */
/* loaded from: classes.dex */
public class ActivityC3105b extends ActivityC0256d implements InterfaceC3106c, C5442b1.InterfaceC5443a {

    /* renamed from: C */
    public AbstractC3107d f15309C;

    /* renamed from: D */
    public Resources f15310D;

    /* renamed from: A */
    public void m19694A(int i) {
    }

    /* renamed from: B */
    public void m19693B(C5442b1 c5442b1) {
    }

    @Deprecated
    /* renamed from: C */
    public void m19692C() {
    }

    /* renamed from: F */
    public void m19689F(Intent intent) {
        C5477m.m13242e(this, intent);
    }

    /* renamed from: G */
    public boolean m19688G(Intent intent) {
        return C5477m.m13241f(this, intent);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m19686x().mo19633d(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(m19686x().mo19630f(context));
    }

    @Override // p163r.C5442b1.InterfaceC5443a
    /* renamed from: c */
    public Intent mo13290c() {
        return C5477m.m13246a(this);
    }

    @Override // p037d.InterfaceC3106c
    /* renamed from: d */
    public void mo19566d(AbstractC3911b abstractC3911b) {
    }

    @Override // p037d.InterfaceC3106c
    /* renamed from: f */
    public AbstractC3911b mo19564f(AbstractC3911b.InterfaceC3912a interfaceC3912a) {
        return null;
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) m19686x().mo19626i(i);
    }

    @Override // p037d.InterfaceC3106c
    /* renamed from: g */
    public void mo19563g(AbstractC3911b abstractC3911b) {
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return m19686x().mo19621l();
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        m19686x().mo19615o();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        m19692C();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m19686x().mo19675A(i);
    }

    @Override // androidx.fragment.app.ActivityC0256d
    /* renamed from: w */
    public void mo19687w() {
        m19686x().mo19615o();
    }

    /* renamed from: y */
    public AbstractC3101a m19685y() {
        return m19686x().mo19619m();
    }

    /* renamed from: z */
    public void m19684z(C5442b1 c5442b1) {
        c5442b1.m13295e(this);
    }

    /* renamed from: E */
    public final boolean m19690E(KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f15310D == null && C4267y1.m16888b()) {
            this.f15310D = new C4267y1(this, super.getResources());
        }
        Resources resources = this.f15310D;
        if (resources == null) {
            return super.getResources();
        }
        return resources;
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        m19686x().mo19673B(view);
    }

    /* renamed from: x */
    public AbstractC3107d m19686x() {
        if (this.f15309C == null) {
            this.f15309C = AbstractC3107d.m19681g(this, this);
        }
        return this.f15309C;
    }

    /* renamed from: D */
    public boolean m19691D() {
        Intent mo13290c = mo13290c();
        if (mo13290c != null) {
            if (m19688G(mo13290c)) {
                C5442b1 m13293i = C5442b1.m13293i(this);
                m19684z(m13293i);
                m19693B(m13293i);
                m13293i.m13292k();
                try {
                    C5444c.m13289i(this);
                    return true;
                } catch (IllegalStateException unused) {
                    finish();
                    return true;
                }
            }
            m19689F(mo13290c);
            return true;
        }
        return false;
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC3101a m19685y = m19685y();
        if (getWindow().hasFeature(0)) {
            if (m19685y == null || !m19685y.m19704f()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // p163r.ActivityC5468j, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC3101a m19685y = m19685y();
        if (keyCode == 82 && m19685y != null && m19685y.m19701o(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f15310D != null) {
            this.f15310D.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        m19686x().mo19613p(configuration);
    }

    @Override // androidx.fragment.app.ActivityC0256d, androidx.activity.ComponentActivity, p163r.ActivityC5468j, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbstractC3107d m19686x = m19686x();
        m19686x.mo19617n();
        m19686x.mo19611q(bundle);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m19686x().mo19609r();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (m19690E(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        AbstractC3101a m19685y = m19685y();
        if (menuItem.getItemId() == 16908332 && m19685y != null && (m19685y.mo19508i() & 4) != 0) {
            return m19691D();
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m19686x().mo19607s(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m19686x().mo19605t();
    }

    @Override // androidx.fragment.app.ActivityC0256d, androidx.activity.ComponentActivity, p163r.ActivityC5468j, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m19686x().mo19603u(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity
    public void onStart() {
        super.onStart();
        m19686x().mo19601v();
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity
    public void onStop() {
        super.onStop();
        m19686x().mo19599w();
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m19686x().mo19667E(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC3101a m19685y = m19685y();
        if (getWindow().hasFeature(0)) {
            if (m19685y == null || !m19685y.m19700p()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m19686x().mo19671C(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m19686x().mo19669D(i);
    }
}
