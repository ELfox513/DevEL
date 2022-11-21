package p082i;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;
import p038d0.AbstractC3155b;
import p073h.InterfaceC3913c;
import p216x.InterfaceMenuItemC7188b;
/* renamed from: i.c */
/* loaded from: classes.dex */
public class MenuItemC4071c extends AbstractC4070b implements MenuItem {

    /* renamed from: d */
    public final InterfaceMenuItemC7188b f17648d;

    /* renamed from: e */
    public Method f17649e;

    /* renamed from: i.c$a */
    /* loaded from: classes.dex */
    public class C4072a extends AbstractC3155b {

        /* renamed from: d */
        public final ActionProvider f17650d;

        @Override // p038d0.AbstractC3155b
        /* renamed from: a */
        public boolean mo17435a() {
            return this.f17650d.hasSubMenu();
        }

        @Override // p038d0.AbstractC3155b
        /* renamed from: c */
        public View mo17434c() {
            return this.f17650d.onCreateActionView();
        }

        @Override // p038d0.AbstractC3155b
        /* renamed from: e */
        public boolean mo17433e() {
            return this.f17650d.onPerformDefaultAction();
        }

        @Override // p038d0.AbstractC3155b
        /* renamed from: f */
        public void mo17432f(SubMenu subMenu) {
            this.f17650d.onPrepareSubMenu(MenuItemC4071c.this.m17440d(subMenu));
        }

        public C4072a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f17650d = actionProvider;
        }
    }

    /* renamed from: i.c$b */
    /* loaded from: classes.dex */
    public class ActionProvider$VisibilityListenerC4073b extends C4072a implements ActionProvider.VisibilityListener {

        /* renamed from: f */
        public AbstractC3155b.InterfaceC3157b f17652f;

        @Override // p038d0.AbstractC3155b
        /* renamed from: b */
        public boolean mo17431b() {
            return this.f17650d.isVisible();
        }

        @Override // p038d0.AbstractC3155b
        /* renamed from: d */
        public View mo17430d(MenuItem menuItem) {
            return this.f17650d.onCreateActionView(menuItem);
        }

        @Override // p038d0.AbstractC3155b
        /* renamed from: g */
        public boolean mo17429g() {
            return this.f17650d.overridesItemVisibility();
        }

        public ActionProvider$VisibilityListenerC4073b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // p038d0.AbstractC3155b
        /* renamed from: j */
        public void mo17428j(AbstractC3155b.InterfaceC3157b interfaceC3157b) {
            ActionProvider$VisibilityListenerC4073b actionProvider$VisibilityListenerC4073b;
            this.f17652f = interfaceC3157b;
            ActionProvider actionProvider = this.f17650d;
            if (interfaceC3157b != null) {
                actionProvider$VisibilityListenerC4073b = this;
            } else {
                actionProvider$VisibilityListenerC4073b = null;
            }
            actionProvider.setVisibilityListener(actionProvider$VisibilityListenerC4073b);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            AbstractC3155b.InterfaceC3157b interfaceC3157b = this.f17652f;
            if (interfaceC3157b != null) {
                interfaceC3157b.onActionProviderVisibilityChanged(z);
            }
        }
    }

    /* renamed from: i.c$d */
    /* loaded from: classes.dex */
    public class MenuItem$OnActionExpandListenerC4075d implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        public final MenuItem.OnActionExpandListener f17655a;

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f17655a.onMenuItemActionCollapse(MenuItemC4071c.this.m17441c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f17655a.onMenuItemActionExpand(MenuItemC4071c.this.m17441c(menuItem));
        }

        public MenuItem$OnActionExpandListenerC4075d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f17655a = onActionExpandListener;
        }
    }

    /* renamed from: i.c$e */
    /* loaded from: classes.dex */
    public class MenuItem$OnMenuItemClickListenerC4076e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        public final MenuItem.OnMenuItemClickListener f17657a;

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f17657a.onMenuItemClick(MenuItemC4071c.this.m17441c(menuItem));
        }

        public MenuItem$OnMenuItemClickListenerC4076e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f17657a = onMenuItemClickListener;
        }
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f17648d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f17648d.expandActionView();
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f17648d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f17648d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f17648d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f17648d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f17648d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f17648d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f17648d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f17648d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f17648d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f17648d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f17648d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f17648d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f17648d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m17440d(this.f17648d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f17648d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f17648d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f17648d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f17648d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f17648d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f17648d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f17648d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f17648d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f17648d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new C4074c(view);
        }
        this.f17648d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f17648d.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f17648d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f17648d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f17648d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f17648d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f17648d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f17648d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f17648d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f17648d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f17648d.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f17648d.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f17648d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f17648d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f17648d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f17648d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f17648d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f17648d.setVisible(z);
    }

    /* renamed from: i.c$c */
    /* loaded from: classes.dex */
    public static class C4074c extends FrameLayout implements InterfaceC3913c {

        /* renamed from: a */
        public final CollapsibleActionView f17654a;

        /* renamed from: a */
        public View m17427a() {
            return (View) this.f17654a;
        }

        @Override // p073h.InterfaceC3913c
        public void onActionViewCollapsed() {
            this.f17654a.onActionViewCollapsed();
        }

        @Override // p073h.InterfaceC3913c
        public void onActionViewExpanded() {
            this.f17654a.onActionViewExpanded();
        }

        public C4074c(View view) {
            super(view.getContext());
            this.f17654a = (CollapsibleActionView) view;
            addView(view);
        }
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC3155b mo2213b = this.f17648d.mo2213b();
        if (mo2213b instanceof C4072a) {
            return ((C4072a) mo2213b).f17650d;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f17648d.getActionView();
        if (actionView instanceof C4074c) {
            return ((C4074c) actionView).m17427a();
        }
        return actionView;
    }

    /* renamed from: h */
    public void m17436h(boolean z) {
        try {
            if (this.f17649e == null) {
                this.f17649e = this.f17648d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f17649e.invoke(this.f17648d, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ActionProvider$VisibilityListenerC4073b actionProvider$VisibilityListenerC4073b = new ActionProvider$VisibilityListenerC4073b(this.f17645a, actionProvider);
        InterfaceMenuItemC7188b interfaceMenuItemC7188b = this.f17648d;
        if (actionProvider == null) {
            actionProvider$VisibilityListenerC4073b = null;
        }
        interfaceMenuItemC7188b.mo2214a(actionProvider$VisibilityListenerC4073b);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f17648d.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f17648d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f17648d.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        MenuItem$OnActionExpandListenerC4075d menuItem$OnActionExpandListenerC4075d;
        InterfaceMenuItemC7188b interfaceMenuItemC7188b = this.f17648d;
        if (onActionExpandListener != null) {
            menuItem$OnActionExpandListenerC4075d = new MenuItem$OnActionExpandListenerC4075d(onActionExpandListener);
        } else {
            menuItem$OnActionExpandListenerC4075d = null;
        }
        interfaceMenuItemC7188b.setOnActionExpandListener(menuItem$OnActionExpandListenerC4075d);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        MenuItem$OnMenuItemClickListenerC4076e menuItem$OnMenuItemClickListenerC4076e;
        InterfaceMenuItemC7188b interfaceMenuItemC7188b = this.f17648d;
        if (onMenuItemClickListener != null) {
            menuItem$OnMenuItemClickListenerC4076e = new MenuItem$OnMenuItemClickListenerC4076e(onMenuItemClickListener);
        } else {
            menuItem$OnMenuItemClickListenerC4076e = null;
        }
        interfaceMenuItemC7188b.setOnMenuItemClickListener(menuItem$OnMenuItemClickListenerC4076e);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f17648d.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f17648d.setTitle(i);
        return this;
    }

    public MenuItemC4071c(Context context, InterfaceMenuItemC7188b interfaceMenuItemC7188b) {
        super(context);
        if (interfaceMenuItemC7188b != null) {
            this.f17648d = interfaceMenuItemC7188b;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f17648d.setActionView(i);
        View actionView = this.f17648d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f17648d.setActionView(new C4074c(actionView));
        }
        return this;
    }
}
