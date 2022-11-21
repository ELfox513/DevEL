package p091j;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import p021c.C1011d;
import p021c.C1013f;
import p021c.C1014g;
import p021c.C1016i;
/* renamed from: j.x1 */
/* loaded from: classes.dex */
public class C4264x1 {

    /* renamed from: a */
    public final Context f18099a;

    /* renamed from: b */
    public final View f18100b;

    /* renamed from: c */
    public final TextView f18101c;

    /* renamed from: d */
    public final WindowManager.LayoutParams f18102d;

    /* renamed from: e */
    public final Rect f18103e;

    /* renamed from: f */
    public final int[] f18104f;

    /* renamed from: g */
    public final int[] f18105g;

    /* renamed from: d */
    public boolean m16894d() {
        return this.f18100b.getParent() != null;
    }

    public C4264x1(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f18102d = layoutParams;
        this.f18103e = new Rect();
        this.f18104f = new int[2];
        this.f18105g = new int[2];
        this.f18099a = context;
        View inflate = LayoutInflater.from(context).inflate(C1014g.f2658s, (ViewGroup) null);
        this.f18100b = inflate;
        this.f18101c = (TextView) inflate.findViewById(C1013f.f2632s);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C1016i.f2672a;
        layoutParams.flags = 24;
    }

    /* renamed from: b */
    public static View m16896b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    /* renamed from: a */
    public final void m16897a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        int i4;
        int i5;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f18099a.getResources().getDimensionPixelOffset(C1011d.f2549j);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f18099a.getResources().getDimensionPixelOffset(C1011d.f2548i);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        Resources resources = this.f18099a.getResources();
        if (z) {
            i4 = C1011d.f2551l;
        } else {
            i4 = C1011d.f2550k;
        }
        int dimensionPixelOffset3 = resources.getDimensionPixelOffset(i4);
        View m16896b = m16896b(view);
        if (m16896b == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m16896b.getWindowVisibleDisplayFrame(this.f18103e);
        Rect rect = this.f18103e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources2 = this.f18099a.getResources();
            int identifier = resources2.getIdentifier("status_bar_height", "dimen", "android");
            if (identifier != 0) {
                i5 = resources2.getDimensionPixelSize(identifier);
            } else {
                i5 = 0;
            }
            DisplayMetrics displayMetrics = resources2.getDisplayMetrics();
            this.f18103e.set(0, i5, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m16896b.getLocationOnScreen(this.f18105g);
        view.getLocationOnScreen(this.f18104f);
        int[] iArr = this.f18104f;
        int i6 = iArr[0];
        int[] iArr2 = this.f18105g;
        int i7 = i6 - iArr2[0];
        iArr[0] = i7;
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (i7 + i) - (m16896b.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f18100b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f18100b.getMeasuredHeight();
        int i8 = this.f18104f[1];
        int i9 = ((i3 + i8) - dimensionPixelOffset3) - measuredHeight;
        int i10 = i8 + height + dimensionPixelOffset3;
        if (z) {
            if (i9 >= 0) {
                layoutParams.y = i9;
            } else {
                layoutParams.y = i10;
            }
        } else if (measuredHeight + i10 <= this.f18103e.height()) {
            layoutParams.y = i10;
        } else {
            layoutParams.y = i9;
        }
    }

    /* renamed from: c */
    public void m16895c() {
        if (!m16894d()) {
            return;
        }
        ((WindowManager) this.f18099a.getSystemService("window")).removeView(this.f18100b);
    }

    /* renamed from: e */
    public void m16893e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m16894d()) {
            m16895c();
        }
        this.f18101c.setText(charSequence);
        m16897a(view, i, i2, z, this.f18102d);
        ((WindowManager) this.f18099a.getSystemService("window")).addView(this.f18100b, this.f18102d);
    }
}
