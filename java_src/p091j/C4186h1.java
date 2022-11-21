package p091j;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0161d;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.C0166g;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* renamed from: j.h1 */
/* loaded from: classes.dex */
public class C4186h1 extends C4161b1 implements InterfaceC4171c1 {

    /* renamed from: V */
    public static Method f17885V;

    /* renamed from: U */
    public InterfaceC4171c1 f17886U;

    /* renamed from: j.h1$a */
    /* loaded from: classes.dex */
    public static class C4187a extends C4254w0 {

        /* renamed from: A */
        public final int f17887A;

        /* renamed from: B */
        public InterfaceC4171c1 f17888B;

        /* renamed from: C */
        public MenuItem f17889C;

        /* renamed from: z */
        public final int f17890z;

        @Override // p091j.C4254w0
        /* renamed from: d */
        public /* bridge */ /* synthetic */ int mo16927d(int i, int i2, int i3, int i4, int i5) {
            return super.mo16927d(i, i2, i3, i4, i5);
        }

        @Override // p091j.C4254w0
        /* renamed from: e */
        public /* bridge */ /* synthetic */ boolean mo16926e(MotionEvent motionEvent, int i) {
            return super.mo16926e(motionEvent, i);
        }

        @Override // p091j.C4254w0, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // p091j.C4254w0, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // p091j.C4254w0, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // p091j.C4254w0, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // p091j.C4254w0, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(InterfaceC4171c1 interfaceC4171c1) {
            this.f17888B = interfaceC4171c1;
        }

        @Override // p091j.C4254w0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }

        @Override // p091j.C4254w0, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            C0161d c0161d;
            int pointToPosition;
            int i2;
            if (this.f17888B != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0161d = (C0161d) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    c0161d = (C0161d) adapter;
                }
                C0166g c0166g = null;
                if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = pointToPosition - i) >= 0 && i2 < c0161d.getCount()) {
                    c0166g = c0161d.getItem(i2);
                }
                MenuItem menuItem = this.f17889C;
                if (menuItem != c0166g) {
                    C0162e m27550b = c0161d.m27550b();
                    if (menuItem != null) {
                        this.f17888B.mo17189f(m27550b, menuItem);
                    }
                    this.f17889C = c0166g;
                    if (c0166g != null) {
                        this.f17888B.mo17190c(m27550b, c0166g);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        public C4187a(Context context, boolean z) {
            super(context, z);
            int layoutDirection;
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17) {
                layoutDirection = configuration.getLayoutDirection();
                if (1 == layoutDirection) {
                    this.f17890z = 21;
                    this.f17887A = 22;
                    return;
                }
            }
            this.f17890z = 22;
            this.f17887A = 21;
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f17890z) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            } else if (listMenuItemView != null && i == this.f17887A) {
                setSelection(-1);
                ((C0161d) getAdapter()).m27550b().m27518e(false);
                return true;
            } else {
                return super.onKeyDown(i, keyEvent);
            }
        }
    }

    public C4186h1(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* renamed from: O */
    public void m17192O(InterfaceC4171c1 interfaceC4171c1) {
        this.f17886U = interfaceC4171c1;
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f17885V = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    /* renamed from: M */
    public void m17194M(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f17840Q.setEnterTransition((Transition) obj);
        }
    }

    /* renamed from: N */
    public void m17193N(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f17840Q.setExitTransition((Transition) obj);
        }
    }

    /* renamed from: P */
    public void m17191P(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f17885V;
            if (method != null) {
                try {
                    method.invoke(this.f17840Q, Boolean.valueOf(z));
                    return;
                } catch (Exception unused) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                    return;
                }
            }
            return;
        }
        this.f17840Q.setTouchModal(z);
    }

    @Override // p091j.InterfaceC4171c1
    /* renamed from: c */
    public void mo17190c(C0162e c0162e, MenuItem menuItem) {
        InterfaceC4171c1 interfaceC4171c1 = this.f17886U;
        if (interfaceC4171c1 != null) {
            interfaceC4171c1.mo17190c(c0162e, menuItem);
        }
    }

    @Override // p091j.InterfaceC4171c1
    /* renamed from: f */
    public void mo17189f(C0162e c0162e, MenuItem menuItem) {
        InterfaceC4171c1 interfaceC4171c1 = this.f17886U;
        if (interfaceC4171c1 != null) {
            interfaceC4171c1.mo17189f(c0162e, menuItem);
        }
    }

    @Override // p091j.C4161b1
    /* renamed from: r */
    public C4254w0 mo17188r(Context context, boolean z) {
        C4187a c4187a = new C4187a(context, z);
        c4187a.setHoverListener(this);
        return c4187a;
    }
}
