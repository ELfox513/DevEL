package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.InterfaceC0172j;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes.dex */
public class C0161d extends BaseAdapter {

    /* renamed from: a */
    public C0162e f419a;

    /* renamed from: b */
    public int f420b = -1;

    /* renamed from: d */
    public boolean f421d;

    /* renamed from: k */
    public final boolean f422k;

    /* renamed from: p */
    public final LayoutInflater f423p;

    /* renamed from: q */
    public final int f424q;

    /* renamed from: b */
    public C0162e m27550b() {
        return this.f419a;
    }

    /* renamed from: d */
    public void m27548d(boolean z) {
        this.f421d = z;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        boolean z;
        if (view == null) {
            view = this.f423p.inflate(this.f424q, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i3 = i - 1;
        if (i3 >= 0) {
            i2 = getItem(i3).getGroupId();
        } else {
            i2 = groupId;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f419a.mo27454F() && groupId != i2) {
            z = true;
        } else {
            z = false;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        InterfaceC0172j.InterfaceC0173a interfaceC0173a = (InterfaceC0172j.InterfaceC0173a) view;
        if (this.f421d) {
            listMenuItemView.setForceShowIcon(true);
        }
        interfaceC0173a.mo27458d(getItem(i), 0);
        return view;
    }

    /* renamed from: a */
    public void m27551a() {
        C0166g m27505v = this.f419a.m27505v();
        if (m27505v != null) {
            ArrayList<C0166g> m27501z = this.f419a.m27501z();
            int size = m27501z.size();
            for (int i = 0; i < size; i++) {
                if (m27501z.get(i) == m27505v) {
                    this.f420b = i;
                    return;
                }
            }
        }
        this.f420b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public C0166g getItem(int i) {
        ArrayList<C0166g> m27544E;
        if (this.f422k) {
            m27544E = this.f419a.m27501z();
        } else {
            m27544E = this.f419a.m27544E();
        }
        int i2 = this.f420b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return m27544E.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<C0166g> m27544E;
        if (this.f422k) {
            m27544E = this.f419a.m27501z();
        } else {
            m27544E = this.f419a.m27544E();
        }
        if (this.f420b < 0) {
            return m27544E.size();
        }
        return m27544E.size() - 1;
    }

    public C0161d(C0162e c0162e, LayoutInflater layoutInflater, boolean z, int i) {
        this.f422k = z;
        this.f423p = layoutInflater;
        this.f419a = c0162e;
        this.f424q = i;
        m27551a();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m27551a();
        super.notifyDataSetChanged();
    }
}
