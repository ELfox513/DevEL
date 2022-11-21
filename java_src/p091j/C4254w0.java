package p091j;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
import p021c.C1008a;
import p038d0.C3208p1;
import p055f.C3417n;
import p056f0.C3446n;
import p208w.C7089j;
/* renamed from: j.w0 */
/* loaded from: classes.dex */
public class C4254w0 extends ListView {

    /* renamed from: a */
    public final Rect f18059a;

    /* renamed from: b */
    public int f18060b;

    /* renamed from: d */
    public int f18061d;

    /* renamed from: k */
    public int f18062k;

    /* renamed from: p */
    public int f18063p;

    /* renamed from: q */
    public int f18064q;

    /* renamed from: r */
    public Field f18065r;

    /* renamed from: s */
    public C4255a f18066s;

    /* renamed from: t */
    public boolean f18067t;

    /* renamed from: u */
    public boolean f18068u;

    /* renamed from: v */
    public boolean f18069v;

    /* renamed from: w */
    public C3208p1 f18070w;

    /* renamed from: x */
    public C3446n f18071x;

    /* renamed from: y */
    public RunnableC4256b f18072y;

    /* renamed from: j.w0$a */
    /* loaded from: classes.dex */
    public static class C4255a extends C3417n {

        /* renamed from: b */
        public boolean f18073b;

        /* renamed from: c */
        public void m16919c(boolean z) {
            this.f18073b = z;
        }

        @Override // p055f.C3417n, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f18073b) {
                super.draw(canvas);
            }
        }

        @Override // p055f.C3417n, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f18073b) {
                super.setHotspot(f, f2);
            }
        }

        @Override // p055f.C3417n, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f18073b) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // p055f.C3417n, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f18073b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // p055f.C3417n, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f18073b) {
                return super.setVisible(z, z2);
            }
            return false;
        }

        public C4255a(Drawable drawable) {
            super(drawable);
            this.f18073b = true;
        }
    }

    /* renamed from: j.w0$b */
    /* loaded from: classes.dex */
    public class RunnableC4256b implements Runnable {
        public RunnableC4256b() {
        }

        /* renamed from: b */
        public void m16917b() {
            C4254w0.this.post(this);
        }

        /* renamed from: a */
        public void m16918a() {
            C4254w0 c4254w0 = C4254w0.this;
            c4254w0.f18072y = null;
            c4254w0.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C4254w0 c4254w0 = C4254w0.this;
            c4254w0.f18072y = null;
            c4254w0.drawableStateChanged();
        }
    }

    /* renamed from: a */
    public final void m16930a() {
        this.f18069v = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f18064q - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        C3208p1 c3208p1 = this.f18070w;
        if (c3208p1 != null) {
            c3208p1.m19401b();
            this.f18070w = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f18068u || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f18068u || super.hasWindowFocus();
    }

    /* renamed from: i */
    public final void m16922i(View view, int i, float f, float f2) {
        View childAt;
        this.f18069v = true;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f18064q;
        if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f18064q = i;
        float left = f - view.getLeft();
        float top = f2 - view.getTop();
        if (i2 >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m16923h(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f18068u || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f18068u && this.f18067t) || super.isInTouchMode();
    }

    /* renamed from: j */
    public final boolean m16921j() {
        return this.f18069v;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f18072y = null;
        super.onDetachedFromWindow();
    }

    public void setListSelectionHidden(boolean z) {
        this.f18067t = z;
    }

    public C4254w0(Context context, boolean z) {
        super(context, null, C1008a.f2530z);
        this.f18059a = new Rect();
        this.f18060b = 0;
        this.f18061d = 0;
        this.f18062k = 0;
        this.f18063p = 0;
        this.f18068u = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f18065r = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        C4255a c4255a = this.f18066s;
        if (c4255a != null) {
            c4255a.m16919c(z);
        }
    }

    /* renamed from: c */
    public final void m16928c(Canvas canvas) {
        Drawable selector;
        if (!this.f18059a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f18059a);
            selector.draw(canvas);
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f18072y != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m16920k();
    }

    /* renamed from: f */
    public final void m16925f(int i, View view) {
        boolean z;
        Rect rect = this.f18059a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f18060b;
        rect.top -= this.f18061d;
        rect.right += this.f18062k;
        rect.bottom += this.f18063p;
        try {
            boolean z2 = this.f18065r.getBoolean(this);
            if (view.isEnabled() != z2) {
                Field field = this.f18065r;
                if (!z2) {
                    z = true;
                } else {
                    z = false;
                }
                field.set(this, Boolean.valueOf(z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f18072y == null) {
            RunnableC4256b runnableC4256b = new RunnableC4256b();
            this.f18072y = runnableC4256b;
            runnableC4256b.m16917b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
        } else {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m16920k();
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C4255a c4255a;
        if (drawable != null) {
            c4255a = new C4255a(drawable);
        } else {
            c4255a = null;
        }
        this.f18066s = c4255a;
        super.setSelector(c4255a);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f18060b = rect.left;
        this.f18061d = rect.top;
        this.f18062k = rect.right;
        this.f18063p = rect.bottom;
    }

    /* renamed from: b */
    public final void m16929b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: d */
    public int mo16927d(int i, int i2, int i3, int i4, int i5) {
        int makeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingTop + listPaddingBottom;
        dividerHeight = (dividerHeight <= 0 || divider == null) ? 0 : 0;
        int count = adapter.getCount();
        View view = null;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < count; i9++) {
            int itemViewType = adapter.getItemViewType(i9);
            if (itemViewType != i7) {
                view = null;
                i7 = itemViewType;
            }
            view = adapter.getView(i9, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i10 = layoutParams.height;
            if (i10 > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i, makeMeasureSpec);
            view.forceLayout();
            if (i9 > 0) {
                i6 += dividerHeight;
            }
            i6 += view.getMeasuredHeight();
            if (i6 >= i4) {
                if (i5 >= 0 && i9 > i5 && i8 > 0 && i6 != i4) {
                    return i8;
                }
                return i4;
            }
            if (i5 >= 0 && i9 >= i5) {
                i8 = i6;
            }
        }
        return i6;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        m16928c(canvas);
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
        if (r0 != 3) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo16926e(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L14
            r9 = 3
            if (r0 == r9) goto L11
        Le:
            r9 = 0
            r3 = 1
            goto L46
        L11:
            r9 = 0
            r3 = 0
            goto L46
        L14:
            r3 = 1
            goto L17
        L16:
            r3 = 0
        L17:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L1e
            goto L11
        L1e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L31
            r9 = 1
            goto L46
        L31:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.m16922i(r3, r5, r4, r9)
            if (r0 != r2) goto Le
            r7.m16929b(r3, r5)
            goto Le
        L46:
            if (r3 == 0) goto L4a
            if (r9 == 0) goto L4d
        L4a:
            r7.m16930a()
        L4d:
            if (r3 == 0) goto L65
            f0.n r9 = r7.f18071x
            if (r9 != 0) goto L5a
            f0.n r9 = new f0.n
            r9.<init>(r7)
            r7.f18071x = r9
        L5a:
            f0.n r9 = r7.f18071x
            r9.m18885u(r2)
            f0.n r9 = r7.f18071x
            r9.onTouch(r7, r8)
            goto L6c
        L65:
            f0.n r8 = r7.f18071x
            if (r8 == 0) goto L6c
            r8.m18885u(r1)
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p091j.C4254w0.mo16926e(android.view.MotionEvent, int):boolean");
    }

    /* renamed from: g */
    public final void m16924g(int i, View view) {
        boolean z;
        Drawable selector = getSelector();
        boolean z2 = true;
        if (selector != null && i != -1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            selector.setVisible(false, false);
        }
        m16925f(i, view);
        if (z) {
            Rect rect = this.f18059a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z2 = false;
            }
            selector.setVisible(z2, false);
            C7089j.m2547j(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: h */
    public final void m16923h(int i, View view, float f, float f2) {
        m16924g(i, view);
        Drawable selector = getSelector();
        if (selector != null && i != -1) {
            C7089j.m2547j(selector, f, f2);
        }
    }

    /* renamed from: k */
    public final void m16920k() {
        Drawable selector = getSelector();
        if (selector != null && m16921j() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f18064q = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC4256b runnableC4256b = this.f18072y;
        if (runnableC4256b != null) {
            runnableC4256b.m16918a();
        }
        return super.onTouchEvent(motionEvent);
    }
}
