package p082i;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import p145p.C5283g;
import p216x.InterfaceMenuItemC7188b;
import p216x.InterfaceSubMenuC7189c;
/* renamed from: i.b */
/* loaded from: classes.dex */
public abstract class AbstractC4070b {

    /* renamed from: a */
    public final Context f17645a;

    /* renamed from: b */
    public C5283g<InterfaceMenuItemC7188b, MenuItem> f17646b;

    /* renamed from: c */
    public C5283g<InterfaceSubMenuC7189c, SubMenu> f17647c;

    /* renamed from: c */
    public final MenuItem m17441c(MenuItem menuItem) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            InterfaceMenuItemC7188b interfaceMenuItemC7188b = (InterfaceMenuItemC7188b) menuItem;
            if (this.f17646b == null) {
                this.f17646b = new C5283g<>();
            }
            MenuItem menuItem2 = this.f17646b.get(menuItem);
            if (menuItem2 == null) {
                MenuItemC4071c menuItemC4071c = new MenuItemC4071c(this.f17645a, interfaceMenuItemC7188b);
                this.f17646b.put(interfaceMenuItemC7188b, menuItemC4071c);
                return menuItemC4071c;
            }
            return menuItem2;
        }
        return menuItem;
    }

    /* renamed from: d */
    public final SubMenu m17440d(SubMenu subMenu) {
        if (subMenu instanceof InterfaceSubMenuC7189c) {
            InterfaceSubMenuC7189c interfaceSubMenuC7189c = (InterfaceSubMenuC7189c) subMenu;
            if (this.f17647c == null) {
                this.f17647c = new C5283g<>();
            }
            SubMenu subMenu2 = this.f17647c.get(interfaceSubMenuC7189c);
            if (subMenu2 == null) {
                SubMenuC4081h subMenuC4081h = new SubMenuC4081h(this.f17645a, interfaceSubMenuC7189c);
                this.f17647c.put(interfaceSubMenuC7189c, subMenuC4081h);
                return subMenuC4081h;
            }
            return subMenu2;
        }
        return subMenu;
    }

    /* renamed from: e */
    public final void m17439e() {
        C5283g<InterfaceMenuItemC7188b, MenuItem> c5283g = this.f17646b;
        if (c5283g != null) {
            c5283g.clear();
        }
        C5283g<InterfaceSubMenuC7189c, SubMenu> c5283g2 = this.f17647c;
        if (c5283g2 != null) {
            c5283g2.clear();
        }
    }

    /* renamed from: f */
    public final void m17438f(int i) {
        if (this.f17646b == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.f17646b.size()) {
            if (this.f17646b.m13660i(i2).getGroupId() == i) {
                this.f17646b.m13658k(i2);
                i2--;
            }
            i2++;
        }
    }

    /* renamed from: g */
    public final void m17437g(int i) {
        if (this.f17646b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f17646b.size(); i2++) {
            if (this.f17646b.m13660i(i2).getItemId() == i) {
                this.f17646b.m13658k(i2);
                return;
            }
        }
    }

    public AbstractC4070b(Context context) {
        this.f17645a = context;
    }
}
