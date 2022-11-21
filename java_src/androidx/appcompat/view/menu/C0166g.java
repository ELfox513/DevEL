package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.InterfaceC0172j;
import p021c.C1015h;
import p038d0.AbstractC3155b;
import p046e.C3335b;
import p208w.C7089j;
import p216x.InterfaceMenuItemC7188b;
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes.dex */
public final class C0166g implements InterfaceMenuItemC7188b {

    /* renamed from: A */
    public View f456A;

    /* renamed from: B */
    public AbstractC3155b f457B;

    /* renamed from: C */
    public MenuItem.OnActionExpandListener f458C;

    /* renamed from: E */
    public ContextMenu.ContextMenuInfo f460E;

    /* renamed from: a */
    public final int f461a;

    /* renamed from: b */
    public final int f462b;

    /* renamed from: c */
    public final int f463c;

    /* renamed from: d */
    public final int f464d;

    /* renamed from: e */
    public CharSequence f465e;

    /* renamed from: f */
    public CharSequence f466f;

    /* renamed from: g */
    public Intent f467g;

    /* renamed from: h */
    public char f468h;

    /* renamed from: j */
    public char f470j;

    /* renamed from: l */
    public Drawable f472l;

    /* renamed from: n */
    public C0162e f474n;

    /* renamed from: o */
    public SubMenuC0177l f475o;

    /* renamed from: p */
    public Runnable f476p;

    /* renamed from: q */
    public MenuItem.OnMenuItemClickListener f477q;

    /* renamed from: r */
    public CharSequence f478r;

    /* renamed from: s */
    public CharSequence f479s;

    /* renamed from: z */
    public int f486z;

    /* renamed from: i */
    public int f469i = 4096;

    /* renamed from: k */
    public int f471k = 4096;

    /* renamed from: m */
    public int f473m = 0;

    /* renamed from: t */
    public ColorStateList f480t = null;

    /* renamed from: u */
    public PorterDuff.Mode f481u = null;

    /* renamed from: v */
    public boolean f482v = false;

    /* renamed from: w */
    public boolean f483w = false;

    /* renamed from: x */
    public boolean f484x = false;

    /* renamed from: y */
    public int f485y = 16;

    /* renamed from: D */
    public boolean f459D = false;

    /* renamed from: androidx.appcompat.view.menu.g$a */
    /* loaded from: classes.dex */
    public class C0167a implements AbstractC3155b.InterfaceC3157b {
        public C0167a() {
        }

        @Override // p038d0.AbstractC3155b.InterfaceC3157b
        public void onActionProviderVisibilityChanged(boolean z) {
            C0166g c0166g = C0166g.this;
            c0166g.f474n.m27542J(c0166g);
        }
    }

    /* renamed from: d */
    public static void m27495d(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: A */
    public boolean m27498A() {
        return this.f474n.mo27452H() && m27492g() != 0;
    }

    /* renamed from: B */
    public boolean m27497B() {
        return (this.f486z & 4) == 4;
    }

    @Override // p216x.InterfaceMenuItemC7188b
    /* renamed from: b */
    public AbstractC3155b mo2213b() {
        return this.f457B;
    }

    /* renamed from: c */
    public void m27496c() {
        this.f474n.m27543I(this);
    }

    /* renamed from: f */
    public int m27493f() {
        return this.f464d;
    }

    /* renamed from: g */
    public char m27492g() {
        return this.f474n.mo27453G() ? this.f470j : this.f468h;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f471k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f470j;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f478r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f462b;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f480t;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f481u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f467g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f461a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f460E;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f469i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f468h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f463c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f475o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f465e;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f479s;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f475o != null;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f459D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f485y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f485y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f485y & 16) != 0;
    }

    /* renamed from: l */
    public boolean m27487l() {
        return (this.f485y & 32) == 32;
    }

    /* renamed from: m */
    public boolean m27486m() {
        return (this.f485y & 4) != 0;
    }

    /* renamed from: n */
    public boolean m27485n() {
        return (this.f486z & 1) == 1;
    }

    /* renamed from: o */
    public boolean m27484o() {
        return (this.f486z & 2) == 2;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f470j == c) {
            return this;
        }
        this.f470j = Character.toLowerCase(c);
        this.f474n.m27541K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f473m = 0;
        this.f472l = drawable;
        this.f484x = true;
        this.f474n.m27541K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f467g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f468h == c) {
            return this;
        }
        this.f468h = c;
        this.f474n.m27541K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f458C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f477q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f468h = c;
        this.f470j = Character.toLowerCase(c2);
        this.f474n.m27541K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f465e = charSequence;
        this.f474n.m27541K(false);
        SubMenuC0177l subMenuC0177l = this.f475o;
        if (subMenuC0177l != null) {
            subMenuC0177l.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m27474y(z)) {
            this.f474n.m27542J(this);
        }
        return this;
    }

    /* renamed from: t */
    public void m27479t(boolean z) {
        this.f485y = (z ? 4 : 0) | (this.f485y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f465e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    /* renamed from: v */
    public void m27477v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f460E = contextMenuInfo;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    /* renamed from: w */
    public InterfaceMenuItemC7188b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    /* renamed from: z */
    public boolean m27473z() {
        return this.f474n.m27547A();
    }

    @Override // p216x.InterfaceMenuItemC7188b
    /* renamed from: a */
    public InterfaceMenuItemC7188b mo2214a(AbstractC3155b abstractC3155b) {
        AbstractC3155b abstractC3155b2 = this.f457B;
        if (abstractC3155b2 != null) {
            abstractC3155b2.m19477h();
        }
        this.f456A = null;
        this.f457B = abstractC3155b;
        this.f474n.m27541K(true);
        AbstractC3155b abstractC3155b3 = this.f457B;
        if (abstractC3155b3 != null) {
            abstractC3155b3.mo17428j(new C0167a());
        }
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f486z & 8) == 0) {
            return false;
        }
        if (this.f456A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f458C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionCollapse(this)) {
            return false;
        }
        return this.f474n.mo27449f(this);
    }

    /* renamed from: e */
    public final Drawable m27494e(Drawable drawable) {
        if (drawable != null && this.f484x && (this.f482v || this.f483w)) {
            drawable = C7089j.m2541p(drawable).mutate();
            if (this.f482v) {
                C7089j.m2543n(drawable, this.f480t);
            }
            if (this.f483w) {
                C7089j.m2542o(drawable, this.f481u);
            }
            this.f484x = false;
        }
        return drawable;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public View getActionView() {
        View view = this.f456A;
        if (view != null) {
            return view;
        }
        AbstractC3155b abstractC3155b = this.f457B;
        if (abstractC3155b != null) {
            View mo17430d = abstractC3155b.mo17430d(this);
            this.f456A = mo17430d;
            return mo17430d;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f472l;
        if (drawable != null) {
            return m27494e(drawable);
        }
        if (this.f473m != 0) {
            Drawable m19101d = C3335b.m19101d(this.f474n.m27506u(), this.f473m);
            this.f473m = 0;
            this.f472l = m19101d;
            return m27494e(m19101d);
        }
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f466f;
        if (charSequence == null) {
            charSequence = this.f465e;
        }
        if (Build.VERSION.SDK_INT < 18 && charSequence != null && !(charSequence instanceof String)) {
            return charSequence.toString();
        }
        return charSequence;
    }

    /* renamed from: i */
    public CharSequence m27490i(InterfaceC0172j.InterfaceC0173a interfaceC0173a) {
        if (interfaceC0173a != null && interfaceC0173a.mo27459c()) {
            return getTitleCondensed();
        }
        return getTitle();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC3155b abstractC3155b = this.f457B;
        if (abstractC3155b != null && abstractC3155b.mo17429g()) {
            if ((this.f485y & 8) == 0 && this.f457B.mo17431b()) {
                return true;
            }
            return false;
        } else if ((this.f485y & 8) == 0) {
            return true;
        } else {
            return false;
        }
    }

    /* renamed from: j */
    public boolean m27489j() {
        AbstractC3155b abstractC3155b;
        if ((this.f486z & 8) == 0) {
            return false;
        }
        if (this.f456A == null && (abstractC3155b = this.f457B) != null) {
            this.f456A = abstractC3155b.mo17430d(this);
        }
        if (this.f456A == null) {
            return false;
        }
        return true;
    }

    /* renamed from: k */
    public boolean m27488k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f477q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        C0162e c0162e = this.f474n;
        if (c0162e.mo27448h(c0162e, this)) {
            return true;
        }
        Runnable runnable = this.f476p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f467g != null) {
            try {
                this.f474n.m27506u().startActivity(this.f467g);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        AbstractC3155b abstractC3155b = this.f457B;
        if (abstractC3155b != null && abstractC3155b.mo17433e()) {
            return true;
        }
        return false;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    /* renamed from: p */
    public InterfaceMenuItemC7188b setActionView(int i) {
        Context m27506u = this.f474n.m27506u();
        setActionView(LayoutInflater.from(m27506u).inflate(i, (ViewGroup) new LinearLayout(m27506u), false));
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    /* renamed from: q */
    public InterfaceMenuItemC7188b setActionView(View view) {
        int i;
        this.f456A = view;
        this.f457B = null;
        if (view != null && view.getId() == -1 && (i = this.f461a) > 0) {
            view.setId(i);
        }
        this.f474n.m27543I(this);
        return this;
    }

    /* renamed from: r */
    public void m27481r(boolean z) {
        this.f459D = z;
        this.f474n.m27541K(false);
    }

    /* renamed from: s */
    public void m27480s(boolean z) {
        int i;
        int i2 = this.f485y;
        int i3 = i2 & (-3);
        if (z) {
            i = 2;
        } else {
            i = 0;
        }
        int i4 = i | i3;
        this.f485y = i4;
        if (i2 != i4) {
            this.f474n.m27541K(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f485y;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f485y = i2;
        if (i != i2) {
            this.f474n.m27541K(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f485y & 4) != 0) {
            this.f474n.m27533T(this);
        } else {
            m27480s(z);
        }
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public InterfaceMenuItemC7188b setContentDescription(CharSequence charSequence) {
        this.f478r = charSequence;
        this.f474n.m27541K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f485y |= 16;
        } else {
            this.f485y &= -17;
        }
        this.f474n.m27541K(false);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f480t = colorStateList;
        this.f482v = true;
        this.f484x = true;
        this.f474n.m27541K(false);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f481u = mode;
        this.f483w = true;
        this.f484x = true;
        this.f474n.m27541K(false);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f486z = i;
        this.f474n.m27543I(this);
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f466f = charSequence;
        this.f474n.m27541K(false);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public InterfaceMenuItemC7188b setTooltipText(CharSequence charSequence) {
        this.f479s = charSequence;
        this.f474n.m27541K(false);
        return this;
    }

    /* renamed from: u */
    public void m27478u(boolean z) {
        if (z) {
            this.f485y |= 32;
        } else {
            this.f485y &= -33;
        }
    }

    /* renamed from: x */
    public void m27475x(SubMenuC0177l subMenuC0177l) {
        this.f475o = subMenuC0177l;
        subMenuC0177l.setHeaderTitle(getTitle());
    }

    /* renamed from: y */
    public boolean m27474y(boolean z) {
        int i;
        int i2 = this.f485y;
        int i3 = i2 & (-9);
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        int i4 = i | i3;
        this.f485y = i4;
        if (i2 == i4) {
            return false;
        }
        return true;
    }

    public C0166g(C0162e c0162e, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f474n = c0162e;
        this.f461a = i2;
        this.f462b = i;
        this.f463c = i3;
        this.f464d = i4;
        this.f465e = charSequence;
        this.f486z = i5;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public boolean expandActionView() {
        if (!m27489j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f458C;
        if (onActionExpandListener != null && !onActionExpandListener.onMenuItemActionExpand(this)) {
            return false;
        }
        return this.f474n.mo27447k(this);
    }

    /* renamed from: h */
    public String m27491h() {
        int i;
        char m27492g = m27492g();
        if (m27492g == 0) {
            return "";
        }
        Resources resources = this.f474n.m27506u().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f474n.m27506u()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C1015h.f2670k));
        }
        if (this.f474n.mo27453G()) {
            i = this.f471k;
        } else {
            i = this.f469i;
        }
        m27495d(sb, i, 65536, resources.getString(C1015h.f2666g));
        m27495d(sb, i, 4096, resources.getString(C1015h.f2662c));
        m27495d(sb, i, 2, resources.getString(C1015h.f2661b));
        m27495d(sb, i, 1, resources.getString(C1015h.f2667h));
        m27495d(sb, i, 4, resources.getString(C1015h.f2669j));
        m27495d(sb, i, 8, resources.getString(C1015h.f2665f));
        if (m27492g != '\b') {
            if (m27492g != '\n') {
                if (m27492g != ' ') {
                    sb.append(m27492g);
                } else {
                    sb.append(resources.getString(C1015h.f2668i));
                }
            } else {
                sb.append(resources.getString(C1015h.f2664e));
            }
        } else {
            sb.append(resources.getString(C1015h.f2663d));
        }
        return sb.toString();
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f470j == c && this.f471k == i) {
            return this;
        }
        this.f470j = Character.toLowerCase(c);
        this.f471k = KeyEvent.normalizeMetaState(i);
        this.f474n.m27541K(false);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f468h == c && this.f469i == i) {
            return this;
        }
        this.f468h = c;
        this.f469i = KeyEvent.normalizeMetaState(i);
        this.f474n.m27541K(false);
        return this;
    }

    @Override // p216x.InterfaceMenuItemC7188b, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f468h = c;
        this.f469i = KeyEvent.normalizeMetaState(i);
        this.f470j = Character.toLowerCase(c2);
        this.f471k = KeyEvent.normalizeMetaState(i2);
        this.f474n.m27541K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f472l = null;
        this.f473m = i;
        this.f484x = true;
        this.f474n.m27541K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.f474n.m27506u().getString(i));
    }
}
