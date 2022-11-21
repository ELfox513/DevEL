package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0170i;
import java.util.ArrayList;
import java.util.List;
import p021c.C1011d;
import p021c.C1014g;
import p038d0.C3165d;
import p038d0.C3218s0;
import p082i.AbstractC4077d;
import p091j.C4186h1;
import p091j.InterfaceC4171c1;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes.dex */
public final class View$OnKeyListenerC0153b extends AbstractC4077d implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: M */
    public static final int f371M = C1014g.f2644e;

    /* renamed from: A */
    public View f372A;

    /* renamed from: C */
    public boolean f374C;

    /* renamed from: D */
    public boolean f375D;

    /* renamed from: E */
    public int f376E;

    /* renamed from: F */
    public int f377F;

    /* renamed from: H */
    public boolean f379H;

    /* renamed from: I */
    public InterfaceC0170i.InterfaceC0171a f380I;

    /* renamed from: J */
    public ViewTreeObserver f381J;

    /* renamed from: K */
    public PopupWindow.OnDismissListener f382K;

    /* renamed from: L */
    public boolean f383L;

    /* renamed from: b */
    public final Context f384b;

    /* renamed from: d */
    public final int f385d;

    /* renamed from: k */
    public final int f386k;

    /* renamed from: p */
    public final int f387p;

    /* renamed from: q */
    public final boolean f388q;

    /* renamed from: r */
    public final Handler f389r;

    /* renamed from: z */
    public View f397z;

    /* renamed from: s */
    public final List<C0162e> f390s = new ArrayList();

    /* renamed from: t */
    public final List<C0158d> f391t = new ArrayList();

    /* renamed from: u */
    public final ViewTreeObserver.OnGlobalLayoutListener f392u = new ViewTreeObserver$OnGlobalLayoutListenerC0154a();

    /* renamed from: v */
    public final View.OnAttachStateChangeListener f393v = new View$OnAttachStateChangeListenerC0155b();

    /* renamed from: w */
    public final InterfaceC4171c1 f394w = new C0156c();

    /* renamed from: x */
    public int f395x = 0;

    /* renamed from: y */
    public int f396y = 0;

    /* renamed from: G */
    public boolean f378G = false;

    /* renamed from: B */
    public int f373B = m27561C();

    /* renamed from: androidx.appcompat.view.menu.b$a */
    /* loaded from: classes.dex */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0154a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0154a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (View$OnKeyListenerC0153b.this.mo17241a() && View$OnKeyListenerC0153b.this.f391t.size() > 0 && !View$OnKeyListenerC0153b.this.f391t.get(0).f405a.m17227w()) {
                View view = View$OnKeyListenerC0153b.this.f372A;
                if (view != null && view.isShown()) {
                    for (C0158d c0158d : View$OnKeyListenerC0153b.this.f391t) {
                        c0158d.f405a.show();
                    }
                    return;
                }
                View$OnKeyListenerC0153b.this.dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$b */
    /* loaded from: classes.dex */
    public class View$OnAttachStateChangeListenerC0155b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0155b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0153b.this.f381J;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0153b.this.f381J = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0153b view$OnKeyListenerC0153b = View$OnKeyListenerC0153b.this;
                view$OnKeyListenerC0153b.f381J.removeGlobalOnLayoutListener(view$OnKeyListenerC0153b.f392u);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$c */
    /* loaded from: classes.dex */
    public class C0156c implements InterfaceC4171c1 {

        /* renamed from: androidx.appcompat.view.menu.b$c$a */
        /* loaded from: classes.dex */
        public class RunnableC0157a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C0158d f401a;

            /* renamed from: b */
            public final /* synthetic */ MenuItem f402b;

            /* renamed from: d */
            public final /* synthetic */ C0162e f403d;

            public RunnableC0157a(C0158d c0158d, MenuItem menuItem, C0162e c0162e) {
                this.f401a = c0158d;
                this.f402b = menuItem;
                this.f403d = c0162e;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0158d c0158d = this.f401a;
                if (c0158d != null) {
                    View$OnKeyListenerC0153b.this.f383L = true;
                    c0158d.f406b.m27518e(false);
                    View$OnKeyListenerC0153b.this.f383L = false;
                }
                if (this.f402b.isEnabled() && this.f402b.hasSubMenu()) {
                    this.f403d.m27540L(this.f402b, 4);
                }
            }
        }

        public C0156c() {
        }

        @Override // p091j.InterfaceC4171c1
        /* renamed from: f */
        public void mo17189f(C0162e c0162e, MenuItem menuItem) {
            View$OnKeyListenerC0153b.this.f389r.removeCallbacksAndMessages(c0162e);
        }

        @Override // p091j.InterfaceC4171c1
        /* renamed from: c */
        public void mo17190c(C0162e c0162e, MenuItem menuItem) {
            C0158d c0158d = null;
            View$OnKeyListenerC0153b.this.f389r.removeCallbacksAndMessages(null);
            int size = View$OnKeyListenerC0153b.this.f391t.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (c0162e == View$OnKeyListenerC0153b.this.f391t.get(i).f406b) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            if (i2 < View$OnKeyListenerC0153b.this.f391t.size()) {
                c0158d = View$OnKeyListenerC0153b.this.f391t.get(i2);
            }
            View$OnKeyListenerC0153b.this.f389r.postAtTime(new RunnableC0157a(c0158d, menuItem, c0162e), c0162e, SystemClock.uptimeMillis() + 200);
        }
    }

    /* renamed from: C */
    public final int m27561C() {
        return C3218s0.m19338n(this.f397z) == 1 ? 0 : 1;
    }

    @Override // p082i.InterfaceC4080g
    /* renamed from: a */
    public boolean mo17241a() {
        return this.f391t.size() > 0 && this.f391t.get(0).f405a.mo17241a();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: d */
    public boolean mo27287d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: g */
    public void mo27457g(InterfaceC0170i.InterfaceC0171a interfaceC0171a) {
        this.f380I = interfaceC0171a;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: l */
    public boolean mo17422l() {
        return false;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: q */
    public void mo17417q(boolean z) {
        this.f378G = z;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: s */
    public void mo17415s(int i) {
        this.f374C = true;
        this.f376E = i;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: t */
    public void mo17414t(PopupWindow.OnDismissListener onDismissListener) {
        this.f382K = onDismissListener;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: u */
    public void mo17413u(boolean z) {
        this.f379H = z;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: v */
    public void mo17412v(int i) {
        this.f375D = true;
        this.f377F = i;
    }

    /* renamed from: androidx.appcompat.view.menu.b$d */
    /* loaded from: classes.dex */
    public static class C0158d {

        /* renamed from: a */
        public final C4186h1 f405a;

        /* renamed from: b */
        public final C0162e f406b;

        /* renamed from: c */
        public final int f407c;

        /* renamed from: a */
        public ListView m27556a() {
            return this.f405a.mo17237i();
        }

        public C0158d(C4186h1 c4186h1, C0162e c0162e, int i) {
            this.f405a = c4186h1;
            this.f406b = c0162e;
            this.f407c = i;
        }
    }

    /* renamed from: B */
    public final View m27562B(C0158d c0158d, C0162e c0162e) {
        C0161d c0161d;
        int i;
        int firstVisiblePosition;
        MenuItem m27563A = m27563A(c0158d.f406b, c0162e);
        if (m27563A == null) {
            return null;
        }
        ListView m27556a = c0158d.m27556a();
        ListAdapter adapter = m27556a.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            c0161d = (C0161d) headerViewListAdapter.getWrappedAdapter();
        } else {
            c0161d = (C0161d) adapter;
            i = 0;
        }
        int count = c0161d.getCount();
        while (true) {
            if (i2 < count) {
                if (m27563A == c0161d.getItem(i2)) {
                    break;
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 == -1 || (firstVisiblePosition = (i2 + i) - m27556a.getFirstVisiblePosition()) < 0 || firstVisiblePosition >= m27556a.getChildCount()) {
            return null;
        }
        return m27556a.getChildAt(firstVisiblePosition);
    }

    /* renamed from: D */
    public final int m27560D(int i) {
        List<C0158d> list = this.f391t;
        ListView m27556a = list.get(list.size() - 1).m27556a();
        int[] iArr = new int[2];
        m27556a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f372A.getWindowVisibleDisplayFrame(rect);
        if (this.f373B == 1) {
            if (iArr[0] + m27556a.getWidth() + i <= rect.right) {
                return 1;
            }
            return 0;
        } else if (iArr[0] - i < 0) {
            return 1;
        } else {
            return 0;
        }
    }

    /* renamed from: E */
    public final void m27559E(C0162e c0162e) {
        C0158d c0158d;
        View view;
        boolean z;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f384b);
        C0161d c0161d = new C0161d(c0162e, from, this.f388q, f371M);
        if (!mo17241a() && this.f378G) {
            c0161d.m27548d(true);
        } else if (mo17241a()) {
            c0161d.m27548d(AbstractC4077d.m17411w(c0162e));
        }
        int m17420n = AbstractC4077d.m17420n(c0161d, null, this.f384b, this.f385d);
        C4186h1 m27558y = m27558y();
        m27558y.mo16934o(c0161d);
        m27558y.m17253A(m17420n);
        m27558y.m17252B(this.f396y);
        if (this.f391t.size() > 0) {
            List<C0158d> list = this.f391t;
            c0158d = list.get(list.size() - 1);
            view = m27562B(c0158d, c0162e);
        } else {
            c0158d = null;
            view = null;
        }
        if (view != null) {
            m27558y.m17191P(false);
            m27558y.m17194M(null);
            int m27560D = m27560D(m17420n);
            if (m27560D == 1) {
                z = true;
            } else {
                z = false;
            }
            this.f373B = m27560D;
            if (Build.VERSION.SDK_INT >= 26) {
                m27558y.m17225y(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f397z.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f396y & 7) == 5) {
                    iArr[0] = iArr[0] + this.f397z.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f396y & 5) == 5) {
                if (!z) {
                    m17420n = view.getWidth();
                    i3 = i - m17420n;
                }
                i3 = i + m17420n;
            } else {
                if (z) {
                    m17420n = view.getWidth();
                    i3 = i + m17420n;
                }
                i3 = i - m17420n;
            }
            m27558y.m17239d(i3);
            m27558y.m17246H(true);
            m27558y.m17235k(i2);
        } else {
            if (this.f374C) {
                m27558y.m17239d(this.f376E);
            }
            if (this.f375D) {
                m27558y.m17235k(this.f377F);
            }
            m27558y.m17251C(m17421m());
        }
        this.f391t.add(new C0158d(m27558y, c0162e, this.f373B));
        m27558y.show();
        ListView mo17237i = m27558y.mo17237i();
        mo17237i.setOnKeyListener(this);
        if (c0158d == null && this.f379H && c0162e.m27503x() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(C1014g.f2651l, (ViewGroup) mo17237i, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(c0162e.m27503x());
            mo17237i.addHeaderView(frameLayout, null, false);
            m27558y.show();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: c */
    public void mo27288c(boolean z) {
        for (C0158d c0158d : this.f391t) {
            AbstractC4077d.m17410x(c0158d.m27556a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // p082i.InterfaceC4080g
    public void dismiss() {
        int size = this.f391t.size();
        if (size > 0) {
            C0158d[] c0158dArr = (C0158d[]) this.f391t.toArray(new C0158d[size]);
            for (int i = size - 1; i >= 0; i--) {
                C0158d c0158d = c0158dArr[i];
                if (c0158d.f405a.mo17241a()) {
                    c0158d.f405a.dismiss();
                }
            }
        }
    }

    @Override // p082i.InterfaceC4080g
    /* renamed from: i */
    public ListView mo17237i() {
        if (this.f391t.isEmpty()) {
            return null;
        }
        List<C0158d> list = this.f391t;
        return list.get(list.size() - 1).m27556a();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: j */
    public boolean mo27285j(SubMenuC0177l subMenuC0177l) {
        for (C0158d c0158d : this.f391t) {
            if (subMenuC0177l == c0158d.f406b) {
                c0158d.m27556a().requestFocus();
                return true;
            }
        }
        if (subMenuC0177l.hasVisibleItems()) {
            mo17423k(subMenuC0177l);
            InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f380I;
            if (interfaceC0171a != null) {
                interfaceC0171a.mo19574c(subMenuC0177l);
            }
            return true;
        }
        return false;
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: k */
    public void mo17423k(C0162e c0162e) {
        c0162e.m27522c(this, this.f384b);
        if (mo17241a()) {
            m27559E(c0162e);
        } else {
            this.f390s.add(c0162e);
        }
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: o */
    public void mo17419o(View view) {
        if (this.f397z != view) {
            this.f397z = view;
            this.f396y = C3165d.m19464a(this.f395x, C3218s0.m19338n(view));
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0158d c0158d;
        int size = this.f391t.size();
        int i = 0;
        while (true) {
            if (i < size) {
                c0158d = this.f391t.get(i);
                if (!c0158d.f405a.mo17241a()) {
                    break;
                }
                i++;
            } else {
                c0158d = null;
                break;
            }
        }
        if (c0158d != null) {
            c0158d.f406b.m27518e(false);
        }
    }

    @Override // p082i.AbstractC4077d
    /* renamed from: r */
    public void mo17416r(int i) {
        if (this.f395x != i) {
            this.f395x = i;
            this.f396y = C3165d.m19464a(i, C3218s0.m19338n(this.f397z));
        }
    }

    /* renamed from: y */
    public final C4186h1 m27558y() {
        C4186h1 c4186h1 = new C4186h1(this.f384b, null, this.f386k, this.f387p);
        c4186h1.m17192O(this.f394w);
        c4186h1.m17247G(this);
        c4186h1.m17248F(this);
        c4186h1.m17225y(this.f397z);
        c4186h1.m17252B(this.f396y);
        c4186h1.m17249E(true);
        c4186h1.m17250D(2);
        return c4186h1;
    }

    /* renamed from: z */
    public final int m27557z(C0162e c0162e) {
        int size = this.f391t.size();
        for (int i = 0; i < size; i++) {
            if (c0162e == this.f391t.get(i).f406b) {
                return i;
            }
        }
        return -1;
    }

    public View$OnKeyListenerC0153b(Context context, View view, int i, int i2, boolean z) {
        this.f384b = context;
        this.f397z = view;
        this.f386k = i;
        this.f387p = i2;
        this.f388q = z;
        Resources resources = context.getResources();
        this.f385d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C1011d.f2543d));
        this.f389r = new Handler();
    }

    /* renamed from: A */
    public final MenuItem m27563A(C0162e c0162e, C0162e c0162e2) {
        int size = c0162e.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0162e.getItem(i);
            if (item.hasSubMenu() && c0162e2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: b */
    public void mo27289b(C0162e c0162e, boolean z) {
        int m27557z = m27557z(c0162e);
        if (m27557z < 0) {
            return;
        }
        int i = m27557z + 1;
        if (i < this.f391t.size()) {
            this.f391t.get(i).f406b.m27518e(false);
        }
        C0158d remove = this.f391t.remove(m27557z);
        remove.f406b.m27537O(this);
        if (this.f383L) {
            remove.f405a.m17193N(null);
            remove.f405a.m17224z(0);
        }
        remove.f405a.dismiss();
        int size = this.f391t.size();
        if (size > 0) {
            this.f373B = this.f391t.get(size - 1).f407c;
        } else {
            this.f373B = m27561C();
        }
        if (size == 0) {
            dismiss();
            InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f380I;
            if (interfaceC0171a != null) {
                interfaceC0171a.mo19575b(c0162e, true);
            }
            ViewTreeObserver viewTreeObserver = this.f381J;
            if (viewTreeObserver != null) {
                if (viewTreeObserver.isAlive()) {
                    this.f381J.removeGlobalOnLayoutListener(this.f392u);
                }
                this.f381J = null;
            }
            this.f372A.removeOnAttachStateChangeListener(this.f393v);
            this.f382K.onDismiss();
        } else if (z) {
            this.f391t.get(0).f406b.m27518e(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // p082i.InterfaceC4080g
    public void show() {
        boolean z;
        if (mo17241a()) {
            return;
        }
        for (C0162e c0162e : this.f390s) {
            m27559E(c0162e);
        }
        this.f390s.clear();
        View view = this.f397z;
        this.f372A = view;
        if (view != null) {
            if (this.f381J == null) {
                z = true;
            } else {
                z = false;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f381J = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f392u);
            }
            this.f372A.addOnAttachStateChangeListener(this.f393v);
        }
    }
}
