package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.C0162e;
import androidx.appcompat.view.menu.C0166g;
import androidx.appcompat.view.menu.InterfaceC0170i;
import androidx.appcompat.view.menu.SubMenuC0177l;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.List;
import p021c.C1008a;
import p021c.C1017j;
import p037d.AbstractC3101a;
import p038d0.C3165d;
import p038d0.C3185i;
import p038d0.C3218s0;
import p046e.C3335b;
import p073h.C3918g;
import p073h.InterfaceC3913c;
import p074h0.AbstractC3928a;
import p091j.C4203k0;
import p091j.C4205l;
import p091j.C4210m1;
import p091j.C4211n;
import p091j.C4235t1;
import p091j.C4270z1;
import p091j.InterfaceC4234t0;
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    public int f693A;

    /* renamed from: B */
    public int f694B;

    /* renamed from: C */
    public int f695C;

    /* renamed from: D */
    public int f696D;

    /* renamed from: E */
    public C4210m1 f697E;

    /* renamed from: F */
    public int f698F;

    /* renamed from: G */
    public int f699G;

    /* renamed from: H */
    public int f700H;

    /* renamed from: I */
    public CharSequence f701I;

    /* renamed from: J */
    public CharSequence f702J;

    /* renamed from: K */
    public ColorStateList f703K;

    /* renamed from: L */
    public ColorStateList f704L;

    /* renamed from: M */
    public boolean f705M;

    /* renamed from: N */
    public boolean f706N;

    /* renamed from: O */
    public final ArrayList<View> f707O;

    /* renamed from: P */
    public final ArrayList<View> f708P;

    /* renamed from: Q */
    public final int[] f709Q;

    /* renamed from: R */
    public InterfaceC0213f f710R;

    /* renamed from: S */
    public final ActionMenuView.InterfaceC0188e f711S;

    /* renamed from: T */
    public C0234e f712T;

    /* renamed from: U */
    public C0217a f713U;

    /* renamed from: V */
    public C0211d f714V;

    /* renamed from: W */
    public InterfaceC0170i.InterfaceC0171a f715W;

    /* renamed from: a */
    public ActionMenuView f716a;

    /* renamed from: a0 */
    public C0162e.InterfaceC0163a f717a0;

    /* renamed from: b */
    public TextView f718b;

    /* renamed from: b0 */
    public boolean f719b0;

    /* renamed from: c0 */
    public final Runnable f720c0;

    /* renamed from: d */
    public TextView f721d;

    /* renamed from: k */
    public ImageButton f722k;

    /* renamed from: p */
    public ImageView f723p;

    /* renamed from: q */
    public Drawable f724q;

    /* renamed from: r */
    public CharSequence f725r;

    /* renamed from: s */
    public ImageButton f726s;

    /* renamed from: t */
    public View f727t;

    /* renamed from: u */
    public Context f728u;

    /* renamed from: v */
    public int f729v;

    /* renamed from: w */
    public int f730w;

    /* renamed from: x */
    public int f731x;

    /* renamed from: y */
    public int f732y;

    /* renamed from: z */
    public int f733z;

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes.dex */
    public class C0208a implements ActionMenuView.InterfaceC0188e {
        public C0208a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0188e
        public boolean onMenuItemClick(MenuItem menuItem) {
            InterfaceC0213f interfaceC0213f = Toolbar.this.f710R;
            if (interfaceC0213f != null) {
                return interfaceC0213f.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes.dex */
    public class RunnableC0209b implements Runnable {
        public RunnableC0209b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m27333N();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0210c implements View.OnClickListener {
        public View$OnClickListenerC0210c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.m27328e();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes.dex */
    public class C0211d implements InterfaceC0170i {

        /* renamed from: a */
        public C0162e f737a;

        /* renamed from: b */
        public C0166g f738b;

        public C0211d() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i
        /* renamed from: b */
        public void mo27289b(C0162e c0162e, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i
        /* renamed from: d */
        public boolean mo27287d() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i
        /* renamed from: j */
        public boolean mo27285j(SubMenuC0177l subMenuC0177l) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i
        /* renamed from: c */
        public void mo27288c(boolean z) {
            if (this.f738b != null) {
                C0162e c0162e = this.f737a;
                boolean z2 = false;
                if (c0162e != null) {
                    int size = c0162e.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        } else if (this.f737a.getItem(i) == this.f738b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    mo17426e(this.f737a, this.f738b);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i
        /* renamed from: e */
        public boolean mo17426e(C0162e c0162e, C0166g c0166g) {
            View view = Toolbar.this.f727t;
            if (view instanceof InterfaceC3913c) {
                ((InterfaceC3913c) view).onActionViewCollapsed();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f727t);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f726s);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f727t = null;
            toolbar3.m27332a();
            this.f738b = null;
            Toolbar.this.requestLayout();
            c0166g.m27481r(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i
        /* renamed from: f */
        public boolean mo17425f(C0162e c0162e, C0166g c0166g) {
            Toolbar.this.m27326g();
            ViewParent parent = Toolbar.this.f726s.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f726s);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f726s);
            }
            Toolbar.this.f727t = c0166g.getActionView();
            this.f738b = c0166g;
            ViewParent parent2 = Toolbar.this.f727t.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f727t);
                }
                C0212e generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f15308a = 8388611 | (toolbar4.f732y & 112);
                generateDefaultLayoutParams.f740b = 2;
                toolbar4.f727t.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f727t);
            }
            Toolbar.this.m27340G();
            Toolbar.this.requestLayout();
            c0166g.m27481r(true);
            View view = Toolbar.this.f727t;
            if (view instanceof InterfaceC3913c) {
                ((InterfaceC3913c) view).onActionViewExpanded();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0170i
        /* renamed from: h */
        public void mo17424h(Context context, C0162e c0162e) {
            C0166g c0166g;
            C0162e c0162e2 = this.f737a;
            if (c0162e2 != null && (c0166g = this.f738b) != null) {
                c0162e2.mo27449f(c0166g);
            }
            this.f737a = c0162e;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes.dex */
    public static class C0212e extends AbstractC3101a.C3102a {

        /* renamed from: b */
        public int f740b;

        public C0212e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f740b = 0;
        }

        /* renamed from: a */
        public void m27306a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public C0212e(int i, int i2) {
            super(i, i2);
            this.f740b = 0;
            this.f15308a = 8388627;
        }

        public C0212e(C0212e c0212e) {
            super((AbstractC3101a.C3102a) c0212e);
            this.f740b = 0;
            this.f740b = c0212e.f740b;
        }

        public C0212e(AbstractC3101a.C3102a c3102a) {
            super(c3102a);
            this.f740b = 0;
        }

        public C0212e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f740b = 0;
            m27306a(marginLayoutParams);
        }

        public C0212e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f740b = 0;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$f */
    /* loaded from: classes.dex */
    public interface InterfaceC0213f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2504L);
    }

    private MenuInflater getMenuInflater() {
        return new C3918g(getContext());
    }

    /* renamed from: A */
    public boolean m27346A() {
        ActionMenuView actionMenuView = this.f716a;
        return actionMenuView != null && actionMenuView.m27419F();
    }

    /* renamed from: M */
    public final boolean m27334M(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: N */
    public boolean m27333N() {
        ActionMenuView actionMenuView = this.f716a;
        return actionMenuView != null && actionMenuView.m27413L();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0212e);
    }

    /* renamed from: d */
    public boolean m27329d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f716a) != null && actionMenuView.m27418G();
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f726s;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f726s;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        C4210m1 c4210m1 = this.f697E;
        if (c4210m1 != null) {
            return c4210m1.m17093a();
        }
        return 0;
    }

    public int getContentInsetLeft() {
        C4210m1 c4210m1 = this.f697E;
        if (c4210m1 != null) {
            return c4210m1.m17092b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        C4210m1 c4210m1 = this.f697E;
        if (c4210m1 != null) {
            return c4210m1.m17091c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        C4210m1 c4210m1 = this.f697E;
        if (c4210m1 != null) {
            return c4210m1.m17090d();
        }
        return 0;
    }

    public Drawable getLogo() {
        ImageView imageView = this.f723p;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f723p;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f722k;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f722k;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public C0217a getOuterActionMenuPresenter() {
        return this.f713U;
    }

    public Context getPopupContext() {
        return this.f728u;
    }

    public int getPopupTheme() {
        return this.f729v;
    }

    public CharSequence getSubtitle() {
        return this.f702J;
    }

    public final TextView getSubtitleTextView() {
        return this.f721d;
    }

    public CharSequence getTitle() {
        return this.f701I;
    }

    public int getTitleMarginBottom() {
        return this.f696D;
    }

    public int getTitleMarginEnd() {
        return this.f694B;
    }

    public int getTitleMarginStart() {
        return this.f693A;
    }

    public int getTitleMarginTop() {
        return this.f695C;
    }

    public final TextView getTitleTextView() {
        return this.f718b;
    }

    @Override // android.view.ViewGroup
    /* renamed from: m */
    public C0212e generateDefaultLayoutParams() {
        return new C0212e(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* renamed from: n */
    public C0212e generateLayoutParams(AttributeSet attributeSet) {
        return new C0212e(getContext(), attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x029f A[LOOP:0: B:104:0x029d->B:105:0x029f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c1 A[LOOP:1: B:107:0x02bf->B:108:0x02c1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02fa A[LOOP:2: B:116:0x02f8->B:117:0x02fa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0227  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* renamed from: r */
    public final int m27315r(int i) {
        int i2 = i & 112;
        return (i2 == 16 || i2 == 48 || i2 == 80) ? i2 : this.f700H & 112;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C3335b.m19101d(getContext(), i));
    }

    public void setLogo(int i) {
        setLogo(C3335b.m19101d(getContext(), i));
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C3335b.m19101d(getContext(), i));
    }

    public void setOnMenuItemClickListener(InterfaceC0213f interfaceC0213f) {
        this.f710R = interfaceC0213f;
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    /* renamed from: u */
    public final int m27312u(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        while (i3 < size) {
            View view = list.get(i3);
            C0212e c0212e = (C0212e) view.getLayoutParams();
            int i5 = ((ViewGroup.MarginLayoutParams) c0212e).leftMargin - i;
            int i6 = ((ViewGroup.MarginLayoutParams) c0212e).rightMargin - i2;
            int max = Math.max(0, i5);
            int max2 = Math.max(0, i6);
            int max3 = Math.max(0, -i5);
            int max4 = Math.max(0, -i6);
            i4 += max + view.getMeasuredWidth() + max2;
            i3++;
            i2 = max4;
            i = max3;
        }
        return i4;
    }

    /* renamed from: v */
    public boolean m27311v() {
        C0211d c0211d = this.f714V;
        return (c0211d == null || c0211d.f738b == null) ? false : true;
    }

    /* renamed from: w */
    public boolean m27310w() {
        ActionMenuView actionMenuView = this.f716a;
        return actionMenuView != null && actionMenuView.m27421D();
    }

    /* renamed from: x */
    public void m27309x(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: y */
    public final boolean m27308y(View view) {
        return view.getParent() == this || this.f708P.contains(view);
    }

    /* renamed from: z */
    public boolean m27307z() {
        ActionMenuView actionMenuView = this.f716a;
        return actionMenuView != null && actionMenuView.m27420E();
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$g */
    /* loaded from: classes.dex */
    public static class C0214g extends AbstractC3928a {
        public static final Parcelable.Creator<C0214g> CREATOR = new C0215a();

        /* renamed from: d */
        public int f741d;

        /* renamed from: k */
        public boolean f742k;

        /* renamed from: androidx.appcompat.widget.Toolbar$g$a */
        /* loaded from: classes.dex */
        public class C0215a implements Parcelable.ClassLoaderCreator<C0214g> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public C0214g createFromParcel(Parcel parcel) {
                return new C0214g(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public C0214g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0214g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public C0214g[] newArray(int i) {
                return new C0214g[i];
            }
        }

        public C0214g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f741d = parcel.readInt();
            this.f742k = parcel.readInt() != 0;
        }

        @Override // p074h0.AbstractC3928a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f741d);
            parcel.writeInt(this.f742k ? 1 : 0);
        }

        public C0214g(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f700H = 8388627;
        this.f707O = new ArrayList<>();
        this.f708P = new ArrayList<>();
        this.f709Q = new int[2];
        this.f711S = new C0208a();
        this.f720c0 = new RunnableC0209b();
        Context context2 = getContext();
        int[] iArr = C1017j.f2778W2;
        C4235t1 m16966u = C4235t1.m16966u(context2, attributeSet, iArr, i, 0);
        C3218s0.m19365F(this, context, iArr, attributeSet, m16966u.m16970q(), i, 0);
        this.f730w = m16966u.m16974m(C1017j.f2915y3, 0);
        this.f731x = m16966u.m16974m(C1017j.f2870p3, 0);
        this.f700H = m16966u.m16976k(C1017j.f2782X2, this.f700H);
        this.f732y = m16966u.m16976k(C1017j.f2786Y2, 48);
        int m16983d = m16966u.m16983d(C1017j.f2885s3, 0);
        int i2 = C1017j.f2910x3;
        m16983d = m16966u.m16969r(i2) ? m16966u.m16983d(i2, m16983d) : m16983d;
        this.f696D = m16983d;
        this.f695C = m16983d;
        this.f694B = m16983d;
        this.f693A = m16983d;
        int m16983d2 = m16966u.m16983d(C1017j.f2900v3, -1);
        if (m16983d2 >= 0) {
            this.f693A = m16983d2;
        }
        int m16983d3 = m16966u.m16983d(C1017j.f2895u3, -1);
        if (m16983d3 >= 0) {
            this.f694B = m16983d3;
        }
        int m16983d4 = m16966u.m16983d(C1017j.f2905w3, -1);
        if (m16983d4 >= 0) {
            this.f695C = m16983d4;
        }
        int m16983d5 = m16966u.m16983d(C1017j.f2890t3, -1);
        if (m16983d5 >= 0) {
            this.f696D = m16983d5;
        }
        this.f733z = m16966u.m16982e(C1017j.f2840j3, -1);
        int m16983d6 = m16966u.m16983d(C1017j.f2820f3, Integer.MIN_VALUE);
        int m16983d7 = m16966u.m16983d(C1017j.f2800b3, Integer.MIN_VALUE);
        int m16982e = m16966u.m16982e(C1017j.f2810d3, 0);
        int m16982e2 = m16966u.m16982e(C1017j.f2815e3, 0);
        m27325h();
        this.f697E.m17089e(m16982e, m16982e2);
        if (m16983d6 != Integer.MIN_VALUE || m16983d7 != Integer.MIN_VALUE) {
            this.f697E.m17087g(m16983d6, m16983d7);
        }
        this.f698F = m16966u.m16983d(C1017j.f2825g3, Integer.MIN_VALUE);
        this.f699G = m16966u.m16983d(C1017j.f2805c3, Integer.MIN_VALUE);
        this.f724q = m16966u.m16981f(C1017j.f2795a3);
        this.f725r = m16966u.m16972o(C1017j.f2790Z2);
        CharSequence m16972o = m16966u.m16972o(C1017j.f2880r3);
        if (!TextUtils.isEmpty(m16972o)) {
            setTitle(m16972o);
        }
        CharSequence m16972o2 = m16966u.m16972o(C1017j.f2865o3);
        if (!TextUtils.isEmpty(m16972o2)) {
            setSubtitle(m16972o2);
        }
        this.f728u = getContext();
        setPopupTheme(m16966u.m16974m(C1017j.f2860n3, 0));
        Drawable m16981f = m16966u.m16981f(C1017j.f2855m3);
        if (m16981f != null) {
            setNavigationIcon(m16981f);
        }
        CharSequence m16972o3 = m16966u.m16972o(C1017j.f2850l3);
        if (!TextUtils.isEmpty(m16972o3)) {
            setNavigationContentDescription(m16972o3);
        }
        Drawable m16981f2 = m16966u.m16981f(C1017j.f2830h3);
        if (m16981f2 != null) {
            setLogo(m16981f2);
        }
        CharSequence m16972o4 = m16966u.m16972o(C1017j.f2835i3);
        if (!TextUtils.isEmpty(m16972o4)) {
            setLogoDescription(m16972o4);
        }
        int i3 = C1017j.f2920z3;
        if (m16966u.m16969r(i3)) {
            setTitleTextColor(m16966u.m16984c(i3));
        }
        int i4 = C1017j.f2875q3;
        if (m16966u.m16969r(i4)) {
            setSubtitleTextColor(m16966u.m16984c(i4));
        }
        int i5 = C1017j.f2845k3;
        if (m16966u.m16969r(i5)) {
            m27309x(m16966u.m16974m(i5, 0));
        }
        m16966u.m16965v();
    }

    /* renamed from: F */
    public final void m27341F() {
        removeCallbacks(this.f720c0);
        post(this.f720c0);
    }

    /* renamed from: I */
    public void m27338I(C0162e c0162e, C0217a c0217a) {
        if (c0162e == null && this.f716a == null) {
            return;
        }
        m27322k();
        C0162e m27415J = this.f716a.m27415J();
        if (m27415J == c0162e) {
            return;
        }
        if (m27415J != null) {
            m27415J.m27537O(this.f713U);
            m27415J.m27537O(this.f714V);
        }
        if (this.f714V == null) {
            this.f714V = new C0211d();
        }
        c0217a.m27294G(true);
        if (c0162e != null) {
            c0162e.m27522c(c0217a, this.f728u);
            c0162e.m27522c(this.f714V, this.f728u);
        } else {
            c0217a.mo17424h(this.f728u, null);
            this.f714V.mo17424h(this.f728u, null);
            c0217a.mo27288c(true);
            this.f714V.mo27288c(true);
        }
        this.f716a.setPopupTheme(this.f729v);
        this.f716a.setPresenter(c0217a);
        this.f713U = c0217a;
    }

    /* renamed from: J */
    public void m27337J(Context context, int i) {
        this.f731x = i;
        TextView textView = this.f721d;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: K */
    public void m27336K(Context context, int i) {
        this.f730w = i;
        TextView textView = this.f718b;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: L */
    public final boolean m27335L() {
        if (!this.f719b0) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m27334M(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public void m27332a() {
        for (int size = this.f708P.size() - 1; size >= 0; size--) {
            addView(this.f708P.get(size));
        }
        this.f708P.clear();
    }

    /* renamed from: e */
    public void m27328e() {
        C0166g c0166g;
        C0211d c0211d = this.f714V;
        if (c0211d == null) {
            c0166g = null;
        } else {
            c0166g = c0211d.f738b;
        }
        if (c0166g != null) {
            c0166g.collapseActionView();
        }
    }

    /* renamed from: f */
    public void m27327f() {
        ActionMenuView actionMenuView = this.f716a;
        if (actionMenuView != null) {
            actionMenuView.m27410x();
        }
    }

    /* renamed from: g */
    public void m27326g() {
        if (this.f726s == null) {
            C4205l c4205l = new C4205l(getContext(), null, C1008a.f2503K);
            this.f726s = c4205l;
            c4205l.setImageDrawable(this.f724q);
            this.f726s.setContentDescription(this.f725r);
            C0212e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f15308a = 8388611 | (this.f732y & 112);
            generateDefaultLayoutParams.f740b = 2;
            this.f726s.setLayoutParams(generateDefaultLayoutParams);
            this.f726s.setOnClickListener(new View$OnClickListenerC0210c());
        }
    }

    public int getContentInsetEndWithActions() {
        int i = this.f699G;
        if (i == Integer.MIN_VALUE) {
            return getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f698F;
        if (i == Integer.MIN_VALUE) {
            return getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        boolean z;
        C0162e m27415J;
        ActionMenuView actionMenuView = this.f716a;
        if (actionMenuView != null && (m27415J = actionMenuView.m27415J()) != null && m27415J.hasVisibleItems()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return Math.max(getContentInsetEnd(), Math.max(this.f699G, 0));
        }
        return getContentInsetEnd();
    }

    public InterfaceC4234t0 getWrapper() {
        if (this.f712T == null) {
            this.f712T = new C0234e(this, true);
        }
        return this.f712T;
    }

    /* renamed from: h */
    public final void m27325h() {
        if (this.f697E == null) {
            this.f697E = new C4210m1();
        }
    }

    /* renamed from: i */
    public final void m27324i() {
        if (this.f723p == null) {
            this.f723p = new C4211n(getContext());
        }
    }

    /* renamed from: k */
    public final void m27322k() {
        if (this.f716a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f716a = actionMenuView;
            actionMenuView.setPopupTheme(this.f729v);
            this.f716a.setOnMenuItemClickListener(this.f711S);
            this.f716a.m27414K(this.f715W, this.f717a0);
            C0212e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f15308a = 8388613 | (this.f732y & 112);
            this.f716a.setLayoutParams(generateDefaultLayoutParams);
            m27330c(this.f716a, false);
        }
    }

    /* renamed from: l */
    public final void m27321l() {
        if (this.f722k == null) {
            this.f722k = new C4205l(getContext(), null, C1008a.f2503K);
            C0212e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f15308a = 8388611 | (this.f732y & 112);
            this.f722k.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: o */
    public C0212e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0212e) {
            return new C0212e((C0212e) layoutParams);
        }
        if (layoutParams instanceof AbstractC3101a.C3102a) {
            return new C0212e((AbstractC3101a.C3102a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0212e((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0212e(layoutParams);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr = this.f709Q;
        boolean m16883b = C4270z1.m16883b(this);
        int i10 = 0;
        int i11 = !m16883b ? 1 : 0;
        if (m27334M(this.f722k)) {
            m27342E(this.f722k, i, 0, i2, 0, this.f733z);
            i3 = this.f722k.getMeasuredWidth() + m27314s(this.f722k);
            i4 = Math.max(0, this.f722k.getMeasuredHeight() + m27313t(this.f722k));
            i5 = View.combineMeasuredStates(0, this.f722k.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (m27334M(this.f726s)) {
            m27342E(this.f726s, i, 0, i2, 0, this.f733z);
            i3 = this.f726s.getMeasuredWidth() + m27314s(this.f726s);
            i4 = Math.max(i4, this.f726s.getMeasuredHeight() + m27313t(this.f726s));
            i5 = View.combineMeasuredStates(i5, this.f726s.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i3);
        iArr[m16883b ? 1 : 0] = Math.max(0, currentContentInsetStart - i3);
        if (m27334M(this.f716a)) {
            m27342E(this.f716a, i, max, i2, 0, this.f733z);
            i6 = this.f716a.getMeasuredWidth() + m27314s(this.f716a);
            i4 = Math.max(i4, this.f716a.getMeasuredHeight() + m27313t(this.f716a));
            i5 = View.combineMeasuredStates(i5, this.f716a.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[i11] = Math.max(0, currentContentInsetEnd - i6);
        if (m27334M(this.f727t)) {
            max2 += m27343D(this.f727t, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.f727t.getMeasuredHeight() + m27313t(this.f727t));
            i5 = View.combineMeasuredStates(i5, this.f727t.getMeasuredState());
        }
        if (m27334M(this.f723p)) {
            max2 += m27343D(this.f723p, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.f723p.getMeasuredHeight() + m27313t(this.f723p));
            i5 = View.combineMeasuredStates(i5, this.f723p.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((C0212e) childAt.getLayoutParams()).f740b == 0 && m27334M(childAt)) {
                max2 += m27343D(childAt, i, max2, i2, 0, iArr);
                i4 = Math.max(i4, childAt.getMeasuredHeight() + m27313t(childAt));
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i13 = this.f695C + this.f696D;
        int i14 = this.f693A + this.f694B;
        if (m27334M(this.f718b)) {
            m27343D(this.f718b, i, max2 + i14, i2, i13, iArr);
            int measuredWidth = this.f718b.getMeasuredWidth() + m27314s(this.f718b);
            i9 = this.f718b.getMeasuredHeight() + m27313t(this.f718b);
            i7 = View.combineMeasuredStates(i5, this.f718b.getMeasuredState());
            i8 = measuredWidth;
        } else {
            i7 = i5;
            i8 = 0;
            i9 = 0;
        }
        if (m27334M(this.f721d)) {
            i8 = Math.max(i8, m27343D(this.f721d, i, max2 + i14, i2, i9 + i13, iArr));
            i9 += this.f721d.getMeasuredHeight() + m27313t(this.f721d);
            i7 = View.combineMeasuredStates(i7, this.f721d.getMeasuredState());
        }
        int max3 = Math.max(i4, i9);
        int paddingLeft = max2 + i8 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max3 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, (-16777216) & i7);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, i7 << 16);
        if (!m27335L()) {
            i10 = resolveSizeAndState2;
        }
        setMeasuredDimension(resolveSizeAndState, i10);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        C0162e c0162e;
        MenuItem findItem;
        if (!(parcelable instanceof C0214g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0214g c0214g = (C0214g) parcelable;
        super.onRestoreInstanceState(c0214g.m17721a());
        ActionMenuView actionMenuView = this.f716a;
        if (actionMenuView != null) {
            c0162e = actionMenuView.m27415J();
        } else {
            c0162e = null;
        }
        int i = c0214g.f741d;
        if (i != 0 && this.f714V != null && c0162e != null && (findItem = c0162e.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (c0214g.f742k) {
            m27341F();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m27325h();
        C4210m1 c4210m1 = this.f697E;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        c4210m1.m17088f(z);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0166g c0166g;
        C0214g c0214g = new C0214g(super.onSaveInstanceState());
        C0211d c0211d = this.f714V;
        if (c0211d != null && (c0166g = c0211d.f738b) != null) {
            c0214g.f741d = c0166g.getItemId();
        }
        c0214g.f742k = m27346A();
        return c0214g;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m27326g();
        }
        ImageButton imageButton = this.f726s;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m27326g();
            this.f726s.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f726s;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.f724q);
        }
    }

    public void setCollapsible(boolean z) {
        this.f719b0 = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f699G) {
            this.f699G = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f698F) {
            this.f698F = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m27324i();
            if (!m27308y(this.f723p)) {
                m27330c(this.f723p, true);
            }
        } else {
            ImageView imageView = this.f723p;
            if (imageView != null && m27308y(imageView)) {
                removeView(this.f723p);
                this.f708P.remove(this.f723p);
            }
        }
        ImageView imageView2 = this.f723p;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m27324i();
        }
        ImageView imageView = this.f723p;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m27321l();
        }
        ImageButton imageButton = this.f722k;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m27321l();
            if (!m27308y(this.f722k)) {
                m27330c(this.f722k, true);
            }
        } else {
            ImageButton imageButton = this.f722k;
            if (imageButton != null && m27308y(imageButton)) {
                removeView(this.f722k);
                this.f708P.remove(this.f722k);
            }
        }
        ImageButton imageButton2 = this.f722k;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setPopupTheme(int i) {
        if (this.f729v != i) {
            this.f729v = i;
            if (i == 0) {
                this.f728u = getContext();
            } else {
                this.f728u = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f721d == null) {
                Context context = getContext();
                C4203k0 c4203k0 = new C4203k0(context);
                this.f721d = c4203k0;
                c4203k0.setSingleLine();
                this.f721d.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f731x;
                if (i != 0) {
                    this.f721d.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f704L;
                if (colorStateList != null) {
                    this.f721d.setTextColor(colorStateList);
                }
            }
            if (!m27308y(this.f721d)) {
                m27330c(this.f721d, true);
            }
        } else {
            TextView textView = this.f721d;
            if (textView != null && m27308y(textView)) {
                removeView(this.f721d);
                this.f708P.remove(this.f721d);
            }
        }
        TextView textView2 = this.f721d;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f702J = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f704L = colorStateList;
        TextView textView = this.f721d;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f718b == null) {
                Context context = getContext();
                C4203k0 c4203k0 = new C4203k0(context);
                this.f718b = c4203k0;
                c4203k0.setSingleLine();
                this.f718b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f730w;
                if (i != 0) {
                    this.f718b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f703K;
                if (colorStateList != null) {
                    this.f718b.setTextColor(colorStateList);
                }
            }
            if (!m27308y(this.f718b)) {
                m27330c(this.f718b, true);
            }
        } else {
            TextView textView = this.f718b;
            if (textView != null && m27308y(textView)) {
                removeView(this.f718b);
                this.f708P.remove(this.f718b);
            }
        }
        TextView textView2 = this.f718b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f701I = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f696D = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f694B = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f693A = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f695C = i;
        requestLayout();
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f703K = colorStateList;
        TextView textView = this.f718b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* renamed from: B */
    public final int m27345B(View view, int i, int[] iArr, int i2) {
        C0212e c0212e = (C0212e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0212e).leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int m27316q = m27316q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m27316q, max + measuredWidth, view.getMeasuredHeight() + m27316q);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) c0212e).rightMargin;
    }

    /* renamed from: C */
    public final int m27344C(View view, int i, int[] iArr, int i2) {
        C0212e c0212e = (C0212e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0212e).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m27316q = m27316q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m27316q, max, view.getMeasuredHeight() + m27316q);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) c0212e).leftMargin);
    }

    /* renamed from: D */
    public final int m27343D(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: E */
    public final void m27342E(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    /* renamed from: G */
    public void m27340G() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((C0212e) childAt.getLayoutParams()).f740b != 2 && childAt != this.f716a) {
                removeViewAt(childCount);
                this.f708P.add(childAt);
            }
        }
    }

    /* renamed from: H */
    public void m27339H(int i, int i2) {
        m27325h();
        this.f697E.m17087g(i, i2);
    }

    /* renamed from: b */
    public final void m27331b(List<View> list, int i) {
        boolean z;
        if (C3218s0.m19338n(this) == 1) {
            z = true;
        } else {
            z = false;
        }
        int childCount = getChildCount();
        int m19464a = C3165d.m19464a(i, C3218s0.m19338n(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                C0212e c0212e = (C0212e) childAt.getLayoutParams();
                if (c0212e.f740b == 0 && m27334M(childAt) && m27317p(c0212e.f15308a) == m19464a) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            C0212e c0212e2 = (C0212e) childAt2.getLayoutParams();
            if (c0212e2.f740b == 0 && m27334M(childAt2) && m27317p(c0212e2.f15308a) == m19464a) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: c */
    public final void m27330c(View view, boolean z) {
        C0212e c0212e;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            c0212e = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            c0212e = generateLayoutParams(layoutParams);
        } else {
            c0212e = (C0212e) layoutParams;
        }
        c0212e.f740b = 1;
        if (z && this.f727t != null) {
            view.setLayoutParams(c0212e);
            this.f708P.add(view);
            return;
        }
        addView(view, c0212e);
    }

    public int getCurrentContentInsetLeft() {
        if (C3218s0.m19338n(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (C3218s0.m19338n(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.f698F, 0));
        }
        return getContentInsetStart();
    }

    public Menu getMenu() {
        m27323j();
        return this.f716a.getMenu();
    }

    public Drawable getOverflowIcon() {
        m27323j();
        return this.f716a.getOverflowIcon();
    }

    /* renamed from: j */
    public final void m27323j() {
        m27322k();
        if (this.f716a.m27415J() == null) {
            C0162e c0162e = (C0162e) this.f716a.getMenu();
            if (this.f714V == null) {
                this.f714V = new C0211d();
            }
            this.f716a.setExpandedActionViewsExclusive(true);
            c0162e.m27522c(this.f714V, this.f728u);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f720c0);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f706N = false;
        }
        if (!this.f706N) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f706N = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f706N = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f705M = false;
        }
        if (!this.f705M) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f705M = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f705M = false;
        }
        return true;
    }

    /* renamed from: p */
    public final int m27317p(int i) {
        int m19338n = C3218s0.m19338n(this);
        int m19464a = C3165d.m19464a(i, m19338n) & 7;
        if (m19464a != 1 && m19464a != 3 && m19464a != 5) {
            if (m19338n != 1) {
                return 3;
            }
            return 5;
        }
        return m19464a;
    }

    /* renamed from: q */
    public final int m27316q(View view, int i) {
        int i2;
        C0212e c0212e = (C0212e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        if (i > 0) {
            i2 = (measuredHeight - i) / 2;
        } else {
            i2 = 0;
        }
        int m27315r = m27315r(c0212e.f15308a);
        if (m27315r != 48) {
            if (m27315r != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i4 = ((ViewGroup.MarginLayoutParams) c0212e).topMargin;
                if (i3 < i4) {
                    i3 = i4;
                } else {
                    int i5 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
                    int i6 = ((ViewGroup.MarginLayoutParams) c0212e).bottomMargin;
                    if (i5 < i6) {
                        i3 = Math.max(0, i3 - (i6 - i5));
                    }
                }
                return paddingTop + i3;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0212e).bottomMargin) - i2;
        }
        return getPaddingTop() - i2;
    }

    /* renamed from: s */
    public final int m27314s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C3185i.m19437b(marginLayoutParams) + C3185i.m19438a(marginLayoutParams);
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m27321l();
        this.f722k.setOnClickListener(onClickListener);
    }

    public void setOverflowIcon(Drawable drawable) {
        m27323j();
        this.f716a.setOverflowIcon(drawable);
    }

    /* renamed from: t */
    public final int m27313t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }
}
