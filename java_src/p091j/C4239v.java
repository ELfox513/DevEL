package p091j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.DialogC0148a;
import p021c.C1008a;
import p038d0.C3218s0;
import p038d0.InterfaceC3265z;
import p046e.C3335b;
import p082i.InterfaceC4080g;
/* renamed from: j.v */
/* loaded from: classes.dex */
public class C4239v extends Spinner implements InterfaceC3265z {

    /* renamed from: t */
    public static final int[] f18030t = {16843505};

    /* renamed from: a */
    public final C4172d f18031a;

    /* renamed from: b */
    public final Context f18032b;

    /* renamed from: d */
    public AbstractView$OnTouchListenerC4261x0 f18033d;

    /* renamed from: k */
    public SpinnerAdapter f18034k;

    /* renamed from: p */
    public final boolean f18035p;

    /* renamed from: q */
    public InterfaceC4250g f18036q;

    /* renamed from: r */
    public int f18037r;

    /* renamed from: s */
    public final Rect f18038s;

    /* renamed from: j.v$a */
    /* loaded from: classes.dex */
    public class C4240a extends AbstractView$OnTouchListenerC4261x0 {

        /* renamed from: u */
        public final /* synthetic */ C4244e f18039u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4240a(View view, C4244e c4244e) {
            super(view);
            this.f18039u = c4244e;
        }

        @Override // p091j.AbstractView$OnTouchListenerC4261x0
        /* renamed from: b */
        public InterfaceC4080g mo16906b() {
            return this.f18039u;
        }

        @Override // p091j.AbstractView$OnTouchListenerC4261x0
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: c */
        public boolean mo16905c() {
            if (!C4239v.this.getInternalPopup().mo16945a()) {
                C4239v.this.m16952b();
                return true;
            }
            return true;
        }
    }

    /* renamed from: j.v$b */
    /* loaded from: classes.dex */
    public class ViewTreeObserver$OnGlobalLayoutListenerC4241b implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC4241b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!C4239v.this.getInternalPopup().mo16945a()) {
                C4239v.this.m16952b();
            }
            ViewTreeObserver viewTreeObserver = C4239v.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    /* renamed from: j.v$c */
    /* loaded from: classes.dex */
    public class DialogInterface$OnClickListenerC4242c implements InterfaceC4250g, DialogInterface.OnClickListener {

        /* renamed from: a */
        public DialogC0148a f18042a;

        /* renamed from: b */
        public ListAdapter f18043b;

        /* renamed from: d */
        public CharSequence f18044d;

        public DialogInterface$OnClickListenerC4242c() {
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: a */
        public boolean mo16945a() {
            DialogC0148a dialogC0148a = this.f18042a;
            if (dialogC0148a != null) {
                return dialogC0148a.isShowing();
            }
            return false;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: b */
        public int mo16944b() {
            return 0;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: d */
        public void mo16943d(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: e */
        public CharSequence mo16942e() {
            return this.f18044d;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: g */
        public Drawable mo16941g() {
            return null;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: h */
        public void mo16940h(CharSequence charSequence) {
            this.f18044d = charSequence;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: j */
        public void mo16939j(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: k */
        public void mo16938k(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: l */
        public void mo16937l(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: n */
        public int mo16935n() {
            return 0;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: o */
        public void mo16934o(ListAdapter listAdapter) {
            this.f18043b = listAdapter;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        public void dismiss() {
            DialogC0148a dialogC0148a = this.f18042a;
            if (dialogC0148a != null) {
                dialogC0148a.dismiss();
                this.f18042a = null;
            }
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: m */
        public void mo16936m(int i, int i2) {
            if (this.f18043b == null) {
                return;
            }
            DialogC0148a.C0149a c0149a = new DialogC0148a.C0149a(C4239v.this.getPopupContext());
            CharSequence charSequence = this.f18044d;
            if (charSequence != null) {
                c0149a.m27577h(charSequence);
            }
            DialogC0148a m27584a = c0149a.m27578g(this.f18043b, C4239v.this.getSelectedItemPosition(), this).m27584a();
            this.f18042a = m27584a;
            ListView m27586h = m27584a.m27586h();
            if (Build.VERSION.SDK_INT >= 17) {
                m27586h.setTextDirection(i);
                m27586h.setTextAlignment(i2);
            }
            this.f18042a.show();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C4239v.this.setSelection(i);
            if (C4239v.this.getOnItemClickListener() != null) {
                C4239v.this.performItemClick(null, i, this.f18043b.getItemId(i));
            }
            dismiss();
        }
    }

    /* renamed from: j.v$d */
    /* loaded from: classes.dex */
    public static class C4243d implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        public SpinnerAdapter f18046a;

        /* renamed from: b */
        public ListAdapter f18047b;

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f18046a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f18046a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f18046a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f18046a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f18047b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f18046a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f18047b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f18046a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f18046a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }

        public C4243d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f18046a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f18047b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                    }
                } else if (spinnerAdapter instanceof InterfaceC4223p1) {
                    InterfaceC4223p1 interfaceC4223p1 = (InterfaceC4223p1) spinnerAdapter;
                    if (interfaceC4223p1.getDropDownViewTheme() == null) {
                        interfaceC4223p1.setDropDownViewTheme(theme);
                    }
                }
            }
        }
    }

    /* renamed from: j.v$e */
    /* loaded from: classes.dex */
    public class C4244e extends C4161b1 implements InterfaceC4250g {

        /* renamed from: U */
        public CharSequence f18048U;

        /* renamed from: V */
        public ListAdapter f18049V;

        /* renamed from: W */
        public final Rect f18050W;

        /* renamed from: X */
        public int f18051X;

        /* renamed from: j.v$e$a */
        /* loaded from: classes.dex */
        public class C4245a implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ C4239v f18053a;

            public C4245a(C4239v c4239v) {
                this.f18053a = c4239v;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C4239v.this.setSelection(i);
                if (C4239v.this.getOnItemClickListener() != null) {
                    C4244e c4244e = C4244e.this;
                    C4239v.this.performItemClick(view, i, c4244e.f18049V.getItemId(i));
                }
                C4244e.this.dismiss();
            }
        }

        /* renamed from: j.v$e$b */
        /* loaded from: classes.dex */
        public class ViewTreeObserver$OnGlobalLayoutListenerC4246b implements ViewTreeObserver.OnGlobalLayoutListener {
            public ViewTreeObserver$OnGlobalLayoutListenerC4246b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C4244e c4244e = C4244e.this;
                if (!c4244e.m16948P(C4239v.this)) {
                    C4244e.this.dismiss();
                    return;
                }
                C4244e.this.m16950N();
                C4244e.super.show();
            }
        }

        /* renamed from: j.v$e$c */
        /* loaded from: classes.dex */
        public class C4247c implements PopupWindow.OnDismissListener {

            /* renamed from: a */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f18056a;

            public C4247c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f18056a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = C4239v.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f18056a);
                }
            }
        }

        /* renamed from: O */
        public int m16949O() {
            return this.f18051X;
        }

        /* renamed from: P */
        public boolean m16948P(View view) {
            return C3218s0.m19330v(view) && view.getGlobalVisibleRect(this.f18050W);
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: e */
        public CharSequence mo16942e() {
            return this.f18048U;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: h */
        public void mo16940h(CharSequence charSequence) {
            this.f18048U = charSequence;
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: l */
        public void mo16937l(int i) {
            this.f18051X = i;
        }

        public C4244e(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f18050W = new Rect();
            m17225y(C4239v.this);
            m17249E(true);
            m17244J(0);
            m17247G(new C4245a(C4239v.this));
        }

        /* renamed from: N */
        public void m16950N() {
            int m16949O;
            int i;
            Drawable m17238g = m17238g();
            int i2 = 0;
            if (m17238g != null) {
                m17238g.getPadding(C4239v.this.f18038s);
                if (C4270z1.m16883b(C4239v.this)) {
                    i = C4239v.this.f18038s.right;
                } else {
                    i = -C4239v.this.f18038s.left;
                }
                i2 = i;
            } else {
                Rect rect = C4239v.this.f18038s;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = C4239v.this.getPaddingLeft();
            int paddingRight = C4239v.this.getPaddingRight();
            int width = C4239v.this.getWidth();
            C4239v c4239v = C4239v.this;
            int i3 = c4239v.f18037r;
            if (i3 == -2) {
                int m16953a = c4239v.m16953a((SpinnerAdapter) this.f18049V, m17238g());
                int i4 = C4239v.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = C4239v.this.f18038s;
                int i5 = (i4 - rect2.left) - rect2.right;
                if (m16953a > i5) {
                    m16953a = i5;
                }
                m17253A(Math.max(m16953a, (width - paddingLeft) - paddingRight));
            } else if (i3 == -1) {
                m17253A((width - paddingLeft) - paddingRight);
            } else {
                m17253A(i3);
            }
            if (C4270z1.m16883b(C4239v.this)) {
                m16949O = i2 + (((width - paddingRight) - m17229u()) - m16949O());
            } else {
                m16949O = i2 + paddingLeft + m16949O();
            }
            m17239d(m16949O);
        }

        @Override // p091j.C4239v.InterfaceC4250g
        /* renamed from: m */
        public void mo16936m(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean mo17241a = mo17241a();
            m16950N();
            m17250D(2);
            super.show();
            ListView mo17237i = mo17237i();
            mo17237i.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                mo17237i.setTextDirection(i);
                mo17237i.setTextAlignment(i2);
            }
            m17243K(C4239v.this.getSelectedItemPosition());
            if (!mo17241a && (viewTreeObserver = C4239v.this.getViewTreeObserver()) != null) {
                ViewTreeObserver$OnGlobalLayoutListenerC4246b viewTreeObserver$OnGlobalLayoutListenerC4246b = new ViewTreeObserver$OnGlobalLayoutListenerC4246b();
                viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC4246b);
                m17248F(new C4247c(viewTreeObserver$OnGlobalLayoutListenerC4246b));
            }
        }

        @Override // p091j.C4161b1, p091j.C4239v.InterfaceC4250g
        /* renamed from: o */
        public void mo16934o(ListAdapter listAdapter) {
            super.mo16934o(listAdapter);
            this.f18049V = listAdapter;
        }
    }

    /* renamed from: j.v$f */
    /* loaded from: classes.dex */
    public static class C4248f extends View.BaseSavedState {
        public static final Parcelable.Creator<C4248f> CREATOR = new C4249a();

        /* renamed from: a */
        public boolean f18058a;

        /* renamed from: j.v$f$a */
        /* loaded from: classes.dex */
        public class C4249a implements Parcelable.Creator<C4248f> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public C4248f createFromParcel(Parcel parcel) {
                return new C4248f(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public C4248f[] newArray(int i) {
                return new C4248f[i];
            }
        }

        public C4248f(Parcelable parcelable) {
            super(parcelable);
        }

        public C4248f(Parcel parcel) {
            super(parcel);
            this.f18058a = parcel.readByte() != 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f18058a ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: j.v$g */
    /* loaded from: classes.dex */
    public interface InterfaceC4250g {
        /* renamed from: a */
        boolean mo16945a();

        /* renamed from: b */
        int mo16944b();

        /* renamed from: d */
        void mo16943d(int i);

        void dismiss();

        /* renamed from: e */
        CharSequence mo16942e();

        /* renamed from: g */
        Drawable mo16941g();

        /* renamed from: h */
        void mo16940h(CharSequence charSequence);

        /* renamed from: j */
        void mo16939j(Drawable drawable);

        /* renamed from: k */
        void mo16938k(int i);

        /* renamed from: l */
        void mo16937l(int i);

        /* renamed from: m */
        void mo16936m(int i, int i2);

        /* renamed from: n */
        int mo16935n();

        /* renamed from: o */
        void mo16934o(ListAdapter listAdapter);
    }

    public C4239v(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2501I);
    }

    /* renamed from: a */
    public int m16953a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable != null) {
            drawable.getPadding(this.f18038s);
            Rect rect = this.f18038s;
            return i2 + rect.left + rect.right;
        }
        return i2;
    }

    public final InterfaceC4250g getInternalPopup() {
        return this.f18036q;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f18032b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        return interfaceC4250g != null ? interfaceC4250g.mo16942e() : super.getPrompt();
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C3335b.m19101d(getPopupContext(), i));
    }

    public C4239v(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    /* renamed from: b */
    public void m16952b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f18036q.mo16936m(getTextDirection(), getTextAlignment());
        } else {
            this.f18036q.mo16936m(-1, -1);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            return interfaceC4250g.mo16944b();
        }
        return super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            return interfaceC4250g.mo16935n();
        }
        return super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f18036q != null) {
            return this.f18037r;
        }
        return super.getDropDownWidth();
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            return interfaceC4250g.mo16941g();
        }
        return super.getPopupBackground();
    }

    @Override // p038d0.InterfaceC3265z
    public ColorStateList getSupportBackgroundTintList() {
        C4172d c4172d = this.f18031a;
        if (c4172d != null) {
            return c4172d.m17220c();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C4172d c4172d = this.f18031a;
        if (c4172d != null) {
            return c4172d.m17219d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        C4248f c4248f = (C4248f) parcelable;
        super.onRestoreInstanceState(c4248f.getSuperState());
        if (c4248f.f18058a && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4241b());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        boolean z;
        C4248f c4248f = new C4248f(super.onSaveInstanceState());
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null && interfaceC4250g.mo16945a()) {
            z = true;
        } else {
            z = false;
        }
        c4248f.f18058a = z;
        return c4248f;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC4261x0 abstractView$OnTouchListenerC4261x0 = this.f18033d;
        if (abstractView$OnTouchListenerC4261x0 != null && abstractView$OnTouchListenerC4261x0.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            if (!interfaceC4250g.mo16945a()) {
                m16952b();
                return true;
            }
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f18035p) {
            this.f18034k = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f18036q != null) {
            Context context = this.f18032b;
            if (context == null) {
                context = getContext();
            }
            this.f18036q.mo16934o(new C4243d(spinnerAdapter, context.getTheme()));
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            interfaceC4250g.mo16937l(i);
            this.f18036q.mo16943d(i);
            return;
        }
        super.setDropDownHorizontalOffset(i);
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            interfaceC4250g.mo16938k(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f18036q != null) {
            this.f18037r = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            interfaceC4250g.mo16939j(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null) {
            interfaceC4250g.mo16940h(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C4172d c4172d = this.f18031a;
        if (c4172d != null) {
            c4172d.m17214i(colorStateList);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C4172d c4172d = this.f18031a;
        if (c4172d != null) {
            c4172d.m17213j(mode);
        }
    }

    public C4239v(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4172d c4172d = this.f18031a;
        if (c4172d != null) {
            c4172d.m17221b();
        }
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC4250g interfaceC4250g = this.f18036q;
        if (interfaceC4250g != null && interfaceC4250g.mo16945a()) {
            this.f18036q.dismiss();
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f18036q != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m16953a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C4172d c4172d = this.f18031a;
        if (c4172d != null) {
            c4172d.m17217f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C4172d c4172d = this.f18031a;
        if (c4172d != null) {
            c4172d.m17216g(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
        if (r11 == null) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v0, types: [j.v, android.view.View] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4239v(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p091j.C4239v.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
