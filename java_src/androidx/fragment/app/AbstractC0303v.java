package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p038d0.C3176f1;
import p038d0.C3218s0;
import p038d0.ViewTreeObserver$OnPreDrawListenerC3262y;
@SuppressLint({"UnknownNullness"})
/* renamed from: androidx.fragment.app.v */
/* loaded from: classes.dex */
public abstract class AbstractC0303v {

    /* renamed from: androidx.fragment.app.v$a */
    /* loaded from: classes.dex */
    public class RunnableC0304a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f1174a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1175b;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f1176d;

        /* renamed from: k */
        public final /* synthetic */ ArrayList f1177k;

        /* renamed from: p */
        public final /* synthetic */ ArrayList f1178p;

        public RunnableC0304a(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f1174a = i;
            this.f1175b = arrayList;
            this.f1176d = arrayList2;
            this.f1177k = arrayList3;
            this.f1178p = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f1174a; i++) {
                C3218s0.m19355P((View) this.f1175b.get(i), (String) this.f1176d.get(i));
                C3218s0.m19355P((View) this.f1177k.get(i), (String) this.f1178p.get(i));
            }
        }
    }

    /* renamed from: androidx.fragment.app.v$b */
    /* loaded from: classes.dex */
    public class RunnableC0305b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f1180a;

        /* renamed from: b */
        public final /* synthetic */ Map f1181b;

        public RunnableC0305b(ArrayList arrayList, Map map) {
            this.f1180a = arrayList;
            this.f1181b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1180a.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f1180a.get(i);
                String m19334r = C3218s0.m19334r(view);
                if (m19334r != null) {
                    C3218s0.m19355P(view, AbstractC0303v.m26842i(this.f1181b, m19334r));
                }
            }
        }
    }

    /* renamed from: androidx.fragment.app.v$c */
    /* loaded from: classes.dex */
    public class RunnableC0306c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f1183a;

        /* renamed from: b */
        public final /* synthetic */ Map f1184b;

        public RunnableC0306c(ArrayList arrayList, Map map) {
            this.f1183a = arrayList;
            this.f1184b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1183a.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f1183a.get(i);
                C3218s0.m19355P(view, (String) this.f1184b.get(C3218s0.m19334r(view)));
            }
        }
    }

    /* renamed from: h */
    public static boolean m26843h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: l */
    public static boolean m26839l(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: A */
    public abstract Object mo26851A(Object obj);

    /* renamed from: a */
    public abstract void mo26850a(Object obj, View view);

    /* renamed from: b */
    public abstract void mo26849b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void mo26848c(ViewGroup viewGroup, Object obj);

    /* renamed from: e */
    public abstract boolean mo26846e(Object obj);

    /* renamed from: g */
    public abstract Object mo26844g(Object obj);

    /* renamed from: k */
    public void m26840k(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        rect.set(i, iArr[1], view.getWidth() + i, iArr[1] + view.getHeight());
    }

    /* renamed from: m */
    public abstract Object mo26838m(Object obj, Object obj2, Object obj3);

    /* renamed from: n */
    public abstract Object mo26837n(Object obj, Object obj2, Object obj3);

    /* renamed from: p */
    public abstract void mo26835p(Object obj, View view);

    /* renamed from: q */
    public abstract void mo26834q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: r */
    public abstract void mo26833r(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: s */
    public void m26832s(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(viewGroup, new RunnableC0306c(arrayList, map));
    }

    /* renamed from: t */
    public abstract void mo26831t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: u */
    public abstract void mo26830u(Object obj, Rect rect);

    /* renamed from: v */
    public abstract void mo26829v(Object obj, View view);

    /* renamed from: w */
    public void m26828w(View view, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(view, new RunnableC0305b(arrayList, map));
    }

    /* renamed from: y */
    public abstract void mo26826y(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: z */
    public abstract void mo26825z(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: o */
    public ArrayList<String> m26836o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C3218s0.m19334r(view));
            C3218s0.m19355P(view, null);
        }
        return arrayList2;
    }

    /* renamed from: d */
    public static void m26847d(List<View> list, View view) {
        int size = list.size();
        if (m26843h(list, view, size)) {
            return;
        }
        list.add(view);
        for (int i = size; i < list.size(); i++) {
            View view2 = list.get(i);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (!m26843h(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: i */
    public static String m26842i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* renamed from: f */
    public void m26845f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (C3176f1.m19447a(viewGroup)) {
                    arrayList.add(viewGroup);
                    return;
                }
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    m26845f(arrayList, viewGroup.getChildAt(i));
                }
                return;
            }
            arrayList.add(view);
        }
    }

    /* renamed from: j */
    public void m26841j(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String m19334r = C3218s0.m19334r(view);
            if (m19334r != null) {
                map.put(m19334r, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    m26841j(map, viewGroup.getChildAt(i));
                }
            }
        }
    }

    /* renamed from: x */
    public void m26827x(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String m19334r = C3218s0.m19334r(view2);
            arrayList4.add(m19334r);
            if (m19334r != null) {
                C3218s0.m19355P(view2, null);
                String str = map.get(m19334r);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C3218s0.m19355P(arrayList2.get(i2), m19334r);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        ViewTreeObserver$OnPreDrawListenerC3262y.m19227a(view, new RunnableC0304a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }
}
