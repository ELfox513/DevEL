package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0162e;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes.dex */
public class SubMenuC0177l extends C0162e implements SubMenu {

    /* renamed from: B */
    public C0162e f524B;

    /* renamed from: C */
    public C0166g f525C;

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: D */
    public C0162e mo27455D() {
        return this.f524B.mo27455D();
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: F */
    public boolean mo27454F() {
        return this.f524B.mo27454F();
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: G */
    public boolean mo27453G() {
        return this.f524B.mo27453G();
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: H */
    public boolean mo27452H() {
        return this.f524B.mo27452H();
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: R */
    public void mo27451R(C0162e.InterfaceC0163a interfaceC0163a) {
        this.f524B.mo27451R(interfaceC0163a);
    }

    /* renamed from: e0 */
    public Menu m27450e0() {
        return this.f524B;
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: f */
    public boolean mo27449f(C0166g c0166g) {
        return this.f524B.mo27449f(c0166g);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f525C;
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: k */
    public boolean mo27447k(C0166g c0166g) {
        return this.f524B.mo27447k(c0166g);
    }

    @Override // androidx.appcompat.view.menu.C0162e, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f524B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.m27531V(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.m27528Y(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.m27527Z(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f525C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0162e, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f524B.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.m27532U(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.m27529X(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f525C.setIcon(i);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: t */
    public String mo27446t() {
        int i;
        C0166g c0166g = this.f525C;
        if (c0166g != null) {
            i = c0166g.getItemId();
        } else {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        return super.mo27446t() + ":" + i;
    }

    public SubMenuC0177l(Context context, C0162e c0162e, C0166g c0166g) {
        super(context);
        this.f524B = c0162e;
        this.f525C = c0166g;
    }

    @Override // androidx.appcompat.view.menu.C0162e
    /* renamed from: h */
    public boolean mo27448h(C0162e c0162e, MenuItem menuItem) {
        if (!super.mo27448h(c0162e, menuItem) && !this.f524B.mo27448h(c0162e, menuItem)) {
            return false;
        }
        return true;
    }
}
