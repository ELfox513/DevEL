package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.InterfaceC0170i;
import androidx.appcompat.view.menu.InterfaceC0172j;
import java.util.ArrayList;
import p021c.C1014g;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes.dex */
public class C0159c implements InterfaceC0170i, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Context f408a;

    /* renamed from: b */
    public LayoutInflater f409b;

    /* renamed from: d */
    public C0162e f410d;

    /* renamed from: k */
    public ExpandedMenuView f411k;

    /* renamed from: p */
    public int f412p;

    /* renamed from: q */
    public int f413q;

    /* renamed from: r */
    public int f414r;

    /* renamed from: s */
    public InterfaceC0170i.InterfaceC0171a f415s;

    /* renamed from: t */
    public C0160a f416t;

    /* renamed from: androidx.appcompat.view.menu.c$a */
    /* loaded from: classes.dex */
    public class C0160a extends BaseAdapter {

        /* renamed from: a */
        public int f417a = -1;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                C0159c c0159c = C0159c.this;
                view = c0159c.f409b.inflate(c0159c.f414r, viewGroup, false);
            }
            ((InterfaceC0172j.InterfaceC0173a) view).mo27458d(getItem(i), 0);
            return view;
        }

        public C0160a() {
            m27553a();
        }

        /* renamed from: a */
        public void m27553a() {
            C0166g m27505v = C0159c.this.f410d.m27505v();
            if (m27505v != null) {
                ArrayList<C0166g> m27501z = C0159c.this.f410d.m27501z();
                int size = m27501z.size();
                for (int i = 0; i < size; i++) {
                    if (m27501z.get(i) == m27505v) {
                        this.f417a = i;
                        return;
                    }
                }
            }
            this.f417a = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: b */
        public C0166g getItem(int i) {
            ArrayList<C0166g> m27501z = C0159c.this.f410d.m27501z();
            int i2 = i + C0159c.this.f412p;
            int i3 = this.f417a;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return m27501z.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = C0159c.this.f410d.m27501z().size() - C0159c.this.f412p;
            if (this.f417a < 0) {
                return size;
            }
            return size - 1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m27553a();
            super.notifyDataSetChanged();
        }
    }

    public C0159c(Context context, int i) {
        this(i, 0);
        this.f408a = context;
        this.f409b = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: c */
    public void mo27288c(boolean z) {
        C0160a c0160a = this.f416t;
        if (c0160a != null) {
            c0160a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: d */
    public boolean mo27287d() {
        return false;
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
    /* renamed from: g */
    public void mo27457g(InterfaceC0170i.InterfaceC0171a interfaceC0171a) {
        this.f415s = interfaceC0171a;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f410d.m27539M(this.f416t.getItem(i), this, 0);
    }

    /* renamed from: a */
    public ListAdapter m27555a() {
        if (this.f416t == null) {
            this.f416t = new C0160a();
        }
        return this.f416t;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: b */
    public void mo27289b(C0162e c0162e, boolean z) {
        InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f415s;
        if (interfaceC0171a != null) {
            interfaceC0171a.mo19575b(c0162e, z);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: h */
    public void mo17424h(Context context, C0162e c0162e) {
        if (this.f413q != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f413q);
            this.f408a = contextThemeWrapper;
            this.f409b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f408a != null) {
            this.f408a = context;
            if (this.f409b == null) {
                this.f409b = LayoutInflater.from(context);
            }
        }
        this.f410d = c0162e;
        C0160a c0160a = this.f416t;
        if (c0160a != null) {
            c0160a.notifyDataSetChanged();
        }
    }

    /* renamed from: i */
    public InterfaceC0172j m27554i(ViewGroup viewGroup) {
        if (this.f411k == null) {
            this.f411k = (ExpandedMenuView) this.f409b.inflate(C1014g.f2646g, viewGroup, false);
            if (this.f416t == null) {
                this.f416t = new C0160a();
            }
            this.f411k.setAdapter((ListAdapter) this.f416t);
            this.f411k.setOnItemClickListener(this);
        }
        return this.f411k;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: j */
    public boolean mo27285j(SubMenuC0177l subMenuC0177l) {
        if (!subMenuC0177l.hasVisibleItems()) {
            return false;
        }
        new DialogInterface$OnKeyListenerC0165f(subMenuC0177l).m27499d(null);
        InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f415s;
        if (interfaceC0171a != null) {
            interfaceC0171a.mo19574c(subMenuC0177l);
            return true;
        }
        return true;
    }

    public C0159c(int i, int i2) {
        this.f414r = i;
        this.f413q = i2;
    }
}
