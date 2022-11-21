package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.InterfaceC0172j;
import androidx.appcompat.widget.ActionMenuView;
import p021c.C1017j;
import p082i.InterfaceC4080g;
import p091j.AbstractView$OnTouchListenerC4261x0;
import p091j.C4203k0;
import p091j.C4252v1;
/* loaded from: classes.dex */
public class ActionMenuItemView extends C4203k0 implements InterfaceC0172j.InterfaceC0173a, View.OnClickListener, ActionMenuView.InterfaceC0184a {

    /* renamed from: p */
    public C0166g f329p;

    /* renamed from: q */
    public CharSequence f330q;

    /* renamed from: r */
    public Drawable f331r;

    /* renamed from: s */
    public C0162e.InterfaceC0164b f332s;

    /* renamed from: t */
    public AbstractView$OnTouchListenerC4261x0 f333t;

    /* renamed from: u */
    public AbstractC0151b f334u;

    /* renamed from: v */
    public boolean f335v;

    /* renamed from: w */
    public boolean f336w;

    /* renamed from: x */
    public int f337x;

    /* renamed from: y */
    public int f338y;

    /* renamed from: z */
    public int f339z;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes.dex */
    public class C0150a extends AbstractView$OnTouchListenerC4261x0 {
        public C0150a() {
            super(ActionMenuItemView.this);
        }

        @Override // p091j.AbstractView$OnTouchListenerC4261x0
        /* renamed from: b */
        public InterfaceC4080g mo16906b() {
            AbstractC0151b abstractC0151b = ActionMenuItemView.this.f334u;
            if (abstractC0151b != null) {
                return abstractC0151b.mo27271a();
            }
            return null;
        }

        @Override // p091j.AbstractView$OnTouchListenerC4261x0
        /* renamed from: c */
        public boolean mo16905c() {
            InterfaceC4080g mo16906b;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            C0162e.InterfaceC0164b interfaceC0164b = actionMenuItemView.f332s;
            if (interfaceC0164b == null || !interfaceC0164b.mo27412a(actionMenuItemView.f329p) || (mo16906b = mo16906b()) == null || !mo16906b.mo17241a()) {
                return false;
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0151b {
        /* renamed from: a */
        public abstract InterfaceC4080g mo27271a();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0184a
    /* renamed from: a */
    public boolean mo27270a() {
        return m27576g();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0184a
    /* renamed from: b */
    public boolean mo27269b() {
        return m27576g() && this.f329p.getIcon() == null;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j.InterfaceC0173a
    /* renamed from: c */
    public boolean mo27459c() {
        return true;
    }

    /* renamed from: g */
    public boolean m27576g() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j.InterfaceC0173a
    public C0166g getItemData() {
        return this.f329p;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setItemInvoker(C0162e.InterfaceC0164b interfaceC0164b) {
        this.f332s = interfaceC0164b;
    }

    public void setPopupCallback(AbstractC0151b abstractC0151b) {
        this.f334u = abstractC0151b;
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f335v = m27575j();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2896v, i, 0);
        this.f337x = obtainStyledAttributes.getDimensionPixelSize(C1017j.f2901w, 0);
        obtainStyledAttributes.recycle();
        this.f339z = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f338y = -1;
        setSaveEnabled(false);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j.InterfaceC0173a
    /* renamed from: d */
    public void mo27458d(C0166g c0166g, int i) {
        int i2;
        this.f329p = c0166g;
        setIcon(c0166g.getIcon());
        setTitle(c0166g.m27490i(this));
        setId(c0166g.getItemId());
        if (c0166g.isVisible()) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        setVisibility(i2);
        setEnabled(c0166g.isEnabled());
        if (c0166g.hasSubMenu() && this.f333t == null) {
            this.f333t = new C0150a();
        }
    }

    /* renamed from: l */
    public final void m27574l() {
        CharSequence charSequence;
        CharSequence title;
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f330q);
        if (this.f331r != null && (!this.f329p.m27497B() || (!this.f335v && !this.f336w))) {
            z = false;
        }
        boolean z3 = z2 & z;
        CharSequence charSequence2 = null;
        if (z3) {
            charSequence = this.f330q;
        } else {
            charSequence = null;
        }
        setText(charSequence);
        CharSequence contentDescription = this.f329p.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            if (z3) {
                title = null;
            } else {
                title = this.f329p.getTitle();
            }
            setContentDescription(title);
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f329p.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z3) {
                charSequence2 = this.f329p.getTitle();
            }
            C4252v1.m16932a(this, charSequence2);
            return;
        }
        C4252v1.m16932a(this, tooltipText);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0162e.InterfaceC0164b interfaceC0164b = this.f332s;
        if (interfaceC0164b != null) {
            interfaceC0164b.mo27412a(this.f329p);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC4261x0 abstractView$OnTouchListenerC4261x0;
        if (this.f329p.hasSubMenu() && (abstractView$OnTouchListenerC4261x0 = this.f333t) != null && abstractView$OnTouchListenerC4261x0.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setExpandedFormat(boolean z) {
        if (this.f336w != z) {
            this.f336w = z;
            C0166g c0166g = this.f329p;
            if (c0166g != null) {
                c0166g.m27496c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f331r = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f339z;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        m27574l();
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f338y = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setTitle(CharSequence charSequence) {
        this.f330q = charSequence;
        m27574l();
    }

    /* renamed from: j */
    public final boolean m27575j() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480 && ((i < 640 || i2 < 480) && configuration.orientation != 2)) {
            return false;
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f335v = m27575j();
        m27574l();
    }

    @Override // p091j.C4203k0, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        boolean m27576g = m27576g();
        if (m27576g && (i4 = this.f338y) >= 0) {
            super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(size, this.f337x);
        } else {
            i3 = this.f337x;
        }
        if (mode != 1073741824 && this.f337x > 0 && measuredWidth < i3) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }
        if (!m27576g && this.f331r != null) {
            super.setPadding((getMeasuredWidth() - this.f331r.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }
}
