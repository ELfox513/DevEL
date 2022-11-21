package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p038d0.C3218s0;
import p038d0.ViewTreeObserver$OnPreDrawListenerC3262y;
import p145p.C5270a;
/* renamed from: androidx.fragment.app.o */
/* loaded from: classes.dex */
public class C0287o {

    /* renamed from: a */
    public static final int[] f1123a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    public static final AbstractC0303v f1124b;

    /* renamed from: c */
    public static final AbstractC0303v f1125c;

    /* renamed from: androidx.fragment.app.o$a */
    /* loaded from: classes.dex */
    public static class RunnableC0288a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f1126a;

        public RunnableC0288a(ArrayList arrayList) {
            this.f1126a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0287o.m26885A(this.f1126a, 4);
        }
    }

    /* renamed from: androidx.fragment.app.o$b */
    /* loaded from: classes.dex */
    public static class RunnableC0289b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Object f1127a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC0303v f1128b;

        /* renamed from: d */
        public final /* synthetic */ View f1129d;

        /* renamed from: k */
        public final /* synthetic */ Fragment f1130k;

        /* renamed from: p */
        public final /* synthetic */ ArrayList f1131p;

        /* renamed from: q */
        public final /* synthetic */ ArrayList f1132q;

        /* renamed from: r */
        public final /* synthetic */ ArrayList f1133r;

        /* renamed from: s */
        public final /* synthetic */ Object f1134s;

        public RunnableC0289b(Object obj, AbstractC0303v abstractC0303v, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f1127a = obj;
            this.f1128b = abstractC0303v;
            this.f1129d = view;
            this.f1130k = fragment;
            this.f1131p = arrayList;
            this.f1132q = arrayList2;
            this.f1133r = arrayList3;
            this.f1134s = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f1127a;
            if (obj != null) {
                this.f1128b.mo26835p(obj, this.f1129d);
                this.f1132q.addAll(C0287o.m26873k(this.f1128b, this.f1127a, this.f1130k, this.f1131p, this.f1129d));
            }
            if (this.f1133r != null) {
                if (this.f1134s != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f1129d);
                    this.f1128b.mo26834q(this.f1134s, this.f1133r, arrayList);
                }
                this.f1133r.clear();
                this.f1133r.add(this.f1129d);
            }
        }
    }

    /* renamed from: androidx.fragment.app.o$c */
    /* loaded from: classes.dex */
    public static class RunnableC0290c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Fragment f1135a;

        /* renamed from: b */
        public final /* synthetic */ Fragment f1136b;

        /* renamed from: d */
        public final /* synthetic */ boolean f1137d;

        /* renamed from: k */
        public final /* synthetic */ C5270a f1138k;

        /* renamed from: p */
        public final /* synthetic */ View f1139p;

        /* renamed from: q */
        public final /* synthetic */ AbstractC0303v f1140q;

        /* renamed from: r */
        public final /* synthetic */ Rect f1141r;

        public RunnableC0290c(Fragment fragment, Fragment fragment2, boolean z, C5270a c5270a, View view, AbstractC0303v abstractC0303v, Rect rect) {
            this.f1135a = fragment;
            this.f1136b = fragment2;
            this.f1137d = z;
            this.f1138k = c5270a;
            this.f1139p = view;
            this.f1140q = abstractC0303v;
            this.f1141r = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0287o.m26878f(this.f1135a, this.f1136b, this.f1137d, this.f1138k, false);
            View view = this.f1139p;
            if (view != null) {
                this.f1140q.m26840k(view, this.f1141r);
            }
        }
    }

    /* renamed from: androidx.fragment.app.o$d */
    /* loaded from: classes.dex */
    public static class RunnableC0291d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0303v f1142a;

        /* renamed from: b */
        public final /* synthetic */ C5270a f1143b;

        /* renamed from: d */
        public final /* synthetic */ Object f1144d;

        /* renamed from: k */
        public final /* synthetic */ C0292e f1145k;

        /* renamed from: p */
        public final /* synthetic */ ArrayList f1146p;

        /* renamed from: q */
        public final /* synthetic */ View f1147q;

        /* renamed from: r */
        public final /* synthetic */ Fragment f1148r;

        /* renamed from: s */
        public final /* synthetic */ Fragment f1149s;

        /* renamed from: t */
        public final /* synthetic */ boolean f1150t;

        /* renamed from: u */
        public final /* synthetic */ ArrayList f1151u;

        /* renamed from: v */
        public final /* synthetic */ Object f1152v;

        /* renamed from: w */
        public final /* synthetic */ Rect f1153w;

        public RunnableC0291d(AbstractC0303v abstractC0303v, C5270a c5270a, Object obj, C0292e c0292e, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f1142a = abstractC0303v;
            this.f1143b = c5270a;
            this.f1144d = obj;
            this.f1145k = c0292e;
            this.f1146p = arrayList;
            this.f1147q = view;
            this.f1148r = fragment;
            this.f1149s = fragment2;
            this.f1150t = z;
            this.f1151u = arrayList2;
            this.f1152v = obj2;
            this.f1153w = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5270a<String, View> m26876h = C0287o.m26876h(this.f1142a, this.f1143b, this.f1144d, this.f1145k);
            if (m26876h != null) {
                this.f1146p.addAll(m26876h.values());
                this.f1146p.add(this.f1147q);
            }
            C0287o.m26878f(this.f1148r, this.f1149s, this.f1150t, m26876h, false);
            Object obj = this.f1144d;
            if (obj != null) {
                this.f1142a.mo26825z(obj, this.f1151u, this.f1146p);
                View m26865s = C0287o.m26865s(m26876h, this.f1145k, this.f1152v, this.f1150t);
                if (m26865s != null) {
                    this.f1142a.m26840k(m26865s, this.f1153w);
                }
            }
        }
    }

    /* renamed from: androidx.fragment.app.o$e */
    /* loaded from: classes.dex */
    public static class C0292e {

        /* renamed from: a */
        public Fragment f1154a;

        /* renamed from: b */
        public boolean f1155b;

        /* renamed from: c */
        public C0251a f1156c;

        /* renamed from: d */
        public Fragment f1157d;

        /* renamed from: e */
        public boolean f1158e;

        /* renamed from: f */
        public C0251a f1159f;
    }

    /* renamed from: m */
    public static Object m26871m(AbstractC0303v abstractC0303v, ViewGroup viewGroup, View view, C5270a<String, String> c5270a, C0292e c0292e, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object m26864t;
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = c0292e.f1154a;
        Fragment fragment2 = c0292e.f1157d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0292e.f1155b;
        if (c5270a.isEmpty()) {
            m26864t = null;
        } else {
            m26864t = m26864t(abstractC0303v, fragment, fragment2, z);
        }
        C5270a<String, View> m26875i = m26875i(abstractC0303v, c5270a, m26864t, c0292e);
        C5270a<String, View> m26876h = m26876h(abstractC0303v, c5270a, m26864t, c0292e);
        if (c5270a.isEmpty()) {
            if (m26875i != null) {
                m26875i.clear();
            }
            if (m26876h != null) {
                m26876h.clear();
            }
            obj3 = null;
        } else {
            m26883a(arrayList, m26875i, c5270a.keySet());
            m26883a(arrayList2, m26876h, c5270a.values());
            obj3 = m26864t;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m26878f(fragment, fragment2, z, m26875i, true);
        if (obj3 != null) {
            arrayList2.add(view);
            abstractC0303v.mo26826y(obj3, view, arrayList);
            m26858z(abstractC0303v, obj3, obj2, m26875i, c0292e.f1158e, c0292e.f1159f);
            Rect rect2 = new Rect();
            View m26865s = m26865s(m26876h, c0292e, obj, z);
            if (m26865s != null) {
                abstractC0303v.mo26830u(obj, rect2);
            }
            rect = rect2;
            view2 = m26865s;
        } else {
            view2 = null;
            rect = null;
        }
        ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(viewGroup, new RunnableC0290c(fragment, fragment2, z, m26876h, view2, abstractC0303v, rect));
        return obj3;
    }

    /* renamed from: y */
    public static void m26859y(AbstractC0303v abstractC0303v, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(viewGroup, new RunnableC0289b(obj, abstractC0303v, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    static {
        C0298u c0298u;
        if (Build.VERSION.SDK_INT >= 21) {
            c0298u = new C0298u();
        } else {
            c0298u = null;
        }
        f1124b = c0298u;
        f1125c = m26861w();
    }

    /* renamed from: A */
    public static void m26885A(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* renamed from: B */
    public static void m26884B(LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j, ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (layoutInflater$Factory2C0264j.f1009A < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            C0251a c0251a = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                m26879e(c0251a, sparseArray, z);
            } else {
                m26881c(c0251a, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(layoutInflater$Factory2C0264j.f1010B.m27046f());
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = sparseArray.keyAt(i4);
                C5270a<String, String> m26880d = m26880d(keyAt, arrayList, arrayList2, i, i2);
                C0292e c0292e = (C0292e) sparseArray.valueAt(i4);
                if (z) {
                    m26869o(layoutInflater$Factory2C0264j, keyAt, c0292e, view, m26880d);
                } else {
                    m26870n(layoutInflater$Factory2C0264j, keyAt, c0292e, view, m26880d);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0041, code lost:
        if (r10.f929v != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0076, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0092, code lost:
        if (r10.f894J == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0094, code lost:
        r1 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00e7 A[ADDED_TO_REGION] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m26882b(androidx.fragment.app.C0251a r16, androidx.fragment.app.AbstractC0285n.C0286a r17, android.util.SparseArray<androidx.fragment.app.C0287o.C0292e> r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0287o.m26882b(androidx.fragment.app.a, androidx.fragment.app.n$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: c */
    public static void m26881c(C0251a c0251a, SparseArray<C0292e> sparseArray, boolean z) {
        int size = c0251a.f1097a.size();
        for (int i = 0; i < size; i++) {
            m26882b(c0251a, c0251a.f1097a.get(i), sparseArray, false, z);
        }
    }

    /* renamed from: d */
    public static C5270a<String, String> m26880d(int i, ArrayList<C0251a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C5270a<String, String> c5270a = new C5270a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            C0251a c0251a = arrayList.get(i4);
            if (c0251a.m27106p(i)) {
                boolean booleanValue = arrayList2.get(i4).booleanValue();
                ArrayList<String> arrayList5 = c0251a.f1111o;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (booleanValue) {
                        arrayList3 = c0251a.f1111o;
                        arrayList4 = c0251a.f1112p;
                    } else {
                        ArrayList<String> arrayList6 = c0251a.f1111o;
                        arrayList3 = c0251a.f1112p;
                        arrayList4 = arrayList6;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String remove = c5270a.remove(str2);
                        if (remove != null) {
                            c5270a.put(str, remove);
                        } else {
                            c5270a.put(str, str2);
                        }
                    }
                }
            }
        }
        return c5270a;
    }

    /* renamed from: e */
    public static void m26879e(C0251a c0251a, SparseArray<C0292e> sparseArray, boolean z) {
        if (!c0251a.f956s.f1011C.mo27048d()) {
            return;
        }
        for (int size = c0251a.f1097a.size() - 1; size >= 0; size--) {
            m26882b(c0251a, c0251a.f1097a.get(size), sparseArray, true, z);
        }
    }

    /* renamed from: f */
    public static void m26878f(Fragment fragment, Fragment fragment2, boolean z, C5270a<String, View> c5270a, boolean z2) {
        if (z) {
            fragment2.m27134j();
        } else {
            fragment.m27134j();
        }
    }

    /* renamed from: h */
    public static C5270a<String, View> m26876h(AbstractC0303v abstractC0303v, C5270a<String, String> c5270a, Object obj, C0292e c0292e) {
        ArrayList<String> arrayList;
        Fragment fragment = c0292e.f1154a;
        View view = fragment.getView();
        if (!c5270a.isEmpty() && obj != null && view != null) {
            C5270a<String, View> c5270a2 = new C5270a<>();
            abstractC0303v.m26841j(c5270a2, view);
            C0251a c0251a = c0292e.f1156c;
            if (c0292e.f1155b) {
                fragment.m27133k();
                arrayList = c0251a.f1111o;
            } else {
                fragment.m27134j();
                arrayList = c0251a.f1112p;
            }
            if (arrayList != null) {
                c5270a2.m13723o(arrayList);
                c5270a2.m13723o(c5270a.values());
            }
            m26860x(c5270a, c5270a2);
            return c5270a2;
        }
        c5270a.clear();
        return null;
    }

    /* renamed from: j */
    public static AbstractC0303v m26874j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        AbstractC0303v abstractC0303v = f1124b;
        if (abstractC0303v != null && m26877g(abstractC0303v, arrayList)) {
            return abstractC0303v;
        }
        AbstractC0303v abstractC0303v2 = f1125c;
        if (abstractC0303v2 != null && m26877g(abstractC0303v2, arrayList)) {
            return abstractC0303v2;
        }
        if (abstractC0303v == null && abstractC0303v2 == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* renamed from: k */
    public static ArrayList<View> m26873k(AbstractC0303v abstractC0303v, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj != null) {
            ArrayList<View> arrayList2 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                abstractC0303v.m26845f(arrayList2, view2);
            }
            if (arrayList != null) {
                arrayList2.removeAll(arrayList);
            }
            if (!arrayList2.isEmpty()) {
                arrayList2.add(view);
                abstractC0303v.mo26849b(obj, arrayList2);
                return arrayList2;
            }
            return arrayList2;
        }
        return null;
    }

    /* renamed from: l */
    public static Object m26872l(AbstractC0303v abstractC0303v, ViewGroup viewGroup, View view, C5270a<String, String> c5270a, C0292e c0292e, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object m26864t;
        C5270a<String, String> c5270a2;
        Object obj3;
        Rect rect;
        Fragment fragment = c0292e.f1154a;
        Fragment fragment2 = c0292e.f1157d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0292e.f1155b;
        if (c5270a.isEmpty()) {
            c5270a2 = c5270a;
            m26864t = null;
        } else {
            m26864t = m26864t(abstractC0303v, fragment, fragment2, z);
            c5270a2 = c5270a;
        }
        C5270a<String, View> m26875i = m26875i(abstractC0303v, c5270a2, m26864t, c0292e);
        if (c5270a.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(m26875i.values());
            obj3 = m26864t;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m26878f(fragment, fragment2, z, m26875i, true);
        if (obj3 != null) {
            rect = new Rect();
            abstractC0303v.mo26826y(obj3, view, arrayList);
            m26858z(abstractC0303v, obj3, obj2, m26875i, c0292e.f1158e, c0292e.f1159f);
            if (obj != null) {
                abstractC0303v.mo26830u(obj, rect);
            }
        } else {
            rect = null;
        }
        ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(viewGroup, new RunnableC0291d(abstractC0303v, c5270a, obj3, c0292e, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return obj3;
    }

    /* renamed from: n */
    public static void m26870n(LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j, int i, C0292e c0292e, View view, C5270a<String, String> c5270a) {
        ViewGroup viewGroup;
        Fragment fragment;
        Fragment fragment2;
        AbstractC0303v m26874j;
        Object obj;
        Object obj2;
        if (layoutInflater$Factory2C0264j.f1011C.mo27048d()) {
            viewGroup = (ViewGroup) layoutInflater$Factory2C0264j.f1011C.mo27049c(i);
        } else {
            viewGroup = null;
        }
        if (viewGroup == null || (m26874j = m26874j((fragment2 = c0292e.f1157d), (fragment = c0292e.f1154a))) == null) {
            return;
        }
        boolean z = c0292e.f1155b;
        boolean z2 = c0292e.f1158e;
        Object m26867q = m26867q(m26874j, fragment, z);
        Object m26866r = m26866r(m26874j, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m26872l = m26872l(m26874j, viewGroup, view, c5270a, c0292e, arrayList, arrayList2, m26867q, m26866r);
        if (m26867q == null && m26872l == null) {
            obj = m26866r;
            if (obj == null) {
                return;
            }
        } else {
            obj = m26866r;
        }
        ArrayList<View> m26873k = m26873k(m26874j, obj, fragment2, arrayList, view);
        if (m26873k != null && !m26873k.isEmpty()) {
            obj2 = obj;
        } else {
            obj2 = null;
        }
        m26874j.mo26850a(m26867q, view);
        Object m26863u = m26863u(m26874j, m26867q, obj2, m26872l, fragment, c0292e.f1155b);
        if (m26863u != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            m26874j.mo26831t(m26863u, m26867q, arrayList3, obj2, m26873k, m26872l, arrayList2);
            m26859y(m26874j, viewGroup, fragment, view, arrayList2, m26867q, arrayList3, obj2, m26873k);
            m26874j.m26828w(viewGroup, arrayList2, c5270a);
            m26874j.mo26848c(viewGroup, m26863u);
            m26874j.m26832s(viewGroup, arrayList2, c5270a);
        }
    }

    /* renamed from: o */
    public static void m26869o(LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j, int i, C0292e c0292e, View view, C5270a<String, String> c5270a) {
        ViewGroup viewGroup;
        Fragment fragment;
        Fragment fragment2;
        AbstractC0303v m26874j;
        Object obj;
        if (layoutInflater$Factory2C0264j.f1011C.mo27048d()) {
            viewGroup = (ViewGroup) layoutInflater$Factory2C0264j.f1011C.mo27049c(i);
        } else {
            viewGroup = null;
        }
        ViewGroup viewGroup2 = viewGroup;
        if (viewGroup2 == null || (m26874j = m26874j((fragment2 = c0292e.f1157d), (fragment = c0292e.f1154a))) == null) {
            return;
        }
        boolean z = c0292e.f1155b;
        boolean z2 = c0292e.f1158e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m26867q = m26867q(m26874j, fragment, z);
        Object m26866r = m26866r(m26874j, fragment2, z2);
        Object m26871m = m26871m(m26874j, viewGroup2, view, c5270a, c0292e, arrayList2, arrayList, m26867q, m26866r);
        if (m26867q == null && m26871m == null) {
            obj = m26866r;
            if (obj == null) {
                return;
            }
        } else {
            obj = m26866r;
        }
        ArrayList<View> m26873k = m26873k(m26874j, obj, fragment2, arrayList2, view);
        ArrayList<View> m26873k2 = m26873k(m26874j, m26867q, fragment, arrayList, view);
        m26885A(m26873k2, 4);
        Object m26863u = m26863u(m26874j, m26867q, obj, m26871m, fragment, z);
        if (m26863u != null) {
            m26862v(m26874j, obj, fragment2, m26873k);
            ArrayList<String> m26836o = m26874j.m26836o(arrayList);
            m26874j.mo26831t(m26863u, m26867q, m26873k2, obj, m26873k, m26871m, arrayList);
            m26874j.mo26848c(viewGroup2, m26863u);
            m26874j.m26827x(viewGroup2, arrayList2, arrayList, m26836o, c5270a);
            m26885A(m26873k2, 0);
            m26874j.mo26825z(m26871m, arrayList2, arrayList);
        }
    }

    /* renamed from: p */
    public static C0292e m26868p(C0292e c0292e, SparseArray<C0292e> sparseArray, int i) {
        if (c0292e == null) {
            C0292e c0292e2 = new C0292e();
            sparseArray.put(i, c0292e2);
            return c0292e2;
        }
        return c0292e;
    }

    /* renamed from: q */
    public static Object m26867q(AbstractC0303v abstractC0303v, Fragment fragment, boolean z) {
        Object enterTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            enterTransition = fragment.getReenterTransition();
        } else {
            enterTransition = fragment.getEnterTransition();
        }
        return abstractC0303v.mo26844g(enterTransition);
    }

    /* renamed from: r */
    public static Object m26866r(AbstractC0303v abstractC0303v, Fragment fragment, boolean z) {
        Object exitTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            exitTransition = fragment.getReturnTransition();
        } else {
            exitTransition = fragment.getExitTransition();
        }
        return abstractC0303v.mo26844g(exitTransition);
    }

    /* renamed from: s */
    public static View m26865s(C5270a<String, View> c5270a, C0292e c0292e, Object obj, boolean z) {
        ArrayList<String> arrayList;
        String str;
        C0251a c0251a = c0292e.f1156c;
        if (obj != null && c5270a != null && (arrayList = c0251a.f1111o) != null && !arrayList.isEmpty()) {
            if (z) {
                str = c0251a.f1111o.get(0);
            } else {
                str = c0251a.f1112p.get(0);
            }
            return c5270a.get(str);
        }
        return null;
    }

    /* renamed from: t */
    public static Object m26864t(AbstractC0303v abstractC0303v, Fragment fragment, Fragment fragment2, boolean z) {
        Object sharedElementEnterTransition;
        if (fragment != null && fragment2 != null) {
            if (z) {
                sharedElementEnterTransition = fragment2.getSharedElementReturnTransition();
            } else {
                sharedElementEnterTransition = fragment.getSharedElementEnterTransition();
            }
            return abstractC0303v.mo26851A(abstractC0303v.mo26844g(sharedElementEnterTransition));
        }
        return null;
    }

    /* renamed from: u */
    public static Object m26863u(AbstractC0303v abstractC0303v, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean z2;
        if (obj != null && obj2 != null && fragment != null) {
            if (z) {
                z2 = fragment.getAllowReturnTransitionOverlap();
            } else {
                z2 = fragment.getAllowEnterTransitionOverlap();
            }
        } else {
            z2 = true;
        }
        if (z2) {
            return abstractC0303v.mo26837n(obj2, obj, obj3);
        }
        return abstractC0303v.mo26838m(obj2, obj, obj3);
    }

    /* renamed from: v */
    public static void m26862v(AbstractC0303v abstractC0303v, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.f929v && fragment.f894J && fragment.f909Y) {
            fragment.m27144W(true);
            abstractC0303v.mo26833r(obj, fragment.getView(), arrayList);
            ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(fragment.f901Q, new RunnableC0288a(arrayList));
        }
    }

    /* renamed from: w */
    public static AbstractC0303v m26861w() {
        try {
            return (AbstractC0303v) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: z */
    public static void m26858z(AbstractC0303v abstractC0303v, Object obj, Object obj2, C5270a<String, View> c5270a, boolean z, C0251a c0251a) {
        String str;
        ArrayList<String> arrayList = c0251a.f1111o;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (z) {
                str = c0251a.f1112p.get(0);
            } else {
                str = c0251a.f1111o.get(0);
            }
            View view = c5270a.get(str);
            abstractC0303v.mo26829v(obj, view);
            if (obj2 != null) {
                abstractC0303v.mo26829v(obj2, view);
            }
        }
    }

    /* renamed from: a */
    public static void m26883a(ArrayList<View> arrayList, C5270a<String, View> c5270a, Collection<String> collection) {
        for (int size = c5270a.size() - 1; size >= 0; size--) {
            View m13656m = c5270a.m13656m(size);
            if (collection.contains(C3218s0.m19334r(m13656m))) {
                arrayList.add(m13656m);
            }
        }
    }

    /* renamed from: g */
    public static boolean m26877g(AbstractC0303v abstractC0303v, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC0303v.mo26846e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public static C5270a<String, View> m26875i(AbstractC0303v abstractC0303v, C5270a<String, String> c5270a, Object obj, C0292e c0292e) {
        ArrayList<String> arrayList;
        if (!c5270a.isEmpty() && obj != null) {
            Fragment fragment = c0292e.f1157d;
            C5270a<String, View> c5270a2 = new C5270a<>();
            abstractC0303v.m26841j(c5270a2, fragment.requireView());
            C0251a c0251a = c0292e.f1159f;
            if (c0292e.f1158e) {
                fragment.m27134j();
                arrayList = c0251a.f1112p;
            } else {
                fragment.m27133k();
                arrayList = c0251a.f1111o;
            }
            c5270a2.m13723o(arrayList);
            c5270a.m13723o(c5270a2.keySet());
            return c5270a2;
        }
        c5270a.clear();
        return null;
    }

    /* renamed from: x */
    public static void m26860x(C5270a<String, String> c5270a, C5270a<String, View> c5270a2) {
        for (int size = c5270a.size() - 1; size >= 0; size--) {
            if (!c5270a2.containsKey(c5270a.m13656m(size))) {
                c5270a.m13658k(size);
            }
        }
    }
}
