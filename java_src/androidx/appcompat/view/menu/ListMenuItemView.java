package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0172j;
import p021c.C1008a;
import p021c.C1013f;
import p021c.C1014g;
import p021c.C1017j;
import p038d0.C3218s0;
import p091j.C4235t1;
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC0172j.InterfaceC0173a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: A */
    public LayoutInflater f344A;

    /* renamed from: B */
    public boolean f345B;

    /* renamed from: a */
    public C0166g f346a;

    /* renamed from: b */
    public ImageView f347b;

    /* renamed from: d */
    public RadioButton f348d;

    /* renamed from: k */
    public TextView f349k;

    /* renamed from: p */
    public CheckBox f350p;

    /* renamed from: q */
    public TextView f351q;

    /* renamed from: r */
    public ImageView f352r;

    /* renamed from: s */
    public ImageView f353s;

    /* renamed from: t */
    public LinearLayout f354t;

    /* renamed from: u */
    public Drawable f355u;

    /* renamed from: v */
    public int f356v;

    /* renamed from: w */
    public Context f357w;

    /* renamed from: x */
    public boolean f358x;

    /* renamed from: y */
    public Drawable f359y;

    /* renamed from: z */
    public boolean f360z;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2495C);
    }

    /* renamed from: a */
    public final void m27573a(View view) {
        m27572b(view, -1);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j.InterfaceC0173a
    /* renamed from: c */
    public boolean mo27459c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j.InterfaceC0173a
    public C0166g getItemData() {
        return this.f346a;
    }

    public void setForceShowIcon(boolean z) {
        this.f345B = z;
        this.f358x = z;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C4235t1 m16966u = C4235t1.m16966u(getContext(), attributeSet, C1017j.f2777W1, i, 0);
        this.f355u = m16966u.m16981f(C1017j.f2785Y1);
        this.f356v = m16966u.m16974m(C1017j.f2781X1, -1);
        this.f358x = m16966u.m16986a(C1017j.f2789Z1, false);
        this.f357w = context;
        this.f359y = m16966u.m16981f(C1017j.f2794a2);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C1008a.f2530z, 0);
        this.f360z = obtainStyledAttributes.hasValue(0);
        m16966u.m16965v();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f344A == null) {
            this.f344A = LayoutInflater.from(getContext());
        }
        return this.f344A;
    }

    private void setSubMenuArrowVisible(boolean z) {
        int i;
        ImageView imageView = this.f352r;
        if (imageView != null) {
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            imageView.setVisibility(i);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f353s;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f353s.getLayoutParams();
            rect.top += this.f353s.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
        }
    }

    /* renamed from: b */
    public final void m27572b(View view, int i) {
        LinearLayout linearLayout = this.f354t;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0172j.InterfaceC0173a
    /* renamed from: d */
    public void mo27458d(C0166g c0166g, int i) {
        int i2;
        this.f346a = c0166g;
        if (c0166g.isVisible()) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        setVisibility(i2);
        setTitle(c0166g.m27490i(this));
        setCheckable(c0166g.isCheckable());
        m27568h(c0166g.m27498A(), c0166g.m27492g());
        setIcon(c0166g.getIcon());
        setEnabled(c0166g.isEnabled());
        setSubMenuArrowVisible(c0166g.hasSubMenu());
        setContentDescription(c0166g.getContentDescription());
    }

    /* renamed from: h */
    public void m27568h(boolean z, char c) {
        int i;
        if (z && this.f346a.m27498A()) {
            i = 0;
        } else {
            i = 8;
        }
        if (i == 0) {
            this.f351q.setText(this.f346a.m27491h());
        }
        if (this.f351q.getVisibility() != i) {
            this.f351q.setVisibility(i);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f347b != null && this.f358x) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f347b.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.f348d == null && this.f350p == null) {
            return;
        }
        if (this.f346a.m27486m()) {
            if (this.f348d == null) {
                m27569g();
            }
            compoundButton = this.f348d;
            view = this.f350p;
        } else {
            if (this.f350p == null) {
                m27571e();
            }
            compoundButton = this.f350p;
            view = this.f348d;
        }
        if (z) {
            compoundButton.setChecked(this.f346a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view != null && view.getVisibility() != 8) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        CheckBox checkBox = this.f350p;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f348d;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f346a.m27486m()) {
            if (this.f348d == null) {
                m27569g();
            }
            compoundButton = this.f348d;
        } else {
            if (this.f350p == null) {
                m27571e();
            }
            compoundButton = this.f350p;
        }
        compoundButton.setChecked(z);
    }

    public void setGroupDividerEnabled(boolean z) {
        int i;
        ImageView imageView = this.f353s;
        if (imageView != null) {
            if (!this.f360z && z) {
                i = 0;
            } else {
                i = 8;
            }
            imageView.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z;
        if (!this.f346a.m27473z() && !this.f345B) {
            z = false;
        } else {
            z = true;
        }
        if (!z && !this.f358x) {
            return;
        }
        ImageView imageView = this.f347b;
        if (imageView == null && drawable == null && !this.f358x) {
            return;
        }
        if (imageView == null) {
            m27570f();
        }
        if (drawable == null && !this.f358x) {
            this.f347b.setVisibility(8);
            return;
        }
        ImageView imageView2 = this.f347b;
        if (!z) {
            drawable = null;
        }
        imageView2.setImageDrawable(drawable);
        if (this.f347b.getVisibility() != 0) {
            this.f347b.setVisibility(0);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f349k.setText(charSequence);
            if (this.f349k.getVisibility() != 0) {
                this.f349k.setVisibility(0);
            }
        } else if (this.f349k.getVisibility() != 8) {
            this.f349k.setVisibility(8);
        }
    }

    /* renamed from: e */
    public final void m27571e() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C1014g.f2647h, (ViewGroup) this, false);
        this.f350p = checkBox;
        m27573a(checkBox);
    }

    /* renamed from: f */
    public final void m27570f() {
        ImageView imageView = (ImageView) getInflater().inflate(C1014g.f2648i, (ViewGroup) this, false);
        this.f347b = imageView;
        m27572b(imageView, 0);
    }

    /* renamed from: g */
    public final void m27569g() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C1014g.f2650k, (ViewGroup) this, false);
        this.f348d = radioButton;
        m27573a(radioButton);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        C3218s0.m19362I(this, this.f355u);
        TextView textView = (TextView) findViewById(C1013f.f2610M);
        this.f349k = textView;
        int i = this.f356v;
        if (i != -1) {
            textView.setTextAppearance(this.f357w, i);
        }
        this.f351q = (TextView) findViewById(C1013f.f2603F);
        ImageView imageView = (ImageView) findViewById(C1013f.f2606I);
        this.f352r = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f359y);
        }
        this.f353s = (ImageView) findViewById(C1013f.f2631r);
        this.f354t = (LinearLayout) findViewById(C1013f.f2625l);
    }
}
