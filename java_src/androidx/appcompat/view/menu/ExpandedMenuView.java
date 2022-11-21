package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0162e;
import p091j.C4235t1;
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements C0162e.InterfaceC0164b, InterfaceC0172j, AdapterView.OnItemClickListener {

    /* renamed from: d */
    public static final int[] f341d = {16842964, 16843049};

    /* renamed from: a */
    public C0162e f342a;

    /* renamed from: b */
    public int f343b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    @Override // androidx.appcompat.view.menu.C0162e.InterfaceC0164b
    /* renamed from: a */
    public boolean mo27412a(C0166g c0166g) {
        return this.f342a.m27540L(c0166g, 0);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j
    /* renamed from: b */
    public void mo27411b(C0162e c0162e) {
        this.f342a = c0162e;
    }

    public int getWindowAnimations() {
        return this.f343b;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo27412a((C0166g) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, f341d, i, 0);
        if (m16966u.m16969r(0)) {
            setBackgroundDrawable(m16966u.m16981f(0));
        }
        if (m16966u.m16969r(1)) {
            setDivider(m16966u.m16981f(1));
        }
        m16966u.m16965v();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }
}
