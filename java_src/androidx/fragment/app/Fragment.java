package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.C0323h;
import androidx.lifecycle.C0330m;
import androidx.lifecycle.C0341t;
import androidx.lifecycle.InterfaceC0320e;
import androidx.lifecycle.InterfaceC0322g;
import androidx.lifecycle.InterfaceC0342u;
import androidx.lifecycle.LiveData;
import androidx.savedstate.C0367a;
import androidx.savedstate.InterfaceC0368b;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import p022c0.C1019b;
import p038d0.C3174f;
import p101k0.AbstractC4393a;
import p163r.AbstractC5439a1;
/* loaded from: classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0322g, InterfaceC0342u, InterfaceC0368b {

    /* renamed from: i0 */
    public static final Object f884i0 = new Object();

    /* renamed from: A */
    public boolean f885A;

    /* renamed from: B */
    public int f886B;

    /* renamed from: C */
    public LayoutInflater$Factory2C0264j f887C;

    /* renamed from: D */
    public AbstractC0261h f888D;

    /* renamed from: E */
    public LayoutInflater$Factory2C0264j f889E;

    /* renamed from: F */
    public Fragment f890F;

    /* renamed from: G */
    public int f891G;

    /* renamed from: H */
    public int f892H;

    /* renamed from: I */
    public String f893I;

    /* renamed from: J */
    public boolean f894J;

    /* renamed from: K */
    public boolean f895K;

    /* renamed from: L */
    public boolean f896L;

    /* renamed from: M */
    public boolean f897M;

    /* renamed from: N */
    public boolean f898N;

    /* renamed from: O */
    public boolean f899O;

    /* renamed from: P */
    public boolean f900P;

    /* renamed from: Q */
    public ViewGroup f901Q;

    /* renamed from: R */
    public View f902R;

    /* renamed from: S */
    public View f903S;

    /* renamed from: T */
    public boolean f904T;

    /* renamed from: U */
    public boolean f905U;

    /* renamed from: V */
    public C0246d f906V;

    /* renamed from: W */
    public Runnable f907W;

    /* renamed from: X */
    public boolean f908X;

    /* renamed from: Y */
    public boolean f909Y;

    /* renamed from: Z */
    public float f910Z;

    /* renamed from: a */
    public int f911a;

    /* renamed from: a0 */
    public LayoutInflater f912a0;

    /* renamed from: b */
    public Bundle f913b;

    /* renamed from: b0 */
    public boolean f914b0;

    /* renamed from: c0 */
    public AbstractC0317d.EnumC0319b f915c0;

    /* renamed from: d */
    public SparseArray<Parcelable> f916d;

    /* renamed from: d0 */
    public C0323h f917d0;

    /* renamed from: e0 */
    public C0307w f918e0;

    /* renamed from: f0 */
    public C0330m<InterfaceC0322g> f919f0;

    /* renamed from: g0 */
    public C0367a f920g0;

    /* renamed from: h0 */
    public int f921h0;

    /* renamed from: k */
    public Boolean f922k;

    /* renamed from: p */
    public String f923p;

    /* renamed from: q */
    public Bundle f924q;

    /* renamed from: r */
    public Fragment f925r;

    /* renamed from: s */
    public String f926s;

    /* renamed from: t */
    public int f927t;

    /* renamed from: u */
    public Boolean f928u;

    /* renamed from: v */
    public boolean f929v;

    /* renamed from: w */
    public boolean f930w;

    /* renamed from: x */
    public boolean f931x;

    /* renamed from: y */
    public boolean f932y;

    /* renamed from: z */
    public boolean f933z;

    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes.dex */
    public class RunnableC0243a implements Runnable {
        public RunnableC0243a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes.dex */
    public class RunnableC0244b implements Runnable {
        public RunnableC0244b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m27139e();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$c */
    /* loaded from: classes.dex */
    public class C0245c extends AbstractC0258e {
        public C0245c() {
        }

        @Override // androidx.fragment.app.AbstractC0258e
        /* renamed from: d */
        public boolean mo27048d() {
            return Fragment.this.f902R != null;
        }

        @Override // androidx.fragment.app.AbstractC0258e
        /* renamed from: c */
        public View mo27049c(int i) {
            View view = Fragment.this.f902R;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + this + " does not have a view");
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$e */
    /* loaded from: classes.dex */
    public static class C0247e extends RuntimeException {
        public C0247e(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$f */
    /* loaded from: classes.dex */
    public interface InterfaceC0248f {
        /* renamed from: a */
        void mo26910a();

        /* renamed from: b */
        void mo26909b();
    }

    public Fragment() {
        this.f911a = 0;
        this.f923p = UUID.randomUUID().toString();
        this.f926s = null;
        this.f928u = null;
        this.f889E = new LayoutInflater$Factory2C0264j();
        this.f899O = true;
        this.f905U = true;
        this.f907W = new RunnableC0243a();
        this.f915c0 = AbstractC0317d.EnumC0319b.RESUMED;
        this.f919f0 = new C0330m<>();
        m27128p();
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    /* renamed from: E */
    public void m27162E() {
        this.f900P = false;
        onDetach();
        this.f912a0 = null;
        if (this.f900P) {
            if (!this.f889E.m27026C0()) {
                this.f889E.m27027C();
                this.f889E = new LayoutInflater$Factory2C0264j();
                return;
            }
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onDetach()");
    }

    /* renamed from: U */
    public void m27146U(View view) {
        m27138f().f938a = view;
    }

    /* renamed from: V */
    public void m27145V(Animator animator) {
        m27138f().f939b = animator;
    }

    /* renamed from: W */
    public void m27144W(boolean z) {
        m27138f().f954q = z;
    }

    /* renamed from: a0 */
    public void m27140a0(int i) {
        m27138f().f940c = i;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final ActivityC0256d getActivity() {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h == null) {
            return null;
        }
        return (ActivityC0256d) abstractC0261h.m27047e();
    }

    public final Bundle getArguments() {
        return this.f924q;
    }

    public Context getContext() {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h == null) {
            return null;
        }
        return abstractC0261h.m27046f();
    }

    public final AbstractC0262i getFragmentManager() {
        return this.f887C;
    }

    public final Object getHost() {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h == null) {
            return null;
        }
        return abstractC0261h.mo27042j();
    }

    public final int getId() {
        return this.f891G;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.f912a0;
        return layoutInflater == null ? m27161F(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.InterfaceC0322g
    public AbstractC0317d getLifecycle() {
        return this.f917d0;
    }

    @Deprecated
    public AbstractC4393a getLoaderManager() {
        return AbstractC4393a.m16712b(this);
    }

    public final Fragment getParentFragment() {
        return this.f890F;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.f896L;
    }

    @Override // androidx.savedstate.InterfaceC0368b
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.f920g0.m26710b();
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getTag() {
        return this.f893I;
    }

    public final int getTargetRequestCode() {
        return this.f927t;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.f905U;
    }

    public View getView() {
        return this.f902R;
    }

    public LiveData<InterfaceC0322g> getViewLifecycleOwnerLiveData() {
        return this.f919f0;
    }

    public final boolean hasOptionsMenu() {
        return this.f898N;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final boolean isAdded() {
        return this.f888D != null && this.f929v;
    }

    public final boolean isDetached() {
        return this.f895K;
    }

    public final boolean isHidden() {
        return this.f894J;
    }

    public final boolean isInLayout() {
        return this.f932y;
    }

    public final boolean isMenuVisible() {
        return this.f899O;
    }

    public final boolean isRemoving() {
        return this.f930w;
    }

    public final boolean isResumed() {
        return this.f911a >= 4;
    }

    public void onActivityCreated(Bundle bundle) {
        this.f900P = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onAttach(Context context) {
        this.f900P = true;
        AbstractC0261h abstractC0261h = this.f888D;
        Activity m27047e = abstractC0261h == null ? null : abstractC0261h.m27047e();
        if (m27047e != null) {
            this.f900P = false;
            onAttach(m27047e);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f900P = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.f900P = true;
        m27148S(bundle);
        if (!this.f889E.m27020F0(1)) {
            this.f889E.m27031A();
        }
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public void onDestroy() {
        this.f900P = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.f900P = true;
    }

    public void onDetach() {
        this.f900P = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f900P = true;
        AbstractC0261h abstractC0261h = this.f888D;
        Activity m27047e = abstractC0261h == null ? null : abstractC0261h.m27047e();
        if (m27047e != null) {
            this.f900P = false;
            onInflate(m27047e, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f900P = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.f900P = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.f900P = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.f900P = true;
    }

    public void onStop() {
        this.f900P = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.f900P = true;
    }

    public void postponeEnterTransition() {
        m27138f().f952o = true;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    /* renamed from: s */
    public final boolean m27125s() {
        return this.f886B > 0;
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        m27138f().f951n = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        m27138f().f950m = Boolean.valueOf(z);
    }

    public void setEnterSharedElementCallback(AbstractC5439a1 abstractC5439a1) {
        m27138f().getClass();
    }

    public void setEnterTransition(Object obj) {
        m27138f().f944g = obj;
    }

    public void setExitSharedElementCallback(AbstractC5439a1 abstractC5439a1) {
        m27138f().getClass();
    }

    public void setExitTransition(Object obj) {
        m27138f().f946i = obj;
    }

    public void setReenterTransition(Object obj) {
        m27138f().f947j = obj;
    }

    public void setReturnTransition(Object obj) {
        m27138f().f945h = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        m27138f().f948k = obj;
    }

    public void setSharedElementReturnTransition(Object obj) {
        m27138f().f949l = obj;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h != null) {
            abstractC0261h.mo27034r(this, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* renamed from: u */
    public void m27123u() {
        this.f889E.m26996R0();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    /* renamed from: androidx.fragment.app.Fragment$d */
    /* loaded from: classes.dex */
    public static class C0246d {

        /* renamed from: a */
        public View f938a;

        /* renamed from: b */
        public Animator f939b;

        /* renamed from: c */
        public int f940c;

        /* renamed from: d */
        public int f941d;

        /* renamed from: e */
        public int f942e;

        /* renamed from: f */
        public int f943f;

        /* renamed from: g */
        public Object f944g = null;

        /* renamed from: h */
        public Object f945h;

        /* renamed from: i */
        public Object f946i;

        /* renamed from: j */
        public Object f947j;

        /* renamed from: k */
        public Object f948k;

        /* renamed from: l */
        public Object f949l;

        /* renamed from: m */
        public Boolean f950m;

        /* renamed from: n */
        public Boolean f951n;

        /* renamed from: o */
        public boolean f952o;

        /* renamed from: p */
        public InterfaceC0248f f953p;

        /* renamed from: q */
        public boolean f954q;

        public C0246d() {
            Object obj = Fragment.f884i0;
            this.f945h = obj;
            this.f946i = null;
            this.f947j = obj;
            this.f948k = null;
            this.f949l = obj;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.fragment.app.Fragment$g */
    /* loaded from: classes.dex */
    public static class C0249g implements Parcelable {
        public static final Parcelable.Creator<C0249g> CREATOR = new C0250a();

        /* renamed from: a */
        public final Bundle f955a;

        /* renamed from: androidx.fragment.app.Fragment$g$a */
        /* loaded from: classes.dex */
        public static class C0250a implements Parcelable.ClassLoaderCreator<C0249g> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public C0249g createFromParcel(Parcel parcel) {
                return new C0249g(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public C0249g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0249g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public C0249g[] newArray(int i) {
                return new C0249g[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f955a);
        }

        public C0249g(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.f955a = readBundle;
            if (classLoader != null && readBundle != null) {
                readBundle.setClassLoader(classLoader);
            }
        }
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment newInstance = C0260g.m27050d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.setArguments(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new C0247e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new C0247e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new C0247e("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new C0247e("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* renamed from: A */
    public boolean m27166A(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.f894J) {
            return false;
        }
        if (this.f898N && this.f899O) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        return z | this.f889E.m27029B(menu, menuInflater);
    }

    /* renamed from: B */
    public void m27165B(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f889E.m26996R0();
        this.f885A = true;
        this.f918e0 = new C0307w();
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.f902R = onCreateView;
        if (onCreateView != null) {
            this.f918e0.m26823c();
            this.f919f0.mo16701l(this.f918e0);
        } else if (!this.f918e0.m26822d()) {
            this.f918e0 = null;
        } else {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    /* renamed from: C */
    public void m27164C() {
        this.f889E.m27027C();
        this.f917d0.m26787i(AbstractC0317d.EnumC0318a.ON_DESTROY);
        this.f911a = 0;
        this.f900P = false;
        this.f914b0 = false;
        onDestroy();
        if (this.f900P) {
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* renamed from: D */
    public void m27163D() {
        this.f889E.m27025D();
        if (this.f902R != null) {
            this.f918e0.m26824a(AbstractC0317d.EnumC0318a.ON_DESTROY);
        }
        this.f911a = 1;
        this.f900P = false;
        onDestroyView();
        if (this.f900P) {
            AbstractC4393a.m16712b(this).mo16706d();
            this.f885A = false;
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    /* renamed from: I */
    public boolean m27158I(MenuItem menuItem) {
        if (!this.f894J) {
            if ((this.f898N && this.f899O && onOptionsItemSelected(menuItem)) || this.f889E.m26991U(menuItem)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: J */
    public void m27157J(Menu menu) {
        if (!this.f894J) {
            if (this.f898N && this.f899O) {
                onOptionsMenuClosed(menu);
            }
            this.f889E.m26989V(menu);
        }
    }

    /* renamed from: K */
    public void m27156K() {
        this.f889E.m26985X();
        if (this.f902R != null) {
            this.f918e0.m26824a(AbstractC0317d.EnumC0318a.ON_PAUSE);
        }
        this.f917d0.m26787i(AbstractC0317d.EnumC0318a.ON_PAUSE);
        this.f911a = 3;
        this.f900P = false;
        onPause();
        if (this.f900P) {
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onPause()");
    }

    /* renamed from: M */
    public boolean m27154M(Menu menu) {
        boolean z = false;
        if (this.f894J) {
            return false;
        }
        if (this.f898N && this.f899O) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        return z | this.f889E.m26981Z(menu);
    }

    /* renamed from: N */
    public void m27153N() {
        boolean m27022E0 = this.f887C.m27022E0(this);
        Boolean bool = this.f928u;
        if (bool == null || bool.booleanValue() != m27022E0) {
            this.f928u = Boolean.valueOf(m27022E0);
            onPrimaryNavigationFragmentChanged(m27022E0);
            this.f889E.m26978a0();
        }
    }

    /* renamed from: O */
    public void m27152O() {
        this.f889E.m26996R0();
        this.f889E.m26949k0();
        this.f911a = 4;
        this.f900P = false;
        onResume();
        if (this.f900P) {
            C0323h c0323h = this.f917d0;
            AbstractC0317d.EnumC0318a enumC0318a = AbstractC0317d.EnumC0318a.ON_RESUME;
            c0323h.m26787i(enumC0318a);
            if (this.f902R != null) {
                this.f918e0.m26824a(enumC0318a);
            }
            this.f889E.m26975b0();
            this.f889E.m26949k0();
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onResume()");
    }

    /* renamed from: Q */
    public void m27150Q() {
        this.f889E.m26996R0();
        this.f889E.m26949k0();
        this.f911a = 3;
        this.f900P = false;
        onStart();
        if (this.f900P) {
            C0323h c0323h = this.f917d0;
            AbstractC0317d.EnumC0318a enumC0318a = AbstractC0317d.EnumC0318a.ON_START;
            c0323h.m26787i(enumC0318a);
            if (this.f902R != null) {
                this.f918e0.m26824a(enumC0318a);
            }
            this.f889E.m26972c0();
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onStart()");
    }

    /* renamed from: R */
    public void m27149R() {
        this.f889E.m26966e0();
        if (this.f902R != null) {
            this.f918e0.m26824a(AbstractC0317d.EnumC0318a.ON_STOP);
        }
        this.f917d0.m26787i(AbstractC0317d.EnumC0318a.ON_STOP);
        this.f911a = 2;
        this.f900P = false;
        onStop();
        if (this.f900P) {
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onStop()");
    }

    /* renamed from: S */
    public void m27148S(Bundle bundle) {
        Parcelable parcelable;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.f889E.m26974b1(parcelable);
            this.f889E.m27031A();
        }
    }

    /* renamed from: T */
    public final void m27147T(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f916d;
        if (sparseArray != null) {
            this.f903S.restoreHierarchyState(sparseArray);
            this.f916d = null;
        }
        this.f900P = false;
        onViewStateRestored(bundle);
        if (this.f900P) {
            if (this.f902R != null) {
                this.f918e0.m26824a(AbstractC0317d.EnumC0318a.ON_CREATE);
                return;
            }
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }

    /* renamed from: X */
    public void m27143X(int i) {
        if (this.f906V == null && i == 0) {
            return;
        }
        m27138f().f941d = i;
    }

    /* renamed from: Y */
    public void m27142Y(int i, int i2) {
        if (this.f906V == null && i == 0 && i2 == 0) {
            return;
        }
        m27138f();
        C0246d c0246d = this.f906V;
        c0246d.f942e = i;
        c0246d.f943f = i2;
    }

    /* renamed from: e */
    public void m27139e() {
        C0246d c0246d = this.f906V;
        InterfaceC0248f interfaceC0248f = null;
        if (c0246d != null) {
            c0246d.f952o = false;
            InterfaceC0248f interfaceC0248f2 = c0246d.f953p;
            c0246d.f953p = null;
            interfaceC0248f = interfaceC0248f2;
        }
        if (interfaceC0248f != null) {
            interfaceC0248f.mo26909b();
        }
    }

    /* renamed from: f */
    public final C0246d m27138f() {
        if (this.f906V == null) {
            this.f906V = new C0246d();
        }
        return this.f906V;
    }

    /* renamed from: g */
    public Fragment m27137g(String str) {
        if (str.equals(this.f923p)) {
            return this;
        }
        return this.f889E.m26934p0(str);
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        C0246d c0246d = this.f906V;
        if (c0246d != null && (bool = c0246d.f951n) != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        C0246d c0246d = this.f906V;
        if (c0246d != null && (bool = c0246d.f950m) != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final AbstractC0262i getChildFragmentManager() {
        if (this.f888D != null) {
            return this.f889E;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public Object getEnterTransition() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        return c0246d.f944g;
    }

    public Object getExitTransition() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        return c0246d.f946i;
    }

    public Object getReenterTransition() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        Object obj = c0246d.f947j;
        if (obj == f884i0) {
            return getExitTransition();
        }
        return obj;
    }

    public Object getReturnTransition() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        Object obj = c0246d.f945h;
        if (obj == f884i0) {
            return getEnterTransition();
        }
        return obj;
    }

    public Object getSharedElementEnterTransition() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        return c0246d.f948k;
    }

    public Object getSharedElementReturnTransition() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        Object obj = c0246d.f949l;
        if (obj == f884i0) {
            return getSharedElementEnterTransition();
        }
        return obj;
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.f925r;
        if (fragment != null) {
            return fragment;
        }
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f887C;
        if (layoutInflater$Factory2C0264j != null && (str = this.f926s) != null) {
            return layoutInflater$Factory2C0264j.f1031r.get(str);
        }
        return null;
    }

    public InterfaceC0322g getViewLifecycleOwner() {
        C0307w c0307w = this.f918e0;
        if (c0307w != null) {
            return c0307w;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    @Override // androidx.lifecycle.InterfaceC0342u
    public C0341t getViewModelStore() {
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f887C;
        if (layoutInflater$Factory2C0264j != null) {
            return layoutInflater$Factory2C0264j.m26914z0(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    /* renamed from: h */
    public View m27136h() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        return c0246d.f938a;
    }

    /* renamed from: i */
    public Animator m27135i() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        return c0246d.f939b;
    }

    public final boolean isStateSaved() {
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f887C;
        if (layoutInflater$Factory2C0264j == null) {
            return false;
        }
        return layoutInflater$Factory2C0264j.m27018G0();
    }

    /* renamed from: j */
    public AbstractC5439a1 m27134j() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        c0246d.getClass();
        return null;
    }

    /* renamed from: k */
    public AbstractC5439a1 m27133k() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return null;
        }
        c0246d.getClass();
        return null;
    }

    /* renamed from: l */
    public int m27132l() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return 0;
        }
        return c0246d.f941d;
    }

    /* renamed from: m */
    public int m27131m() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return 0;
        }
        return c0246d.f942e;
    }

    /* renamed from: n */
    public int m27130n() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return 0;
        }
        return c0246d.f943f;
    }

    /* renamed from: o */
    public int m27129o() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return 0;
        }
        return c0246d.f940c;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.f921h0;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    /* renamed from: p */
    public final void m27128p() {
        this.f917d0 = new C0323h(this);
        this.f920g0 = C0367a.m26711a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f917d0.mo26795a(new InterfaceC0320e() { // from class: androidx.fragment.app.Fragment.2
                @Override // androidx.lifecycle.InterfaceC0320e
                /* renamed from: c */
                public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
                    View view;
                    if (enumC0318a == AbstractC0317d.EnumC0318a.ON_STOP && (view = Fragment.this.f902R) != null) {
                        view.cancelPendingInputEvents();
                    }
                }
            });
        }
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        Handler handler;
        m27138f().f952o = true;
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f887C;
        if (layoutInflater$Factory2C0264j != null) {
            handler = layoutInflater$Factory2C0264j.f1010B.m27045g();
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.removeCallbacks(this.f907W);
        handler.postDelayed(this.f907W, timeUnit.toMillis(j));
    }

    /* renamed from: r */
    public boolean m27126r() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return false;
        }
        return c0246d.f954q;
    }

    public final void requestPermissions(String[] strArr, int i) {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h != null) {
            abstractC0261h.mo27038n(this, strArr, i);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void setArguments(Bundle bundle) {
        if (this.f887C != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f924q = bundle;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.f898N != z) {
            this.f898N = z;
            if (isAdded() && !isHidden()) {
                this.f888D.mo27033s();
            }
        }
    }

    public void setInitialSavedState(C0249g c0249g) {
        if (this.f887C == null) {
            this.f913b = (c0249g == null || (r2 = c0249g.f955a) == null) ? null : null;
            return;
        }
        throw new IllegalStateException("Fragment already added");
    }

    public void setMenuVisibility(boolean z) {
        if (this.f899O != z) {
            this.f899O = z;
            if (this.f898N && isAdded() && !isHidden()) {
                this.f888D.mo27033s();
            }
        }
    }

    public void setRetainInstance(boolean z) {
        this.f896L = z;
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f887C;
        if (layoutInflater$Factory2C0264j != null) {
            if (z) {
                layoutInflater$Factory2C0264j.m26947l(this);
                return;
            } else {
                layoutInflater$Factory2C0264j.m26980Z0(this);
                return;
            }
        }
        this.f897M = true;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        boolean z2;
        if (!this.f905U && z && this.f911a < 3 && this.f887C != null && isAdded() && this.f914b0) {
            this.f887C.m26994S0(this);
        }
        this.f905U = z;
        if (this.f911a < 3 && !z) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f904T = z2;
        if (this.f913b != null) {
            this.f922k = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h != null) {
            return abstractC0261h.mo27036p(str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h != null) {
            abstractC0261h.mo27035q(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h != null) {
            abstractC0261h.mo27035q(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startPostponedEnterTransition() {
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f887C;
        if (layoutInflater$Factory2C0264j != null && layoutInflater$Factory2C0264j.f1010B != null) {
            if (Looper.myLooper() != this.f887C.f1010B.m27045g().getLooper()) {
                this.f887C.f1010B.m27045g().postAtFrontOfQueue(new RunnableC0244b());
                return;
            } else {
                m27139e();
                return;
            }
        }
        m27138f().f952o = false;
    }

    /* renamed from: t */
    public boolean m27124t() {
        C0246d c0246d = this.f906V;
        if (c0246d == null) {
            return false;
        }
        return c0246d.f952o;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        C1019b.m24816a(this, sb);
        sb.append(" (");
        sb.append(this.f923p);
        sb.append(")");
        if (this.f891G != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f891G));
        }
        if (this.f893I != null) {
            sb.append(" ");
            sb.append(this.f893I);
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: v */
    public void m27122v(Bundle bundle) {
        this.f889E.m26996R0();
        this.f911a = 2;
        this.f900P = false;
        onActivityCreated(bundle);
        if (this.f900P) {
            this.f889E.m26919x();
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    /* renamed from: w */
    public void m27121w() {
        this.f889E.m26938o(this.f888D, new C0245c(), this);
        this.f900P = false;
        onAttach(this.f888D.m27046f());
        if (this.f900P) {
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onAttach()");
    }

    /* renamed from: y */
    public boolean m27119y(MenuItem menuItem) {
        if (!this.f894J) {
            if (onContextItemSelected(menuItem) || this.f889E.m26915z(menuItem)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: z */
    public void m27118z(Bundle bundle) {
        this.f889E.m26996R0();
        this.f911a = 1;
        this.f900P = false;
        this.f920g0.m26709c(bundle);
        onCreate(bundle);
        this.f914b0 = true;
        if (this.f900P) {
            this.f917d0.m26787i(AbstractC0317d.EnumC0318a.ON_CREATE);
            return;
        }
        throw new C0308x("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* renamed from: F */
    public LayoutInflater m27161F(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.f912a0 = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    /* renamed from: G */
    public void m27160G() {
        onLowMemory();
        this.f889E.m27023E();
    }

    /* renamed from: H */
    public void m27159H(boolean z) {
        onMultiWindowModeChanged(z);
        this.f889E.m27021F(z);
    }

    /* renamed from: L */
    public void m27155L(boolean z) {
        onPictureInPictureModeChanged(z);
        this.f889E.m26983Y(z);
    }

    /* renamed from: P */
    public void m27151P(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.f920g0.m26708d(bundle);
        Parcelable m26968d1 = this.f889E.m26968d1();
        if (m26968d1 != null) {
            bundle.putParcelable("android:support:fragments", m26968d1);
        }
    }

    /* renamed from: Z */
    public void m27141Z(InterfaceC0248f interfaceC0248f) {
        m27138f();
        C0246d c0246d = this.f906V;
        InterfaceC0248f interfaceC0248f2 = c0246d.f953p;
        if (interfaceC0248f == interfaceC0248f2) {
            return;
        }
        if (interfaceC0248f != null && interfaceC0248f2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (c0246d.f952o) {
            c0246d.f953p = interfaceC0248f;
        }
        if (interfaceC0248f != null) {
            interfaceC0248f.mo26910a();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f891G));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f892H));
        printWriter.print(" mTag=");
        printWriter.println(this.f893I);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f911a);
        printWriter.print(" mWho=");
        printWriter.print(this.f923p);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f886B);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f929v);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f930w);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f931x);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f932y);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f894J);
        printWriter.print(" mDetached=");
        printWriter.print(this.f895K);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f899O);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f898N);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f896L);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f905U);
        if (this.f887C != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f887C);
        }
        if (this.f888D != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f888D);
        }
        if (this.f890F != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f890F);
        }
        if (this.f924q != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f924q);
        }
        if (this.f913b != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f913b);
        }
        if (this.f916d != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f916d);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f927t);
        }
        if (m27132l() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(m27132l());
        }
        if (this.f901Q != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f901Q);
        }
        if (this.f902R != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f902R);
        }
        if (this.f903S != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.f902R);
        }
        if (m27136h() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(m27136h());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(m27129o());
        }
        if (getContext() != null) {
            AbstractC4393a.m16712b(this).mo16708a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f889E + ":");
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f889E;
        layoutInflater$Factory2C0264j.mo26976b(str + "  ", fileDescriptor, printWriter, strArr);
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        AbstractC0261h abstractC0261h = this.f888D;
        if (abstractC0261h != null) {
            LayoutInflater mo27041k = abstractC0261h.mo27041k();
            C3174f.m19449b(mo27041k, this.f889E.m26918x0());
            return mo27041k;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    public final boolean isVisible() {
        View view;
        if (isAdded() && !isHidden() && (view = this.f902R) != null && view.getWindowToken() != null && this.f902R.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    /* renamed from: q */
    public void m27127q() {
        m27128p();
        this.f923p = UUID.randomUUID().toString();
        this.f929v = false;
        this.f930w = false;
        this.f931x = false;
        this.f932y = false;
        this.f933z = false;
        this.f886B = 0;
        this.f887C = null;
        this.f889E = new LayoutInflater$Factory2C0264j();
        this.f888D = null;
        this.f891G = 0;
        this.f892H = 0;
        this.f893I = null;
        this.f894J = false;
        this.f895K = false;
    }

    public final ActivityC0256d requireActivity() {
        ActivityC0256d activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final AbstractC0262i requireFragmentManager() {
        AbstractC0262i fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            if (getContext() == null) {
                throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
            }
            throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
        }
        return parentFragment;
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public void setTargetFragment(Fragment fragment, int i) {
        AbstractC0262i abstractC0262i;
        AbstractC0262i fragmentManager = getFragmentManager();
        if (fragment != null) {
            abstractC0262i = fragment.getFragmentManager();
        } else {
            abstractC0262i = null;
        }
        if (fragmentManager != null && abstractC0262i != null && fragmentManager != abstractC0262i) {
            throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment()) {
            if (fragment2 == this) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.f926s = null;
            this.f925r = null;
        } else if (this.f887C != null && fragment.f887C != null) {
            this.f926s = fragment.f923p;
            this.f925r = null;
        } else {
            this.f926s = null;
            this.f925r = fragment;
        }
        this.f927t = i;
    }

    /* renamed from: x */
    public void m27120x(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.f889E.m26917y(configuration);
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.f900P = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f900P = true;
    }

    public Fragment(int i) {
        this();
        this.f921h0 = i;
    }
}
