package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import net.bytebuddy.jar.asm.Opcodes;
import p021c.C1008a;
import p021c.C1011d;
import p021c.C1013f;
import p021c.C1014g;
import p021c.C1015h;
import p021c.C1017j;
import p038d0.C3218s0;
import p065g0.AbstractC3539a;
import p073h.InterfaceC3913c;
import p074h0.AbstractC3928a;
import p091j.C4169c;
import p091j.C4235t1;
import p091j.C4252v1;
import p091j.C4270z1;
import p091j.View$OnClickListenerC4213n1;
/* loaded from: classes.dex */
public class SearchView extends C0227c implements InterfaceC3913c {

    /* renamed from: B0 */
    public static final C0204n f617B0;

    /* renamed from: A */
    public final SearchAutoComplete f618A;

    /* renamed from: A0 */
    public TextWatcher f619A0;

    /* renamed from: B */
    public final View f620B;

    /* renamed from: C */
    public final View f621C;

    /* renamed from: D */
    public final View f622D;

    /* renamed from: E */
    public final ImageView f623E;

    /* renamed from: F */
    public final ImageView f624F;

    /* renamed from: G */
    public final ImageView f625G;

    /* renamed from: H */
    public final ImageView f626H;

    /* renamed from: I */
    public final View f627I;

    /* renamed from: J */
    public C0207p f628J;

    /* renamed from: K */
    public Rect f629K;

    /* renamed from: L */
    public Rect f630L;

    /* renamed from: M */
    public int[] f631M;

    /* renamed from: N */
    public int[] f632N;

    /* renamed from: O */
    public final ImageView f633O;

    /* renamed from: P */
    public final Drawable f634P;

    /* renamed from: Q */
    public final int f635Q;

    /* renamed from: R */
    public final int f636R;

    /* renamed from: S */
    public final Intent f637S;

    /* renamed from: T */
    public final Intent f638T;

    /* renamed from: U */
    public final CharSequence f639U;

    /* renamed from: V */
    public InterfaceC0202l f640V;

    /* renamed from: W */
    public InterfaceC0201k f641W;

    /* renamed from: a0 */
    public View.OnFocusChangeListener f642a0;

    /* renamed from: b0 */
    public InterfaceC0203m f643b0;

    /* renamed from: c0 */
    public View.OnClickListener f644c0;

    /* renamed from: d0 */
    public boolean f645d0;

    /* renamed from: e0 */
    public boolean f646e0;

    /* renamed from: f0 */
    public AbstractC3539a f647f0;

    /* renamed from: g0 */
    public boolean f648g0;

    /* renamed from: h0 */
    public CharSequence f649h0;

    /* renamed from: i0 */
    public boolean f650i0;

    /* renamed from: j0 */
    public boolean f651j0;

    /* renamed from: k0 */
    public int f652k0;

    /* renamed from: l0 */
    public boolean f653l0;

    /* renamed from: m0 */
    public CharSequence f654m0;

    /* renamed from: n0 */
    public CharSequence f655n0;

    /* renamed from: o0 */
    public boolean f656o0;

    /* renamed from: p0 */
    public int f657p0;

    /* renamed from: q0 */
    public SearchableInfo f658q0;

    /* renamed from: r0 */
    public Bundle f659r0;

    /* renamed from: s0 */
    public final Runnable f660s0;

    /* renamed from: t0 */
    public Runnable f661t0;

    /* renamed from: u0 */
    public final WeakHashMap<String, Drawable.ConstantState> f662u0;

    /* renamed from: v0 */
    public final View.OnClickListener f663v0;

    /* renamed from: w0 */
    public View.OnKeyListener f664w0;

    /* renamed from: x0 */
    public final TextView.OnEditorActionListener f665x0;

    /* renamed from: y0 */
    public final AdapterView.OnItemClickListener f666y0;

    /* renamed from: z0 */
    public final AdapterView.OnItemSelectedListener f667z0;

    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends C4169c {

        /* renamed from: k */
        public int f668k;

        /* renamed from: p */
        public SearchView f669p;

        /* renamed from: q */
        public boolean f670q;

        /* renamed from: r */
        public final Runnable f671r;

        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        /* loaded from: classes.dex */
        public class RunnableC0190a implements Runnable {
            public RunnableC0190a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.m27360c();
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C1008a.f2520p);
        }

        /* renamed from: b */
        public boolean m27361b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f668k <= 0 || super.enoughToFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f669p.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public void setSearchView(SearchView searchView) {
            this.f669p = searchView;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f671r = new RunnableC0190a();
            this.f668k = getThreshold();
        }

        /* renamed from: a */
        public void m27362a() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.f617B0.m27352c(this);
        }

        /* renamed from: c */
        public void m27360c() {
            if (this.f670q) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f670q = false;
            }
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                if (i < 640 || i2 < 480) {
                    return 160;
                }
                return 192;
            }
            return 192;
        }

        @Override // p091j.C4169c, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f670q) {
                removeCallbacks(this.f671r);
                post(this.f671r);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f669p.m27378V();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f669p.hasFocus() && getVisibility() == 0) {
                this.f670q = true;
                if (SearchView.m27391I(getContext())) {
                    m27362a();
                }
            }
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f670q = false;
                removeCallbacks(this.f671r);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f670q = false;
                removeCallbacks(this.f671r);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f670q = true;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f668k = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes.dex */
    public class C0191a implements TextWatcher {
        public C0191a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView.this.m27379U(charSequence);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes.dex */
    public class RunnableC0192b implements Runnable {
        public RunnableC0192b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m27372b0();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes.dex */
    public class RunnableC0193c implements Runnable {
        public RunnableC0193c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC3539a abstractC3539a = SearchView.this.f647f0;
            if (abstractC3539a instanceof View$OnClickListenerC4213n1) {
                abstractC3539a.mo17076b(null);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes.dex */
    public class View$OnFocusChangeListenerC0194d implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC0194d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f642a0;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes.dex */
    public class View$OnLayoutChangeListenerC0195e implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC0195e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView.this.m27365x();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0196f implements View.OnClickListener {
        public View$OnClickListenerC0196f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f623E) {
                searchView.m27382R();
            } else if (view == searchView.f625G) {
                searchView.m27386N();
            } else if (view == searchView.f624F) {
                searchView.m27381S();
            } else if (view == searchView.f626H) {
                searchView.m27377W();
            } else if (view == searchView.f618A) {
                searchView.m27396D();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$g */
    /* loaded from: classes.dex */
    public class View$OnKeyListenerC0197g implements View.OnKeyListener {
        public View$OnKeyListenerC0197g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f658q0 == null) {
                return false;
            }
            if (searchView.f618A.isPopupShowing() && SearchView.this.f618A.getListSelection() != -1) {
                return SearchView.this.m27380T(view, i, keyEvent);
            }
            if (SearchView.this.f618A.m27361b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.m27388L(0, null, searchView2.f618A.getText().toString());
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$h */
    /* loaded from: classes.dex */
    public class C0198h implements TextView.OnEditorActionListener {
        public C0198h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m27381S();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$i */
    /* loaded from: classes.dex */
    public class C0199i implements AdapterView.OnItemClickListener {
        public C0199i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m27385O(i, 0, null);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$j */
    /* loaded from: classes.dex */
    public class C0200j implements AdapterView.OnItemSelectedListener {
        public C0200j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m27384P(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$k */
    /* loaded from: classes.dex */
    public interface InterfaceC0201k {
        /* renamed from: a */
        boolean m27359a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$l */
    /* loaded from: classes.dex */
    public interface InterfaceC0202l {
        /* renamed from: a */
        boolean m27358a(String str);

        /* renamed from: b */
        boolean m27357b(String str);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$m */
    /* loaded from: classes.dex */
    public interface InterfaceC0203m {
        /* renamed from: a */
        boolean m27356a(int i);

        /* renamed from: b */
        boolean m27355b(int i);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$n */
    /* loaded from: classes.dex */
    public static class C0204n {

        /* renamed from: a */
        public Method f683a;

        /* renamed from: b */
        public Method f684b;

        /* renamed from: c */
        public Method f685c;

        /* renamed from: d */
        public static void m27351d() {
            if (Build.VERSION.SDK_INT < 29) {
                return;
            }
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        public C0204n() {
            this.f683a = null;
            this.f684b = null;
            this.f685c = null;
            m27351d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f683a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f684b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f685c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        /* renamed from: a */
        public void m27354a(AutoCompleteTextView autoCompleteTextView) {
            m27351d();
            Method method = this.f684b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* renamed from: b */
        public void m27353b(AutoCompleteTextView autoCompleteTextView) {
            m27351d();
            Method method = this.f683a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* renamed from: c */
        public void m27352c(AutoCompleteTextView autoCompleteTextView) {
            m27351d();
            Method method = this.f685c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$o */
    /* loaded from: classes.dex */
    public static class C0205o extends AbstractC3928a {
        public static final Parcelable.Creator<C0205o> CREATOR = new C0206a();

        /* renamed from: d */
        public boolean f686d;

        /* renamed from: androidx.appcompat.widget.SearchView$o$a */
        /* loaded from: classes.dex */
        public class C0206a implements Parcelable.ClassLoaderCreator<C0205o> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public C0205o createFromParcel(Parcel parcel) {
                return new C0205o(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public C0205o createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0205o(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public C0205o[] newArray(int i) {
                return new C0205o[i];
            }
        }

        public C0205o(Parcelable parcelable) {
            super(parcelable);
        }

        public C0205o(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f686d = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f686d + "}";
        }

        @Override // p074h0.AbstractC3928a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f686d));
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$p */
    /* loaded from: classes.dex */
    public static class C0207p extends TouchDelegate {

        /* renamed from: a */
        public final View f687a;

        /* renamed from: b */
        public final Rect f688b;

        /* renamed from: c */
        public final Rect f689c;

        /* renamed from: d */
        public final Rect f690d;

        /* renamed from: e */
        public final int f691e;

        /* renamed from: f */
        public boolean f692f;

        /* renamed from: a */
        public void m27347a(Rect rect, Rect rect2) {
            this.f688b.set(rect);
            this.f690d.set(rect);
            Rect rect3 = this.f690d;
            int i = this.f691e;
            rect3.inset(-i, -i);
            this.f689c.set(rect2);
        }

        public C0207p(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f691e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f688b = new Rect();
            this.f690d = new Rect();
            this.f689c = new Rect();
            m27347a(rect, rect2);
            this.f687a = view;
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action != 1 && action != 2) {
                    if (action == 3) {
                        z2 = this.f692f;
                        this.f692f = false;
                    }
                    z = true;
                    z3 = false;
                } else {
                    z2 = this.f692f;
                    if (z2 && !this.f690d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                }
                z3 = z2;
                z = true;
            } else {
                if (this.f688b.contains(x, y)) {
                    this.f692f = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            if (z && !this.f689c.contains(x, y)) {
                motionEvent.setLocation(this.f687a.getWidth() / 2, this.f687a.getHeight() / 2);
            } else {
                Rect rect = this.f689c;
                motionEvent.setLocation(x - rect.left, y - rect.top);
            }
            return this.f687a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        f617B0 = Build.VERSION.SDK_INT < 29 ? new C0204n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    /* renamed from: I */
    public static boolean m27391I(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: C */
    public final void m27397C() {
        this.f618A.dismissDropDown();
    }

    /* renamed from: H */
    public boolean m27392H() {
        return this.f646e0;
    }

    /* renamed from: J */
    public final boolean m27390J() {
        return (this.f648g0 || this.f653l0) && !m27392H();
    }

    /* renamed from: Q */
    public void m27383Q(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: R */
    public void m27382R() {
        m27367g0(false);
        this.f618A.requestFocus();
        this.f618A.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f644c0;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: X */
    public final void m27376X() {
        post(this.f660s0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f651j0 = true;
        super.clearFocus();
        this.f618A.clearFocus();
        this.f618A.setImeVisibility(false);
        this.f651j0 = false;
    }

    public int getImeOptions() {
        return this.f618A.getImeOptions();
    }

    public int getInputType() {
        return this.f618A.getInputType();
    }

    public int getMaxWidth() {
        return this.f652k0;
    }

    public CharSequence getQuery() {
        return this.f618A.getText();
    }

    public int getSuggestionCommitIconResId() {
        return this.f636R;
    }

    public int getSuggestionRowLayout() {
        return this.f635Q;
    }

    public AbstractC3539a getSuggestionsAdapter() {
        return this.f647f0;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f659r0 = bundle;
    }

    public void setImeOptions(int i) {
        this.f618A.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f618A.setInputType(i);
    }

    public void setOnCloseListener(InterfaceC0201k interfaceC0201k) {
        this.f641W = interfaceC0201k;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f642a0 = onFocusChangeListener;
    }

    public void setOnQueryTextListener(InterfaceC0202l interfaceC0202l) {
        this.f640V = interfaceC0202l;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f644c0 = onClickListener;
    }

    public void setOnSuggestionListener(InterfaceC0203m interfaceC0203m) {
        this.f643b0 = interfaceC0203m;
    }

    /* renamed from: z */
    public final Intent m27363z(Cursor cursor, int i, String str) {
        int i2;
        Uri parse;
        String m17068v;
        try {
            String m17068v2 = View$OnClickListenerC4213n1.m17068v(cursor, "suggest_intent_action");
            if (m17068v2 == null) {
                m17068v2 = this.f658q0.getSuggestIntentAction();
            }
            if (m17068v2 == null) {
                m17068v2 = "android.intent.action.SEARCH";
            }
            String str2 = m17068v2;
            String m17068v3 = View$OnClickListenerC4213n1.m17068v(cursor, "suggest_intent_data");
            if (m17068v3 == null) {
                m17068v3 = this.f658q0.getSuggestIntentData();
            }
            if (m17068v3 != null && (m17068v = View$OnClickListenerC4213n1.m17068v(cursor, "suggest_intent_data_id")) != null) {
                m17068v3 = m17068v3 + "/" + Uri.encode(m17068v);
            }
            if (m17068v3 == null) {
                parse = null;
            } else {
                parse = Uri.parse(m17068v3);
            }
            return m27364y(str2, parse, View$OnClickListenerC4213n1.m17068v(cursor, "suggest_intent_extra_data"), View$OnClickListenerC4213n1.m17068v(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e) {
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException unused) {
                i2 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e);
            return null;
        }
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2499G);
    }

    private void setQuery(CharSequence charSequence) {
        int length;
        this.f618A.setText(charSequence);
        SearchAutoComplete searchAutoComplete = this.f618A;
        if (TextUtils.isEmpty(charSequence)) {
            length = 0;
        } else {
            length = charSequence.length();
        }
        searchAutoComplete.setSelection(length);
    }

    /* renamed from: B */
    public final Intent m27398B(Intent intent, SearchableInfo searchableInfo) {
        String flattenToShortString;
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        if (searchActivity == null) {
            flattenToShortString = null;
        } else {
            flattenToShortString = searchActivity.flattenToShortString();
        }
        intent2.putExtra("calling_package", flattenToShortString);
        return intent2;
    }

    /* renamed from: D */
    public void m27396D() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f618A.refreshAutoCompleteResults();
            return;
        }
        C0204n c0204n = f617B0;
        c0204n.m27353b(this.f618A);
        c0204n.m27354a(this.f618A);
    }

    /* renamed from: E */
    public final void m27395E(View view, Rect rect) {
        view.getLocationInWindow(this.f631M);
        getLocationInWindow(this.f632N);
        int[] iArr = this.f631M;
        int i = iArr[1];
        int[] iArr2 = this.f632N;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    /* renamed from: F */
    public final CharSequence m27394F(CharSequence charSequence) {
        if (this.f645d0 && this.f634P != null) {
            double textSize = this.f618A.getTextSize();
            Double.isNaN(textSize);
            int i = (int) (textSize * 1.25d);
            this.f634P.setBounds(0, 0, i, i);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.f634P), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            return spannableStringBuilder;
        }
        return charSequence;
    }

    /* renamed from: G */
    public final boolean m27393G() {
        SearchableInfo searchableInfo = this.f658q0;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.f658q0.getVoiceSearchLaunchWebSearch()) {
            intent = this.f637S;
        } else if (this.f658q0.getVoiceSearchLaunchRecognizer()) {
            intent = this.f638T;
        }
        if (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) {
            return false;
        }
        return true;
    }

    /* renamed from: K */
    public final void m27389K(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e) {
            Log.e("SearchView", "Failed launch activity: " + intent, e);
        }
    }

    /* renamed from: L */
    public void m27388L(int i, String str, String str2) {
        getContext().startActivity(m27364y("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    /* renamed from: M */
    public final boolean m27387M(int i, int i2, String str) {
        Cursor mo18647a = this.f647f0.mo18647a();
        if (mo18647a != null && mo18647a.moveToPosition(i)) {
            m27389K(m27363z(mo18647a, i2, str));
            return true;
        }
        return false;
    }

    /* renamed from: N */
    public void m27386N() {
        if (TextUtils.isEmpty(this.f618A.getText())) {
            if (this.f645d0) {
                InterfaceC0201k interfaceC0201k = this.f641W;
                if (interfaceC0201k == null || !interfaceC0201k.m27359a()) {
                    clearFocus();
                    m27367g0(true);
                    return;
                }
                return;
            }
            return;
        }
        this.f618A.setText("");
        this.f618A.requestFocus();
        this.f618A.setImeVisibility(true);
    }

    /* renamed from: O */
    public boolean m27385O(int i, int i2, String str) {
        InterfaceC0203m interfaceC0203m = this.f643b0;
        if (interfaceC0203m != null && interfaceC0203m.m27355b(i)) {
            return false;
        }
        m27387M(i, 0, null);
        this.f618A.setImeVisibility(false);
        m27397C();
        return true;
    }

    /* renamed from: P */
    public boolean m27384P(int i) {
        InterfaceC0203m interfaceC0203m = this.f643b0;
        if (interfaceC0203m != null && interfaceC0203m.m27356a(i)) {
            return false;
        }
        m27375Y(i);
        return true;
    }

    /* renamed from: S */
    public void m27381S() {
        Editable text = this.f618A.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            InterfaceC0202l interfaceC0202l = this.f640V;
            if (interfaceC0202l == null || !interfaceC0202l.m27357b(text.toString())) {
                if (this.f658q0 != null) {
                    m27388L(0, null, text.toString());
                }
                this.f618A.setImeVisibility(false);
                m27397C();
            }
        }
    }

    /* renamed from: T */
    public boolean m27380T(View view, int i, KeyEvent keyEvent) {
        int length;
        if (this.f658q0 != null && this.f647f0 != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i != 66 && i != 84 && i != 61) {
                if (i != 21 && i != 22) {
                    if (i == 19) {
                        this.f618A.getListSelection();
                        return false;
                    }
                } else {
                    if (i == 21) {
                        length = 0;
                    } else {
                        length = this.f618A.length();
                    }
                    this.f618A.setSelection(length);
                    this.f618A.setListSelection(0);
                    this.f618A.clearListSelection();
                    this.f618A.m27362a();
                    return true;
                }
            } else {
                return m27385O(this.f618A.getListSelection(), 0, null);
            }
        }
        return false;
    }

    /* renamed from: U */
    public void m27379U(CharSequence charSequence) {
        Editable text = this.f618A.getText();
        this.f655n0 = text;
        boolean z = !TextUtils.isEmpty(text);
        m27368f0(z);
        m27366h0(!z);
        m27373a0();
        m27369e0();
        if (this.f640V != null && !TextUtils.equals(charSequence, this.f654m0)) {
            this.f640V.m27358a(charSequence.toString());
        }
        this.f654m0 = charSequence.toString();
    }

    /* renamed from: W */
    public void m27377W() {
        SearchableInfo searchableInfo = this.f658q0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(m27398B(this.f637S, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(m27399A(this.f638T, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    /* renamed from: Y */
    public final void m27375Y(int i) {
        Editable text = this.f618A.getText();
        Cursor mo18647a = this.f647f0.mo18647a();
        if (mo18647a == null) {
            return;
        }
        if (mo18647a.moveToPosition(i)) {
            CharSequence convertToString = this.f647f0.convertToString(mo18647a);
            if (convertToString != null) {
                setQuery(convertToString);
                return;
            } else {
                setQuery(text);
                return;
            }
        }
        setQuery(text);
    }

    /* renamed from: Z */
    public void m27374Z(CharSequence charSequence, boolean z) {
        this.f618A.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f618A;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f655n0 = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            m27381S();
        }
    }

    /* renamed from: a0 */
    public final void m27373a0() {
        int[] iArr;
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f618A.getText());
        int i = 0;
        if (!z2 && (!this.f645d0 || this.f656o0)) {
            z = false;
        }
        ImageView imageView = this.f625G;
        if (!z) {
            i = 8;
        }
        imageView.setVisibility(i);
        Drawable drawable = this.f625G.getDrawable();
        if (drawable != null) {
            if (z2) {
                iArr = ViewGroup.ENABLED_STATE_SET;
            } else {
                iArr = ViewGroup.EMPTY_STATE_SET;
            }
            drawable.setState(iArr);
        }
    }

    /* renamed from: b0 */
    public void m27372b0() {
        int[] iArr;
        if (this.f618A.hasFocus()) {
            iArr = ViewGroup.FOCUSED_STATE_SET;
        } else {
            iArr = ViewGroup.EMPTY_STATE_SET;
        }
        Drawable background = this.f621C.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f622D.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: d0 */
    public final void m27370d0() {
        this.f618A.setThreshold(this.f658q0.getSuggestThreshold());
        this.f618A.setImeOptions(this.f658q0.getImeOptions());
        int inputType = this.f658q0.getInputType();
        int i = 1;
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f658q0.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | Opcodes.ASM8;
            }
        }
        this.f618A.setInputType(inputType);
        AbstractC3539a abstractC3539a = this.f647f0;
        if (abstractC3539a != null) {
            abstractC3539a.mo17076b(null);
        }
        if (this.f658q0.getSuggestAuthority() != null) {
            View$OnClickListenerC4213n1 view$OnClickListenerC4213n1 = new View$OnClickListenerC4213n1(getContext(), this, this.f658q0, this.f662u0);
            this.f647f0 = view$OnClickListenerC4213n1;
            this.f618A.setAdapter(view$OnClickListenerC4213n1);
            View$OnClickListenerC4213n1 view$OnClickListenerC4213n12 = (View$OnClickListenerC4213n1) this.f647f0;
            if (this.f650i0) {
                i = 2;
            }
            view$OnClickListenerC4213n12.m17081E(i);
        }
    }

    /* renamed from: f0 */
    public final void m27368f0(boolean z) {
        int i;
        if (this.f648g0 && m27390J() && hasFocus() && (z || !this.f653l0)) {
            i = 0;
        } else {
            i = 8;
        }
        this.f624F.setVisibility(i);
    }

    /* renamed from: g0 */
    public final void m27367g0(boolean z) {
        int i;
        int i2;
        this.f646e0 = z;
        int i3 = 0;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        boolean z2 = !TextUtils.isEmpty(this.f618A.getText());
        this.f623E.setVisibility(i);
        m27368f0(z2);
        View view = this.f620B;
        if (z) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        view.setVisibility(i2);
        this.f633O.setVisibility((this.f633O.getDrawable() == null || this.f645d0) ? 8 : 8);
        m27373a0();
        m27366h0(!z2);
        m27369e0();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f649h0;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f658q0;
            if (searchableInfo != null && searchableInfo.getHintId() != 0) {
                return getContext().getText(this.f658q0.getHintId());
            }
            return this.f639U;
        }
        return charSequence;
    }

    /* renamed from: h0 */
    public final void m27366h0(boolean z) {
        int i = 8;
        if (this.f653l0 && !m27392H() && z) {
            this.f624F.setVisibility(8);
            i = 0;
        }
        this.f626H.setVisibility(i);
    }

    @Override // p073h.InterfaceC3913c
    public void onActionViewCollapsed() {
        m27374Z("", false);
        clearFocus();
        m27367g0(true);
        this.f618A.setImeOptions(this.f657p0);
        this.f656o0 = false;
    }

    @Override // p073h.InterfaceC3913c
    public void onActionViewExpanded() {
        if (this.f656o0) {
            return;
        }
        this.f656o0 = true;
        int imeOptions = this.f618A.getImeOptions();
        this.f657p0 = imeOptions;
        this.f618A.setImeOptions(imeOptions | 33554432);
        this.f618A.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f660s0);
        post(this.f661t0);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0205o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0205o c0205o = (C0205o) parcelable;
        super.onRestoreInstanceState(c0205o.m17721a());
        m27367g0(c0205o.f686d);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.f651j0 || !isFocusable()) {
            return false;
        }
        if (!m27392H()) {
            boolean requestFocus = this.f618A.requestFocus(i, rect);
            if (requestFocus) {
                m27367g0(false);
            }
            return requestFocus;
        }
        return super.requestFocus(i, rect);
    }

    public void setIconified(boolean z) {
        if (z) {
            m27386N();
        } else {
            m27382R();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f645d0 == z) {
            return;
        }
        this.f645d0 = z;
        m27367g0(z);
        m27371c0();
    }

    public void setMaxWidth(int i) {
        this.f652k0 = i;
        requestLayout();
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f649h0 = charSequence;
        m27371c0();
    }

    public void setQueryRefinementEnabled(boolean z) {
        int i;
        this.f650i0 = z;
        AbstractC3539a abstractC3539a = this.f647f0;
        if (abstractC3539a instanceof View$OnClickListenerC4213n1) {
            View$OnClickListenerC4213n1 view$OnClickListenerC4213n1 = (View$OnClickListenerC4213n1) abstractC3539a;
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            view$OnClickListenerC4213n1.m17081E(i);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f658q0 = searchableInfo;
        if (searchableInfo != null) {
            m27370d0();
            m27371c0();
        }
        boolean m27393G = m27393G();
        this.f653l0 = m27393G;
        if (m27393G) {
            this.f618A.setPrivateImeOptions("nm");
        }
        m27367g0(m27392H());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f648g0 = z;
        m27367g0(m27392H());
    }

    public void setSuggestionsAdapter(AbstractC3539a abstractC3539a) {
        this.f647f0 = abstractC3539a;
        this.f618A.setAdapter(abstractC3539a);
    }

    /* renamed from: x */
    public void m27365x() {
        int i;
        int i2;
        if (this.f627I.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f621C.getPaddingLeft();
            Rect rect = new Rect();
            boolean m16883b = C4270z1.m16883b(this);
            if (this.f645d0) {
                i = resources.getDimensionPixelSize(C1011d.f2544e) + resources.getDimensionPixelSize(C1011d.f2545f);
            } else {
                i = 0;
            }
            this.f618A.getDropDownBackground().getPadding(rect);
            if (m16883b) {
                i2 = -rect.left;
            } else {
                i2 = paddingLeft - (rect.left + i);
            }
            this.f618A.setDropDownHorizontalOffset(i2);
            this.f618A.setDropDownWidth((((this.f627I.getWidth() + rect.left) + rect.right) + i) - paddingLeft);
        }
    }

    /* renamed from: y */
    public final Intent m27364y(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f655n0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f659r0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f658q0.getSearchActivity());
        return intent;
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f629K = new Rect();
        this.f630L = new Rect();
        this.f631M = new int[2];
        this.f632N = new int[2];
        this.f660s0 = new RunnableC0192b();
        this.f661t0 = new RunnableC0193c();
        this.f662u0 = new WeakHashMap<>();
        View$OnClickListenerC0196f view$OnClickListenerC0196f = new View$OnClickListenerC0196f();
        this.f663v0 = view$OnClickListenerC0196f;
        this.f664w0 = new View$OnKeyListenerC0197g();
        C0198h c0198h = new C0198h();
        this.f665x0 = c0198h;
        C0199i c0199i = new C0199i();
        this.f666y0 = c0199i;
        C0200j c0200j = new C0200j();
        this.f667z0 = c0200j;
        this.f619A0 = new C0191a();
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, C1017j.f2834i2, i, 0);
        LayoutInflater.from(context).inflate(m16966u.m16974m(C1017j.f2884s2, C1014g.f2657r), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C1013f.f2601D);
        this.f618A = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f620B = findViewById(C1013f.f2639z);
        View findViewById = findViewById(C1013f.f2600C);
        this.f621C = findViewById;
        View findViewById2 = findViewById(C1013f.f2607J);
        this.f622D = findViewById2;
        ImageView imageView = (ImageView) findViewById(C1013f.f2637x);
        this.f623E = imageView;
        ImageView imageView2 = (ImageView) findViewById(C1013f.f2598A);
        this.f624F = imageView2;
        ImageView imageView3 = (ImageView) findViewById(C1013f.f2638y);
        this.f625G = imageView3;
        ImageView imageView4 = (ImageView) findViewById(C1013f.f2602E);
        this.f626H = imageView4;
        ImageView imageView5 = (ImageView) findViewById(C1013f.f2599B);
        this.f633O = imageView5;
        C3218s0.m19362I(findViewById, m16966u.m16981f(C1017j.f2889t2));
        C3218s0.m19362I(findViewById2, m16966u.m16981f(C1017j.f2909x2));
        int i2 = C1017j.f2904w2;
        imageView.setImageDrawable(m16966u.m16981f(i2));
        imageView2.setImageDrawable(m16966u.m16981f(C1017j.f2874q2));
        imageView3.setImageDrawable(m16966u.m16981f(C1017j.f2859n2));
        imageView4.setImageDrawable(m16966u.m16981f(C1017j.f2919z2));
        imageView5.setImageDrawable(m16966u.m16981f(i2));
        this.f634P = m16966u.m16981f(C1017j.f2899v2);
        C4252v1.m16932a(imageView, getResources().getString(C1015h.f2671l));
        this.f635Q = m16966u.m16974m(C1017j.f2914y2, C1014g.f2656q);
        this.f636R = m16966u.m16974m(C1017j.f2864o2, 0);
        imageView.setOnClickListener(view$OnClickListenerC0196f);
        imageView3.setOnClickListener(view$OnClickListenerC0196f);
        imageView2.setOnClickListener(view$OnClickListenerC0196f);
        imageView4.setOnClickListener(view$OnClickListenerC0196f);
        searchAutoComplete.setOnClickListener(view$OnClickListenerC0196f);
        searchAutoComplete.addTextChangedListener(this.f619A0);
        searchAutoComplete.setOnEditorActionListener(c0198h);
        searchAutoComplete.setOnItemClickListener(c0199i);
        searchAutoComplete.setOnItemSelectedListener(c0200j);
        searchAutoComplete.setOnKeyListener(this.f664w0);
        searchAutoComplete.setOnFocusChangeListener(new View$OnFocusChangeListenerC0194d());
        setIconifiedByDefault(m16966u.m16986a(C1017j.f2879r2, true));
        int m16982e = m16966u.m16982e(C1017j.f2844k2, -1);
        if (m16982e != -1) {
            setMaxWidth(m16982e);
        }
        this.f639U = m16966u.m16972o(C1017j.f2869p2);
        this.f649h0 = m16966u.m16972o(C1017j.f2894u2);
        int m16977j = m16966u.m16977j(C1017j.f2854m2, -1);
        if (m16977j != -1) {
            setImeOptions(m16977j);
        }
        int m16977j2 = m16966u.m16977j(C1017j.f2849l2, -1);
        if (m16977j2 != -1) {
            setInputType(m16977j2);
        }
        setFocusable(m16966u.m16986a(C1017j.f2839j2, true));
        m16966u.m16965v();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f637S = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f638T = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f627I = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC0195e());
        }
        m27367g0(this.f645d0);
        m27371c0();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C1011d.f2546g);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C1011d.f2547h);
    }

    /* renamed from: A */
    public final Intent m27399A(Intent intent, SearchableInfo searchableInfo) {
        String str;
        String str2;
        String str3;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f659r0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        int i = 1;
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            str = resources.getString(searchableInfo.getVoiceLanguageModeId());
        } else {
            str = "free_form";
        }
        String str4 = null;
        if (searchableInfo.getVoicePromptTextId() != 0) {
            str2 = resources.getString(searchableInfo.getVoicePromptTextId());
        } else {
            str2 = null;
        }
        if (searchableInfo.getVoiceLanguageId() != 0) {
            str3 = resources.getString(searchableInfo.getVoiceLanguageId());
        } else {
            str3 = null;
        }
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str);
        intent3.putExtra("android.speech.extra.PROMPT", str2);
        intent3.putExtra("android.speech.extra.LANGUAGE", str3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i);
        if (searchActivity != null) {
            str4 = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str4);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* renamed from: V */
    public void m27378V() {
        m27367g0(m27392H());
        m27376X();
        if (this.f618A.hasFocus()) {
            m27396D();
        }
    }

    /* renamed from: c0 */
    public final void m27371c0() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f618A;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(m27394F(queryHint));
    }

    /* renamed from: e0 */
    public final void m27369e0() {
        int i;
        if (m27390J() && (this.f624F.getVisibility() == 0 || this.f626H.getVisibility() == 0)) {
            i = 0;
        } else {
            i = 8;
        }
        this.f622D.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.C0227c, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m27395E(this.f618A, this.f629K);
            Rect rect = this.f630L;
            Rect rect2 = this.f629K;
            rect.set(rect2.left, 0, rect2.right, i4 - i2);
            C0207p c0207p = this.f628J;
            if (c0207p == null) {
                C0207p c0207p2 = new C0207p(this.f630L, this.f629K, this.f618A);
                this.f628J = c0207p2;
                setTouchDelegate(c0207p2);
                return;
            }
            c0207p.m27347a(this.f630L, this.f629K);
        }
    }

    @Override // androidx.appcompat.widget.C0227c, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (m27392H()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824 && (i3 = this.f652k0) > 0) {
                    size = Math.min(i3, size);
                }
            } else {
                size = this.f652k0;
                if (size <= 0) {
                    size = getPreferredWidth();
                }
            }
        } else {
            int i4 = this.f652k0;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                size2 = getPreferredHeight();
            }
        } else {
            size2 = Math.min(getPreferredHeight(), size2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0205o c0205o = new C0205o(super.onSaveInstanceState());
        c0205o.f686d = m27392H();
        return c0205o;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m27376X();
    }
}
