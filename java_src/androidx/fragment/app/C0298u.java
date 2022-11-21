package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.fragment.app.u */
/* loaded from: classes.dex */
public class C0298u extends AbstractC0303v {

    /* renamed from: androidx.fragment.app.u$a */
    /* loaded from: classes.dex */
    public class C0299a extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f1160a;

        public C0299a(Rect rect) {
            this.f1160a = rect;
        }

        public Rect onGetEpicenter(Transition transition) {
            return this.f1160a;
        }
    }

    /* renamed from: androidx.fragment.app.u$c */
    /* loaded from: classes.dex */
    public class C0301c implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ Object f1165a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1166b;

        /* renamed from: c */
        public final /* synthetic */ Object f1167c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f1168d;

        /* renamed from: e */
        public final /* synthetic */ Object f1169e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f1170f;

        public C0301c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f1165a = obj;
            this.f1166b = arrayList;
            this.f1167c = obj2;
            this.f1168d = arrayList2;
            this.f1169e = obj3;
            this.f1170f = arrayList3;
        }

        public void onTransitionCancel(Transition transition) {
        }

        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
        }

        public void onTransitionPause(Transition transition) {
        }

        public void onTransitionResume(Transition transition) {
        }

        public void onTransitionStart(Transition transition) {
            Object obj = this.f1165a;
            if (obj != null) {
                C0298u.this.mo26834q(obj, this.f1166b, null);
            }
            Object obj2 = this.f1167c;
            if (obj2 != null) {
                C0298u.this.mo26834q(obj2, this.f1168d, null);
            }
            Object obj3 = this.f1169e;
            if (obj3 != null) {
                C0298u.this.mo26834q(obj3, this.f1170f, null);
            }
        }
    }

    /* renamed from: androidx.fragment.app.u$d */
    /* loaded from: classes.dex */
    public class C0302d extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f1172a;

        public C0302d(Rect rect) {
            this.f1172a = rect;
        }

        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f1172a;
            if (rect != null && !rect.isEmpty()) {
                return this.f1172a;
            }
            return null;
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: c */
    public void mo26848c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: e */
    public boolean mo26846e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: g */
    public Object mo26844g(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: t */
    public void mo26831t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new C0301c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    /* renamed from: androidx.fragment.app.u$b */
    /* loaded from: classes.dex */
    public class C0300b implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ View f1162a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1163b;

        public C0300b(View view, ArrayList arrayList) {
            this.f1162a = view;
            this.f1163b = arrayList;
        }

        public void onTransitionCancel(Transition transition) {
        }

        public void onTransitionPause(Transition transition) {
        }

        public void onTransitionResume(Transition transition) {
        }

        public void onTransitionStart(Transition transition) {
        }

        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f1162a.setVisibility(8);
            int size = this.f1163b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f1163b.get(i)).setVisibility(0);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: A */
    public Object mo26851A(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: a */
    public void mo26850a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: b */
    public void mo26849b(Object obj, ArrayList<View> arrayList) {
        int transitionCount;
        Transition transitionAt;
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                transitionAt = transitionSet.getTransitionAt(i);
                mo26849b(transitionAt, arrayList);
                i++;
            }
        } else if (!m26852B(transition) && AbstractC0303v.m26839l(transition.getTargets())) {
            int size = arrayList.size();
            while (i < size) {
                transition.addTarget(arrayList.get(i));
                i++;
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: m */
    public Object mo26838m(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            transition = new TransitionSet().addTransition(transition).addTransition(transition2).setOrdering(1);
        } else if (transition == null) {
            if (transition2 != null) {
                transition = transition2;
            } else {
                transition = null;
            }
        }
        if (transition3 != null) {
            TransitionSet transitionSet = new TransitionSet();
            if (transition != null) {
                transitionSet.addTransition(transition);
            }
            transitionSet.addTransition(transition3);
            return transitionSet;
        }
        return transition;
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: n */
    public Object mo26837n(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: p */
    public void mo26835p(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: q */
    public void mo26834q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        int size;
        int transitionCount;
        Transition transitionAt;
        Transition transition = (Transition) obj;
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                transitionAt = transitionSet.getTransitionAt(i);
                mo26834q(transitionAt, arrayList, arrayList2);
                i++;
            }
        } else if (!m26852B(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            if (arrayList2 == null) {
                size = 0;
            } else {
                size = arrayList2.size();
            }
            while (i < size) {
                transition.addTarget(arrayList2.get(i));
                i++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: r */
    public void mo26833r(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new C0300b(view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: u */
    public void mo26830u(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new C0302d(rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: v */
    public void mo26829v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m26840k(view, rect);
            ((Transition) obj).setEpicenterCallback(new C0299a(rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: y */
    public void mo26826y(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0303v.m26847d(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo26849b(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0303v
    /* renamed from: z */
    public void mo26825z(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo26834q(transitionSet, arrayList, arrayList2);
        }
    }

    /* renamed from: B */
    public static boolean m26852B(Transition transition) {
        List targetNames;
        List targetTypes;
        if (AbstractC0303v.m26839l(transition.getTargetIds())) {
            targetNames = transition.getTargetNames();
            if (AbstractC0303v.m26839l(targetNames)) {
                targetTypes = transition.getTargetTypes();
                if (AbstractC0303v.m26839l(targetTypes)) {
                    return false;
                }
            }
        }
        return true;
    }
}
