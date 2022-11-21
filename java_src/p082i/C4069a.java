package p082i;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p038d0.AbstractC3155b;
import p172s.C6550a;
import p208w.C7089j;
import p216x.InterfaceMenuItemC7188b;
/* renamed from: i.a */
/* loaded from: classes.dex */
public class C4069a implements InterfaceMenuItemC7188b {

    /* renamed from: a */
    public final int f17625a;

    /* renamed from: b */
    public final int f17626b;

    /* renamed from: c */
    public final int f17627c;

    /* renamed from: d */
    public CharSequence f17628d;

    /* renamed from: e */
    public CharSequence f17629e;

    /* renamed from: f */
    public Intent f17630f;

    /* renamed from: g */
    public char f17631g;

    /* renamed from: i */
    public char f17633i;

    /* renamed from: k */
    public Drawable f17635k;

    /* renamed from: l */
    public Context f17636l;

    /* renamed from: m */
    public MenuItem.OnMenuItemClickListener f17637m;

    /* renamed from: n */
    public CharSequence f17638n;

    /* renamed from: o */
    public CharSequence f17639o;

    /* renamed from: h */
    public int f17632h = 4096;

    /* renamed from: j */
    public int f17634j = 4096;

    /* renamed from: p */
    public ColorStateList f17640p = null;

    /* renamed from: q */
    public PorterDuff.Mode f17641q = null;

    /* renamed from: r */
    public boolean f17642r = false;

    /* renamed from: s */
    public boolean f17643s = false;

    /* renamed from: t */
    public int f17644t = 16;

    @Override // p216x.InterfaceMenuItemC7188b
    /* renamed from: a */
    public InterfaceMenuItemC7188b mo2214a(AbstractC3155b abstractC3155b) {
        throw new UnsupportedOperationException();
    }

    @Override // p216x.InterfaceMenuItemC7188b
    /* renamed from: b */
    public AbstractC3155b mo2213b() {
        return null;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    /* renamed from: d */
    public InterfaceMenuItemC7188b setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    /* renamed from: e */
    public InterfaceMenuItemC7188b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    /* renamed from: f */
    public InterfaceMenuItemC7188b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f17634j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f17633i;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f17638n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f17626b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f17635k;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f17640p;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f17641q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f17630f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f17625a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f17632h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f17631g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f17627c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f17628d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f17629e;
        return charSequence != null ? charSequence : this.f17628d;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f17639o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f17644t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f17644t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f17644t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f17644t & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f17633i = Character.toLowerCase(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f17644t = (z ? 1 : 0) | (this.f17644t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f17644t = (z ? 2 : 0) | (this.f17644t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f17644t = (z ? 16 : 0) | (this.f17644t & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f17635k = drawable;
        m17445c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f17630f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f17631g = c;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f17637m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f17631g = c;
        this.f17633i = Character.toLowerCase(c2);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f17628d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f17629e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.f17644t = (this.f17644t & 8) | (z ? 0 : 8);
        return this;
    }

    /* renamed from: c */
    public final void m17445c() {
        Drawable drawable = this.f17635k;
        if (drawable != null) {
            if (this.f17642r || this.f17643s) {
                Drawable m2541p = C7089j.m2541p(drawable);
                this.f17635k = m2541p;
                Drawable mutate = m2541p.mutate();
                this.f17635k = mutate;
                if (this.f17642r) {
                    C7089j.m2543n(mutate, this.f17640p);
                }
                if (this.f17643s) {
                    C7089j.m2542o(this.f17635k, this.f17641q);
                }
            }
        }
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f17633i = Character.toLowerCase(c);
        this.f17634j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public InterfaceMenuItemC7188b setContentDescription(CharSequence charSequence) {
        this.f17638n = charSequence;
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f17640p = colorStateList;
        this.f17642r = true;
        m17445c();
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f17641q = mode;
        this.f17643s = true;
        m17445c();
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f17631g = c;
        this.f17632h = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f17628d = this.f17636l.getResources().getString(i);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public InterfaceMenuItemC7188b setTooltipText(CharSequence charSequence) {
        this.f17639o = charSequence;
        return this;
    }

    public C4069a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f17636l = context;
        this.f17625a = i2;
        this.f17626b = i;
        this.f17627c = i4;
        this.f17628d = charSequence;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f17635k = C6550a.m3935e(this.f17636l, i);
        m17445c();
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f17631g = c;
        this.f17632h = KeyEvent.normalizeMetaState(i);
        this.f17633i = Character.toLowerCase(c2);
        this.f17634j = KeyEvent.normalizeMetaState(i2);
        return this;
    }
}
