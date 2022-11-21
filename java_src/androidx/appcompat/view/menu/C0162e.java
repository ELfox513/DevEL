package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p038d0.AbstractC3155b;
import p038d0.C3167d1;
import p172s.C6550a;
import p216x.InterfaceMenuC7187a;
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes.dex */
public class C0162e implements InterfaceMenuC7187a {

    /* renamed from: A */
    public static final int[] f425A = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public final Context f426a;

    /* renamed from: b */
    public final Resources f427b;

    /* renamed from: c */
    public boolean f428c;

    /* renamed from: d */
    public boolean f429d;

    /* renamed from: e */
    public InterfaceC0163a f430e;

    /* renamed from: m */
    public ContextMenu.ContextMenuInfo f438m;

    /* renamed from: n */
    public CharSequence f439n;

    /* renamed from: o */
    public Drawable f440o;

    /* renamed from: p */
    public View f441p;

    /* renamed from: x */
    public C0166g f449x;

    /* renamed from: z */
    public boolean f451z;

    /* renamed from: l */
    public int f437l = 0;

    /* renamed from: q */
    public boolean f442q = false;

    /* renamed from: r */
    public boolean f443r = false;

    /* renamed from: s */
    public boolean f444s = false;

    /* renamed from: t */
    public boolean f445t = false;

    /* renamed from: u */
    public boolean f446u = false;

    /* renamed from: v */
    public ArrayList<C0166g> f447v = new ArrayList<>();

    /* renamed from: w */
    public CopyOnWriteArrayList<WeakReference<InterfaceC0170i>> f448w = new CopyOnWriteArrayList<>();

    /* renamed from: y */
    public boolean f450y = false;

    /* renamed from: f */
    public ArrayList<C0166g> f431f = new ArrayList<>();

    /* renamed from: g */
    public ArrayList<C0166g> f432g = new ArrayList<>();

    /* renamed from: h */
    public boolean f433h = true;

    /* renamed from: i */
    public ArrayList<C0166g> f434i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<C0166g> f435j = new ArrayList<>();

    /* renamed from: k */
    public boolean f436k = true;

    /* renamed from: androidx.appcompat.view.menu.e$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0163a {
        /* renamed from: a */
        boolean mo17769a(C0162e c0162e, MenuItem menuItem);

        /* renamed from: b */
        void mo17768b(C0162e c0162e);
    }

    /* renamed from: androidx.appcompat.view.menu.e$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0164b {
        /* renamed from: a */
        boolean mo27412a(C0166g c0166g);
    }

    /* renamed from: A */
    public boolean m27547A() {
        return this.f445t;
    }

    /* renamed from: C */
    public Resources m27545C() {
        return this.f427b;
    }

    /* renamed from: D */
    public C0162e mo27455D() {
        return this;
    }

    /* renamed from: F */
    public boolean mo27454F() {
        return this.f450y;
    }

    /* renamed from: G */
    public boolean mo27453G() {
        return this.f428c;
    }

    /* renamed from: H */
    public boolean mo27452H() {
        return this.f429d;
    }

    /* renamed from: I */
    public void m27543I(C0166g c0166g) {
        this.f436k = true;
        m27541K(true);
    }

    /* renamed from: J */
    public void m27542J(C0166g c0166g) {
        this.f433h = true;
        m27541K(true);
    }

    /* renamed from: L */
    public boolean m27540L(MenuItem menuItem, int i) {
        return m27539M(menuItem, null, i);
    }

    /* renamed from: R */
    public void mo27451R(InterfaceC0163a interfaceC0163a) {
        this.f430e = interfaceC0163a;
    }

    /* renamed from: S */
    public C0162e m27534S(int i) {
        this.f437l = i;
        return this;
    }

    /* renamed from: U */
    public C0162e m27532U(int i) {
        m27530W(0, null, i, null, null);
        return this;
    }

    /* renamed from: V */
    public C0162e m27531V(Drawable drawable) {
        m27530W(0, null, 0, drawable, null);
        return this;
    }

    /* renamed from: X */
    public C0162e m27529X(int i) {
        m27530W(i, null, 0, null, null);
        return this;
    }

    /* renamed from: Y */
    public C0162e m27528Y(CharSequence charSequence) {
        m27530W(0, charSequence, 0, null, null);
        return this;
    }

    /* renamed from: Z */
    public C0162e m27527Z(View view) {
        m27530W(0, null, 0, null, view);
        return this;
    }

    /* renamed from: a0 */
    public void m27525a0(boolean z) {
        this.f451z = z;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m27526a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public void m27524b(InterfaceC0170i interfaceC0170i) {
        m27522c(interfaceC0170i, this.f426a);
    }

    /* renamed from: b0 */
    public final void m27523b0(boolean z) {
        boolean z2 = true;
        this.f429d = (z && this.f427b.getConfiguration().keyboard != 1 && C3167d1.m19461b(ViewConfiguration.get(this.f426a), this.f426a)) ? false : false;
    }

    /* renamed from: c0 */
    public void m27521c0() {
        this.f442q = false;
        if (this.f443r) {
            this.f443r = false;
            m27541K(this.f444s);
        }
    }

    public void clearHeader() {
        this.f440o = null;
        this.f439n = null;
        this.f441p = null;
        m27541K(false);
    }

    @Override // android.view.Menu
    public void close() {
        m27518e(true);
    }

    /* renamed from: g */
    public final C0166g m27517g(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new C0166g(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f431f.get(i);
    }

    /* renamed from: h */
    public boolean mo27448h(C0162e c0162e, MenuItem menuItem) {
        InterfaceC0163a interfaceC0163a = this.f430e;
        return interfaceC0163a != null && interfaceC0163a.mo17769a(c0162e, menuItem);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m27510p(i, keyEvent) != null;
    }

    /* renamed from: l */
    public int m27514l(int i) {
        return m27513m(i, 0);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m27540L(findItem(i), i2);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m27538N(m27511o(i), true);
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f450y = z;
    }

    @Override // android.view.Menu
    public int size() {
        return this.f431f.size();
    }

    /* renamed from: t */
    public String mo27446t() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: u */
    public Context m27506u() {
        return this.f426a;
    }

    /* renamed from: v */
    public C0166g m27505v() {
        return this.f449x;
    }

    /* renamed from: w */
    public Drawable m27504w() {
        return this.f440o;
    }

    /* renamed from: x */
    public CharSequence m27503x() {
        return this.f439n;
    }

    /* renamed from: y */
    public View m27502y() {
        return this.f441p;
    }

    /* renamed from: B */
    public static int m27546B(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = f425A;
            if (i2 < iArr.length) {
                return (i & MeshBuilder.MAX_INDEX) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* renamed from: E */
    public ArrayList<C0166g> m27544E() {
        if (!this.f433h) {
            return this.f432g;
        }
        this.f432g.clear();
        int size = this.f431f.size();
        for (int i = 0; i < size; i++) {
            C0166g c0166g = this.f431f.get(i);
            if (c0166g.isVisible()) {
                this.f432g.add(c0166g);
            }
        }
        this.f433h = false;
        this.f436k = true;
        return this.f432g;
    }

    /* renamed from: K */
    public void m27541K(boolean z) {
        if (!this.f442q) {
            if (z) {
                this.f433h = true;
                this.f436k = true;
            }
            m27516i(z);
            return;
        }
        this.f443r = true;
        if (z) {
            this.f444s = true;
        }
    }

    /* renamed from: M */
    public boolean m27539M(MenuItem menuItem, InterfaceC0170i interfaceC0170i, int i) {
        boolean z;
        C0166g c0166g = (C0166g) menuItem;
        if (c0166g == null || !c0166g.isEnabled()) {
            return false;
        }
        boolean m27488k = c0166g.m27488k();
        AbstractC3155b mo2213b = c0166g.mo2213b();
        if (mo2213b != null && mo2213b.mo17435a()) {
            z = true;
        } else {
            z = false;
        }
        if (c0166g.m27489j()) {
            m27488k |= c0166g.expandActionView();
            if (m27488k) {
                m27518e(true);
            }
        } else if (!c0166g.hasSubMenu() && !z) {
            if ((i & 1) == 0) {
                m27518e(true);
            }
        } else {
            if ((i & 4) == 0) {
                m27518e(false);
            }
            if (!c0166g.hasSubMenu()) {
                c0166g.m27475x(new SubMenuC0177l(m27506u(), this, c0166g));
            }
            SubMenuC0177l subMenuC0177l = (SubMenuC0177l) c0166g.getSubMenu();
            if (z) {
                mo2213b.mo17432f(subMenuC0177l);
            }
            m27488k |= m27515j(subMenuC0177l, interfaceC0170i);
            if (!m27488k) {
                m27518e(true);
            }
        }
        return m27488k;
    }

    /* renamed from: N */
    public final void m27538N(int i, boolean z) {
        if (i >= 0 && i < this.f431f.size()) {
            this.f431f.remove(i);
            if (z) {
                m27541K(true);
            }
        }
    }

    /* renamed from: O */
    public void m27537O(InterfaceC0170i interfaceC0170i) {
        Iterator<WeakReference<InterfaceC0170i>> it = this.f448w.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0170i> next = it.next();
            InterfaceC0170i interfaceC0170i2 = next.get();
            if (interfaceC0170i2 == null || interfaceC0170i2 == interfaceC0170i) {
                this.f448w.remove(next);
            }
        }
    }

    /* renamed from: P */
    public void m27536P(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo27446t());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0177l) item.getSubMenu()).m27536P(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 > 0 && (findItem = findItem(i2)) != null) {
            findItem.expandActionView();
        }
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m27526a(0, 0, 0, this.f427b.getString(i));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        Intent intent2;
        int i6;
        PackageManager packageManager = this.f426a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        if (queryIntentActivityOptions != null) {
            i5 = queryIntentActivityOptions.size();
        } else {
            i5 = 0;
        }
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i7 = 0; i7 < i5; i7++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i7);
            int i8 = resolveInfo.specificIndex;
            if (i8 < 0) {
                intent2 = intent;
            } else {
                intent2 = intentArr[i8];
            }
            Intent intent3 = new Intent(intent2);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent3.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent4 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent3);
            if (menuItemArr != null && (i6 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i6] = intent4;
            }
        }
        return i5;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f427b.getString(i));
    }

    /* renamed from: c */
    public void m27522c(InterfaceC0170i interfaceC0170i, Context context) {
        this.f448w.add(new WeakReference<>(interfaceC0170i));
        interfaceC0170i.mo17424h(context, this);
        this.f436k = true;
    }

    @Override // android.view.Menu
    public void clear() {
        C0166g c0166g = this.f449x;
        if (c0166g != null) {
            mo27449f(c0166g);
        }
        this.f431f.clear();
        m27541K(true);
    }

    /* renamed from: d */
    public void m27520d() {
        InterfaceC0163a interfaceC0163a = this.f430e;
        if (interfaceC0163a != null) {
            interfaceC0163a.mo17768b(this);
        }
    }

    /* renamed from: d0 */
    public void m27519d0() {
        if (!this.f442q) {
            this.f442q = true;
            this.f443r = false;
            this.f444s = false;
        }
    }

    /* renamed from: e */
    public final void m27518e(boolean z) {
        if (this.f446u) {
            return;
        }
        this.f446u = true;
        Iterator<WeakReference<InterfaceC0170i>> it = this.f448w.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0170i> next = it.next();
            InterfaceC0170i interfaceC0170i = next.get();
            if (interfaceC0170i == null) {
                this.f448w.remove(next);
            } else {
                interfaceC0170i.mo27289b(this, z);
            }
        }
        this.f446u = false;
    }

    /* renamed from: f */
    public boolean mo27449f(C0166g c0166g) {
        boolean z = false;
        if (!this.f448w.isEmpty() && this.f449x == c0166g) {
            m27519d0();
            Iterator<WeakReference<InterfaceC0170i>> it = this.f448w.iterator();
            while (it.hasNext()) {
                WeakReference<InterfaceC0170i> next = it.next();
                InterfaceC0170i interfaceC0170i = next.get();
                if (interfaceC0170i == null) {
                    this.f448w.remove(next);
                } else {
                    z = interfaceC0170i.mo17426e(this, c0166g);
                    if (z) {
                        break;
                    }
                }
            }
            m27521c0();
            if (z) {
                this.f449x = null;
            }
        }
        return z;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f451z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f431f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final void m27516i(boolean z) {
        if (this.f448w.isEmpty()) {
            return;
        }
        m27519d0();
        Iterator<WeakReference<InterfaceC0170i>> it = this.f448w.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0170i> next = it.next();
            InterfaceC0170i interfaceC0170i = next.get();
            if (interfaceC0170i == null) {
                this.f448w.remove(next);
            } else {
                interfaceC0170i.mo27288c(z);
            }
        }
        m27521c0();
    }

    /* renamed from: j */
    public final boolean m27515j(SubMenuC0177l subMenuC0177l, InterfaceC0170i interfaceC0170i) {
        boolean z = false;
        if (this.f448w.isEmpty()) {
            return false;
        }
        if (interfaceC0170i != null) {
            z = interfaceC0170i.mo27285j(subMenuC0177l);
        }
        Iterator<WeakReference<InterfaceC0170i>> it = this.f448w.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0170i> next = it.next();
            InterfaceC0170i interfaceC0170i2 = next.get();
            if (interfaceC0170i2 == null) {
                this.f448w.remove(next);
            } else if (!z) {
                z = interfaceC0170i2.mo27285j(subMenuC0177l);
            }
        }
        return z;
    }

    /* renamed from: k */
    public boolean mo27447k(C0166g c0166g) {
        boolean z = false;
        if (this.f448w.isEmpty()) {
            return false;
        }
        m27519d0();
        Iterator<WeakReference<InterfaceC0170i>> it = this.f448w.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0170i> next = it.next();
            InterfaceC0170i interfaceC0170i = next.get();
            if (interfaceC0170i == null) {
                this.f448w.remove(next);
            } else {
                z = interfaceC0170i.mo17425f(this, c0166g);
                if (z) {
                    break;
                }
            }
        }
        m27521c0();
        if (z) {
            this.f449x = c0166g;
        }
        return z;
    }

    /* renamed from: p */
    public C0166g m27510p(int i, KeyEvent keyEvent) {
        char numericShortcut;
        ArrayList<C0166g> arrayList = this.f447v;
        arrayList.clear();
        m27509q(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean mo27453G = mo27453G();
        for (int i2 = 0; i2 < size; i2++) {
            C0166g c0166g = arrayList.get(i2);
            if (mo27453G) {
                numericShortcut = c0166g.getAlphabeticShortcut();
            } else {
                numericShortcut = c0166g.getNumericShortcut();
            }
            char[] cArr = keyData.meta;
            if ((numericShortcut == cArr[0] && (metaState & 2) == 0) || ((numericShortcut == cArr[2] && (metaState & 2) != 0) || (mo27453G && numericShortcut == '\b' && i == 67))) {
                return c0166g;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f431f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0166g c0166g = this.f431f.get(i2);
            if (c0166g.getGroupId() == i) {
                c0166g.m27479t(z2);
                c0166g.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f431f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0166g c0166g = this.f431f.get(i2);
            if (c0166g.getGroupId() == i) {
                c0166g.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f431f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            C0166g c0166g = this.f431f.get(i2);
            if (c0166g.getGroupId() == i && c0166g.m27474y(z)) {
                z2 = true;
            }
        }
        if (z2) {
            m27541K(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f428c = z;
        m27541K(false);
    }

    public C0162e(Context context) {
        this.f426a = context;
        this.f427b = context.getResources();
        m27523b0(true);
    }

    /* renamed from: n */
    public static int m27512n(ArrayList<C0166g> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m27493f() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: Q */
    public void m27535Q(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0177l) item.getSubMenu()).m27535Q(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo27446t(), sparseArray);
        }
    }

    /* renamed from: T */
    public void m27533T(MenuItem menuItem) {
        boolean z;
        int groupId = menuItem.getGroupId();
        int size = this.f431f.size();
        m27519d0();
        for (int i = 0; i < size; i++) {
            C0166g c0166g = this.f431f.get(i);
            if (c0166g.getGroupId() == groupId && c0166g.m27486m() && c0166g.isCheckable()) {
                if (c0166g == menuItem) {
                    z = true;
                } else {
                    z = false;
                }
                c0166g.m27480s(z);
            }
        }
        m27521c0();
    }

    /* renamed from: W */
    public final void m27530W(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources m27545C = m27545C();
        if (view != null) {
            this.f441p = view;
            this.f439n = null;
            this.f440o = null;
        } else {
            if (i > 0) {
                this.f439n = m27545C.getText(i);
            } else if (charSequence != null) {
                this.f439n = charSequence;
            }
            if (i2 > 0) {
                this.f440o = C6550a.m3935e(m27506u(), i2);
            } else if (drawable != null) {
                this.f440o = drawable;
            }
            this.f441p = null;
        }
        m27541K(false);
    }

    /* renamed from: a */
    public MenuItem m27526a(int i, int i2, int i3, CharSequence charSequence) {
        int m27546B = m27546B(i3);
        C0166g m27517g = m27517g(i, i2, i3, m27546B, charSequence, this.f437l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f438m;
        if (contextMenuInfo != null) {
            m27517g.m27477v(contextMenuInfo);
        }
        ArrayList<C0166g> arrayList = this.f431f;
        arrayList.add(m27512n(arrayList, m27546B), m27517g);
        m27541K(true);
        return m27517g;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m27526a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0166g c0166g = (C0166g) m27526a(i, i2, i3, charSequence);
        SubMenuC0177l subMenuC0177l = new SubMenuC0177l(this.f426a, this, c0166g);
        c0166g.m27475x(subMenuC0177l);
        return subMenuC0177l;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0166g c0166g = this.f431f.get(i2);
            if (c0166g.getItemId() == i) {
                return c0166g;
            }
            if (c0166g.hasSubMenu() && (findItem = c0166g.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: m */
    public int m27513m(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (this.f431f.get(i2).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* renamed from: o */
    public int m27511o(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f431f.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        boolean z;
        C0166g m27510p = m27510p(i, keyEvent);
        if (m27510p != null) {
            z = m27540L(m27510p, i2);
        } else {
            z = false;
        }
        if ((i2 & 2) != 0) {
            m27518e(true);
        }
        return z;
    }

    /* renamed from: q */
    public void m27509q(List<C0166g> list, int i, KeyEvent keyEvent) {
        char numericShortcut;
        int numericModifiers;
        boolean z;
        boolean mo27453G = mo27453G();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (!keyEvent.getKeyData(keyData) && i != 67) {
            return;
        }
        int size = this.f431f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0166g c0166g = this.f431f.get(i2);
            if (c0166g.hasSubMenu()) {
                ((C0162e) c0166g.getSubMenu()).m27509q(list, i, keyEvent);
            }
            if (mo27453G) {
                numericShortcut = c0166g.getAlphabeticShortcut();
            } else {
                numericShortcut = c0166g.getNumericShortcut();
            }
            if (mo27453G) {
                numericModifiers = c0166g.getAlphabeticModifiers();
            } else {
                numericModifiers = c0166g.getNumericModifiers();
            }
            if ((modifiers & 69647) == (numericModifiers & 69647)) {
                z = true;
            } else {
                z = false;
            }
            if (z && numericShortcut != 0) {
                char[] cArr = keyData.meta;
                if ((numericShortcut == cArr[0] || numericShortcut == cArr[2] || (mo27453G && numericShortcut == '\b' && i == 67)) && c0166g.isEnabled()) {
                    list.add(c0166g);
                }
            }
        }
    }

    /* renamed from: r */
    public void m27508r() {
        ArrayList<C0166g> m27544E = m27544E();
        if (!this.f436k) {
            return;
        }
        Iterator<WeakReference<InterfaceC0170i>> it = this.f448w.iterator();
        boolean z = false;
        while (it.hasNext()) {
            WeakReference<InterfaceC0170i> next = it.next();
            InterfaceC0170i interfaceC0170i = next.get();
            if (interfaceC0170i == null) {
                this.f448w.remove(next);
            } else {
                z |= interfaceC0170i.mo27287d();
            }
        }
        if (z) {
            this.f434i.clear();
            this.f435j.clear();
            int size = m27544E.size();
            for (int i = 0; i < size; i++) {
                C0166g c0166g = m27544E.get(i);
                if (c0166g.m27487l()) {
                    this.f434i.add(c0166g);
                } else {
                    this.f435j.add(c0166g);
                }
            }
        } else {
            this.f434i.clear();
            this.f435j.clear();
            this.f435j.addAll(m27544E());
        }
        this.f436k = false;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int m27514l = m27514l(i);
        if (m27514l >= 0) {
            int size = this.f431f.size() - m27514l;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.f431f.get(m27514l).getGroupId() != i) {
                    break;
                }
                m27538N(m27514l, false);
                i2 = i3;
            }
            m27541K(true);
        }
    }

    /* renamed from: s */
    public ArrayList<C0166g> m27507s() {
        m27508r();
        return this.f434i;
    }

    /* renamed from: z */
    public ArrayList<C0166g> m27501z() {
        m27508r();
        return this.f435j;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m27526a(i, i2, i3, this.f427b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f427b.getString(i4));
    }
}
