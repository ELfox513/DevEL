package p038d0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import p047e0.C3346j;
import p047e0.C3348k;
import p154q.C5379b;
/* renamed from: d0.a */
/* loaded from: classes.dex */
public class C3150a {

    /* renamed from: c */
    public static final View.AccessibilityDelegate f15484c = new View.AccessibilityDelegate();

    /* renamed from: a */
    public final View.AccessibilityDelegate f15485a;

    /* renamed from: b */
    public final View.AccessibilityDelegate f15486b;

    /* renamed from: d0.a$a */
    /* loaded from: classes.dex */
    public static final class C3151a extends View.AccessibilityDelegate {

        /* renamed from: a */
        public final C3150a f15487a;

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f15487a.m19493a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f15487a.mo19488f(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f15487a.m19486h(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f15487a.m19485i(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f15487a.mo19484j(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f15487a.m19482l(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f15487a.m19481m(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C3348k m19492b = this.f15487a.m19492b(view);
            if (m19492b != null) {
                return (AccessibilityNodeProvider) m19492b.m19044a();
            }
            return null;
        }

        public C3151a(C3150a c3150a) {
            this.f15487a = c3150a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C3346j m19074P = C3346j.m19074P(accessibilityNodeInfo);
            m19074P.m19078L(C3218s0.m19328x(view));
            m19074P.m19080J(C3218s0.m19331u(view));
            m19074P.m19079K(C3218s0.m19342j(view));
            m19074P.m19076N(C3218s0.m19335q(view));
            this.f15487a.mo19487g(view, m19074P);
            m19074P.m19071c(accessibilityNodeInfo.getText(), view);
            List<C3346j.C3347a> m19491c = C3150a.m19491c(view);
            for (int i = 0; i < m19491c.size(); i++) {
                m19074P.m19073a(m19491c.get(i));
            }
        }
    }

    public C3150a() {
        this(f15484c);
    }

    /* renamed from: a */
    public boolean m19493a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f15485a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public View.AccessibilityDelegate m19490d() {
        return this.f15486b;
    }

    /* renamed from: e */
    public final boolean m19489e(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] m19062l = C3346j.m19062l(view.createAccessibilityNodeInfo().getText());
            for (int i = 0; m19062l != null && i < m19062l.length; i++) {
                if (clickableSpan.equals(m19062l[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    public void mo19488f(View view, AccessibilityEvent accessibilityEvent) {
        this.f15485a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: h */
    public void m19486h(View view, AccessibilityEvent accessibilityEvent) {
        this.f15485a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: i */
    public boolean m19485i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f15485a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: l */
    public void m19482l(View view, int i) {
        this.f15485a.sendAccessibilityEvent(view, i);
    }

    /* renamed from: m */
    public void m19481m(View view, AccessibilityEvent accessibilityEvent) {
        this.f15485a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C3150a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f15485a = accessibilityDelegate;
        this.f15486b = new C3151a(this);
    }

    /* renamed from: c */
    public static List<C3346j.C3347a> m19491c(View view) {
        List<C3346j.C3347a> list = (List) view.getTag(C5379b.f19996H);
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    /* renamed from: b */
    public C3348k m19492b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f15485a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new C3348k(accessibilityNodeProvider);
        }
        return null;
    }

    /* renamed from: g */
    public void mo19487g(View view, C3346j c3346j) {
        this.f15485a.onInitializeAccessibilityNodeInfo(view, c3346j.m19075O());
    }

    /* renamed from: k */
    public final boolean m19483k(int i, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(C5379b.f19997I);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i)) != null) {
            ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
            if (m19489e(clickableSpan, view)) {
                clickableSpan.onClick(view);
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: j */
    public boolean mo19484j(View view, int i, Bundle bundle) {
        List<C3346j.C3347a> m19491c = m19491c(view);
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= m19491c.size()) {
                break;
            }
            C3346j.C3347a c3347a = m19491c.get(i2);
            if (c3347a.m19047a() == i) {
                z = c3347a.m19045c(view, bundle);
                break;
            }
            i2++;
        }
        if (!z) {
            z = this.f15485a.performAccessibilityAction(view, i, bundle);
        }
        if (!z && i == C5379b.f20007a) {
            return m19483k(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
        }
        return z;
    }
}
