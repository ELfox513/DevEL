package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.InterfaceC0134e;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.C0323h;
import androidx.lifecycle.C0341t;
import androidx.lifecycle.InterfaceC0342u;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import net.bytebuddy.jar.asm.Opcodes;
import p101k0.AbstractC4393a;
import p145p.C5284h;
import p163r.C5444c;
/* renamed from: androidx.fragment.app.d */
/* loaded from: classes.dex */
public class ActivityC0256d extends ComponentActivity implements C5444c.InterfaceC5447c, C5444c.InterfaceC5449e {

    /* renamed from: A */
    public int f986A;

    /* renamed from: B */
    public C5284h<String> f987B;

    /* renamed from: u */
    public boolean f990u;

    /* renamed from: v */
    public boolean f991v;

    /* renamed from: x */
    public boolean f993x;

    /* renamed from: y */
    public boolean f994y;

    /* renamed from: z */
    public boolean f995z;

    /* renamed from: s */
    public final C0259f f988s = C0259f.m27076b(new C0257a());

    /* renamed from: t */
    public final C0323h f989t = new C0323h(this);

    /* renamed from: w */
    public boolean f992w = true;

    /* renamed from: androidx.fragment.app.d$a */
    /* loaded from: classes.dex */
    public class C0257a extends AbstractC0261h<ActivityC0256d> implements InterfaceC0342u, InterfaceC0134e {
        @Override // androidx.activity.InterfaceC0134e
        /* renamed from: b */
        public OnBackPressedDispatcher mo27080b() {
            return ActivityC0256d.this.mo27080b();
        }

        @Override // androidx.fragment.app.AbstractC0261h, androidx.fragment.app.AbstractC0258e
        /* renamed from: c */
        public View mo27049c(int i) {
            return ActivityC0256d.this.findViewById(i);
        }

        @Override // androidx.lifecycle.InterfaceC0322g
        public AbstractC0317d getLifecycle() {
            return ActivityC0256d.this.f989t;
        }

        @Override // androidx.lifecycle.InterfaceC0342u
        public C0341t getViewModelStore() {
            return ActivityC0256d.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: h */
        public void mo27044h(Fragment fragment) {
            ActivityC0256d.this.m27086q(fragment);
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: i */
        public void mo27043i(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            ActivityC0256d.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: k */
        public LayoutInflater mo27041k() {
            return ActivityC0256d.this.getLayoutInflater().cloneInContext(ActivityC0256d.this);
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: m */
        public boolean mo27039m() {
            return ActivityC0256d.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: n */
        public void mo27038n(Fragment fragment, String[] strArr, int i) {
            ActivityC0256d.this.m27083t(fragment, strArr, i);
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: o */
        public boolean mo27037o(Fragment fragment) {
            return !ActivityC0256d.this.isFinishing();
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: p */
        public boolean mo27036p(String str) {
            return C5444c.m13285m(ActivityC0256d.this, str);
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: q */
        public void mo27035q(Fragment fragment, Intent intent, int i, Bundle bundle) {
            ActivityC0256d.this.m27082u(fragment, intent, i, bundle);
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: r */
        public void mo27034r(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
            ActivityC0256d.this.m27081v(fragment, intentSender, i, intent, i2, i3, i4, bundle);
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: s */
        public void mo27033s() {
            ActivityC0256d.this.mo19687w();
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: t */
        public ActivityC0256d mo27042j() {
            return ActivityC0256d.this;
        }

        public C0257a() {
            super(ActivityC0256d.this);
        }

        @Override // androidx.fragment.app.AbstractC0261h, androidx.fragment.app.AbstractC0258e
        /* renamed from: d */
        public boolean mo27048d() {
            Window window = ActivityC0256d.this.getWindow();
            if (window != null && window.peekDecorView() != null) {
                return true;
            }
            return false;
        }

        @Override // androidx.fragment.app.AbstractC0261h
        /* renamed from: l */
        public int mo27040l() {
            Window window = ActivityC0256d.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }
    }

    /* renamed from: k */
    public static void m27092k(int i) {
        if ((i & Opcodes.V_PREVIEW) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    /* renamed from: l */
    public final View m27091l(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f988s.m27055w(view, str, context, attributeSet);
    }

    /* renamed from: m */
    public AbstractC0262i m27090m() {
        return this.f988s.m27057u();
    }

    @Deprecated
    /* renamed from: n */
    public AbstractC4393a m27089n() {
        return AbstractC4393a.m16712b(this);
    }

    /* renamed from: o */
    public final void m27088o() {
        do {
        } while (m27087p(m27090m(), AbstractC0317d.EnumC0319b.CREATED));
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View m27091l = m27091l(view, str, context, attributeSet);
        return m27091l == null ? super.onCreateView(view, str, context, attributeSet) : m27091l;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f988s.m27068j(z);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f988s.m27064n(z);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f988s.m27056v();
    }

    /* renamed from: q */
    public void m27086q(Fragment fragment) {
    }

    @Deprecated
    /* renamed from: r */
    public boolean m27085r(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        if (!this.f995z && i != -1) {
            m27092k(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        if (!this.f994y && i != -1) {
            m27092k(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    /* renamed from: t */
    public void m27083t(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            C5444c.m13286l(this, strArr, i);
            return;
        }
        m27092k(i);
        try {
            this.f993x = true;
            C5444c.m13286l(this, strArr, ((m27093j(fragment) + 1) << 16) + (i & MeshBuilder.MAX_INDEX));
        } finally {
            this.f993x = false;
        }
    }

    /* renamed from: u */
    public void m27082u(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        this.f995z = true;
        try {
            if (i == -1) {
                C5444c.m13284n(this, intent, -1, bundle);
                return;
            }
            m27092k(i);
            C5444c.m13284n(this, intent, ((m27093j(fragment) + 1) << 16) + (i & MeshBuilder.MAX_INDEX), bundle);
        } finally {
            this.f995z = false;
        }
    }

    /* renamed from: v */
    public void m27081v(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        this.f994y = true;
        try {
            if (i == -1) {
                C5444c.m13283o(this, intentSender, i, intent, i2, i3, i4, bundle);
                return;
            }
            m27092k(i);
            C5444c.m13283o(this, intentSender, ((m27093j(fragment) + 1) << 16) + (i & MeshBuilder.MAX_INDEX), intent, i2, i3, i4, bundle);
        } finally {
            this.f994y = false;
        }
    }

    @Deprecated
    /* renamed from: w */
    public void mo19687w() {
        invalidateOptionsMenu();
    }

    @Override // p163r.C5444c.InterfaceC5449e
    /* renamed from: a */
    public final void mo13280a(int i) {
        if (!this.f993x && i != -1) {
            m27092k(i);
        }
    }

    /* renamed from: j */
    public final int m27093j(Fragment fragment) {
        if (this.f987B.m13645p() < 65534) {
            while (this.f987B.m13649j(this.f986A) >= 0) {
                this.f986A = (this.f986A + 1) % 65534;
            }
            int i = this.f986A;
            this.f987B.m13647n(i, fragment.f923p);
            this.f986A = (this.f986A + 1) % 65534;
            return i;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f988s.m27056v();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String m13651h = this.f987B.m13651h(i4);
            this.f987B.m13646o(i4);
            if (m13651h == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment m27058t = this.f988s.m27058t(m13651h);
            if (m27058t == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + m13651h);
                return;
            }
            m27058t.onActivityResult(i & MeshBuilder.MAX_INDEX, i2, intent);
            return;
        }
        C5444c.InterfaceC5448d m13288j = C5444c.m13288j();
        if (m13288j != null && m13288j.m13282a(this, i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, p163r.ActivityC5468j, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f988s.m27077a(null);
        if (bundle != null) {
            this.f988s.m27054x(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.f986A = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray != null && stringArray != null && intArray.length == stringArray.length) {
                    this.f987B = new C5284h<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.f987B.m13647n(intArray[i], stringArray[i]);
                    }
                } else {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                }
            }
        }
        if (this.f987B == null) {
            this.f987B = new C5284h<>();
            this.f986A = 0;
        }
        super.onCreate(bundle);
        this.f989t.m26787i(AbstractC0317d.EnumC0318a.ON_CREATE);
        this.f988s.m27072f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            return super.onCreatePanelMenu(i, menu) | this.f988s.m27071g(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f988s.m27066l(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0) {
            return m27085r(view, menu) | this.f988s.m27063o(menu);
        }
        return super.onPreparePanel(i, view, menu);
    }

    @Override // android.app.Activity, p163r.C5444c.InterfaceC5447c
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f988s.m27056v();
        int i2 = (i >> 16) & MeshBuilder.MAX_INDEX;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String m13651h = this.f987B.m13651h(i3);
            this.f987B.m13646o(i3);
            if (m13651h == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment m27058t = this.f988s.m27058t(m13651h);
            if (m27058t == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + m13651h);
                return;
            }
            m27058t.onRequestPermissionsResult(i & MeshBuilder.MAX_INDEX, strArr, iArr);
        }
    }

    /* renamed from: s */
    public void m27084s() {
        this.f989t.m26787i(AbstractC0317d.EnumC0318a.ON_RESUME);
        this.f988s.m27062p();
    }

    /* renamed from: p */
    public static boolean m27087p(AbstractC0262i abstractC0262i, AbstractC0317d.EnumC0319b enumC0319b) {
        boolean z = false;
        for (Fragment fragment : abstractC0262i.mo26967e()) {
            if (fragment != null) {
                if (fragment.getLifecycle().mo26794b().m26796c(AbstractC0317d.EnumC0319b.STARTED)) {
                    fragment.f917d0.m26780p(enumC0319b);
                    z = true;
                }
                if (fragment.getHost() != null) {
                    z |= m27087p(fragment.getChildFragmentManager(), enumC0319b);
                }
            }
        }
        return z;
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f990u);
        printWriter.print(" mResumed=");
        printWriter.print(this.f991v);
        printWriter.print(" mStopped=");
        printWriter.print(this.f992w);
        if (getApplication() != null) {
            AbstractC4393a.m16712b(this).mo16708a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f988s.m27057u().mo26976b(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f988s.m27056v();
        this.f988s.m27074d(configuration);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View m27091l = m27091l(null, str, context, attributeSet);
        return m27091l == null ? super.onCreateView(str, context, attributeSet) : m27091l;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f988s.m27070h();
        this.f989t.m26787i(AbstractC0317d.EnumC0318a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f988s.m27069i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i != 0) {
            if (i != 6) {
                return false;
            }
            return this.f988s.m27073e(menuItem);
        }
        return this.f988s.m27067k(menuItem);
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.f988s.m27056v();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f991v = false;
        this.f988s.m27065m();
        this.f989t.m26787i(AbstractC0317d.EnumC0318a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m27084s();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f991v = true;
        this.f988s.m27056v();
        this.f988s.m27059s();
    }

    @Override // androidx.activity.ComponentActivity, p163r.ActivityC5468j, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m27088o();
        this.f989t.m26787i(AbstractC0317d.EnumC0318a.ON_STOP);
        Parcelable m27053y = this.f988s.m27053y();
        if (m27053y != null) {
            bundle.putParcelable("android:support:fragments", m27053y);
        }
        if (this.f987B.m13645p() > 0) {
            bundle.putInt("android:support:next_request_index", this.f986A);
            int[] iArr = new int[this.f987B.m13645p()];
            String[] strArr = new String[this.f987B.m13645p()];
            for (int i = 0; i < this.f987B.m13645p(); i++) {
                iArr[i] = this.f987B.m13648l(i);
                strArr[i] = this.f987B.m13644t(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f992w = false;
        if (!this.f990u) {
            this.f990u = true;
            this.f988s.m27075c();
        }
        this.f988s.m27056v();
        this.f988s.m27059s();
        this.f989t.m26787i(AbstractC0317d.EnumC0318a.ON_START);
        this.f988s.m27061q();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f992w = true;
        m27088o();
        this.f988s.m27060r();
        this.f989t.m26787i(AbstractC0317d.EnumC0318a.ON_STOP);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (!this.f995z && i != -1) {
            m27092k(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (!this.f994y && i != -1) {
            m27092k(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
