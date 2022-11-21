package p082i;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p216x.InterfaceSubMenuC7189c;
/* renamed from: i.h */
/* loaded from: classes.dex */
public class SubMenuC4081h extends MenuC4079f implements SubMenu {

    /* renamed from: e */
    public final InterfaceSubMenuC7189c f17661e;

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f17661e.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m17441c(this.f17661e.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.f17661e.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.f17661e.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f17661e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f17661e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f17661e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f17661e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f17661e.setIcon(drawable);
        return this;
    }

    public SubMenuC4081h(Context context, InterfaceSubMenuC7189c interfaceSubMenuC7189c) {
        super(context, interfaceSubMenuC7189c);
        this.f17661e = interfaceSubMenuC7189c;
    }
}
