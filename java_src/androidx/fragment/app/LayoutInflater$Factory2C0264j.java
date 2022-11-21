package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.AbstractC0133d;
import androidx.activity.InterfaceC0134e;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.AbstractC0262i;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.C0341t;
import androidx.lifecycle.InterfaceC0322g;
import androidx.lifecycle.InterfaceC0342u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p022c0.C1019b;
import p022c0.C1020c;
import p038d0.ViewTreeObserver$OnPreDrawListenerC3262y;
import p145p.C5272b;
/* renamed from: androidx.fragment.app.j */
/* loaded from: classes.dex */
public final class LayoutInflater$Factory2C0264j extends AbstractC0262i implements LayoutInflater.Factory2 {

    /* renamed from: S */
    public static boolean f1006S = false;

    /* renamed from: T */
    public static final Interpolator f1007T = new DecelerateInterpolator(2.5f);

    /* renamed from: U */
    public static final Interpolator f1008U = new DecelerateInterpolator(1.5f);

    /* renamed from: B */
    public AbstractC0261h f1010B;

    /* renamed from: C */
    public AbstractC0258e f1011C;

    /* renamed from: D */
    public Fragment f1012D;

    /* renamed from: E */
    public Fragment f1013E;

    /* renamed from: F */
    public boolean f1014F;

    /* renamed from: G */
    public boolean f1015G;

    /* renamed from: H */
    public boolean f1016H;

    /* renamed from: I */
    public boolean f1017I;

    /* renamed from: J */
    public boolean f1018J;

    /* renamed from: K */
    public ArrayList<C0251a> f1019K;

    /* renamed from: L */
    public ArrayList<Boolean> f1020L;

    /* renamed from: M */
    public ArrayList<Fragment> f1021M;

    /* renamed from: P */
    public ArrayList<C0278m> f1024P;

    /* renamed from: Q */
    public C0281l f1025Q;

    /* renamed from: d */
    public ArrayList<InterfaceC0276k> f1027d;

    /* renamed from: k */
    public boolean f1028k;

    /* renamed from: s */
    public ArrayList<C0251a> f1032s;

    /* renamed from: t */
    public ArrayList<Fragment> f1033t;

    /* renamed from: u */
    public OnBackPressedDispatcher f1034u;

    /* renamed from: w */
    public ArrayList<C0251a> f1036w;

    /* renamed from: x */
    public ArrayList<Integer> f1037x;

    /* renamed from: y */
    public ArrayList<AbstractC0262i.InterfaceC0263a> f1038y;

    /* renamed from: p */
    public int f1029p = 0;

    /* renamed from: q */
    public final ArrayList<Fragment> f1030q = new ArrayList<>();

    /* renamed from: r */
    public final HashMap<String, Fragment> f1031r = new HashMap<>();

    /* renamed from: v */
    public final AbstractC0133d f1035v = new C0265a(false);

    /* renamed from: z */
    public final CopyOnWriteArrayList<C0274i> f1039z = new CopyOnWriteArrayList<>();

    /* renamed from: A */
    public int f1009A = 0;

    /* renamed from: N */
    public Bundle f1022N = null;

    /* renamed from: O */
    public SparseArray<Parcelable> f1023O = null;

    /* renamed from: R */
    public Runnable f1026R = new RunnableC0266b();

    /* renamed from: androidx.fragment.app.j$a */
    /* loaded from: classes.dex */
    public class C0265a extends AbstractC0133d {
        public C0265a(boolean z) {
            super(z);
        }

        @Override // androidx.activity.AbstractC0133d
        /* renamed from: b */
        public void mo26913b() {
            LayoutInflater$Factory2C0264j.this.m27030A0();
        }
    }

    /* renamed from: androidx.fragment.app.j$b */
    /* loaded from: classes.dex */
    public class RunnableC0266b implements Runnable {
        public RunnableC0266b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C0264j.this.m26949k0();
        }
    }

    /* renamed from: androidx.fragment.app.j$c  reason: invalid class name */
    /* loaded from: classes.dex */
    public class animationAnimation$AnimationListenerC0267c implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f1042a;

        /* renamed from: b */
        public final /* synthetic */ Fragment f1043b;

        /* renamed from: androidx.fragment.app.j$c$a */
        /* loaded from: classes.dex */
        public class RunnableC0268a implements Runnable {
            public RunnableC0268a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (animationAnimation$AnimationListenerC0267c.this.f1043b.m27136h() != null) {
                    animationAnimation$AnimationListenerC0267c.this.f1043b.m27146U(null);
                    animationAnimation$AnimationListenerC0267c animationanimation_animationlistenerc0267c = animationAnimation$AnimationListenerC0267c.this;
                    LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = LayoutInflater$Factory2C0264j.this;
                    Fragment fragment = animationanimation_animationlistenerc0267c.f1043b;
                    layoutInflater$Factory2C0264j.m26998Q0(fragment, fragment.m27129o(), 0, 0, false);
                }
            }
        }

        public animationAnimation$AnimationListenerC0267c(ViewGroup viewGroup, Fragment fragment) {
            this.f1042a = viewGroup;
            this.f1043b = fragment;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f1042a.post(new RunnableC0268a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.fragment.app.j$d */
    /* loaded from: classes.dex */
    public class C0269d extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f1046a;

        /* renamed from: b */
        public final /* synthetic */ View f1047b;

        /* renamed from: c */
        public final /* synthetic */ Fragment f1048c;

        public C0269d(ViewGroup viewGroup, View view, Fragment fragment) {
            this.f1046a = viewGroup;
            this.f1047b = view;
            this.f1048c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1046a.endViewTransition(this.f1047b);
            Animator m27135i = this.f1048c.m27135i();
            this.f1048c.m27145V(null);
            if (m27135i != null && this.f1046a.indexOfChild(this.f1047b) < 0) {
                LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = LayoutInflater$Factory2C0264j.this;
                Fragment fragment = this.f1048c;
                layoutInflater$Factory2C0264j.m26998Q0(fragment, fragment.m27129o(), 0, 0, false);
            }
        }
    }

    /* renamed from: androidx.fragment.app.j$e */
    /* loaded from: classes.dex */
    public class C0270e extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f1050a;

        /* renamed from: b */
        public final /* synthetic */ View f1051b;

        /* renamed from: c */
        public final /* synthetic */ Fragment f1052c;

        public C0270e(ViewGroup viewGroup, View view, Fragment fragment) {
            this.f1050a = viewGroup;
            this.f1051b = view;
            this.f1052c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1050a.endViewTransition(this.f1051b);
            animator.removeListener(this);
            Fragment fragment = this.f1052c;
            View view = fragment.f902R;
            if (view != null && fragment.f894J) {
                view.setVisibility(8);
            }
        }
    }

    /* renamed from: androidx.fragment.app.j$f */
    /* loaded from: classes.dex */
    public class C0271f extends C0260g {
        public C0271f() {
        }

        @Override // androidx.fragment.app.C0260g
        /* renamed from: a */
        public Fragment mo26912a(ClassLoader classLoader, String str) {
            AbstractC0261h abstractC0261h = LayoutInflater$Factory2C0264j.this.f1010B;
            return abstractC0261h.m27078a(abstractC0261h.m27046f(), str, null);
        }
    }

    /* renamed from: androidx.fragment.app.j$h */
    /* loaded from: classes.dex */
    public static class RunnableC0273h extends AnimationSet implements Runnable {

        /* renamed from: a */
        public final ViewGroup f1057a;

        /* renamed from: b */
        public final View f1058b;

        /* renamed from: d */
        public boolean f1059d;

        /* renamed from: k */
        public boolean f1060k;

        /* renamed from: p */
        public boolean f1061p;

        public RunnableC0273h(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f1061p = true;
            this.f1057a = viewGroup;
            this.f1058b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f1061p = true;
            if (this.f1059d) {
                return !this.f1060k;
            }
            if (!super.getTransformation(j, transformation)) {
                this.f1059d = true;
                ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(this.f1057a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f1059d && this.f1061p) {
                this.f1061p = false;
                this.f1057a.post(this);
                return;
            }
            this.f1057a.endViewTransition(this.f1058b);
            this.f1060k = true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f1061p = true;
            if (this.f1059d) {
                return !this.f1060k;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.f1059d = true;
                ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(this.f1057a, this);
            }
            return true;
        }
    }

    /* renamed from: androidx.fragment.app.j$i */
    /* loaded from: classes.dex */
    public static final class C0274i {

        /* renamed from: a */
        public final boolean f1062a;
    }

    /* renamed from: androidx.fragment.app.j$j */
    /* loaded from: classes.dex */
    public static class C0275j {

        /* renamed from: a */
        public static final int[] f1063a = {16842755, 16842960, 16842961};
    }

    /* renamed from: androidx.fragment.app.j$k */
    /* loaded from: classes.dex */
    public interface InterfaceC0276k {
        /* renamed from: a */
        boolean mo26911a(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.j$l */
    /* loaded from: classes.dex */
    public class C0277l implements InterfaceC0276k {

        /* renamed from: a */
        public final String f1064a;

        /* renamed from: b */
        public final int f1065b;

        /* renamed from: c */
        public final int f1066c;

        public C0277l(String str, int i, int i2) {
            this.f1064a = str;
            this.f1065b = i;
            this.f1066c = i2;
        }

        @Override // androidx.fragment.app.LayoutInflater$Factory2C0264j.InterfaceC0276k
        /* renamed from: a */
        public boolean mo26911a(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = LayoutInflater$Factory2C0264j.this.f1013E;
            if (fragment != null && this.f1065b < 0 && this.f1064a == null && fragment.getChildFragmentManager().mo26961g()) {
                return false;
            }
            return LayoutInflater$Factory2C0264j.this.m26990U0(arrayList, arrayList2, this.f1064a, this.f1065b, this.f1066c);
        }
    }

    /* renamed from: androidx.fragment.app.j$m */
    /* loaded from: classes.dex */
    public static class C0278m implements Fragment.InterfaceC0248f {

        /* renamed from: a */
        public final boolean f1068a;

        /* renamed from: b */
        public final C0251a f1069b;

        /* renamed from: c */
        public int f1070c;

        @Override // androidx.fragment.app.Fragment.InterfaceC0248f
        /* renamed from: a */
        public void mo26910a() {
            this.f1070c++;
        }

        /* renamed from: c */
        public void m26908c() {
            C0251a c0251a = this.f1069b;
            c0251a.f956s.m26925u(c0251a, this.f1068a, false, false);
        }

        /* renamed from: e */
        public boolean m26906e() {
            return this.f1070c == 0;
        }

        @Override // androidx.fragment.app.Fragment.InterfaceC0248f
        /* renamed from: b */
        public void mo26909b() {
            int i = this.f1070c - 1;
            this.f1070c = i;
            if (i != 0) {
                return;
            }
            this.f1069b.f956s.m26959g1();
        }

        /* renamed from: d */
        public void m26907d() {
            boolean z;
            if (this.f1070c > 0) {
                z = true;
            } else {
                z = false;
            }
            LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = this.f1069b.f956s;
            int size = layoutInflater$Factory2C0264j.f1030q.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = layoutInflater$Factory2C0264j.f1030q.get(i);
                fragment.m27141Z(null);
                if (z && fragment.m27124t()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            C0251a c0251a = this.f1069b;
            c0251a.f956s.m26925u(c0251a, this.f1068a, !z, true);
        }

        public C0278m(C0251a c0251a, boolean z) {
            this.f1068a = z;
            this.f1069b = c0251a;
        }
    }

    /* renamed from: c1 */
    public static int m26971c1(int i) {
        if (i != 4097) {
            if (i != 4099) {
                return i != 8194 ? 0 : 4097;
            }
            return 4099;
        }
        return 8194;
    }

    /* renamed from: n1 */
    public static int m26939n1(int i, boolean z) {
        if (i == 4097) {
            return z ? 1 : 2;
        } else if (i == 4099) {
            return z ? 5 : 6;
        } else if (i != 8194) {
            return -1;
        } else {
            return z ? 3 : 4;
        }
    }

    /* renamed from: A */
    public void m27031A() {
        this.f1015G = false;
        this.f1016H = false;
        m26969d0(1);
    }

    /* renamed from: C */
    public void m27027C() {
        this.f1017I = true;
        m26949k0();
        m26969d0(0);
        this.f1010B = null;
        this.f1011C = null;
        this.f1012D = null;
        if (this.f1034u != null) {
            this.f1035v.m27619d();
            this.f1034u = null;
        }
    }

    /* renamed from: C0 */
    public boolean m27026C0() {
        return this.f1017I;
    }

    /* renamed from: D */
    public void m27025D() {
        m26969d0(1);
    }

    /* renamed from: D0 */
    public final boolean m27024D0(Fragment fragment) {
        return (fragment.f898N && fragment.f899O) || fragment.f889E.m26931r();
    }

    /* renamed from: E */
    public void m27023E() {
        for (int i = 0; i < this.f1030q.size(); i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null) {
                fragment.m27160G();
            }
        }
    }

    /* renamed from: E0 */
    public boolean m27022E0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j = fragment.f887C;
        return fragment == layoutInflater$Factory2C0264j.m26916y0() && m27022E0(layoutInflater$Factory2C0264j.f1012D);
    }

    /* renamed from: F0 */
    public boolean m27020F0(int i) {
        return this.f1009A >= i;
    }

    /* renamed from: G0 */
    public boolean m27018G0() {
        return this.f1015G || this.f1016H;
    }

    /* renamed from: P0 */
    public void m27000P0(Fragment fragment) {
        m26998Q0(fragment, this.f1009A, 0, 0, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0084, code lost:
        if (r0 != 3) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04d9  */
    /* JADX WARN: Removed duplicated region for block: B:272:? A[RETURN, SYNTHETIC] */
    /* renamed from: Q0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m26998Q0(androidx.fragment.app.Fragment r19, int r20, int r21, int r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 1282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m26998Q0(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    /* renamed from: R0 */
    public void m26996R0() {
        this.f1015G = false;
        this.f1016H = false;
        int size = this.f1030q.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null) {
                fragment.m27123u();
            }
        }
    }

    /* renamed from: X */
    public void m26985X() {
        m26969d0(3);
    }

    @Override // androidx.fragment.app.AbstractC0262i
    /* renamed from: a */
    public AbstractC0285n mo26979a() {
        return new C0251a(this);
    }

    /* renamed from: b0 */
    public void m26975b0() {
        this.f1015G = false;
        this.f1016H = false;
        m26969d0(4);
    }

    /* renamed from: c0 */
    public void m26972c0() {
        this.f1015G = false;
        this.f1016H = false;
        m26969d0(3);
    }

    /* renamed from: d0 */
    public final void m26969d0(int i) {
        try {
            this.f1028k = true;
            m27002O0(i, false);
            this.f1028k = false;
            m26949k0();
        } catch (Throwable th) {
            this.f1028k = false;
            throw th;
        }
    }

    /* renamed from: e0 */
    public void m26966e0() {
        this.f1016H = true;
        m26969d0(2);
    }

    /* renamed from: g1 */
    public void m26959g1() {
        boolean z;
        synchronized (this) {
            ArrayList<C0278m> arrayList = this.f1024P;
            boolean z2 = false;
            if (arrayList != null && !arrayList.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
            ArrayList<InterfaceC0276k> arrayList2 = this.f1027d;
            if (arrayList2 != null && arrayList2.size() == 1) {
                z2 = true;
            }
            if (z || z2) {
                this.f1010B.m27045g().removeCallbacks(this.f1026R);
                this.f1010B.m27045g().post(this.f1026R);
                m26936o1();
            }
        }
    }

    /* renamed from: h1 */
    public void m26957h1(int i, C0251a c0251a) {
        synchronized (this) {
            if (this.f1036w == null) {
                this.f1036w = new ArrayList<>();
            }
            int size = this.f1036w.size();
            if (i < size) {
                if (f1006S) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + c0251a);
                }
                this.f1036w.set(i, c0251a);
            } else {
                while (size < i) {
                    this.f1036w.add(null);
                    if (this.f1037x == null) {
                        this.f1037x = new ArrayList<>();
                    }
                    if (f1006S) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.f1037x.add(Integer.valueOf(size));
                    size++;
                }
                if (f1006S) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + c0251a);
                }
                this.f1036w.add(c0251a);
            }
        }
    }

    /* renamed from: k0 */
    public boolean m26949k0() {
        m26955i0(true);
        boolean z = false;
        while (m26926t0(this.f1019K, this.f1020L)) {
            this.f1028k = true;
            try {
                m26982Y0(this.f1019K, this.f1020L);
                m26927t();
                z = true;
            } catch (Throwable th) {
                m26927t();
                throw th;
            }
        }
        m26936o1();
        m26963f0();
        m26933q();
        return z;
    }

    /* renamed from: m */
    public int m26944m(C0251a c0251a) {
        synchronized (this) {
            ArrayList<Integer> arrayList = this.f1037x;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList<Integer> arrayList2 = this.f1037x;
                int intValue = arrayList2.remove(arrayList2.size() - 1).intValue();
                if (f1006S) {
                    Log.v("FragmentManager", "Adding back stack index " + intValue + " with " + c0251a);
                }
                this.f1036w.set(intValue, c0251a);
                return intValue;
            }
            if (this.f1036w == null) {
                this.f1036w = new ArrayList<>();
            }
            int size = this.f1036w.size();
            if (f1006S) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + c0251a);
            }
            this.f1036w.add(c0251a);
            return size;
        }
    }

    /* renamed from: m0 */
    public final void m26943m0(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        int i4;
        int i5 = i;
        boolean z = arrayList.get(i5).f1113q;
        ArrayList<Fragment> arrayList3 = this.f1021M;
        if (arrayList3 == null) {
            this.f1021M = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f1021M.addAll(this.f1030q);
        Fragment m26916y0 = m26916y0();
        boolean z2 = false;
        for (int i6 = i5; i6 < i2; i6++) {
            C0251a c0251a = arrayList.get(i6);
            if (!arrayList2.get(i6).booleanValue()) {
                m26916y0 = c0251a.m27108n(this.f1021M, m26916y0);
            } else {
                m26916y0 = c0251a.m27100v(this.f1021M, m26916y0);
            }
            if (!z2 && !c0251a.f1104h) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        this.f1021M.clear();
        if (!z) {
            C0287o.m26884B(this, arrayList, arrayList2, i, i2, false);
        }
        m26946l0(arrayList, arrayList2, i, i2);
        if (z) {
            C5272b<Fragment> c5272b = new C5272b<>();
            m26956i(c5272b);
            int m26988V0 = m26988V0(arrayList, arrayList2, i, i2, c5272b);
            m27006M0(c5272b);
            i3 = m26988V0;
        } else {
            i3 = i2;
        }
        if (i3 != i5 && z) {
            C0287o.m26884B(this, arrayList, arrayList2, i, i3, true);
            m27002O0(this.f1009A, true);
        }
        while (i5 < i2) {
            C0251a c0251a2 = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue() && (i4 = c0251a2.f958u) >= 0) {
                m26928s0(i4);
                c0251a2.f958u = -1;
            }
            c0251a2.m27102t();
            i5++;
        }
        if (z2) {
            m26977a1();
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0275j.f1063a);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            String str2 = attributeValue;
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (str2 == null || !C0260g.m27052b(context.getClassLoader(), str2)) {
                return null;
            }
            int id = view != null ? view.getId() : 0;
            if (id == -1 && resourceId == -1 && string == null) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
            }
            Fragment m26937o0 = resourceId != -1 ? m26937o0(resourceId) : null;
            if (m26937o0 == null && string != null) {
                m26937o0 = mo26973c(string);
            }
            if (m26937o0 == null && id != -1) {
                m26937o0 = m26937o0(id);
            }
            if (f1006S) {
                Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + m26937o0);
            }
            if (m26937o0 == null) {
                m26937o0 = mo26970d().mo26912a(context.getClassLoader(), str2);
                m26937o0.f931x = true;
                m26937o0.f891G = resourceId != 0 ? resourceId : id;
                m26937o0.f892H = id;
                m26937o0.f893I = string;
                m26937o0.f932y = true;
                m26937o0.f887C = this;
                AbstractC0261h abstractC0261h = this.f1010B;
                m26937o0.f888D = abstractC0261h;
                m26937o0.onInflate(abstractC0261h.m27046f(), attributeSet, m26937o0.f913b);
                m26950k(m26937o0, true);
            } else if (!m26937o0.f932y) {
                m26937o0.f932y = true;
                AbstractC0261h abstractC0261h2 = this.f1010B;
                m26937o0.f888D = abstractC0261h2;
                m26937o0.onInflate(abstractC0261h2.m27046f(), attributeSet, m26937o0.f913b);
            } else {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
            }
            Fragment fragment = m26937o0;
            if (this.f1009A < 1 && fragment.f931x) {
                m26998Q0(fragment, 1, 0, 0, false);
            } else {
                m27000P0(fragment);
            }
            View view2 = fragment.f902R;
            if (view2 != null) {
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (fragment.f902R.getTag() == null) {
                    fragment.f902R.setTag(string);
                }
                return fragment.f902R;
            }
            throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
        }
        return null;
    }

    /* renamed from: s0 */
    public void m26928s0(int i) {
        synchronized (this) {
            this.f1036w.set(i, null);
            if (this.f1037x == null) {
                this.f1037x = new ArrayList<>();
            }
            if (f1006S) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.f1037x.add(Integer.valueOf(i));
        }
    }

    /* renamed from: t */
    public final void m26927t() {
        this.f1028k = false;
        this.f1020L.clear();
        this.f1019K.clear();
    }

    /* renamed from: t0 */
    public final boolean m26926t0(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            ArrayList<InterfaceC0276k> arrayList3 = this.f1027d;
            if (arrayList3 != null && arrayList3.size() != 0) {
                int size = this.f1027d.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    z |= this.f1027d.get(i).mo26911a(arrayList, arrayList2);
                }
                this.f1027d.clear();
                this.f1010B.m27045g().removeCallbacks(this.f1026R);
                return z;
            }
            return false;
        }
    }

    /* renamed from: u0 */
    public int m26924u0() {
        ArrayList<C0251a> arrayList = this.f1032s;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    /* renamed from: v0 */
    public C0281l m26922v0(Fragment fragment) {
        return this.f1025Q.m26901f(fragment);
    }

    /* renamed from: x */
    public void m26919x() {
        this.f1015G = false;
        this.f1016H = false;
        m26969d0(2);
    }

    /* renamed from: x0 */
    public LayoutInflater.Factory2 m26918x0() {
        return this;
    }

    /* renamed from: y */
    public void m26917y(Configuration configuration) {
        for (int i = 0; i < this.f1030q.size(); i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null) {
                fragment.m27120x(configuration);
            }
        }
    }

    /* renamed from: y0 */
    public Fragment m26916y0() {
        return this.f1013E;
    }

    /* renamed from: z0 */
    public C0341t m26914z0(Fragment fragment) {
        return this.f1025Q.m26898i(fragment);
    }

    /* renamed from: J0 */
    public static C0272g m27012J0(float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(f1008U);
        alphaAnimation.setDuration(220L);
        return new C0272g(alphaAnimation);
    }

    /* renamed from: L0 */
    public static C0272g m27008L0(float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(f1007T);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(f1008U);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new C0272g(animationSet);
    }

    /* renamed from: l0 */
    public static void m26946l0(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C0251a c0251a = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                c0251a.m27114h(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                c0251a.m27109m(z);
            } else {
                c0251a.m27114h(1);
                c0251a.m27110l();
            }
            i++;
        }
    }

    /* renamed from: B */
    public boolean m27029B(Menu menu, MenuInflater menuInflater) {
        if (this.f1009A < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (int i = 0; i < this.f1030q.size(); i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null && fragment.m27166A(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f1033t != null) {
            for (int i2 = 0; i2 < this.f1033t.size(); i2++) {
                Fragment fragment2 = this.f1033t.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f1033t = arrayList;
        return z;
    }

    /* renamed from: B0 */
    public void m27028B0(Fragment fragment) {
        if (f1006S) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.f894J) {
            fragment.f894J = true;
            fragment.f909Y = true ^ fragment.f909Y;
        }
    }

    /* renamed from: F */
    public void m27021F(boolean z) {
        for (int size = this.f1030q.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1030q.get(size);
            if (fragment != null) {
                fragment.m27159H(z);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27019G(androidx.fragment.app.Fragment r3, android.os.Bundle r4, boolean r5) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27019G(r3, r4, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L30
            java.lang.Object r4 = r3.next()
            androidx.fragment.app.j$i r4 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r4
            if (r5 == 0) goto L2b
            boolean r0 = r4.f1062a
            if (r0 != 0) goto L2b
            goto L18
        L2b:
            r4.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27019G(androidx.fragment.app.Fragment, android.os.Bundle, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27017H(androidx.fragment.app.Fragment r3, android.content.Context r4, boolean r5) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27017H(r3, r4, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L30
            java.lang.Object r4 = r3.next()
            androidx.fragment.app.j$i r4 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r4
            if (r5 == 0) goto L2b
            boolean r0 = r4.f1062a
            if (r0 != 0) goto L2b
            goto L18
        L2b:
            r4.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27017H(androidx.fragment.app.Fragment, android.content.Context, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27015I(androidx.fragment.app.Fragment r3, android.os.Bundle r4, boolean r5) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27015I(r3, r4, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L30
            java.lang.Object r4 = r3.next()
            androidx.fragment.app.j$i r4 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r4
            if (r5 == 0) goto L2b
            boolean r0 = r4.f1062a
            if (r0 != 0) goto L2b
            goto L18
        L2b:
            r4.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27015I(androidx.fragment.app.Fragment, android.os.Bundle, boolean):void");
    }

    /* renamed from: I0 */
    public void m27014I0(Fragment fragment) {
        if (this.f1031r.get(fragment.f923p) != null) {
            return;
        }
        this.f1031r.put(fragment.f923p, fragment);
        if (fragment.f897M) {
            if (fragment.f896L) {
                m26947l(fragment);
            } else {
                m26980Z0(fragment);
            }
            fragment.f897M = false;
        }
        if (f1006S) {
            Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27013J(androidx.fragment.app.Fragment r3, boolean r4) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27013J(r3, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L30
            java.lang.Object r0 = r3.next()
            androidx.fragment.app.j$i r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r0
            if (r4 == 0) goto L2b
            boolean r1 = r0.f1062a
            if (r1 != 0) goto L2b
            goto L18
        L2b:
            r0.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27013J(androidx.fragment.app.Fragment, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27011K(androidx.fragment.app.Fragment r3, boolean r4) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27011K(r3, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L30
            java.lang.Object r0 = r3.next()
            androidx.fragment.app.j$i r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r0
            if (r4 == 0) goto L2b
            boolean r1 = r0.f1062a
            if (r1 != 0) goto L2b
            goto L18
        L2b:
            r0.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27011K(androidx.fragment.app.Fragment, boolean):void");
    }

    /* renamed from: K0 */
    public void m27010K0(Fragment fragment) {
        if (this.f1031r.get(fragment.f923p) == null) {
            return;
        }
        if (f1006S) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
        for (Fragment fragment2 : this.f1031r.values()) {
            if (fragment2 != null && fragment.f923p.equals(fragment2.f926s)) {
                fragment2.f925r = fragment;
                fragment2.f926s = null;
            }
        }
        this.f1031r.put(fragment.f923p, null);
        m26980Z0(fragment);
        String str = fragment.f926s;
        if (str != null) {
            fragment.f925r = this.f1031r.get(str);
        }
        fragment.m27127q();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27009L(androidx.fragment.app.Fragment r3, boolean r4) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27009L(r3, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L30
            java.lang.Object r0 = r3.next()
            androidx.fragment.app.j$i r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r0
            if (r4 == 0) goto L2b
            boolean r1 = r0.f1062a
            if (r1 != 0) goto L2b
            goto L18
        L2b:
            r0.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27009L(androidx.fragment.app.Fragment, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27007M(androidx.fragment.app.Fragment r3, android.content.Context r4, boolean r5) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27007M(r3, r4, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L30
            java.lang.Object r4 = r3.next()
            androidx.fragment.app.j$i r4 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r4
            if (r5 == 0) goto L2b
            boolean r0 = r4.f1062a
            if (r0 != 0) goto L2b
            goto L18
        L2b:
            r4.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27007M(androidx.fragment.app.Fragment, android.content.Context, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27005N(androidx.fragment.app.Fragment r3, android.os.Bundle r4, boolean r5) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27005N(r3, r4, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L30
            java.lang.Object r4 = r3.next()
            androidx.fragment.app.j$i r4 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r4
            if (r5 == 0) goto L2b
            boolean r0 = r4.f1062a
            if (r0 != 0) goto L2b
            goto L18
        L2b:
            r4.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27005N(androidx.fragment.app.Fragment, android.os.Bundle, boolean):void");
    }

    /* renamed from: N0 */
    public void m27004N0(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        if (!this.f1031r.containsKey(fragment.f923p)) {
            if (f1006S) {
                Log.v("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f1009A + "since it is not added to " + this);
                return;
            }
            return;
        }
        int i = this.f1009A;
        if (fragment.f930w) {
            if (fragment.m27125s()) {
                i = Math.min(i, 1);
            } else {
                i = Math.min(i, 0);
            }
        }
        m26998Q0(fragment, i, fragment.m27131m(), fragment.m27130n(), false);
        if (fragment.f902R != null) {
            Fragment m26932q0 = m26932q0(fragment);
            if (m26932q0 != null) {
                View view = m26932q0.f902R;
                ViewGroup viewGroup = fragment.f901Q;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(fragment.f902R);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(fragment.f902R, indexOfChild);
                }
            }
            if (fragment.f908X && fragment.f901Q != null) {
                float f = fragment.f910Z;
                if (f > 0.0f) {
                    fragment.f902R.setAlpha(f);
                }
                fragment.f910Z = 0.0f;
                fragment.f908X = false;
                C0272g m27016H0 = m27016H0(fragment, fragment.m27131m(), true, fragment.m27130n());
                if (m27016H0 != null) {
                    Animation animation = m27016H0.f1055a;
                    if (animation != null) {
                        fragment.f902R.startAnimation(animation);
                    } else {
                        m27016H0.f1056b.setTarget(fragment.f902R);
                        m27016H0.f1056b.start();
                    }
                }
            }
        }
        if (fragment.f909Y) {
            m26923v(fragment);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27003O(androidx.fragment.app.Fragment r3, boolean r4) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27003O(r3, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L30
            java.lang.Object r0 = r3.next()
            androidx.fragment.app.j$i r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r0
            if (r4 == 0) goto L2b
            boolean r1 = r0.f1062a
            if (r1 != 0) goto L2b
            goto L18
        L2b:
            r0.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27003O(androidx.fragment.app.Fragment, boolean):void");
    }

    /* renamed from: O0 */
    public void m27002O0(int i, boolean z) {
        AbstractC0261h abstractC0261h;
        if (this.f1010B == null && i != 0) {
            throw new IllegalStateException("No activity");
        }
        if (!z && i == this.f1009A) {
            return;
        }
        this.f1009A = i;
        int size = this.f1030q.size();
        for (int i2 = 0; i2 < size; i2++) {
            m27004N0(this.f1030q.get(i2));
        }
        for (Fragment fragment : this.f1031r.values()) {
            if (fragment != null && (fragment.f930w || fragment.f895K)) {
                if (!fragment.f908X) {
                    m27004N0(fragment);
                }
            }
        }
        m26945l1();
        if (this.f1014F && (abstractC0261h = this.f1010B) != null && this.f1009A == 4) {
            abstractC0261h.mo27033s();
            this.f1014F = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27001P(androidx.fragment.app.Fragment r3, android.os.Bundle r4, boolean r5) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m27001P(r3, r4, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L30
            java.lang.Object r4 = r3.next()
            androidx.fragment.app.j$i r4 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r4
            if (r5 == 0) goto L2b
            boolean r0 = r4.f1062a
            if (r0 != 0) goto L2b
            goto L18
        L2b:
            r4.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m27001P(androidx.fragment.app.Fragment, android.os.Bundle, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m26999Q(androidx.fragment.app.Fragment r3, boolean r4) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m26999Q(r3, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L30
            java.lang.Object r0 = r3.next()
            androidx.fragment.app.j$i r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r0
            if (r4 == 0) goto L2b
            boolean r1 = r0.f1062a
            if (r1 != 0) goto L2b
            goto L18
        L2b:
            r0.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m26999Q(androidx.fragment.app.Fragment, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m26997R(androidx.fragment.app.Fragment r3, boolean r4) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m26997R(r3, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L30
            java.lang.Object r0 = r3.next()
            androidx.fragment.app.j$i r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r0
            if (r4 == 0) goto L2b
            boolean r1 = r0.f1062a
            if (r1 != 0) goto L2b
            goto L18
        L2b:
            r0.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m26997R(androidx.fragment.app.Fragment, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m26995S(androidx.fragment.app.Fragment r3, android.view.View r4, android.os.Bundle r5, boolean r6) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m26995S(r3, r4, r5, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L30
            java.lang.Object r4 = r3.next()
            androidx.fragment.app.j$i r4 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r4
            if (r6 == 0) goto L2b
            boolean r5 = r4.f1062a
            if (r5 != 0) goto L2b
            goto L18
        L2b:
            r4.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m26995S(androidx.fragment.app.Fragment, android.view.View, android.os.Bundle, boolean):void");
    }

    /* renamed from: S0 */
    public void m26994S0(Fragment fragment) {
        if (fragment.f904T) {
            if (this.f1028k) {
                this.f1018J = true;
                return;
            }
            fragment.f904T = false;
            m26998Q0(fragment, this.f1009A, 0, 0, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m26993T(androidx.fragment.app.Fragment r3, boolean r4) {
        /*
            r2 = this;
            androidx.fragment.app.Fragment r0 = r2.f1012D
            if (r0 == 0) goto L12
            androidx.fragment.app.i r0 = r0.getFragmentManager()
            boolean r1 = r0 instanceof androidx.fragment.app.LayoutInflater$Factory2C0264j
            if (r1 == 0) goto L12
            androidx.fragment.app.j r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j) r0
            r1 = 1
            r0.m26993T(r3, r1)
        L12:
            java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.j$i> r3 = r2.f1039z
            java.util.Iterator r3 = r3.iterator()
        L18:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L30
            java.lang.Object r0 = r3.next()
            androidx.fragment.app.j$i r0 = (androidx.fragment.app.LayoutInflater$Factory2C0264j.C0274i) r0
            if (r4 == 0) goto L2b
            boolean r1 = r0.f1062a
            if (r1 != 0) goto L2b
            goto L18
        L2b:
            r0.getClass()
            r3 = 0
            throw r3
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m26993T(androidx.fragment.app.Fragment, boolean):void");
    }

    /* renamed from: U */
    public boolean m26991U(MenuItem menuItem) {
        if (this.f1009A < 1) {
            return false;
        }
        for (int i = 0; i < this.f1030q.size(); i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null && fragment.m27158I(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: U0 */
    public boolean m26990U0(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<C0251a> arrayList3 = this.f1032s;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f1032s.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str == null && i < 0) {
                i3 = -1;
            } else {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    C0251a c0251a = this.f1032s.get(size2);
                    if ((str != null && str.equals(c0251a.m27107o())) || (i >= 0 && i == c0251a.f958u)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        C0251a c0251a2 = this.f1032s.get(size2);
                        if (str == null || !str.equals(c0251a2.m27107o())) {
                            if (i < 0 || i != c0251a2.f958u) {
                                break;
                            }
                        }
                    }
                }
                i3 = size2;
            }
            if (i3 == this.f1032s.size() - 1) {
                return false;
            }
            for (int size3 = this.f1032s.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.f1032s.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    /* renamed from: V */
    public void m26989V(Menu menu) {
        if (this.f1009A < 1) {
            return;
        }
        for (int i = 0; i < this.f1030q.size(); i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null) {
                fragment.m27157J(menu);
            }
        }
    }

    /* renamed from: V0 */
    public final int m26988V0(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, C5272b<Fragment> c5272b) {
        boolean z;
        int i3 = i2;
        for (int i4 = i2 - 1; i4 >= i; i4--) {
            C0251a c0251a = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            if (c0251a.m27103s() && !c0251a.m27105q(arrayList, i4 + 1, i2)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (this.f1024P == null) {
                    this.f1024P = new ArrayList<>();
                }
                C0278m c0278m = new C0278m(c0251a, booleanValue);
                this.f1024P.add(c0278m);
                c0251a.m27101u(c0278m);
                if (booleanValue) {
                    c0251a.m27110l();
                } else {
                    c0251a.m27109m(false);
                }
                i3--;
                if (i4 != i3) {
                    arrayList.remove(i4);
                    arrayList.add(i3, c0251a);
                }
                m26956i(c5272b);
            }
        }
        return i3;
    }

    /* renamed from: W */
    public final void m26987W(Fragment fragment) {
        if (fragment != null && this.f1031r.get(fragment.f923p) == fragment) {
            fragment.m27153N();
        }
    }

    /* renamed from: W0 */
    public void m26986W0(Bundle bundle, String str, Fragment fragment) {
        if (fragment.f887C != this) {
            m26942m1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.f923p);
    }

    /* renamed from: X0 */
    public void m26984X0(Fragment fragment) {
        if (f1006S) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.f886B);
        }
        boolean z = !fragment.m27125s();
        if (!fragment.f895K || z) {
            synchronized (this.f1030q) {
                this.f1030q.remove(fragment);
            }
            if (m27024D0(fragment)) {
                this.f1014F = true;
            }
            fragment.f929v = false;
            fragment.f930w = true;
        }
    }

    /* renamed from: Y */
    public void m26983Y(boolean z) {
        for (int size = this.f1030q.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1030q.get(size);
            if (fragment != null) {
                fragment.m27155L(z);
            }
        }
    }

    /* renamed from: Y0 */
    public final void m26982Y0(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 != null && arrayList.size() == arrayList2.size()) {
                m26940n0(arrayList, arrayList2);
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i < size) {
                    if (!arrayList.get(i).f1113q) {
                        if (i2 != i) {
                            m26943m0(arrayList, arrayList2, i2, i);
                        }
                        i2 = i + 1;
                        if (arrayList2.get(i).booleanValue()) {
                            while (i2 < size && arrayList2.get(i2).booleanValue() && !arrayList.get(i2).f1113q) {
                                i2++;
                            }
                        }
                        m26943m0(arrayList, arrayList2, i, i2);
                        i = i2 - 1;
                    }
                    i++;
                }
                if (i2 != size) {
                    m26943m0(arrayList, arrayList2, i2, size);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error with the back stack records");
        }
    }

    /* renamed from: Z */
    public boolean m26981Z(Menu menu) {
        if (this.f1009A < 1) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.f1030q.size(); i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null && fragment.m27154M(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a1 */
    public void m26977a1() {
        if (this.f1038y != null) {
            for (int i = 0; i < this.f1038y.size(); i++) {
                this.f1038y.get(i).onBackStackChanged();
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0262i
    /* renamed from: b */
    public void mo26976b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2 = str + "    ";
        if (!this.f1031r.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.f1031r.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.f1030q.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size5; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f1030q.get(i).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.f1033t;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size4; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f1033t.get(i2).toString());
            }
        }
        ArrayList<C0251a> arrayList2 = this.f1032s;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                C0251a c0251a = this.f1032s.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c0251a.toString());
                c0251a.m27112j(str2, printWriter);
            }
        }
        synchronized (this) {
            ArrayList<C0251a> arrayList3 = this.f1036w;
            if (arrayList3 != null && (size2 = arrayList3.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i4 = 0; i4 < size2; i4++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println((C0251a) this.f1036w.get(i4));
                }
            }
            ArrayList<Integer> arrayList4 = this.f1037x;
            if (arrayList4 != null && arrayList4.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.f1037x.toArray()));
            }
        }
        ArrayList<InterfaceC0276k> arrayList5 = this.f1027d;
        if (arrayList5 != null && (size = arrayList5.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i5 = 0; i5 < size; i5++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println((InterfaceC0276k) this.f1027d.get(i5));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1010B);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1011C);
        if (this.f1012D != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1012D);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1009A);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1015G);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1016H);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f1017I);
        if (this.f1014F) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f1014F);
        }
    }

    /* renamed from: b1 */
    public void m26974b1(Parcelable parcelable) {
        C0283m c0283m;
        String str;
        if (parcelable == null) {
            return;
        }
        C0279k c0279k = (C0279k) parcelable;
        if (c0279k.f1071a == null) {
            return;
        }
        for (Fragment fragment : this.f1025Q.m26899h()) {
            if (f1006S) {
                Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
            }
            Iterator<C0283m> it = c0279k.f1071a.iterator();
            while (true) {
                if (it.hasNext()) {
                    c0283m = it.next();
                    if (c0283m.f1084b.equals(fragment.f923p)) {
                        break;
                    }
                } else {
                    c0283m = null;
                    break;
                }
            }
            if (c0283m == null) {
                if (f1006S) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + c0279k.f1071a);
                }
                m26998Q0(fragment, 1, 0, 0, false);
                fragment.f930w = true;
                m26998Q0(fragment, 0, 0, 0, false);
            } else {
                c0283m.f1096y = fragment;
                fragment.f916d = null;
                fragment.f886B = 0;
                fragment.f932y = false;
                fragment.f929v = false;
                Fragment fragment2 = fragment.f925r;
                if (fragment2 != null) {
                    str = fragment2.f923p;
                } else {
                    str = null;
                }
                fragment.f926s = str;
                fragment.f925r = null;
                Bundle bundle = c0283m.f1095x;
                if (bundle != null) {
                    bundle.setClassLoader(this.f1010B.m27046f().getClassLoader());
                    fragment.f916d = c0283m.f1095x.getSparseParcelableArray("android:view_state");
                    fragment.f913b = c0283m.f1095x;
                }
            }
        }
        this.f1031r.clear();
        Iterator<C0283m> it2 = c0279k.f1071a.iterator();
        while (it2.hasNext()) {
            C0283m next = it2.next();
            if (next != null) {
                Fragment m26894a = next.m26894a(this.f1010B.m27046f().getClassLoader(), mo26970d());
                m26894a.f887C = this;
                if (f1006S) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + m26894a.f923p + "): " + m26894a);
                }
                this.f1031r.put(m26894a.f923p, m26894a);
                next.f1096y = null;
            }
        }
        this.f1030q.clear();
        ArrayList<String> arrayList = c0279k.f1072b;
        if (arrayList != null) {
            Iterator<String> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                Fragment fragment3 = this.f1031r.get(next2);
                if (fragment3 == null) {
                    m26942m1(new IllegalStateException("No instantiated fragment for (" + next2 + ")"));
                }
                fragment3.f929v = true;
                if (f1006S) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + next2 + "): " + fragment3);
                }
                if (!this.f1030q.contains(fragment3)) {
                    synchronized (this.f1030q) {
                        this.f1030q.add(fragment3);
                    }
                } else {
                    throw new IllegalStateException("Already added " + fragment3);
                }
            }
        }
        if (c0279k.f1073d != null) {
            this.f1032s = new ArrayList<>(c0279k.f1073d.length);
            int i = 0;
            while (true) {
                C0252b[] c0252bArr = c0279k.f1073d;
                if (i >= c0252bArr.length) {
                    break;
                }
                C0251a m27099a = c0252bArr[i].m27099a(this);
                if (f1006S) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + m27099a.f958u + "): " + m27099a);
                    PrintWriter printWriter = new PrintWriter(new C1020c("FragmentManager"));
                    m27099a.m27111k("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1032s.add(m27099a);
                int i2 = m27099a.f958u;
                if (i2 >= 0) {
                    m26957h1(i2, m27099a);
                }
                i++;
            }
        } else {
            this.f1032s = null;
        }
        String str2 = c0279k.f1074k;
        if (str2 != null) {
            Fragment fragment4 = this.f1031r.get(str2);
            this.f1013E = fragment4;
            m26987W(fragment4);
        }
        this.f1029p = c0279k.f1075p;
    }

    @Override // androidx.fragment.app.AbstractC0262i
    /* renamed from: c */
    public Fragment mo26973c(String str) {
        if (str != null) {
            for (int size = this.f1030q.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f1030q.get(size);
                if (fragment != null && str.equals(fragment.f893I)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (Fragment fragment2 : this.f1031r.values()) {
                if (fragment2 != null && str.equals(fragment2.f893I)) {
                    return fragment2;
                }
            }
            return null;
        }
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0262i
    /* renamed from: e */
    public List<Fragment> mo26967e() {
        List<Fragment> list;
        if (this.f1030q.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f1030q) {
            list = (List) this.f1030q.clone();
        }
        return list;
    }

    /* renamed from: e1 */
    public Bundle m26965e1(Fragment fragment) {
        if (this.f1022N == null) {
            this.f1022N = new Bundle();
        }
        fragment.m27151P(this.f1022N);
        m27001P(fragment, this.f1022N, false);
        Bundle bundle = null;
        if (!this.f1022N.isEmpty()) {
            Bundle bundle2 = this.f1022N;
            this.f1022N = null;
            bundle = bundle2;
        }
        if (fragment.f902R != null) {
            m26962f1(fragment);
        }
        if (fragment.f916d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.f916d);
        }
        if (!fragment.f905U) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.f905U);
        }
        return bundle;
    }

    @Override // androidx.fragment.app.AbstractC0262i
    /* renamed from: f */
    public void mo26964f(int i, int i2) {
        if (i >= 0) {
            m26958h0(new C0277l(null, i, i2), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    /* renamed from: f0 */
    public void m26963f0() {
        if (this.f1018J) {
            this.f1018J = false;
            m26945l1();
        }
    }

    /* renamed from: f1 */
    public void m26962f1(Fragment fragment) {
        if (fragment.f903S == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = this.f1023O;
        if (sparseArray == null) {
            this.f1023O = new SparseArray<>();
        } else {
            sparseArray.clear();
        }
        fragment.f903S.saveHierarchyState(this.f1023O);
        if (this.f1023O.size() > 0) {
            fragment.f916d = this.f1023O;
            this.f1023O = null;
        }
    }

    /* renamed from: g0 */
    public final void m26960g0() {
        for (Fragment fragment : this.f1031r.values()) {
            if (fragment != null) {
                if (fragment.m27136h() != null) {
                    int m27129o = fragment.m27129o();
                    View m27136h = fragment.m27136h();
                    Animation animation = m27136h.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        m27136h.clearAnimation();
                    }
                    fragment.m27146U(null);
                    m26998Q0(fragment, m27129o, 0, 0, false);
                } else if (fragment.m27135i() != null) {
                    fragment.m27135i().end();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0027, code lost:
        return;
     */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m26958h0(androidx.fragment.app.LayoutInflater$Factory2C0264j.InterfaceC0276k r2, boolean r3) {
        /*
            r1 = this;
            if (r3 != 0) goto L5
            r1.m26929s()
        L5:
            monitor-enter(r1)
            boolean r0 = r1.f1017I     // Catch: java.lang.Throwable -> L30
            if (r0 != 0) goto L24
            androidx.fragment.app.h r0 = r1.f1010B     // Catch: java.lang.Throwable -> L30
            if (r0 != 0) goto Lf
            goto L24
        Lf:
            java.util.ArrayList<androidx.fragment.app.j$k> r3 = r1.f1027d     // Catch: java.lang.Throwable -> L30
            if (r3 != 0) goto L1a
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L30
            r3.<init>()     // Catch: java.lang.Throwable -> L30
            r1.f1027d = r3     // Catch: java.lang.Throwable -> L30
        L1a:
            java.util.ArrayList<androidx.fragment.app.j$k> r3 = r1.f1027d     // Catch: java.lang.Throwable -> L30
            r3.add(r2)     // Catch: java.lang.Throwable -> L30
            r1.m26959g1()     // Catch: java.lang.Throwable -> L30
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L30
            return
        L24:
            if (r3 == 0) goto L28
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L30
            return
        L28:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L30
            java.lang.String r3 = "Activity has been destroyed"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L30
            throw r2     // Catch: java.lang.Throwable -> L30
        L30:
            r2 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L30
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0264j.m26958h0(androidx.fragment.app.j$k, boolean):void");
    }

    /* renamed from: i */
    public final void m26956i(C5272b<Fragment> c5272b) {
        int i = this.f1009A;
        if (i < 1) {
            return;
        }
        int min = Math.min(i, 3);
        int size = this.f1030q.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f1030q.get(i2);
            if (fragment.f911a < min) {
                m26998Q0(fragment, min, fragment.m27132l(), fragment.m27131m(), false);
                if (fragment.f902R != null && !fragment.f894J && fragment.f908X) {
                    c5272b.add(fragment);
                }
            }
        }
    }

    /* renamed from: i0 */
    public final void m26955i0(boolean z) {
        if (!this.f1028k) {
            if (this.f1010B != null) {
                if (Looper.myLooper() == this.f1010B.m27045g().getLooper()) {
                    if (!z) {
                        m26929s();
                    }
                    if (this.f1019K == null) {
                        this.f1019K = new ArrayList<>();
                        this.f1020L = new ArrayList<>();
                    }
                    this.f1028k = true;
                    try {
                        m26940n0(null, null);
                        return;
                    } finally {
                        this.f1028k = false;
                    }
                }
                throw new IllegalStateException("Must be called from main thread of fragment host");
            }
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* renamed from: i1 */
    public void m26954i1(Fragment fragment, AbstractC0317d.EnumC0319b enumC0319b) {
        if (this.f1031r.get(fragment.f923p) == fragment && (fragment.f888D == null || fragment.getFragmentManager() == this)) {
            fragment.f915c0 = enumC0319b;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: j */
    public void m26953j(C0251a c0251a) {
        if (this.f1032s == null) {
            this.f1032s = new ArrayList<>();
        }
        this.f1032s.add(c0251a);
    }

    /* renamed from: j0 */
    public void m26952j0(Fragment fragment) {
        if (fragment.f931x && !fragment.f885A) {
            fragment.m27165B(fragment.m27161F(fragment.f913b), null, fragment.f913b);
            View view = fragment.f902R;
            if (view != null) {
                fragment.f903S = view;
                view.setSaveFromParentEnabled(false);
                if (fragment.f894J) {
                    fragment.f902R.setVisibility(8);
                }
                fragment.onViewCreated(fragment.f902R, fragment.f913b);
                m26995S(fragment, fragment.f902R, fragment.f913b, false);
                return;
            }
            fragment.f903S = null;
        }
    }

    /* renamed from: j1 */
    public void m26951j1(Fragment fragment) {
        if (fragment != null && (this.f1031r.get(fragment.f923p) != fragment || (fragment.f888D != null && fragment.getFragmentManager() != this))) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        Fragment fragment2 = this.f1013E;
        this.f1013E = fragment;
        m26987W(fragment2);
        m26987W(this.f1013E);
    }

    /* renamed from: k */
    public void m26950k(Fragment fragment, boolean z) {
        if (f1006S) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        m27014I0(fragment);
        if (!fragment.f895K) {
            if (!this.f1030q.contains(fragment)) {
                synchronized (this.f1030q) {
                    this.f1030q.add(fragment);
                }
                fragment.f929v = true;
                fragment.f930w = false;
                if (fragment.f902R == null) {
                    fragment.f909Y = false;
                }
                if (m27024D0(fragment)) {
                    this.f1014F = true;
                }
                if (z) {
                    m27000P0(fragment);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
    }

    /* renamed from: k1 */
    public void m26948k1(Fragment fragment) {
        if (f1006S) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.f894J) {
            fragment.f894J = false;
            fragment.f909Y = !fragment.f909Y;
        }
    }

    /* renamed from: l1 */
    public void m26945l1() {
        for (Fragment fragment : this.f1031r.values()) {
            if (fragment != null) {
                m26994S0(fragment);
            }
        }
    }

    /* renamed from: n */
    public final void m26941n(Fragment fragment, C0272g c0272g, int i) {
        View view = fragment.f902R;
        ViewGroup viewGroup = fragment.f901Q;
        viewGroup.startViewTransition(view);
        fragment.m27140a0(i);
        if (c0272g.f1055a != null) {
            RunnableC0273h runnableC0273h = new RunnableC0273h(c0272g.f1055a, viewGroup, view);
            fragment.m27146U(fragment.f902R);
            runnableC0273h.setAnimationListener(new animationAnimation$AnimationListenerC0267c(viewGroup, fragment));
            fragment.f902R.startAnimation(runnableC0273h);
            return;
        }
        Animator animator = c0272g.f1056b;
        fragment.m27145V(animator);
        animator.addListener(new C0269d(viewGroup, view, fragment));
        animator.setTarget(fragment.f902R);
        animator.start();
    }

    /* renamed from: n0 */
    public final void m26940n0(ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2) {
        int size;
        int indexOf;
        int indexOf2;
        ArrayList<C0278m> arrayList3 = this.f1024P;
        if (arrayList3 == null) {
            size = 0;
        } else {
            size = arrayList3.size();
        }
        int i = 0;
        while (i < size) {
            C0278m c0278m = this.f1024P.get(i);
            if (arrayList != null && !c0278m.f1068a && (indexOf2 = arrayList.indexOf(c0278m.f1069b)) != -1 && arrayList2.get(indexOf2).booleanValue()) {
                this.f1024P.remove(i);
                i--;
                size--;
                c0278m.m26908c();
            } else if (c0278m.m26906e() || (arrayList != null && c0278m.f1069b.m27105q(arrayList, 0, arrayList.size()))) {
                this.f1024P.remove(i);
                i--;
                size--;
                if (arrayList != null && !c0278m.f1068a && (indexOf = arrayList.indexOf(c0278m.f1069b)) != -1 && arrayList2.get(indexOf).booleanValue()) {
                    c0278m.m26908c();
                } else {
                    c0278m.m26907d();
                }
            }
            i++;
        }
    }

    /* renamed from: o */
    public void m26938o(AbstractC0261h abstractC0261h, AbstractC0258e abstractC0258e, Fragment fragment) {
        if (this.f1010B == null) {
            this.f1010B = abstractC0261h;
            this.f1011C = abstractC0258e;
            this.f1012D = fragment;
            if (fragment != null) {
                m26936o1();
            }
            if (abstractC0261h instanceof InterfaceC0134e) {
                InterfaceC0134e interfaceC0134e = (InterfaceC0134e) abstractC0261h;
                OnBackPressedDispatcher mo27080b = interfaceC0134e.mo27080b();
                this.f1034u = mo27080b;
                InterfaceC0322g interfaceC0322g = interfaceC0134e;
                if (fragment != null) {
                    interfaceC0322g = fragment;
                }
                mo27080b.m27626a(interfaceC0322g, this.f1035v);
            }
            if (fragment != null) {
                this.f1025Q = fragment.f887C.m26922v0(fragment);
                return;
            } else if (abstractC0261h instanceof InterfaceC0342u) {
                this.f1025Q = C0281l.m26900g(((InterfaceC0342u) abstractC0261h).getViewModelStore());
                return;
            } else {
                this.f1025Q = new C0281l(false);
                return;
            }
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: o0 */
    public Fragment m26937o0(int i) {
        for (int size = this.f1030q.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1030q.get(size);
            if (fragment != null && fragment.f891G == i) {
                return fragment;
            }
        }
        for (Fragment fragment2 : this.f1031r.values()) {
            if (fragment2 != null && fragment2.f891G == i) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: o1 */
    public final void m26936o1() {
        ArrayList<InterfaceC0276k> arrayList = this.f1027d;
        boolean z = true;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.f1035v.m27617f(true);
        } else {
            this.f1035v.m27617f((m26924u0() <= 0 || !m27022E0(this.f1012D)) ? false : false);
        }
    }

    /* renamed from: p */
    public void m26935p(Fragment fragment) {
        if (f1006S) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.f895K) {
            fragment.f895K = false;
            if (!fragment.f929v) {
                if (!this.f1030q.contains(fragment)) {
                    if (f1006S) {
                        Log.v("FragmentManager", "add from attach: " + fragment);
                    }
                    synchronized (this.f1030q) {
                        this.f1030q.add(fragment);
                    }
                    fragment.f929v = true;
                    if (m27024D0(fragment)) {
                        this.f1014F = true;
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
        }
    }

    /* renamed from: p0 */
    public Fragment m26934p0(String str) {
        Fragment m27137g;
        for (Fragment fragment : this.f1031r.values()) {
            if (fragment != null && (m27137g = fragment.m27137g(str)) != null) {
                return m27137g;
            }
        }
        return null;
    }

    /* renamed from: q */
    public final void m26933q() {
        this.f1031r.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: q0 */
    public final Fragment m26932q0(Fragment fragment) {
        ViewGroup viewGroup = fragment.f901Q;
        View view = fragment.f902R;
        if (viewGroup != null && view != null) {
            for (int indexOf = this.f1030q.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
                Fragment fragment2 = this.f1030q.get(indexOf);
                if (fragment2.f901Q == viewGroup && fragment2.f902R != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    /* renamed from: r */
    public boolean m26931r() {
        boolean z = false;
        for (Fragment fragment : this.f1031r.values()) {
            if (fragment != null) {
                z = m27024D0(fragment);
                continue;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: r0 */
    public final void m26930r0() {
        if (this.f1024P != null) {
            while (!this.f1024P.isEmpty()) {
                this.f1024P.remove(0).m26907d();
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f1012D;
        if (fragment != null) {
            C1019b.m24816a(fragment, sb);
        } else {
            C1019b.m24816a(this.f1010B, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m26925u(C0251a c0251a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0251a.m27109m(z3);
        } else {
            c0251a.m27110l();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0251a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            C0287o.m26884B(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z3) {
            m27002O0(this.f1009A, true);
        }
        for (Fragment fragment : this.f1031r.values()) {
            if (fragment != null && fragment.f902R != null && fragment.f908X && c0251a.m27106p(fragment.f892H)) {
                float f = fragment.f910Z;
                if (f > 0.0f) {
                    fragment.f902R.setAlpha(f);
                }
                if (z3) {
                    fragment.f910Z = 0.0f;
                } else {
                    fragment.f910Z = -1.0f;
                    fragment.f908X = false;
                }
            }
        }
    }

    /* renamed from: v */
    public void m26923v(Fragment fragment) {
        int i;
        Animator animator;
        if (fragment.f902R != null) {
            C0272g m27016H0 = m27016H0(fragment, fragment.m27131m(), !fragment.f894J, fragment.m27130n());
            if (m27016H0 != null && (animator = m27016H0.f1056b) != null) {
                animator.setTarget(fragment.f902R);
                if (fragment.f894J) {
                    if (fragment.m27126r()) {
                        fragment.m27144W(false);
                    } else {
                        ViewGroup viewGroup = fragment.f901Q;
                        View view = fragment.f902R;
                        viewGroup.startViewTransition(view);
                        m27016H0.f1056b.addListener(new C0270e(viewGroup, view, fragment));
                    }
                } else {
                    fragment.f902R.setVisibility(0);
                }
                m27016H0.f1056b.start();
            } else {
                if (m27016H0 != null) {
                    fragment.f902R.startAnimation(m27016H0.f1055a);
                    m27016H0.f1055a.start();
                }
                if (fragment.f894J && !fragment.m27126r()) {
                    i = 8;
                } else {
                    i = 0;
                }
                fragment.f902R.setVisibility(i);
                if (fragment.m27126r()) {
                    fragment.m27144W(false);
                }
            }
        }
        if (fragment.f929v && m27024D0(fragment)) {
            this.f1014F = true;
        }
        fragment.f909Y = false;
        fragment.onHiddenChanged(fragment.f894J);
    }

    /* renamed from: w */
    public void m26921w(Fragment fragment) {
        if (f1006S) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.f895K) {
            fragment.f895K = true;
            if (fragment.f929v) {
                if (f1006S) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                synchronized (this.f1030q) {
                    this.f1030q.remove(fragment);
                }
                if (m27024D0(fragment)) {
                    this.f1014F = true;
                }
                fragment.f929v = false;
            }
        }
    }

    /* renamed from: z */
    public boolean m26915z(MenuItem menuItem) {
        if (this.f1009A < 1) {
            return false;
        }
        for (int i = 0; i < this.f1030q.size(); i++) {
            Fragment fragment = this.f1030q.get(i);
            if (fragment != null && fragment.m27119y(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: A0 */
    public void m27030A0() {
        m26949k0();
        if (this.f1035v.m27620c()) {
            mo26961g();
        } else {
            this.f1034u.m27624c();
        }
    }

    /* renamed from: H0 */
    public C0272g m27016H0(Fragment fragment, int i, boolean z, int i2) {
        int m26939n1;
        int m27132l = fragment.m27132l();
        boolean z2 = false;
        fragment.m27143X(0);
        ViewGroup viewGroup = fragment.f901Q;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, m27132l);
        if (onCreateAnimation != null) {
            return new C0272g(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(i, z, m27132l);
        if (onCreateAnimator != null) {
            return new C0272g(onCreateAnimator);
        }
        if (m27132l != 0) {
            boolean equals = "anim".equals(this.f1010B.m27046f().getResources().getResourceTypeName(m27132l));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.f1010B.m27046f(), m27132l);
                    if (loadAnimation != null) {
                        return new C0272g(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException unused) {
                }
            }
            if (!z2) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.f1010B.m27046f(), m27132l);
                    if (loadAnimator != null) {
                        return new C0272g(loadAnimator);
                    }
                } catch (RuntimeException e2) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.f1010B.m27046f(), m27132l);
                        if (loadAnimation2 != null) {
                            return new C0272g(loadAnimation2);
                        }
                    } else {
                        throw e2;
                    }
                }
            }
        }
        if (i == 0 || (m26939n1 = m26939n1(i, z)) < 0) {
            return null;
        }
        switch (m26939n1) {
            case 1:
                return m27008L0(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return m27008L0(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return m27008L0(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return m27008L0(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return m27012J0(0.0f, 1.0f);
            case 6:
                return m27012J0(1.0f, 0.0f);
            default:
                if (i2 == 0 && this.f1010B.mo27039m()) {
                    this.f1010B.mo27040l();
                }
                return null;
        }
    }

    /* renamed from: M0 */
    public final void m27006M0(C5272b<Fragment> c5272b) {
        int size = c5272b.size();
        for (int i = 0; i < size; i++) {
            Fragment m13715o = c5272b.m13715o(i);
            if (!m13715o.f929v) {
                View requireView = m13715o.requireView();
                m13715o.f910Z = requireView.getAlpha();
                requireView.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: T0 */
    public final boolean m26992T0(String str, int i, int i2) {
        m26949k0();
        m26955i0(true);
        Fragment fragment = this.f1013E;
        if (fragment != null && i < 0 && str == null && fragment.getChildFragmentManager().mo26961g()) {
            return true;
        }
        boolean m26990U0 = m26990U0(this.f1019K, this.f1020L, str, i, i2);
        if (m26990U0) {
            this.f1028k = true;
            try {
                m26982Y0(this.f1019K, this.f1020L);
            } finally {
                m26927t();
            }
        }
        m26936o1();
        m26963f0();
        m26933q();
        return m26990U0;
    }

    /* renamed from: Z0 */
    public void m26980Z0(Fragment fragment) {
        if (m27018G0()) {
            if (f1006S) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.f1025Q.m26896k(fragment) && f1006S) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    /* renamed from: a0 */
    public void m26978a0() {
        m26936o1();
        m26987W(this.f1013E);
    }

    @Override // androidx.fragment.app.AbstractC0262i
    /* renamed from: d */
    public C0260g mo26970d() {
        if (super.mo26970d() == AbstractC0262i.f1004b) {
            Fragment fragment = this.f1012D;
            if (fragment != null) {
                return fragment.f887C.mo26970d();
            }
            m27032h(new C0271f());
        }
        return super.mo26970d();
    }

    /* renamed from: d1 */
    public Parcelable m26968d1() {
        ArrayList<String> arrayList;
        int size;
        m26930r0();
        m26960g0();
        m26949k0();
        this.f1015G = true;
        C0252b[] c0252bArr = null;
        if (this.f1031r.isEmpty()) {
            return null;
        }
        ArrayList<C0283m> arrayList2 = new ArrayList<>(this.f1031r.size());
        boolean z = false;
        for (Fragment fragment : this.f1031r.values()) {
            if (fragment != null) {
                if (fragment.f887C != this) {
                    m26942m1(new IllegalStateException("Failure saving state: active " + fragment + " was removed from the FragmentManager"));
                }
                C0283m c0283m = new C0283m(fragment);
                arrayList2.add(c0283m);
                if (fragment.f911a > 0 && c0283m.f1095x == null) {
                    c0283m.f1095x = m26965e1(fragment);
                    String str = fragment.f926s;
                    if (str != null) {
                        Fragment fragment2 = this.f1031r.get(str);
                        if (fragment2 == null) {
                            m26942m1(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.f926s));
                        }
                        if (c0283m.f1095x == null) {
                            c0283m.f1095x = new Bundle();
                        }
                        m26986W0(c0283m.f1095x, "android:target_state", fragment2);
                        int i = fragment.f927t;
                        if (i != 0) {
                            c0283m.f1095x.putInt("android:target_req_state", i);
                        }
                    }
                } else {
                    c0283m.f1095x = fragment.f913b;
                }
                if (f1006S) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + c0283m.f1095x);
                }
                z = true;
            }
        }
        if (!z) {
            if (f1006S) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        int size2 = this.f1030q.size();
        if (size2 > 0) {
            arrayList = new ArrayList<>(size2);
            Iterator<Fragment> it = this.f1030q.iterator();
            while (it.hasNext()) {
                Fragment next = it.next();
                arrayList.add(next.f923p);
                if (next.f887C != this) {
                    m26942m1(new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                }
                if (f1006S) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f923p + "): " + next);
                }
            }
        } else {
            arrayList = null;
        }
        ArrayList<C0251a> arrayList3 = this.f1032s;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            c0252bArr = new C0252b[size];
            for (int i2 = 0; i2 < size; i2++) {
                c0252bArr[i2] = new C0252b(this.f1032s.get(i2));
                if (f1006S) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.f1032s.get(i2));
                }
            }
        }
        C0279k c0279k = new C0279k();
        c0279k.f1071a = arrayList2;
        c0279k.f1072b = arrayList;
        c0279k.f1073d = c0252bArr;
        Fragment fragment3 = this.f1013E;
        if (fragment3 != null) {
            c0279k.f1074k = fragment3.f923p;
        }
        c0279k.f1075p = this.f1029p;
        return c0279k;
    }

    @Override // androidx.fragment.app.AbstractC0262i
    /* renamed from: g */
    public boolean mo26961g() {
        m26929s();
        return m26992T0(null, -1, 0);
    }

    /* renamed from: l */
    public void m26947l(Fragment fragment) {
        if (m27018G0()) {
            if (f1006S) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else if (this.f1025Q.m26903d(fragment) && f1006S) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    /* renamed from: m1 */
    public final void m26942m1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C1020c("FragmentManager"));
        AbstractC0261h abstractC0261h = this.f1010B;
        if (abstractC0261h != null) {
            try {
                abstractC0261h.mo27043i("  ", null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                mo26976b("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    /* renamed from: s */
    public final void m26929s() {
        if (!m27018G0()) {
            return;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: w0 */
    public Fragment m26920w0(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragment = this.f1031r.get(string);
        if (fragment == null) {
            m26942m1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return fragment;
    }

    /* renamed from: androidx.fragment.app.j$g */
    /* loaded from: classes.dex */
    public static class C0272g {

        /* renamed from: a */
        public final Animation f1055a;

        /* renamed from: b */
        public final Animator f1056b;

        public C0272g(Animation animation) {
            this.f1055a = animation;
            this.f1056b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        public C0272g(Animator animator) {
            this.f1055a = null;
            this.f1056b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
