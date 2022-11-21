package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.InterfaceC0170i;
import androidx.appcompat.view.menu.InterfaceC0172j;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes.dex */
public abstract class AbstractC0152a implements InterfaceC0170i {

    /* renamed from: a */
    public Context f361a;

    /* renamed from: b */
    public Context f362b;

    /* renamed from: d */
    public C0162e f363d;

    /* renamed from: k */
    public LayoutInflater f364k;

    /* renamed from: p */
    public LayoutInflater f365p;

    /* renamed from: q */
    public InterfaceC0170i.InterfaceC0171a f366q;

    /* renamed from: r */
    public int f367r;

    /* renamed from: s */
    public int f368s;

    /* renamed from: t */
    public InterfaceC0172j f369t;

    /* renamed from: u */
    public int f370u;

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
        this.f366q = interfaceC0171a;
    }

    /* renamed from: i */
    public abstract void mo27286i(C0166g c0166g, InterfaceC0172j.InterfaceC0173a interfaceC0173a);

    /* renamed from: k */
    public InterfaceC0172j.InterfaceC0173a m27566k(ViewGroup viewGroup) {
        return (InterfaceC0172j.InterfaceC0173a) this.f364k.inflate(this.f368s, viewGroup, false);
    }

    /* renamed from: l */
    public boolean mo27284l(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    /* renamed from: m */
    public InterfaceC0170i.InterfaceC0171a m27565m() {
        return this.f366q;
    }

    /* renamed from: p */
    public void m27564p(int i) {
        this.f370u = i;
    }

    /* renamed from: q */
    public abstract boolean mo27281q(int i, C0166g c0166g);

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: b */
    public void mo27289b(C0162e c0162e, boolean z) {
        InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f366q;
        if (interfaceC0171a != null) {
            interfaceC0171a.mo19575b(c0162e, z);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: c */
    public void mo27288c(boolean z) {
        C0166g c0166g;
        ViewGroup viewGroup = (ViewGroup) this.f369t;
        if (viewGroup == null) {
            return;
        }
        C0162e c0162e = this.f363d;
        int i = 0;
        if (c0162e != null) {
            c0162e.m27508r();
            ArrayList<C0166g> m27544E = this.f363d.m27544E();
            int size = m27544E.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                C0166g c0166g2 = m27544E.get(i3);
                if (mo27281q(i2, c0166g2)) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt instanceof InterfaceC0172j.InterfaceC0173a) {
                        c0166g = ((InterfaceC0172j.InterfaceC0173a) childAt).getItemData();
                    } else {
                        c0166g = null;
                    }
                    View mo27283n = mo27283n(c0166g2, childAt, viewGroup);
                    if (c0166g2 != c0166g) {
                        mo27283n.setPressed(false);
                        mo27283n.jumpDrawablesToCurrentState();
                    }
                    if (mo27283n != childAt) {
                        m27567a(mo27283n, i2);
                    }
                    i2++;
                }
            }
            i = i2;
        }
        while (i < viewGroup.getChildCount()) {
            if (!mo27284l(viewGroup, i)) {
                i++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: h */
    public void mo17424h(Context context, C0162e c0162e) {
        this.f362b = context;
        this.f365p = LayoutInflater.from(context);
        this.f363d = c0162e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.view.menu.e] */
    @Override // androidx.appcompat.view.menu.InterfaceC0170i
    /* renamed from: j */
    public boolean mo27285j(SubMenuC0177l subMenuC0177l) {
        InterfaceC0170i.InterfaceC0171a interfaceC0171a = this.f366q;
        SubMenuC0177l subMenuC0177l2 = subMenuC0177l;
        if (interfaceC0171a != null) {
            if (subMenuC0177l == null) {
                subMenuC0177l2 = this.f363d;
            }
            return interfaceC0171a.mo19574c(subMenuC0177l2);
        }
        return false;
    }

    /* renamed from: n */
    public View mo27283n(C0166g c0166g, View view, ViewGroup viewGroup) {
        InterfaceC0172j.InterfaceC0173a m27566k;
        if (view instanceof InterfaceC0172j.InterfaceC0173a) {
            m27566k = (InterfaceC0172j.InterfaceC0173a) view;
        } else {
            m27566k = m27566k(viewGroup);
        }
        mo27286i(c0166g, m27566k);
        return (View) m27566k;
    }

    /* renamed from: o */
    public InterfaceC0172j mo27282o(ViewGroup viewGroup) {
        if (this.f369t == null) {
            InterfaceC0172j interfaceC0172j = (InterfaceC0172j) this.f364k.inflate(this.f367r, viewGroup, false);
            this.f369t = interfaceC0172j;
            interfaceC0172j.mo27411b(this.f363d);
            mo27288c(true);
        }
        return this.f369t;
    }

    public AbstractC0152a(Context context, int i, int i2) {
        this.f361a = context;
        this.f364k = LayoutInflater.from(context);
        this.f367r = i;
        this.f368s = i2;
    }

    /* renamed from: a */
    public void m27567a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f369t).addView(view, i);
    }
}
