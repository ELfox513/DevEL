package p038d0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import p216x.InterfaceMenuItemC7188b;
/* renamed from: d0.p */
/* loaded from: classes.dex */
public final class C3206p {
    /* renamed from: a */
    public static MenuItem m19410a(MenuItem menuItem, AbstractC3155b abstractC3155b) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            return ((InterfaceMenuItemC7188b) menuItem).mo2214a(abstractC3155b);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    /* renamed from: b */
    public static void m19409b(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            ((InterfaceMenuItemC7188b) menuItem).setAlphabeticShortcut(c, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setAlphabeticShortcut(c, i);
        }
    }

    /* renamed from: c */
    public static void m19408c(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            ((InterfaceMenuItemC7188b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setContentDescription(charSequence);
        }
    }

    /* renamed from: d */
    public static void m19407d(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            ((InterfaceMenuItemC7188b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintList(colorStateList);
        }
    }

    /* renamed from: e */
    public static void m19406e(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            ((InterfaceMenuItemC7188b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintMode(mode);
        }
    }

    /* renamed from: f */
    public static void m19405f(MenuItem menuItem, char c, int i) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            ((InterfaceMenuItemC7188b) menuItem).setNumericShortcut(c, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setNumericShortcut(c, i);
        }
    }

    /* renamed from: g */
    public static void m19404g(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof InterfaceMenuItemC7188b) {
            ((InterfaceMenuItemC7188b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setTooltipText(charSequence);
        }
    }
}
