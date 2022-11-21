package p082i;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0161d;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.C0166g;
import androidx.appcompat.view.menu.InterfaceC0170i;
/* renamed from: i.d */
/* loaded from: classes.dex */
public abstract class AbstractC4077d implements InterfaceC4080g, InterfaceC0170i, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Rect f17659a;

    /* renamed from: n */
    public static int m17420n(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        View view = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = listAdapter.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (viewGroup == null) {
                viewGroup = new FrameLayout(context);
            }
            view = listAdapter.getView(i4, view, viewGroup);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: e */
    public boolean mo17426e(C0162e c0162e, C0166g c0166g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: f */
    public boolean mo17425f(C0162e c0162e, C0166g c0166g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: h */
    public void mo17424h(Context context, C0162e c0162e) {
    }

    /* renamed from: k */
    public abstract void mo17423k(C0162e c0162e);

    /* renamed from: l */
    public boolean mo17422l() {
        return true;
    }

    /* renamed from: m */
    public Rect m17421m() {
        return this.f17659a;
    }

    /* renamed from: o */
    public abstract void mo17419o(View view);

    /* renamed from: p */
    public void m17418p(Rect rect) {
        this.f17659a = rect;
    }

    /* renamed from: q */
    public abstract void mo17417q(boolean z);

    /* renamed from: r */
    public abstract void mo17416r(int i);

    /* renamed from: s */
    public abstract void mo17415s(int i);

    /* renamed from: t */
    public abstract void mo17414t(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: u */
    public abstract void mo17413u(boolean z);

    /* renamed from: v */
    public abstract void mo17412v(int i);

    /* renamed from: x */
    public static C0161d m17410x(ListAdapter listAdapter) {
        if (listAdapter instanceof HeaderViewListAdapter) {
            return (C0161d) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter();
        }
        return (C0161d) listAdapter;
    }

    /* renamed from: w */
    public static boolean m17411w(C0162e c0162e) {
        int size = c0162e.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0162e.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int i2;
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        C0162e c0162e = m17410x(listAdapter).f419a;
        MenuItem menuItem = (MenuItem) listAdapter.getItem(i);
        if (mo17422l()) {
            i2 = 0;
        } else {
            i2 = 4;
        }
        c0162e.m27539M(menuItem, this, i2);
    }
}
