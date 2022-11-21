package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.C0323h;
import androidx.lifecycle.C0341t;
import androidx.lifecycle.FragmentC0333p;
import androidx.lifecycle.InterfaceC0320e;
import androidx.lifecycle.InterfaceC0322g;
import androidx.lifecycle.InterfaceC0342u;
import androidx.savedstate.C0367a;
import androidx.savedstate.InterfaceC0368b;
import androidx.savedstate.SavedStateRegistry;
import p163r.ActivityC5468j;
/* loaded from: classes.dex */
public class ComponentActivity extends ActivityC5468j implements InterfaceC0342u, InterfaceC0368b, InterfaceC0134e {

    /* renamed from: p */
    public C0341t f188p;

    /* renamed from: r */
    public int f190r;

    /* renamed from: d */
    public final C0323h f186d = new C0323h(this);

    /* renamed from: k */
    public final C0367a f187k = C0367a.m26711a(this);

    /* renamed from: q */
    public final OnBackPressedDispatcher f189q = new OnBackPressedDispatcher(new RunnableC0127a());

    /* renamed from: androidx.activity.ComponentActivity$a */
    /* loaded from: classes.dex */
    public class RunnableC0127a implements Runnable {
        public RunnableC0127a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentActivity.super.onBackPressed();
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$b */
    /* loaded from: classes.dex */
    public static final class C0128b {

        /* renamed from: a */
        public Object f194a;

        /* renamed from: b */
        public C0341t f195b;
    }

    @Override // androidx.activity.InterfaceC0134e
    /* renamed from: b */
    public final OnBackPressedDispatcher mo27080b() {
        return this.f189q;
    }

    @Override // p163r.ActivityC5468j, androidx.lifecycle.InterfaceC0322g
    public AbstractC0317d getLifecycle() {
        return this.f186d;
    }

    @Override // androidx.savedstate.InterfaceC0368b
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.f187k.m26710b();
    }

    @Deprecated
    /* renamed from: i */
    public Object m27628i() {
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f189q.m27624c();
    }

    public ComponentActivity() {
        if (getLifecycle() != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                getLifecycle().mo26795a(new InterfaceC0320e() { // from class: androidx.activity.ComponentActivity.2
                    @Override // androidx.lifecycle.InterfaceC0320e
                    /* renamed from: c */
                    public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
                        View view;
                        if (enumC0318a == AbstractC0317d.EnumC0318a.ON_STOP) {
                            Window window = ComponentActivity.this.getWindow();
                            if (window != null) {
                                view = window.peekDecorView();
                            } else {
                                view = null;
                            }
                            if (view != null) {
                                view.cancelPendingInputEvents();
                            }
                        }
                    }
                });
            }
            getLifecycle().mo26795a(new InterfaceC0320e() { // from class: androidx.activity.ComponentActivity.3
                @Override // androidx.lifecycle.InterfaceC0320e
                /* renamed from: c */
                public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
                    if (enumC0318a == AbstractC0317d.EnumC0318a.ON_DESTROY && !ComponentActivity.this.isChangingConfigurations()) {
                        ComponentActivity.this.getViewModelStore().m26750a();
                    }
                }
            });
            if (19 <= i && i <= 23) {
                getLifecycle().mo26795a(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Override // androidx.lifecycle.InterfaceC0342u
    public C0341t getViewModelStore() {
        if (getApplication() != null) {
            if (this.f188p == null) {
                C0128b c0128b = (C0128b) getLastNonConfigurationInstance();
                if (c0128b != null) {
                    this.f188p = c0128b.f195b;
                }
                if (this.f188p == null) {
                    this.f188p = new C0341t();
                }
            }
            return this.f188p;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // p163r.ActivityC5468j, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f187k.m26709c(bundle);
        FragmentC0333p.m26764e(this);
        int i = this.f190r;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        C0128b c0128b;
        Object m27628i = m27628i();
        C0341t c0341t = this.f188p;
        if (c0341t == null && (c0128b = (C0128b) getLastNonConfigurationInstance()) != null) {
            c0341t = c0128b.f195b;
        }
        if (c0341t == null && m27628i == null) {
            return null;
        }
        C0128b c0128b2 = new C0128b();
        c0128b2.f194a = m27628i;
        c0128b2.f195b = c0341t;
        return c0128b2;
    }

    @Override // p163r.ActivityC5468j, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0317d lifecycle = getLifecycle();
        if (lifecycle instanceof C0323h) {
            ((C0323h) lifecycle).m26780p(AbstractC0317d.EnumC0319b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f187k.m26708d(bundle);
    }
}
