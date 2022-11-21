package p037d;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.p010os.LocaleList;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.C0159c;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.InterfaceC0170i;
import androidx.appcompat.view.menu.InterfaceC0172j;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.InterfaceC0225b;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.InterfaceC0322g;
import com.badlogic.gdx.graphics.GL20;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import p021c.C1008a;
import p021c.C1010c;
import p021c.C1013f;
import p021c.C1014g;
import p021c.C1016i;
import p021c.C1017j;
import p022c0.C1022e;
import p038d0.C3169e;
import p038d0.C3174f;
import p038d0.C3208p1;
import p038d0.C3216r1;
import p038d0.C3218s0;
import p038d0.C3235t1;
import p038d0.InterfaceC3256w;
import p046e.C3335b;
import p073h.AbstractC3911b;
import p073h.C3914d;
import p073h.C3916f;
import p073h.C3918g;
import p073h.Window$CallbackC3927m;
import p091j.C4188i;
import p091j.C4235t1;
import p091j.C4267y1;
import p091j.C4270z1;
import p091j.InterfaceC4231s0;
import p145p.C5283g;
import p163r.C5477m;
import p172s.C6550a;
import p190u.C6820h;
/* renamed from: d.f */
/* loaded from: classes.dex */
public class LayoutInflater$Factory2C3109f extends AbstractC3107d implements C0162e.InterfaceC0163a, LayoutInflater.Factory2 {

    /* renamed from: l0 */
    public static final C5283g<String, Integer> f15314l0 = new C5283g<>();

    /* renamed from: m0 */
    public static final boolean f15315m0;

    /* renamed from: n0 */
    public static final int[] f15316n0;

    /* renamed from: o0 */
    public static final boolean f15317o0;

    /* renamed from: p0 */
    public static final boolean f15318p0;

    /* renamed from: q0 */
    public static boolean f15319q0;

    /* renamed from: A */
    public ActionBarContextView f15320A;

    /* renamed from: B */
    public PopupWindow f15321B;

    /* renamed from: C */
    public Runnable f15322C;

    /* renamed from: D */
    public C3208p1 f15323D;

    /* renamed from: E */
    public boolean f15324E;

    /* renamed from: F */
    public boolean f15325F;

    /* renamed from: G */
    public ViewGroup f15326G;

    /* renamed from: H */
    public TextView f15327H;

    /* renamed from: I */
    public View f15328I;

    /* renamed from: J */
    public boolean f15329J;

    /* renamed from: K */
    public boolean f15330K;

    /* renamed from: L */
    public boolean f15331L;

    /* renamed from: M */
    public boolean f15332M;

    /* renamed from: N */
    public boolean f15333N;

    /* renamed from: O */
    public boolean f15334O;

    /* renamed from: P */
    public boolean f15335P;

    /* renamed from: Q */
    public boolean f15336Q;

    /* renamed from: R */
    public C3131s[] f15337R;

    /* renamed from: S */
    public C3131s f15338S;

    /* renamed from: T */
    public boolean f15339T;

    /* renamed from: U */
    public boolean f15340U;

    /* renamed from: V */
    public boolean f15341V;

    /* renamed from: W */
    public boolean f15342W;

    /* renamed from: X */
    public boolean f15343X;

    /* renamed from: Y */
    public int f15344Y;

    /* renamed from: Z */
    public int f15345Z;

    /* renamed from: a0 */
    public boolean f15346a0;

    /* renamed from: b0 */
    public boolean f15347b0;

    /* renamed from: c0 */
    public AbstractC3123l f15348c0;

    /* renamed from: d0 */
    public AbstractC3123l f15349d0;

    /* renamed from: e0 */
    public boolean f15350e0;

    /* renamed from: f0 */
    public int f15351f0;

    /* renamed from: g0 */
    public final Runnable f15352g0;

    /* renamed from: h0 */
    public boolean f15353h0;

    /* renamed from: i0 */
    public Rect f15354i0;

    /* renamed from: j0 */
    public Rect f15355j0;

    /* renamed from: k */
    public final Object f15356k;

    /* renamed from: k0 */
    public C3139l f15357k0;

    /* renamed from: p */
    public final Context f15358p;

    /* renamed from: q */
    public Window f15359q;

    /* renamed from: r */
    public C3121j f15360r;

    /* renamed from: s */
    public final InterfaceC3106c f15361s;

    /* renamed from: t */
    public AbstractC3101a f15362t;

    /* renamed from: u */
    public MenuInflater f15363u;

    /* renamed from: v */
    public CharSequence f15364v;

    /* renamed from: w */
    public InterfaceC4231s0 f15365w;

    /* renamed from: x */
    public C3118h f15366x;

    /* renamed from: y */
    public C3132t f15367y;

    /* renamed from: z */
    public AbstractC3911b f15368z;

    /* renamed from: d.f$a */
    /* loaded from: classes.dex */
    public class C3110a implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        public final /* synthetic */ Thread.UncaughtExceptionHandler f15369a;

        public C3110a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f15369a = uncaughtExceptionHandler;
        }

        /* renamed from: a */
        public final boolean m19593a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            if (!message.contains("drawable") && !message.contains("Drawable")) {
                return false;
            }
            return true;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (m19593a(th)) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                this.f15369a.uncaughtException(thread, notFoundException);
                return;
            }
            this.f15369a.uncaughtException(thread, th);
        }
    }

    /* renamed from: d.f$b */
    /* loaded from: classes.dex */
    public class RunnableC3111b implements Runnable {
        public RunnableC3111b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f = LayoutInflater$Factory2C3109f.this;
            if ((layoutInflater$Factory2C3109f.f15351f0 & 1) != 0) {
                layoutInflater$Factory2C3109f.m19642U(0);
            }
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f2 = LayoutInflater$Factory2C3109f.this;
            if ((layoutInflater$Factory2C3109f2.f15351f0 & 4096) != 0) {
                layoutInflater$Factory2C3109f2.m19642U(108);
            }
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f3 = LayoutInflater$Factory2C3109f.this;
            layoutInflater$Factory2C3109f3.f15350e0 = false;
            layoutInflater$Factory2C3109f3.f15351f0 = 0;
        }
    }

    /* renamed from: d.f$d */
    /* loaded from: classes.dex */
    public class C3113d implements InterfaceC0225b.InterfaceC0226a {
        public C3113d() {
        }

        @Override // androidx.appcompat.widget.InterfaceC0225b.InterfaceC0226a
        /* renamed from: a */
        public void mo19592a(Rect rect) {
            rect.top = LayoutInflater$Factory2C3109f.this.m19652L0(null, rect);
        }
    }

    /* renamed from: d.f$e */
    /* loaded from: classes.dex */
    public class C3114e implements ContentFrameLayout.InterfaceC0189a {
        public C3114e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.InterfaceC0189a
        /* renamed from: a */
        public void mo19591a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.InterfaceC0189a
        public void onDetachedFromWindow() {
            LayoutInflater$Factory2C3109f.this.m19644S();
        }
    }

    /* renamed from: d.f$f */
    /* loaded from: classes.dex */
    public class RunnableC3115f implements Runnable {

        /* renamed from: d.f$f$a */
        /* loaded from: classes.dex */
        public class C3116a extends C3216r1 {
            public C3116a() {
            }

            @Override // p038d0.C3216r1, p038d0.InterfaceC3213q1
            /* renamed from: c */
            public void mo17259c(View view) {
                LayoutInflater$Factory2C3109f.this.f15320A.setVisibility(0);
            }

            @Override // p038d0.InterfaceC3213q1
            /* renamed from: b */
            public void mo17260b(View view) {
                LayoutInflater$Factory2C3109f.this.f15320A.setAlpha(1.0f);
                LayoutInflater$Factory2C3109f.this.f15323D.m19397f(null);
                LayoutInflater$Factory2C3109f.this.f15323D = null;
            }
        }

        public RunnableC3115f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f = LayoutInflater$Factory2C3109f.this;
            layoutInflater$Factory2C3109f.f15321B.showAtLocation(layoutInflater$Factory2C3109f.f15320A, 55, 0, 0);
            LayoutInflater$Factory2C3109f.this.m19641V();
            if (LayoutInflater$Factory2C3109f.this.m19668D0()) {
                LayoutInflater$Factory2C3109f.this.f15320A.setAlpha(0.0f);
                LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f2 = LayoutInflater$Factory2C3109f.this;
                layoutInflater$Factory2C3109f2.f15323D = C3218s0.m19350b(layoutInflater$Factory2C3109f2.f15320A).m19402a(1.0f);
                LayoutInflater$Factory2C3109f.this.f15323D.m19397f(new C3116a());
                return;
            }
            LayoutInflater$Factory2C3109f.this.f15320A.setAlpha(1.0f);
            LayoutInflater$Factory2C3109f.this.f15320A.setVisibility(0);
        }
    }

    /* renamed from: d.f$g */
    /* loaded from: classes.dex */
    public class C3117g extends C3216r1 {
        public C3117g() {
        }

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: b */
        public void mo17260b(View view) {
            LayoutInflater$Factory2C3109f.this.f15320A.setAlpha(1.0f);
            LayoutInflater$Factory2C3109f.this.f15323D.m19397f(null);
            LayoutInflater$Factory2C3109f.this.f15323D = null;
        }

        @Override // p038d0.C3216r1, p038d0.InterfaceC3213q1
        /* renamed from: c */
        public void mo17259c(View view) {
            LayoutInflater$Factory2C3109f.this.f15320A.setVisibility(0);
            LayoutInflater$Factory2C3109f.this.f15320A.sendAccessibilityEvent(32);
            if (LayoutInflater$Factory2C3109f.this.f15320A.getParent() instanceof View) {
                C3218s0.m19366E((View) LayoutInflater$Factory2C3109f.this.f15320A.getParent());
            }
        }
    }

    /* renamed from: d.f$h */
    /* loaded from: classes.dex */
    public final class C3118h implements InterfaceC0170i.InterfaceC0171a {
        public C3118h() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: b */
        public void mo19575b(C0162e c0162e, boolean z) {
            LayoutInflater$Factory2C3109f.this.m19653L(c0162e);
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: c */
        public boolean mo19574c(C0162e c0162e) {
            Window.Callback m19629f0 = LayoutInflater$Factory2C3109f.this.m19629f0();
            if (m19629f0 != null) {
                m19629f0.onMenuOpened(108, c0162e);
                return true;
            }
            return true;
        }
    }

    /* renamed from: d.f$i */
    /* loaded from: classes.dex */
    public class C3119i implements AbstractC3911b.InterfaceC3912a {

        /* renamed from: a */
        public AbstractC3911b.InterfaceC3912a f15378a;

        /* renamed from: d.f$i$a */
        /* loaded from: classes.dex */
        public class C3120a extends C3216r1 {
            public C3120a() {
            }

            @Override // p038d0.InterfaceC3213q1
            /* renamed from: b */
            public void mo17260b(View view) {
                LayoutInflater$Factory2C3109f.this.f15320A.setVisibility(8);
                LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f = LayoutInflater$Factory2C3109f.this;
                PopupWindow popupWindow = layoutInflater$Factory2C3109f.f15321B;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflater$Factory2C3109f.f15320A.getParent() instanceof View) {
                    C3218s0.m19366E((View) LayoutInflater$Factory2C3109f.this.f15320A.getParent());
                }
                LayoutInflater$Factory2C3109f.this.f15320A.removeAllViews();
                LayoutInflater$Factory2C3109f.this.f15323D.m19397f(null);
                LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f2 = LayoutInflater$Factory2C3109f.this;
                layoutInflater$Factory2C3109f2.f15323D = null;
                C3218s0.m19366E(layoutInflater$Factory2C3109f2.f15326G);
            }
        }

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: a */
        public boolean mo17753a(AbstractC3911b abstractC3911b, Menu menu) {
            return this.f15378a.mo17753a(abstractC3911b, menu);
        }

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: c */
        public boolean mo17751c(AbstractC3911b abstractC3911b, MenuItem menuItem) {
            return this.f15378a.mo17751c(abstractC3911b, menuItem);
        }

        public C3119i(AbstractC3911b.InterfaceC3912a interfaceC3912a) {
            this.f15378a = interfaceC3912a;
        }

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: b */
        public boolean mo17752b(AbstractC3911b abstractC3911b, Menu menu) {
            C3218s0.m19366E(LayoutInflater$Factory2C3109f.this.f15326G);
            return this.f15378a.mo17752b(abstractC3911b, menu);
        }

        @Override // p073h.AbstractC3911b.InterfaceC3912a
        /* renamed from: d */
        public void mo17750d(AbstractC3911b abstractC3911b) {
            this.f15378a.mo17750d(abstractC3911b);
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f = LayoutInflater$Factory2C3109f.this;
            if (layoutInflater$Factory2C3109f.f15321B != null) {
                layoutInflater$Factory2C3109f.f15359q.getDecorView().removeCallbacks(LayoutInflater$Factory2C3109f.this.f15322C);
            }
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f2 = LayoutInflater$Factory2C3109f.this;
            if (layoutInflater$Factory2C3109f2.f15320A != null) {
                layoutInflater$Factory2C3109f2.m19641V();
                LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f3 = LayoutInflater$Factory2C3109f.this;
                layoutInflater$Factory2C3109f3.f15323D = C3218s0.m19350b(layoutInflater$Factory2C3109f3.f15320A).m19402a(0.0f);
                LayoutInflater$Factory2C3109f.this.f15323D.m19397f(new C3120a());
            }
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f4 = LayoutInflater$Factory2C3109f.this;
            InterfaceC3106c interfaceC3106c = layoutInflater$Factory2C3109f4.f15361s;
            if (interfaceC3106c != null) {
                interfaceC3106c.mo19566d(layoutInflater$Factory2C3109f4.f15368z);
            }
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f5 = LayoutInflater$Factory2C3109f.this;
            layoutInflater$Factory2C3109f5.f15368z = null;
            C3218s0.m19366E(layoutInflater$Factory2C3109f5.f15326G);
        }
    }

    /* renamed from: d.f$j */
    /* loaded from: classes.dex */
    public class C3121j extends Window$CallbackC3927m {
        @Override // android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (LayoutInflater$Factory2C3109f.this.m19618m0()) {
                return m19590b(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        public C3121j(Window.Callback callback) {
            super(callback);
        }

        /* renamed from: b */
        public final ActionMode m19590b(ActionMode.Callback callback) {
            C3916f.C3917a c3917a = new C3916f.C3917a(LayoutInflater$Factory2C3109f.this.f15358p, callback);
            AbstractC3911b m19664F0 = LayoutInflater$Factory2C3109f.this.m19664F0(c3917a);
            if (m19664F0 != null) {
                return c3917a.m17749e(m19664F0);
            }
            return null;
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (!LayoutInflater$Factory2C3109f.this.m19643T(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i == 0 && !(menu instanceof C0162e)) {
                return false;
            }
            return super.onCreatePanelMenu(i, menu);
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C0162e c0162e;
            if (menu instanceof C0162e) {
                c0162e = (C0162e) menu;
            } else {
                c0162e = null;
            }
            if (i == 0 && c0162e == null) {
                return false;
            }
            if (c0162e != null) {
                c0162e.m27525a0(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (c0162e != null) {
                c0162e.m27525a0(false);
            }
            return onPreparePanel;
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0162e c0162e;
            C3131s m19632d0 = LayoutInflater$Factory2C3109f.this.m19632d0(0, true);
            if (m19632d0 != null && (c0162e = m19632d0.f15399j) != null) {
                super.onProvideKeyboardShortcuts(list, c0162e, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (!super.dispatchKeyShortcutEvent(keyEvent) && !LayoutInflater$Factory2C3109f.this.m19608r0(keyEvent.getKeyCode(), keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            LayoutInflater$Factory2C3109f.this.m19602u0(i);
            return true;
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            LayoutInflater$Factory2C3109f.this.m19600v0(i);
        }

        @Override // p073h.Window$CallbackC3927m, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (LayoutInflater$Factory2C3109f.this.m19618m0() && i == 0) {
                return m19590b(callback);
            }
            return super.onWindowStartingActionMode(callback, i);
        }
    }

    /* renamed from: d.f$k */
    /* loaded from: classes.dex */
    public class C3122k extends AbstractC3123l {

        /* renamed from: c */
        public final PowerManager f15382c;

        @Override // p037d.LayoutInflater$Factory2C3109f.AbstractC3123l
        /* renamed from: d */
        public void mo19585d() {
            LayoutInflater$Factory2C3109f.this.m19665F();
        }

        public C3122k(Context context) {
            super();
            this.f15382c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // p037d.LayoutInflater$Factory2C3109f.AbstractC3123l
        /* renamed from: b */
        public IntentFilter mo19587b() {
            if (Build.VERSION.SDK_INT >= 21) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            }
            return null;
        }

        @Override // p037d.LayoutInflater$Factory2C3109f.AbstractC3123l
        /* renamed from: c */
        public int mo19586c() {
            boolean isPowerSaveMode;
            if (Build.VERSION.SDK_INT < 21) {
                return 1;
            }
            isPowerSaveMode = this.f15382c.isPowerSaveMode();
            if (!isPowerSaveMode) {
                return 1;
            }
            return 2;
        }
    }

    /* renamed from: d.f$l */
    /* loaded from: classes.dex */
    public abstract class AbstractC3123l {

        /* renamed from: a */
        public BroadcastReceiver f15384a;

        /* renamed from: d.f$l$a */
        /* loaded from: classes.dex */
        public class C3124a extends BroadcastReceiver {
            public C3124a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                AbstractC3123l.this.mo19585d();
            }
        }

        public AbstractC3123l() {
        }

        /* renamed from: b */
        public abstract IntentFilter mo19587b();

        /* renamed from: c */
        public abstract int mo19586c();

        /* renamed from: d */
        public abstract void mo19585d();

        /* renamed from: a */
        public void m19589a() {
            BroadcastReceiver broadcastReceiver = this.f15384a;
            if (broadcastReceiver != null) {
                try {
                    LayoutInflater$Factory2C3109f.this.f15358p.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f15384a = null;
            }
        }

        /* renamed from: e */
        public void m19588e() {
            m19589a();
            IntentFilter mo19587b = mo19587b();
            if (mo19587b != null && mo19587b.countActions() != 0) {
                if (this.f15384a == null) {
                    this.f15384a = new C3124a();
                }
                LayoutInflater$Factory2C3109f.this.f15358p.registerReceiver(this.f15384a, mo19587b);
            }
        }
    }

    /* renamed from: d.f$m */
    /* loaded from: classes.dex */
    public class C3125m extends AbstractC3123l {

        /* renamed from: c */
        public final C3143o f15387c;

        @Override // p037d.LayoutInflater$Factory2C3109f.AbstractC3123l
        /* renamed from: c */
        public int mo19586c() {
            return this.f15387c.m19530d() ? 2 : 1;
        }

        @Override // p037d.LayoutInflater$Factory2C3109f.AbstractC3123l
        /* renamed from: d */
        public void mo19585d() {
            LayoutInflater$Factory2C3109f.this.m19665F();
        }

        public C3125m(C3143o c3143o) {
            super();
            this.f15387c = c3143o;
        }

        @Override // p037d.LayoutInflater$Factory2C3109f.AbstractC3123l
        /* renamed from: b */
        public IntentFilter mo19587b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    /* renamed from: d.f$n */
    /* loaded from: classes.dex */
    public static class C3126n {
        /* renamed from: a */
        public static void m19584a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.densityDpi;
            int i2 = configuration2.densityDpi;
            if (i != i2) {
                configuration3.densityDpi = i2;
            }
        }
    }

    /* renamed from: d.f$p */
    /* loaded from: classes.dex */
    public static class C3128p {
        /* renamed from: a */
        public static void m19582a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.colorMode & 3;
            int i2 = configuration2.colorMode;
            if (i != (i2 & 3)) {
                configuration3.colorMode |= i2 & 3;
            }
            int i3 = configuration.colorMode & 12;
            int i4 = configuration2.colorMode;
            if (i3 != (i4 & 12)) {
                configuration3.colorMode |= i4 & 12;
            }
        }
    }

    /* renamed from: d.f$q */
    /* loaded from: classes.dex */
    public static class C3129q {
        /* renamed from: a */
        public static void m19581a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* renamed from: d.f$r */
    /* loaded from: classes.dex */
    public class C3130r extends ContentFrameLayout {
        /* renamed from: c */
        public final boolean m19580c(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C3335b.m19101d(getContext(), i));
        }

        public C3130r(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (!LayoutInflater$Factory2C3109f.this.m19643T(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && m19580c((int) motionEvent.getX(), (int) motionEvent.getY())) {
                LayoutInflater$Factory2C3109f.this.m19649N(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    /* renamed from: d.f$s */
    /* loaded from: classes.dex */
    public static final class C3131s {

        /* renamed from: a */
        public int f15390a;

        /* renamed from: b */
        public int f15391b;

        /* renamed from: c */
        public int f15392c;

        /* renamed from: d */
        public int f15393d;

        /* renamed from: e */
        public int f15394e;

        /* renamed from: f */
        public int f15395f;

        /* renamed from: g */
        public ViewGroup f15396g;

        /* renamed from: h */
        public View f15397h;

        /* renamed from: i */
        public View f15398i;

        /* renamed from: j */
        public C0162e f15399j;

        /* renamed from: k */
        public C0159c f15400k;

        /* renamed from: l */
        public Context f15401l;

        /* renamed from: m */
        public boolean f15402m;

        /* renamed from: n */
        public boolean f15403n;

        /* renamed from: o */
        public boolean f15404o;

        /* renamed from: p */
        public boolean f15405p;

        /* renamed from: q */
        public boolean f15406q = false;

        /* renamed from: r */
        public boolean f15407r;

        /* renamed from: s */
        public Bundle f15408s;

        /* renamed from: a */
        public InterfaceC0172j m19579a(InterfaceC0170i.InterfaceC0171a interfaceC0171a) {
            if (this.f15399j == null) {
                return null;
            }
            if (this.f15400k == null) {
                C0159c c0159c = new C0159c(this.f15401l, C1014g.f2649j);
                this.f15400k = c0159c;
                c0159c.mo27457g(interfaceC0171a);
                this.f15399j.m27524b(this.f15400k);
            }
            return this.f15400k.m27554i(this.f15396g);
        }

        /* renamed from: b */
        public boolean m19578b() {
            if (this.f15397h == null) {
                return false;
            }
            if (this.f15398i == null && this.f15400k.m27555a().getCount() <= 0) {
                return false;
            }
            return true;
        }

        /* renamed from: c */
        public void m19577c(C0162e c0162e) {
            C0159c c0159c;
            C0162e c0162e2 = this.f15399j;
            if (c0162e == c0162e2) {
                return;
            }
            if (c0162e2 != null) {
                c0162e2.m27537O(this.f15400k);
            }
            this.f15399j = c0162e;
            if (c0162e != null && (c0159c = this.f15400k) != null) {
                c0162e.m27524b(c0159c);
            }
        }

        /* renamed from: d */
        public void m19576d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C1008a.f2505a, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                newTheme.applyStyle(i, true);
            }
            newTheme.resolveAttribute(C1008a.f2496D, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            } else {
                newTheme.applyStyle(C1016i.f2673b, true);
            }
            C3914d c3914d = new C3914d(context, 0);
            c3914d.getTheme().setTo(newTheme);
            this.f15401l = c3914d;
            TypedArray obtainStyledAttributes = c3914d.obtainStyledAttributes(C1017j.f2917z0);
            this.f15391b = obtainStyledAttributes.getResourceId(C1017j.f2687C0, 0);
            this.f15395f = obtainStyledAttributes.getResourceId(C1017j.f2682B0, 0);
            obtainStyledAttributes.recycle();
        }

        public C3131s(int i) {
            this.f15390a = i;
        }
    }

    public LayoutInflater$Factory2C3109f(Activity activity, InterfaceC3106c interfaceC3106c) {
        this(activity, null, interfaceC3106c, activity);
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: D */
    public void mo19669D(int i) {
        this.f15345Z = i;
    }

    /* renamed from: D0 */
    public final boolean m19668D0() {
        ViewGroup viewGroup;
        return this.f15325F && (viewGroup = this.f15326G) != null && C3218s0.m19329w(viewGroup);
    }

    /* renamed from: E0 */
    public final boolean m19666E0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f15359q.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || C3218s0.m19330v((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* renamed from: F */
    public boolean m19665F() {
        return m19663G(true);
    }

    /* renamed from: J */
    public final int m19657J() {
        int i = this.f15344Y;
        return i != -100 ? i : AbstractC3107d.m19679j();
    }

    /* renamed from: L0 */
    public final int m19652L0(C3235t1 c3235t1, Rect rect) {
        int i;
        boolean z;
        int m19291i;
        int m19290j;
        boolean z2;
        if (c3235t1 != null) {
            i = c3235t1.m19289k();
        } else if (rect != null) {
            i = rect.top;
        } else {
            i = 0;
        }
        ActionBarContextView actionBarContextView = this.f15320A;
        if (actionBarContextView != null && (actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f15320A.getLayoutParams();
            boolean z3 = true;
            if (this.f15320A.isShown()) {
                if (this.f15354i0 == null) {
                    this.f15354i0 = new Rect();
                    this.f15355j0 = new Rect();
                }
                Rect rect2 = this.f15354i0;
                Rect rect3 = this.f15355j0;
                if (c3235t1 == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(c3235t1.m19291i(), c3235t1.m19289k(), c3235t1.m19290j(), c3235t1.m19292h());
                }
                C4270z1.m16884a(this.f15326G, rect2, rect3);
                int i2 = rect2.top;
                int i3 = rect2.left;
                int i4 = rect2.right;
                C3235t1 m19336p = C3218s0.m19336p(this.f15326G);
                if (m19336p == null) {
                    m19291i = 0;
                } else {
                    m19291i = m19336p.m19291i();
                }
                if (m19336p == null) {
                    m19290j = 0;
                } else {
                    m19290j = m19336p.m19290j();
                }
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i3;
                    marginLayoutParams.rightMargin = i4;
                    z2 = true;
                }
                if (i2 > 0 && this.f15328I == null) {
                    View view = new View(this.f15358p);
                    this.f15328I = view;
                    view.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = m19291i;
                    layoutParams.rightMargin = m19290j;
                    this.f15326G.addView(this.f15328I, -1, layoutParams);
                } else {
                    View view2 = this.f15328I;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i5 = marginLayoutParams2.height;
                        int i6 = marginLayoutParams.topMargin;
                        if (i5 != i6 || marginLayoutParams2.leftMargin != m19291i || marginLayoutParams2.rightMargin != m19290j) {
                            marginLayoutParams2.height = i6;
                            marginLayoutParams2.leftMargin = m19291i;
                            marginLayoutParams2.rightMargin = m19290j;
                            this.f15328I.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                View view3 = this.f15328I;
                if (view3 == null) {
                    z3 = false;
                }
                if (z3 && view3.getVisibility() != 0) {
                    m19650M0(this.f15328I);
                }
                if (!this.f15333N && z3) {
                    i = 0;
                }
                z = z3;
                z3 = z2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                z3 = false;
            }
            if (z3) {
                this.f15320A.setLayoutParams(marginLayoutParams);
            }
        } else {
            z = false;
        }
        View view4 = this.f15328I;
        if (view4 != null) {
            view4.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    /* renamed from: N */
    public void m19649N(int i) {
        m19648O(m19632d0(i, true), true);
    }

    /* renamed from: P */
    public final Configuration m19647P(Context context, int i, Configuration configuration) {
        int i2;
        if (i != 1) {
            if (i != 2) {
                i2 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
            } else {
                i2 = 32;
            }
        } else {
            i2 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* renamed from: U */
    public void m19642U(int i) {
        C3131s m19632d0;
        C3131s m19632d02 = m19632d0(i, true);
        if (m19632d02.f15399j != null) {
            Bundle bundle = new Bundle();
            m19632d02.f15399j.m27535Q(bundle);
            if (bundle.size() > 0) {
                m19632d02.f15408s = bundle;
            }
            m19632d02.f15399j.m27519d0();
            m19632d02.f15399j.clear();
        }
        m19632d02.f15407r = true;
        m19632d02.f15406q = true;
        if ((i == 108 || i == 0) && this.f15365w != null && (m19632d0 = m19632d0(0, false)) != null) {
            m19632d0.f15402m = false;
            m19674A0(m19632d0, null);
        }
    }

    @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
    /* renamed from: b */
    public void mo17768b(C0162e c0162e) {
        m19672B0(true);
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: f */
    public Context mo19630f(Context context) {
        this.f15340U = true;
        int m19616n0 = m19616n0(context, m19657J());
        Configuration configuration = null;
        if (f15318p0 && (context instanceof ContextThemeWrapper)) {
            try {
                C3129q.m19581a((ContextThemeWrapper) context, m19647P(context, m19616n0, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof C3914d) {
            try {
                ((C3914d) context).m17774a(m19647P(context, m19616n0, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f15317o0) {
            return super.mo19630f(context);
        }
        try {
            Configuration configuration2 = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            if (!configuration2.equals(configuration3)) {
                configuration = m19637Z(configuration2, configuration3);
            }
            Configuration m19647P = m19647P(context, m19616n0, configuration);
            C3914d c3914d = new C3914d(context, C1016i.f2674c);
            c3914d.m17774a(m19647P);
            boolean z = false;
            try {
                z = context.getTheme() != null;
            } catch (NullPointerException unused3) {
            }
            if (z) {
                C6820h.C6826d.m3302a(c3914d.getTheme());
            }
            return super.mo19630f(c3914d);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Application failed to obtain resources from itself", e);
        }
    }

    /* renamed from: f0 */
    public final Window.Callback m19629f0() {
        return this.f15359q.getCallback();
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: k */
    public int mo19623k() {
        return this.f15344Y;
    }

    /* renamed from: m0 */
    public boolean m19618m0() {
        return this.f15324E;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m19645R(view, str, context, attributeSet);
    }

    /* renamed from: p0 */
    public boolean m19612p0(int i, KeyEvent keyEvent) {
        boolean z = true;
        if (i != 4) {
            if (i == 82) {
                m19610q0(0, keyEvent);
                return true;
            }
        } else {
            if ((keyEvent.getFlags() & 128) == 0) {
                z = false;
            }
            this.f15339T = z;
        }
        return false;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: q */
    public void mo19611q(Bundle bundle) {
        this.f15340U = true;
        m19663G(false);
        m19639X();
        Object obj = this.f15356k;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = C5477m.m13244c((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                AbstractC3101a m19596y0 = m19596y0();
                if (m19596y0 == null) {
                    this.f15353h0 = true;
                } else {
                    m19596y0.mo19504q(true);
                }
            }
            AbstractC3107d.m19683c(this);
        }
        this.f15341V = true;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: s */
    public void mo19607s(Bundle bundle) {
        m19640W();
    }

    /* renamed from: s0 */
    public boolean m19606s0(int i, KeyEvent keyEvent) {
        if (i != 4) {
            if (i == 82) {
                m19604t0(0, keyEvent);
                return true;
            }
        } else {
            boolean z = this.f15339T;
            this.f15339T = false;
            C3131s m19632d0 = m19632d0(0, false);
            if (m19632d0 != null && m19632d0.f15404o) {
                if (!z) {
                    m19648O(m19632d0, true);
                }
                return true;
            } else if (m19614o0()) {
                return true;
            }
        }
        return false;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: u */
    public void mo19603u(Bundle bundle) {
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: v */
    public void mo19601v() {
        this.f15342W = true;
        m19665F();
    }

    /* renamed from: v0 */
    public void m19600v0(int i) {
        if (i == 108) {
            AbstractC3101a mo19619m = mo19619m();
            if (mo19619m != null) {
                mo19619m.mo19509h(false);
            }
        } else if (i == 0) {
            C3131s m19632d0 = m19632d0(i, true);
            if (m19632d0.f15404o) {
                m19648O(m19632d0, false);
            }
        }
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: w */
    public void mo19599w() {
        this.f15342W = false;
        AbstractC3101a mo19619m = mo19619m();
        if (mo19619m != null) {
            mo19619m.mo19503r(false);
        }
    }

    /* renamed from: w0 */
    public void m19598w0(ViewGroup viewGroup) {
    }

    /* renamed from: y0 */
    public final AbstractC3101a m19596y0() {
        return this.f15362t;
    }

    /* renamed from: d.f$c */
    /* loaded from: classes.dex */
    public class C3112c implements InterfaceC3256w {
        public C3112c() {
        }

        @Override // p038d0.InterfaceC3256w
        /* renamed from: a */
        public C3235t1 mo19232a(View view, C3235t1 c3235t1) {
            int m19289k = c3235t1.m19289k();
            int m19652L0 = LayoutInflater$Factory2C3109f.this.m19652L0(c3235t1, null);
            if (m19289k != m19652L0) {
                c3235t1 = c3235t1.m19286n(c3235t1.m19291i(), m19652L0, c3235t1.m19290j(), c3235t1.m19292h());
            }
            return C3218s0.m19326z(view, c3235t1);
        }
    }

    /* renamed from: d.f$o */
    /* loaded from: classes.dex */
    public static class C3127o {
        /* renamed from: a */
        public static void m19583a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales;
            LocaleList locales2;
            locales = configuration.getLocales();
            locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }
    }

    /* renamed from: d.f$t */
    /* loaded from: classes.dex */
    public final class C3132t implements InterfaceC0170i.InterfaceC0171a {
        public C3132t() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: b */
        public void mo19575b(C0162e c0162e, boolean z) {
            boolean z2;
            C0162e mo27455D = c0162e.mo27455D();
            if (mo27455D != c0162e) {
                z2 = true;
            } else {
                z2 = false;
            }
            LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f = LayoutInflater$Factory2C3109f.this;
            if (z2) {
                c0162e = mo27455D;
            }
            C3131s m19638Y = layoutInflater$Factory2C3109f.m19638Y(c0162e);
            if (m19638Y != null) {
                if (z2) {
                    LayoutInflater$Factory2C3109f.this.m19655K(m19638Y.f15390a, m19638Y, mo27455D);
                    LayoutInflater$Factory2C3109f.this.m19648O(m19638Y, true);
                    return;
                }
                LayoutInflater$Factory2C3109f.this.m19648O(m19638Y, z);
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i.InterfaceC0171a
        /* renamed from: c */
        public boolean mo19574c(C0162e c0162e) {
            Window.Callback m19629f0;
            if (c0162e == c0162e.mo27455D()) {
                LayoutInflater$Factory2C3109f layoutInflater$Factory2C3109f = LayoutInflater$Factory2C3109f.this;
                if (layoutInflater$Factory2C3109f.f15331L && (m19629f0 = layoutInflater$Factory2C3109f.m19629f0()) != null && !LayoutInflater$Factory2C3109f.this.f15343X) {
                    m19629f0.onMenuOpened(108, c0162e);
                    return true;
                }
                return true;
            }
            return true;
        }
    }

    static {
        boolean z;
        int i = Build.VERSION.SDK_INT;
        boolean z2 = false;
        if (i < 21) {
            z = true;
        } else {
            z = false;
        }
        f15315m0 = z;
        f15316n0 = new int[]{16842836};
        f15317o0 = !"robolectric".equals(Build.FINGERPRINT);
        if (i >= 17) {
            z2 = true;
        }
        f15318p0 = z2;
        if (z && !f15319q0) {
            Thread.setDefaultUncaughtExceptionHandler(new C3110a(Thread.getDefaultUncaughtExceptionHandler()));
            f15319q0 = true;
        }
    }

    public LayoutInflater$Factory2C3109f(Dialog dialog, InterfaceC3106c interfaceC3106c) {
        this(dialog.getContext(), dialog.getWindow(), interfaceC3106c, dialog);
    }

    /* renamed from: Z */
    public static Configuration m19637Z(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f = configuration.fontScale;
            float f2 = configuration2.fontScale;
            if (f != f2) {
                configuration3.fontScale = f2;
            }
            int i = configuration.mcc;
            int i2 = configuration2.mcc;
            if (i != i2) {
                configuration3.mcc = i2;
            }
            int i3 = configuration.mnc;
            int i4 = configuration2.mnc;
            if (i3 != i4) {
                configuration3.mnc = i4;
            }
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 24) {
                C3127o.m19583a(configuration, configuration2, configuration3);
            } else if (!C1022e.m24813a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i6 = configuration.touchscreen;
            int i7 = configuration2.touchscreen;
            if (i6 != i7) {
                configuration3.touchscreen = i7;
            }
            int i8 = configuration.keyboard;
            int i9 = configuration2.keyboard;
            if (i8 != i9) {
                configuration3.keyboard = i9;
            }
            int i10 = configuration.keyboardHidden;
            int i11 = configuration2.keyboardHidden;
            if (i10 != i11) {
                configuration3.keyboardHidden = i11;
            }
            int i12 = configuration.navigation;
            int i13 = configuration2.navigation;
            if (i12 != i13) {
                configuration3.navigation = i13;
            }
            int i14 = configuration.navigationHidden;
            int i15 = configuration2.navigationHidden;
            if (i14 != i15) {
                configuration3.navigationHidden = i15;
            }
            int i16 = configuration.orientation;
            int i17 = configuration2.orientation;
            if (i16 != i17) {
                configuration3.orientation = i17;
            }
            int i18 = configuration.screenLayout & 15;
            int i19 = configuration2.screenLayout;
            if (i18 != (i19 & 15)) {
                configuration3.screenLayout |= i19 & 15;
            }
            int i20 = configuration.screenLayout & 192;
            int i21 = configuration2.screenLayout;
            if (i20 != (i21 & 192)) {
                configuration3.screenLayout |= i21 & 192;
            }
            int i22 = configuration.screenLayout & 48;
            int i23 = configuration2.screenLayout;
            if (i22 != (i23 & 48)) {
                configuration3.screenLayout |= i23 & 48;
            }
            int i24 = configuration.screenLayout & GL20.GL_SRC_COLOR;
            int i25 = configuration2.screenLayout;
            if (i24 != (i25 & GL20.GL_SRC_COLOR)) {
                configuration3.screenLayout |= i25 & GL20.GL_SRC_COLOR;
            }
            if (i5 >= 26) {
                C3128p.m19582a(configuration, configuration2, configuration3);
            }
            int i26 = configuration.uiMode & 15;
            int i27 = configuration2.uiMode;
            if (i26 != (i27 & 15)) {
                configuration3.uiMode |= i27 & 15;
            }
            int i28 = configuration.uiMode & 48;
            int i29 = configuration2.uiMode;
            if (i28 != (i29 & 48)) {
                configuration3.uiMode |= i29 & 48;
            }
            int i30 = configuration.screenWidthDp;
            int i31 = configuration2.screenWidthDp;
            if (i30 != i31) {
                configuration3.screenWidthDp = i31;
            }
            int i32 = configuration.screenHeightDp;
            int i33 = configuration2.screenHeightDp;
            if (i32 != i33) {
                configuration3.screenHeightDp = i33;
            }
            int i34 = configuration.smallestScreenWidthDp;
            int i35 = configuration2.smallestScreenWidthDp;
            if (i34 != i35) {
                configuration3.smallestScreenWidthDp = i35;
            }
            if (i5 >= 17) {
                C3126n.m19584a(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    /* renamed from: A0 */
    public final boolean m19674A0(C3131s c3131s, KeyEvent keyEvent) {
        boolean z;
        InterfaceC4231s0 interfaceC4231s0;
        int i;
        boolean z2;
        InterfaceC4231s0 interfaceC4231s02;
        InterfaceC4231s0 interfaceC4231s03;
        if (this.f15343X) {
            return false;
        }
        if (c3131s.f15402m) {
            return true;
        }
        C3131s c3131s2 = this.f15338S;
        if (c3131s2 != null && c3131s2 != c3131s) {
            m19648O(c3131s2, false);
        }
        Window.Callback m19629f0 = m19629f0();
        if (m19629f0 != null) {
            c3131s.f15398i = m19629f0.onCreatePanelView(c3131s.f15390a);
        }
        int i2 = c3131s.f15390a;
        if (i2 != 0 && i2 != 108) {
            z = false;
        } else {
            z = true;
        }
        if (z && (interfaceC4231s03 = this.f15365w) != null) {
            interfaceC4231s03.mo17014c();
        }
        if (c3131s.f15398i == null) {
            if (z) {
                m19596y0();
            }
            C0162e c0162e = c3131s.f15399j;
            if (c0162e == null || c3131s.f15407r) {
                if (c0162e == null && (!m19624j0(c3131s) || c3131s.f15399j == null)) {
                    return false;
                }
                if (z && this.f15365w != null) {
                    if (this.f15366x == null) {
                        this.f15366x = new C3118h();
                    }
                    this.f15365w.mo17016a(c3131s.f15399j, this.f15366x);
                }
                c3131s.f15399j.m27519d0();
                if (!m19629f0.onCreatePanelMenu(c3131s.f15390a, c3131s.f15399j)) {
                    c3131s.m19577c(null);
                    if (z && (interfaceC4231s0 = this.f15365w) != null) {
                        interfaceC4231s0.mo17016a(null, this.f15366x);
                    }
                    return false;
                }
                c3131s.f15407r = false;
            }
            c3131s.f15399j.m27519d0();
            Bundle bundle = c3131s.f15408s;
            if (bundle != null) {
                c3131s.f15399j.m27536P(bundle);
                c3131s.f15408s = null;
            }
            if (!m19629f0.onPreparePanel(0, c3131s.f15398i, c3131s.f15399j)) {
                if (z && (interfaceC4231s02 = this.f15365w) != null) {
                    interfaceC4231s02.mo17016a(null, this.f15366x);
                }
                c3131s.f15399j.m27521c0();
                return false;
            }
            if (keyEvent != null) {
                i = keyEvent.getDeviceId();
            } else {
                i = -1;
            }
            if (KeyCharacterMap.load(i).getKeyboardType() != 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            c3131s.f15405p = z2;
            c3131s.f15399j.setQwertyMode(z2);
            c3131s.f15399j.m27521c0();
        }
        c3131s.f15402m = true;
        c3131s.f15403n = false;
        this.f15338S = c3131s;
        return true;
    }

    /* renamed from: B0 */
    public final void m19672B0(boolean z) {
        InterfaceC4231s0 interfaceC4231s0 = this.f15365w;
        if (interfaceC4231s0 != null && interfaceC4231s0.mo17013d() && (!ViewConfiguration.get(this.f15358p).hasPermanentMenuKey() || this.f15365w.mo17012e())) {
            Window.Callback m19629f0 = m19629f0();
            if (this.f15365w.mo17015b() && z) {
                this.f15365w.mo17011f();
                if (!this.f15343X) {
                    m19629f0.onPanelClosed(108, m19632d0(0, true).f15399j);
                    return;
                }
                return;
            } else if (m19629f0 != null && !this.f15343X) {
                if (this.f15350e0 && (this.f15351f0 & 1) != 0) {
                    this.f15359q.getDecorView().removeCallbacks(this.f15352g0);
                    this.f15352g0.run();
                }
                C3131s m19632d0 = m19632d0(0, true);
                C0162e c0162e = m19632d0.f15399j;
                if (c0162e != null && !m19632d0.f15407r && m19629f0.onPreparePanel(0, m19632d0.f15398i, c0162e)) {
                    m19629f0.onMenuOpened(108, m19632d0.f15399j);
                    this.f15365w.mo17010g();
                    return;
                }
                return;
            } else {
                return;
            }
        }
        C3131s m19632d02 = m19632d0(0, true);
        m19632d02.f15406q = true;
        m19648O(m19632d02, false);
        m19597x0(m19632d02, null);
    }

    /* renamed from: C0 */
    public final int m19670C0(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        } else {
            return i;
        }
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: E */
    public final void mo19667E(CharSequence charSequence) {
        this.f15364v = charSequence;
        InterfaceC4231s0 interfaceC4231s0 = this.f15365w;
        if (interfaceC4231s0 != null) {
            interfaceC4231s0.setWindowTitle(charSequence);
        } else if (m19596y0() != null) {
            m19596y0().mo19502s(charSequence);
        } else {
            TextView textView = this.f15327H;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    /* renamed from: F0 */
    public AbstractC3911b m19664F0(AbstractC3911b.InterfaceC3912a interfaceC3912a) {
        InterfaceC3106c interfaceC3106c;
        if (interfaceC3912a != null) {
            AbstractC3911b abstractC3911b = this.f15368z;
            if (abstractC3911b != null) {
                abstractC3911b.mo17767c();
            }
            C3119i c3119i = new C3119i(interfaceC3912a);
            AbstractC3101a mo19619m = mo19619m();
            if (mo19619m != null) {
                AbstractC3911b mo19501t = mo19619m.mo19501t(c3119i);
                this.f15368z = mo19501t;
                if (mo19501t != null && (interfaceC3106c = this.f15361s) != null) {
                    interfaceC3106c.mo19563g(mo19501t);
                }
            }
            if (this.f15368z == null) {
                this.f15368z = m19662G0(c3119i);
            }
            return this.f15368z;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    /* renamed from: G */
    public final boolean m19663G(boolean z) {
        if (this.f15343X) {
            return false;
        }
        int m19657J = m19657J();
        boolean m19656J0 = m19656J0(m19616n0(this.f15358p, m19657J), z);
        if (m19657J == 0) {
            m19634c0(this.f15358p).m19588e();
        } else {
            AbstractC3123l abstractC3123l = this.f15348c0;
            if (abstractC3123l != null) {
                abstractC3123l.m19589a();
            }
        }
        if (m19657J == 3) {
            m19635b0(this.f15358p).m19588e();
        } else {
            AbstractC3123l abstractC3123l2 = this.f15349d0;
            if (abstractC3123l2 != null) {
                abstractC3123l2.m19589a();
            }
        }
        return m19656J0;
    }

    /* renamed from: H */
    public final void m19661H() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f15326G.findViewById(16908290);
        View decorView = this.f15359q.getDecorView();
        contentFrameLayout.m27400b(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f15358p.obtainStyledAttributes(C1017j.f2917z0);
        obtainStyledAttributes.getValue(C1017j.f2732L0, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C1017j.f2736M0, contentFrameLayout.getMinWidthMinor());
        int i = C1017j.f2722J0;
        if (obtainStyledAttributes.hasValue(i)) {
            obtainStyledAttributes.getValue(i, contentFrameLayout.getFixedWidthMajor());
        }
        int i2 = C1017j.f2727K0;
        if (obtainStyledAttributes.hasValue(i2)) {
            obtainStyledAttributes.getValue(i2, contentFrameLayout.getFixedWidthMinor());
        }
        int i3 = C1017j.f2712H0;
        if (obtainStyledAttributes.hasValue(i3)) {
            obtainStyledAttributes.getValue(i3, contentFrameLayout.getFixedHeightMajor());
        }
        int i4 = C1017j.f2717I0;
        if (obtainStyledAttributes.hasValue(i4)) {
            obtainStyledAttributes.getValue(i4, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: H0 */
    public final void m19660H0() {
        if (!this.f15325F) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    /* renamed from: I */
    public final void m19659I(Window window) {
        if (this.f15359q == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof C3121j)) {
                C3121j c3121j = new C3121j(callback);
                this.f15360r = c3121j;
                window.setCallback(c3121j);
                C4235t1 m16967t = C4235t1.m16967t(this.f15358p, null, f15316n0);
                Drawable m16980g = m16967t.m16980g(0);
                if (m16980g != null) {
                    window.setBackgroundDrawable(m16980g);
                }
                m16967t.m16965v();
                this.f15359q = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: I0 */
    public final ActivityC3105b m19658I0() {
        for (Context context = this.f15358p; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof ActivityC3105b) {
                return (ActivityC3105b) context;
            }
            if (!(context instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /* renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m19656J0(int r7, boolean r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.f15358p
            r1 = 0
            android.content.res.Configuration r0 = r6.m19647P(r0, r7, r1)
            boolean r2 = r6.m19620l0()
            android.content.Context r3 = r6.f15358p
            android.content.res.Resources r3 = r3.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            int r3 = r3.uiMode
            r3 = r3 & 48
            int r0 = r0.uiMode
            r0 = r0 & 48
            r4 = 1
            if (r3 == r0) goto L47
            if (r8 == 0) goto L47
            if (r2 != 0) goto L47
            boolean r8 = r6.f15340U
            if (r8 == 0) goto L47
            boolean r8 = p037d.LayoutInflater$Factory2C3109f.f15317o0
            if (r8 != 0) goto L30
            boolean r8 = r6.f15341V
            if (r8 == 0) goto L47
        L30:
            java.lang.Object r8 = r6.f15356k
            boolean r5 = r8 instanceof android.app.Activity
            if (r5 == 0) goto L47
            android.app.Activity r8 = (android.app.Activity) r8
            boolean r8 = r8.isChild()
            if (r8 != 0) goto L47
            java.lang.Object r8 = r6.f15356k
            android.app.Activity r8 = (android.app.Activity) r8
            p163r.C5444c.m13287k(r8)
            r8 = 1
            goto L48
        L47:
            r8 = 0
        L48:
            if (r8 != 0) goto L50
            if (r3 == r0) goto L50
            r6.m19654K0(r0, r2, r1)
            goto L51
        L50:
            r4 = r8
        L51:
            if (r4 == 0) goto L5e
            java.lang.Object r8 = r6.f15356k
            boolean r0 = r8 instanceof p037d.ActivityC3105b
            if (r0 == 0) goto L5e
            d.b r8 = (p037d.ActivityC3105b) r8
            r8.m19694A(r7)
        L5e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p037d.LayoutInflater$Factory2C3109f.m19656J0(int, boolean):boolean");
    }

    /* renamed from: K */
    public void m19655K(int i, C3131s c3131s, Menu menu) {
        if (menu == null) {
            if (c3131s == null && i >= 0) {
                C3131s[] c3131sArr = this.f15337R;
                if (i < c3131sArr.length) {
                    c3131s = c3131sArr[i];
                }
            }
            if (c3131s != null) {
                menu = c3131s.f15399j;
            }
        }
        if ((c3131s == null || c3131s.f15404o) && !this.f15343X) {
            this.f15360r.m17722a().onPanelClosed(i, menu);
        }
    }

    /* renamed from: K0 */
    public final void m19654K0(int i, boolean z, Configuration configuration) {
        Resources resources = this.f15358p.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            C3141m.m19540a(resources);
        }
        int i3 = this.f15345Z;
        if (i3 != 0) {
            this.f15358p.setTheme(i3);
            if (i2 >= 23) {
                this.f15358p.getTheme().applyStyle(this.f15345Z, true);
            }
        }
        if (z) {
            Object obj = this.f15356k;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof InterfaceC0322g) {
                    if (((InterfaceC0322g) activity).getLifecycle().mo26794b().m26796c(AbstractC0317d.EnumC0319b.STARTED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (this.f15342W) {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    /* renamed from: L */
    public void m19653L(C0162e c0162e) {
        if (this.f15336Q) {
            return;
        }
        this.f15336Q = true;
        this.f15365w.mo17008i();
        Window.Callback m19629f0 = m19629f0();
        if (m19629f0 != null && !this.f15343X) {
            m19629f0.onPanelClosed(108, c0162e);
        }
        this.f15336Q = false;
    }

    /* renamed from: M */
    public final void m19651M() {
        AbstractC3123l abstractC3123l = this.f15348c0;
        if (abstractC3123l != null) {
            abstractC3123l.m19589a();
        }
        AbstractC3123l abstractC3123l2 = this.f15349d0;
        if (abstractC3123l2 != null) {
            abstractC3123l2.m19589a();
        }
    }

    /* renamed from: O */
    public void m19648O(C3131s c3131s, boolean z) {
        ViewGroup viewGroup;
        InterfaceC4231s0 interfaceC4231s0;
        if (z && c3131s.f15390a == 0 && (interfaceC4231s0 = this.f15365w) != null && interfaceC4231s0.mo17015b()) {
            m19653L(c3131s.f15399j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f15358p.getSystemService("window");
        if (windowManager != null && c3131s.f15404o && (viewGroup = c3131s.f15396g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                m19655K(c3131s.f15390a, c3131s, null);
            }
        }
        c3131s.f15402m = false;
        c3131s.f15403n = false;
        c3131s.f15404o = false;
        c3131s.f15397h = null;
        c3131s.f15406q = true;
        if (this.f15338S == c3131s) {
            this.f15338S = null;
        }
    }

    /* renamed from: Q */
    public final ViewGroup m19646Q() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.f15358p.obtainStyledAttributes(C1017j.f2917z0);
        int i = C1017j.f2697E0;
        if (obtainStyledAttributes.hasValue(i)) {
            if (obtainStyledAttributes.getBoolean(C1017j.f2740N0, false)) {
                mo19595z(1);
            } else if (obtainStyledAttributes.getBoolean(i, false)) {
                mo19595z(108);
            }
            if (obtainStyledAttributes.getBoolean(C1017j.f2702F0, false)) {
                mo19595z(109);
            }
            if (obtainStyledAttributes.getBoolean(C1017j.f2707G0, false)) {
                mo19595z(10);
            }
            this.f15334O = obtainStyledAttributes.getBoolean(C1017j.f2677A0, false);
            obtainStyledAttributes.recycle();
            m19639X();
            this.f15359q.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f15358p);
            if (!this.f15335P) {
                if (this.f15334O) {
                    viewGroup = (ViewGroup) from.inflate(C1014g.f2645f, (ViewGroup) null);
                    this.f15332M = false;
                    this.f15331L = false;
                } else if (this.f15331L) {
                    TypedValue typedValue = new TypedValue();
                    this.f15358p.getTheme().resolveAttribute(C1008a.f2510f, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        context = new C3914d(this.f15358p, typedValue.resourceId);
                    } else {
                        context = this.f15358p;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(C1014g.f2655p, (ViewGroup) null);
                    InterfaceC4231s0 interfaceC4231s0 = (InterfaceC4231s0) viewGroup.findViewById(C1013f.f2629p);
                    this.f15365w = interfaceC4231s0;
                    interfaceC4231s0.setWindowCallback(m19629f0());
                    if (this.f15332M) {
                        this.f15365w.mo17009h(109);
                    }
                    if (this.f15329J) {
                        this.f15365w.mo17009h(2);
                    }
                    if (this.f15330K) {
                        this.f15365w.mo17009h(5);
                    }
                } else {
                    viewGroup = null;
                }
            } else {
                viewGroup = this.f15333N ? (ViewGroup) from.inflate(C1014g.f2654o, (ViewGroup) null) : (ViewGroup) from.inflate(C1014g.f2653n, (ViewGroup) null);
            }
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    C3218s0.m19357N(viewGroup, new C3112c());
                } else if (viewGroup instanceof InterfaceC0225b) {
                    ((InterfaceC0225b) viewGroup).setOnFitSystemWindowsListener(new C3113d());
                }
                if (this.f15365w == null) {
                    this.f15327H = (TextView) viewGroup.findViewById(C1013f.f2610M);
                }
                C4270z1.m16882c(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C1013f.f2615b);
                ViewGroup viewGroup2 = (ViewGroup) this.f15359q.findViewById(16908290);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(16908290);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground(null);
                    }
                }
                this.f15359q.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new C3114e());
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f15331L + ", windowActionBarOverlay: " + this.f15332M + ", android:windowIsFloating: " + this.f15334O + ", windowActionModeOverlay: " + this.f15333N + ", windowNoTitle: " + this.f15335P + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    /* renamed from: R */
    public View m19645R(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean z2 = false;
        if (this.f15357k0 == null) {
            String string = this.f15358p.obtainStyledAttributes(C1017j.f2917z0).getString(C1017j.f2692D0);
            if (string == null) {
                this.f15357k0 = new C3139l();
            } else {
                try {
                    this.f15357k0 = (C3139l) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f15357k0 = new C3139l();
                }
            }
        }
        boolean z3 = f15315m0;
        if (z3) {
            if (attributeSet instanceof XmlPullParser) {
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    z2 = true;
                }
            } else {
                z2 = m19666E0((ViewParent) view);
            }
            z = z2;
        } else {
            z = false;
        }
        return this.f15357k0.m19546q(view, str, context, attributeSet, z, z3, true, C4267y1.m16888b());
    }

    /* renamed from: S */
    public void m19644S() {
        C0162e c0162e;
        InterfaceC4231s0 interfaceC4231s0 = this.f15365w;
        if (interfaceC4231s0 != null) {
            interfaceC4231s0.mo17008i();
        }
        if (this.f15321B != null) {
            this.f15359q.getDecorView().removeCallbacks(this.f15322C);
            if (this.f15321B.isShowing()) {
                try {
                    this.f15321B.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f15321B = null;
        }
        m19641V();
        C3131s m19632d0 = m19632d0(0, false);
        if (m19632d0 != null && (c0162e = m19632d0.f15399j) != null) {
            c0162e.close();
        }
    }

    /* renamed from: T */
    public boolean m19643T(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f15356k;
        boolean z = true;
        if (((obj instanceof C3169e.InterfaceC3170a) || (obj instanceof DialogC3137k)) && (decorView = this.f15359q.getDecorView()) != null && C3169e.m19456d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f15360r.m17722a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z = false;
        }
        if (z) {
            return m19612p0(keyCode, keyEvent);
        }
        return m19606s0(keyCode, keyEvent);
    }

    /* renamed from: V */
    public void m19641V() {
        C3208p1 c3208p1 = this.f15323D;
        if (c3208p1 != null) {
            c3208p1.m19401b();
        }
    }

    /* renamed from: W */
    public final void m19640W() {
        if (!this.f15325F) {
            this.f15326G = m19646Q();
            CharSequence m19631e0 = m19631e0();
            if (!TextUtils.isEmpty(m19631e0)) {
                InterfaceC4231s0 interfaceC4231s0 = this.f15365w;
                if (interfaceC4231s0 != null) {
                    interfaceC4231s0.setWindowTitle(m19631e0);
                } else if (m19596y0() != null) {
                    m19596y0().mo19502s(m19631e0);
                } else {
                    TextView textView = this.f15327H;
                    if (textView != null) {
                        textView.setText(m19631e0);
                    }
                }
            }
            m19661H();
            m19598w0(this.f15326G);
            this.f15325F = true;
            C3131s m19632d0 = m19632d0(0, false);
            if (!this.f15343X) {
                if (m19632d0 == null || m19632d0.f15399j == null) {
                    m19622k0(108);
                }
            }
        }
    }

    /* renamed from: X */
    public final void m19639X() {
        if (this.f15359q == null) {
            Object obj = this.f15356k;
            if (obj instanceof Activity) {
                m19659I(((Activity) obj).getWindow());
            }
        }
        if (this.f15359q != null) {
            return;
        }
        throw new IllegalStateException("We have not been given a Window");
    }

    /* renamed from: Y */
    public C3131s m19638Y(Menu menu) {
        int i;
        C3131s[] c3131sArr = this.f15337R;
        if (c3131sArr != null) {
            i = c3131sArr.length;
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < i; i2++) {
            C3131s c3131s = c3131sArr[i2];
            if (c3131s != null && c3131s.f15399j == menu) {
                return c3131s;
            }
        }
        return null;
    }

    /* renamed from: b0 */
    public final AbstractC3123l m19635b0(Context context) {
        if (this.f15349d0 == null) {
            this.f15349d0 = new C3122k(context);
        }
        return this.f15349d0;
    }

    /* renamed from: c0 */
    public final AbstractC3123l m19634c0(Context context) {
        if (this.f15348c0 == null) {
            this.f15348c0 = new C3125m(C3143o.m19533a(context));
        }
        return this.f15348c0;
    }

    /* renamed from: d0 */
    public C3131s m19632d0(int i, boolean z) {
        C3131s[] c3131sArr = this.f15337R;
        if (c3131sArr == null || c3131sArr.length <= i) {
            C3131s[] c3131sArr2 = new C3131s[i + 1];
            if (c3131sArr != null) {
                System.arraycopy(c3131sArr, 0, c3131sArr2, 0, c3131sArr.length);
            }
            this.f15337R = c3131sArr2;
            c3131sArr = c3131sArr2;
        }
        C3131s c3131s = c3131sArr[i];
        if (c3131s == null) {
            C3131s c3131s2 = new C3131s(i);
            c3131sArr[i] = c3131s2;
            return c3131s2;
        }
        return c3131s;
    }

    /* renamed from: e0 */
    public final CharSequence m19631e0() {
        Object obj = this.f15356k;
        if (obj instanceof Activity) {
            return ((Activity) obj).getTitle();
        }
        return this.f15364v;
    }

    /* renamed from: h0 */
    public final boolean m19627h0(C3131s c3131s) {
        View view = c3131s.f15398i;
        if (view != null) {
            c3131s.f15397h = view;
            return true;
        } else if (c3131s.f15399j == null) {
            return false;
        } else {
            if (this.f15367y == null) {
                this.f15367y = new C3132t();
            }
            View view2 = (View) c3131s.m19579a(this.f15367y);
            c3131s.f15397h = view2;
            if (view2 != null) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: j0 */
    public final boolean m19624j0(C3131s c3131s) {
        Context context = this.f15358p;
        int i = c3131s.f15390a;
        if ((i == 0 || i == 108) && this.f15365w != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(C1008a.f2510f, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(C1008a.f2511g, typedValue, true);
            } else {
                theme.resolveAttribute(C1008a.f2511g, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                C3914d c3914d = new C3914d(context, 0);
                c3914d.getTheme().setTo(theme2);
                context = c3914d;
            }
        }
        C0162e c0162e = new C0162e(context);
        c0162e.mo27451R(this);
        c3131s.m19577c(c0162e);
        return true;
    }

    /* renamed from: k0 */
    public final void m19622k0(int i) {
        this.f15351f0 = (1 << i) | this.f15351f0;
        if (!this.f15350e0) {
            C3218s0.m19368C(this.f15359q.getDecorView(), this.f15352g0);
            this.f15350e0 = true;
        }
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: l */
    public MenuInflater mo19621l() {
        Context context;
        if (this.f15363u == null) {
            m19628g0();
            AbstractC3101a abstractC3101a = this.f15362t;
            if (abstractC3101a != null) {
                context = abstractC3101a.mo19507j();
            } else {
                context = this.f15358p;
            }
            this.f15363u = new C3918g(context);
        }
        return this.f15363u;
    }

    /* renamed from: l0 */
    public final boolean m19620l0() {
        int i;
        boolean z;
        if (!this.f15347b0 && (this.f15356k instanceof Activity)) {
            PackageManager packageManager = this.f15358p.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 29) {
                    i = 269221888;
                } else if (i2 >= 24) {
                    i = 786432;
                } else {
                    i = 0;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f15358p, this.f15356k.getClass()), i);
                if (activityInfo != null && (activityInfo.configChanges & 512) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.f15346a0 = z;
            } catch (PackageManager.NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.f15346a0 = false;
            }
        }
        this.f15347b0 = true;
        return this.f15346a0;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: n */
    public void mo19617n() {
        LayoutInflater from = LayoutInflater.from(this.f15358p);
        if (from.getFactory() == null) {
            C3174f.m19449b(from, this);
        } else if (!(from.getFactory2() instanceof LayoutInflater$Factory2C3109f)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* renamed from: n0 */
    public int m19616n0(Context context, int i) {
        Object systemService;
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i != 0) {
                if (i != 1 && i != 2) {
                    if (i == 3) {
                        return m19635b0(context).mo19586c();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            } else {
                if (Build.VERSION.SDK_INT >= 23) {
                    systemService = context.getApplicationContext().getSystemService(UiModeManager.class);
                    if (((UiModeManager) systemService).getNightMode() == 0) {
                        return -1;
                    }
                }
                return m19634c0(context).mo19586c();
            }
        }
        return i;
    }

    /* renamed from: o0 */
    public boolean m19614o0() {
        AbstractC3911b abstractC3911b = this.f15368z;
        if (abstractC3911b != null) {
            abstractC3911b.mo17767c();
            return true;
        }
        AbstractC3101a mo19619m = mo19619m();
        if (mo19619m != null && mo19619m.mo19510g()) {
            return true;
        }
        return false;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: p */
    public void mo19613p(Configuration configuration) {
        AbstractC3101a mo19619m;
        if (this.f15331L && this.f15325F && (mo19619m = mo19619m()) != null) {
            mo19619m.mo19506l(configuration);
        }
        C4188i.m17186b().m17181g(this.f15358p);
        m19663G(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
    @Override // p037d.AbstractC3107d
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo19609r() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f15356k
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L9
            p037d.AbstractC3107d.m19678x(r3)
        L9:
            boolean r0 = r3.f15350e0
            if (r0 == 0) goto L18
            android.view.Window r0 = r3.f15359q
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.f15352g0
            r0.removeCallbacks(r1)
        L18:
            r0 = 0
            r3.f15342W = r0
            r0 = 1
            r3.f15343X = r0
            int r0 = r3.f15344Y
            r1 = -100
            if (r0 == r1) goto L48
            java.lang.Object r0 = r3.f15356k
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L48
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L48
            p.g<java.lang.String, java.lang.Integer> r0 = p037d.LayoutInflater$Factory2C3109f.f15314l0
            java.lang.Object r1 = r3.f15356k
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f15344Y
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L57
        L48:
            p.g<java.lang.String, java.lang.Integer> r0 = p037d.LayoutInflater$Factory2C3109f.f15314l0
            java.lang.Object r1 = r3.f15356k
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L57:
            d.a r0 = r3.f15362t
            if (r0 == 0) goto L5e
            r0.m19702m()
        L5e:
            r3.m19651M()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p037d.LayoutInflater$Factory2C3109f.mo19609r():void");
    }

    /* renamed from: t0 */
    public final boolean m19604t0(int i, KeyEvent keyEvent) {
        boolean z;
        InterfaceC4231s0 interfaceC4231s0;
        if (this.f15368z != null) {
            return false;
        }
        boolean z2 = true;
        C3131s m19632d0 = m19632d0(i, true);
        if (i == 0 && (interfaceC4231s0 = this.f15365w) != null && interfaceC4231s0.mo17013d() && !ViewConfiguration.get(this.f15358p).hasPermanentMenuKey()) {
            if (!this.f15365w.mo17015b()) {
                if (!this.f15343X && m19674A0(m19632d0, keyEvent)) {
                    z2 = this.f15365w.mo17010g();
                }
                z2 = false;
            } else {
                z2 = this.f15365w.mo17011f();
            }
        } else {
            boolean z3 = m19632d0.f15404o;
            if (!z3 && !m19632d0.f15403n) {
                if (m19632d0.f15402m) {
                    if (m19632d0.f15407r) {
                        m19632d0.f15402m = false;
                        z = m19674A0(m19632d0, keyEvent);
                    } else {
                        z = true;
                    }
                    if (z) {
                        m19597x0(m19632d0, keyEvent);
                    }
                }
                z2 = false;
            } else {
                m19648O(m19632d0, true);
                z2 = z3;
            }
        }
        if (z2) {
            AudioManager audioManager = (AudioManager) this.f15358p.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return z2;
    }

    /* renamed from: u0 */
    public void m19602u0(int i) {
        AbstractC3101a mo19619m;
        if (i == 108 && (mo19619m = mo19619m()) != null) {
            mo19619m.mo19509h(true);
        }
    }

    /* renamed from: x0 */
    public final void m19597x0(C3131s c3131s, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        boolean z;
        if (!c3131s.f15404o && !this.f15343X) {
            if (c3131s.f15390a == 0) {
                if ((this.f15358p.getResources().getConfiguration().screenLayout & 15) == 4) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            Window.Callback m19629f0 = m19629f0();
            if (m19629f0 != null && !m19629f0.onMenuOpened(c3131s.f15390a, c3131s.f15399j)) {
                m19648O(c3131s, true);
                return;
            }
            WindowManager windowManager = (WindowManager) this.f15358p.getSystemService("window");
            if (windowManager == null || !m19674A0(c3131s, keyEvent)) {
                return;
            }
            ViewGroup viewGroup = c3131s.f15396g;
            if (viewGroup != null && !c3131s.f15406q) {
                View view = c3131s.f15398i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i = -1;
                    c3131s.f15403n = false;
                    WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i, -2, c3131s.f15393d, c3131s.f15394e, 1002, 8519680, -3);
                    layoutParams2.gravity = c3131s.f15392c;
                    layoutParams2.windowAnimations = c3131s.f15395f;
                    windowManager.addView(c3131s.f15396g, layoutParams2);
                    c3131s.f15404o = true;
                }
            } else {
                if (viewGroup == null) {
                    if (!m19625i0(c3131s) || c3131s.f15396g == null) {
                        return;
                    }
                } else if (c3131s.f15406q && viewGroup.getChildCount() > 0) {
                    c3131s.f15396g.removeAllViews();
                }
                if (m19627h0(c3131s) && c3131s.m19578b()) {
                    ViewGroup.LayoutParams layoutParams3 = c3131s.f15397h.getLayoutParams();
                    if (layoutParams3 == null) {
                        layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                    }
                    c3131s.f15396g.setBackgroundResource(c3131s.f15391b);
                    ViewParent parent = c3131s.f15397h.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(c3131s.f15397h);
                    }
                    c3131s.f15396g.addView(c3131s.f15397h, layoutParams3);
                    if (!c3131s.f15397h.hasFocus()) {
                        c3131s.f15397h.requestFocus();
                    }
                } else {
                    c3131s.f15406q = true;
                    return;
                }
            }
            i = -2;
            c3131s.f15403n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i, -2, c3131s.f15393d, c3131s.f15394e, 1002, 8519680, -3);
            layoutParams22.gravity = c3131s.f15392c;
            layoutParams22.windowAnimations = c3131s.f15395f;
            windowManager.addView(c3131s.f15396g, layoutParams22);
            c3131s.f15404o = true;
        }
    }

    public LayoutInflater$Factory2C3109f(Context context, Window window, InterfaceC3106c interfaceC3106c, Object obj) {
        C5283g<String, Integer> c5283g;
        Integer num;
        ActivityC3105b m19658I0;
        this.f15323D = null;
        this.f15324E = true;
        this.f15344Y = -100;
        this.f15352g0 = new RunnableC3111b();
        this.f15358p = context;
        this.f15361s = interfaceC3106c;
        this.f15356k = obj;
        if (this.f15344Y == -100 && (obj instanceof Dialog) && (m19658I0 = m19658I0()) != null) {
            this.f15344Y = m19658I0.m19686x().mo19623k();
        }
        if (this.f15344Y == -100 && (num = (c5283g = f15314l0).get(obj.getClass().getName())) != null) {
            this.f15344Y = num.intValue();
            c5283g.remove(obj.getClass().getName());
        }
        if (window != null) {
            m19659I(window);
        }
        C4188i.m17180h();
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: A */
    public void mo19675A(int i) {
        m19640W();
        ViewGroup viewGroup = (ViewGroup) this.f15326G.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f15358p).inflate(i, viewGroup);
        this.f15360r.m17722a().onContentChanged();
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: B */
    public void mo19673B(View view) {
        m19640W();
        ViewGroup viewGroup = (ViewGroup) this.f15326G.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f15360r.m17722a().onContentChanged();
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: C */
    public void mo19671C(View view, ViewGroup.LayoutParams layoutParams) {
        m19640W();
        ViewGroup viewGroup = (ViewGroup) this.f15326G.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f15360r.m17722a().onContentChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* renamed from: G0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p073h.AbstractC3911b m19662G0(p073h.AbstractC3911b.InterfaceC3912a r8) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p037d.LayoutInflater$Factory2C3109f.m19662G0(h.b$a):h.b");
    }

    /* renamed from: M0 */
    public final void m19650M0(View view) {
        boolean z;
        int m3937c;
        if ((C3218s0.m19333s(view) & 8192) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            m3937c = C6550a.m3937c(this.f15358p, C1010c.f2533b);
        } else {
            m3937c = C6550a.m3937c(this.f15358p, C1010c.f2532a);
        }
        view.setBackgroundColor(m3937c);
    }

    @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0163a
    /* renamed from: a */
    public boolean mo17769a(C0162e c0162e, MenuItem menuItem) {
        C3131s m19638Y;
        Window.Callback m19629f0 = m19629f0();
        if (m19629f0 != null && !this.f15343X && (m19638Y = m19638Y(c0162e.mo27455D())) != null) {
            return m19629f0.onMenuItemSelected(m19638Y.f15390a, menuItem);
        }
        return false;
    }

    /* renamed from: a0 */
    public final Context m19636a0() {
        Context context;
        AbstractC3101a mo19619m = mo19619m();
        if (mo19619m != null) {
            context = mo19619m.mo19507j();
        } else {
            context = null;
        }
        if (context == null) {
            return this.f15358p;
        }
        return context;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: d */
    public void mo19633d(View view, ViewGroup.LayoutParams layoutParams) {
        m19640W();
        ((ViewGroup) this.f15326G.findViewById(16908290)).addView(view, layoutParams);
        this.f15360r.m17722a().onContentChanged();
    }

    /* renamed from: g0 */
    public final void m19628g0() {
        m19640W();
        if (this.f15331L && this.f15362t == null) {
            Object obj = this.f15356k;
            if (obj instanceof Activity) {
                this.f15362t = new C3145p((Activity) this.f15356k, this.f15332M);
            } else if (obj instanceof Dialog) {
                this.f15362t = new C3145p((Dialog) this.f15356k);
            }
            AbstractC3101a abstractC3101a = this.f15362t;
            if (abstractC3101a != null) {
                abstractC3101a.mo19504q(this.f15353h0);
            }
        }
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: i */
    public <T extends View> T mo19626i(int i) {
        m19640W();
        return (T) this.f15359q.findViewById(i);
    }

    /* renamed from: i0 */
    public final boolean m19625i0(C3131s c3131s) {
        c3131s.m19576d(m19636a0());
        c3131s.f15396g = new C3130r(c3131s.f15401l);
        c3131s.f15392c = 81;
        return true;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: m */
    public AbstractC3101a mo19619m() {
        m19628g0();
        return this.f15362t;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: o */
    public void mo19615o() {
        AbstractC3101a mo19619m = mo19619m();
        if (mo19619m != null && mo19619m.m19703k()) {
            return;
        }
        m19622k0(0);
    }

    /* renamed from: q0 */
    public final boolean m19610q0(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            C3131s m19632d0 = m19632d0(i, true);
            if (!m19632d0.f15404o) {
                return m19674A0(m19632d0, keyEvent);
            }
            return false;
        }
        return false;
    }

    /* renamed from: r0 */
    public boolean m19608r0(int i, KeyEvent keyEvent) {
        AbstractC3101a mo19619m = mo19619m();
        if (mo19619m != null && mo19619m.mo19505n(i, keyEvent)) {
            return true;
        }
        C3131s c3131s = this.f15338S;
        if (c3131s != null && m19594z0(c3131s, keyEvent.getKeyCode(), keyEvent, 1)) {
            C3131s c3131s2 = this.f15338S;
            if (c3131s2 != null) {
                c3131s2.f15403n = true;
            }
            return true;
        }
        if (this.f15338S == null) {
            C3131s m19632d0 = m19632d0(0, true);
            m19674A0(m19632d0, keyEvent);
            boolean m19594z0 = m19594z0(m19632d0, keyEvent.getKeyCode(), keyEvent, 1);
            m19632d0.f15402m = false;
            if (m19594z0) {
                return true;
            }
        }
        return false;
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: t */
    public void mo19605t() {
        AbstractC3101a mo19619m = mo19619m();
        if (mo19619m != null) {
            mo19619m.mo19503r(true);
        }
    }

    @Override // p037d.AbstractC3107d
    /* renamed from: z */
    public boolean mo19595z(int i) {
        int m19670C0 = m19670C0(i);
        if (this.f15335P && m19670C0 == 108) {
            return false;
        }
        if (this.f15331L && m19670C0 == 1) {
            this.f15331L = false;
        }
        if (m19670C0 != 1) {
            if (m19670C0 != 2) {
                if (m19670C0 != 5) {
                    if (m19670C0 != 10) {
                        if (m19670C0 != 108) {
                            if (m19670C0 != 109) {
                                return this.f15359q.requestFeature(m19670C0);
                            }
                            m19660H0();
                            this.f15332M = true;
                            return true;
                        }
                        m19660H0();
                        this.f15331L = true;
                        return true;
                    }
                    m19660H0();
                    this.f15333N = true;
                    return true;
                }
                m19660H0();
                this.f15330K = true;
                return true;
            }
            m19660H0();
            this.f15329J = true;
            return true;
        }
        m19660H0();
        this.f15335P = true;
        return true;
    }

    /* renamed from: z0 */
    public final boolean m19594z0(C3131s c3131s, int i, KeyEvent keyEvent, int i2) {
        C0162e c0162e;
        boolean z = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((c3131s.f15402m || m19674A0(c3131s, keyEvent)) && (c0162e = c3131s.f15399j) != null) {
            z = c0162e.performShortcut(i, keyEvent, i2);
        }
        if (z && (i2 & 1) == 0 && this.f15365w == null) {
            m19648O(c3131s, true);
        }
        return z;
    }
}
