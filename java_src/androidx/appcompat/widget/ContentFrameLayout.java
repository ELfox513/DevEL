package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import p038d0.C3218s0;
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    public TypedValue f607a;

    /* renamed from: b */
    public TypedValue f608b;

    /* renamed from: d */
    public TypedValue f609d;

    /* renamed from: k */
    public TypedValue f610k;

    /* renamed from: p */
    public TypedValue f611p;

    /* renamed from: q */
    public TypedValue f612q;

    /* renamed from: r */
    public final Rect f613r;

    /* renamed from: s */
    public InterfaceC0189a f614s;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0189a {
        /* renamed from: a */
        void mo19591a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public void m27401a(Rect rect) {
        fitSystemWindows(rect);
    }

    public void setAttachListener(InterfaceC0189a interfaceC0189a) {
        this.f614s = interfaceC0189a;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: b */
    public void m27400b(int i, int i2, int i3, int i4) {
        this.f613r.set(i, i2, i3, i4);
        if (C3218s0.m19329w(this)) {
            requestLayout();
        }
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f611p == null) {
            this.f611p = new TypedValue();
        }
        return this.f611p;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f612q == null) {
            this.f612q = new TypedValue();
        }
        return this.f612q;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f609d == null) {
            this.f609d = new TypedValue();
        }
        return this.f609d;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f610k == null) {
            this.f610k = new TypedValue();
        }
        return this.f610k;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f607a == null) {
            this.f607a = new TypedValue();
        }
        return this.f607a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f608b == null) {
            this.f608b = new TypedValue();
        }
        return this.f608b;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f613r = new Rect();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC0189a interfaceC0189a = this.f614s;
        if (interfaceC0189a != null) {
            interfaceC0189a.mo19591a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC0189a interfaceC0189a = this.f614s;
        if (interfaceC0189a != null) {
            interfaceC0189a.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }
}
