package p082i;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p216x.InterfaceMenuC7187a;
/* renamed from: i.f */
/* loaded from: classes.dex */
public class MenuC4079f extends AbstractC4070b implements Menu {

    /* renamed from: d */
    public final InterfaceMenuC7187a f17660d;

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m17441c(this.f17660d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2;
        if (menuItemArr != null) {
            menuItemArr2 = new MenuItem[menuItemArr.length];
        } else {
            menuItemArr2 = null;
        }
        int addIntentOptions = this.f17660d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m17441c(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m17440d(this.f17660d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void close() {
        this.f17660d.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m17441c(this.f17660d.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m17441c(this.f17660d.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f17660d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f17660d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f17660d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f17660d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f17660d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f17660d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f17660d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f17660d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f17660d.size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m17441c(this.f17660d.add(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m17440d(this.f17660d.addSubMenu(i));
    }

    public MenuC4079f(Context context, InterfaceMenuC7187a interfaceMenuC7187a) {
        super(context);
        if (interfaceMenuC7187a != null) {
            this.f17660d = interfaceMenuC7187a;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m17441c(this.f17660d.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m17440d(this.f17660d.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        m17439e();
        this.f17660d.clear();
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        m17438f(i);
        this.f17660d.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m17437g(i);
        this.f17660d.removeItem(i);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m17441c(this.f17660d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m17440d(this.f17660d.addSubMenu(i, i2, i3, i4));
    }
}
