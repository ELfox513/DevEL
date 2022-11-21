package p091j;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import p056f0.C3432f;
import p208w.C7089j;
/* renamed from: j.h */
/* loaded from: classes.dex */
public class C4184h {

    /* renamed from: a */
    public final CompoundButton f17879a;

    /* renamed from: b */
    public ColorStateList f17880b = null;

    /* renamed from: c */
    public PorterDuff.Mode f17881c = null;

    /* renamed from: d */
    public boolean f17882d = false;

    /* renamed from: e */
    public boolean f17883e = false;

    /* renamed from: f */
    public boolean f17884f;

    /* renamed from: c */
    public ColorStateList m17201c() {
        return this.f17880b;
    }

    /* renamed from: d */
    public PorterDuff.Mode m17200d() {
        return this.f17881c;
    }

    /* renamed from: a */
    public void m17203a() {
        Drawable m18858a = C3432f.m18858a(this.f17879a);
        if (m18858a != null) {
            if (this.f17882d || this.f17883e) {
                Drawable mutate = C7089j.m2541p(m18858a).mutate();
                if (this.f17882d) {
                    C7089j.m2543n(mutate, this.f17880b);
                }
                if (this.f17883e) {
                    C7089j.m2542o(mutate, this.f17881c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f17879a.getDrawableState());
                }
                this.f17879a.setButtonDrawable(mutate);
            }
        }
    }

    /* renamed from: b */
    public int m17202b(int i) {
        Drawable m18858a;
        if (Build.VERSION.SDK_INT < 17 && (m18858a = C3432f.m18858a(this.f17879a)) != null) {
            return i + m18858a.getIntrinsicWidth();
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003e A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #1 {all -> 0x0085, blocks: (B:3:0x001d, B:5:0x0025, B:7:0x002b, B:12:0x003e, B:14:0x0046, B:16:0x004c, B:17:0x0059, B:19:0x0061, B:20:0x006a, B:22:0x0072), top: B:30:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[Catch: all -> 0x0085, TryCatch #1 {all -> 0x0085, blocks: (B:3:0x001d, B:5:0x0025, B:7:0x002b, B:12:0x003e, B:14:0x0046, B:16:0x004c, B:17:0x0059, B:19:0x0061, B:20:0x006a, B:22:0x0072), top: B:30:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072 A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #1 {all -> 0x0085, blocks: (B:3:0x001d, B:5:0x0025, B:7:0x002b, B:12:0x003e, B:14:0x0046, B:16:0x004c, B:17:0x0059, B:19:0x0061, B:20:0x006a, B:22:0x0072), top: B:30:0x001d }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m17199e(android.util.AttributeSet r10, int r11) {
        /*
            r9 = this;
            android.widget.CompoundButton r0 = r9.f17879a
            android.content.Context r0 = r0.getContext()
            int[] r3 = p021c.C1017j.f2756R0
            r8 = 0
            j.t1 r0 = p091j.C4235t1.m16966u(r0, r10, r3, r11, r8)
            android.widget.CompoundButton r1 = r9.f17879a
            android.content.Context r2 = r1.getContext()
            android.content.res.TypedArray r5 = r0.m16970q()
            r7 = 0
            r4 = r10
            r6 = r11
            p038d0.C3218s0.m19365F(r1, r2, r3, r4, r5, r6, r7)
            int r10 = p021c.C1017j.f2764T0     // Catch: java.lang.Throwable -> L85
            boolean r11 = r0.m16969r(r10)     // Catch: java.lang.Throwable -> L85
            if (r11 == 0) goto L3b
            int r10 = r0.m16974m(r10, r8)     // Catch: java.lang.Throwable -> L85
            if (r10 == 0) goto L3b
            android.widget.CompoundButton r11 = r9.f17879a     // Catch: android.content.res.Resources.NotFoundException -> L3a java.lang.Throwable -> L85
            android.content.Context r1 = r11.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L3a java.lang.Throwable -> L85
            android.graphics.drawable.Drawable r10 = p046e.C3335b.m19101d(r1, r10)     // Catch: android.content.res.Resources.NotFoundException -> L3a java.lang.Throwable -> L85
            r11.setButtonDrawable(r10)     // Catch: android.content.res.Resources.NotFoundException -> L3a java.lang.Throwable -> L85
            r10 = 1
            goto L3c
        L3a:
        L3b:
            r10 = 0
        L3c:
            if (r10 != 0) goto L59
            int r10 = p021c.C1017j.f2760S0     // Catch: java.lang.Throwable -> L85
            boolean r11 = r0.m16969r(r10)     // Catch: java.lang.Throwable -> L85
            if (r11 == 0) goto L59
            int r10 = r0.m16974m(r10, r8)     // Catch: java.lang.Throwable -> L85
            if (r10 == 0) goto L59
            android.widget.CompoundButton r11 = r9.f17879a     // Catch: java.lang.Throwable -> L85
            android.content.Context r1 = r11.getContext()     // Catch: java.lang.Throwable -> L85
            android.graphics.drawable.Drawable r10 = p046e.C3335b.m19101d(r1, r10)     // Catch: java.lang.Throwable -> L85
            r11.setButtonDrawable(r10)     // Catch: java.lang.Throwable -> L85
        L59:
            int r10 = p021c.C1017j.f2768U0     // Catch: java.lang.Throwable -> L85
            boolean r11 = r0.m16969r(r10)     // Catch: java.lang.Throwable -> L85
            if (r11 == 0) goto L6a
            android.widget.CompoundButton r11 = r9.f17879a     // Catch: java.lang.Throwable -> L85
            android.content.res.ColorStateList r10 = r0.m16984c(r10)     // Catch: java.lang.Throwable -> L85
            p056f0.C3432f.m18857b(r11, r10)     // Catch: java.lang.Throwable -> L85
        L6a:
            int r10 = p021c.C1017j.f2772V0     // Catch: java.lang.Throwable -> L85
            boolean r11 = r0.m16969r(r10)     // Catch: java.lang.Throwable -> L85
            if (r11 == 0) goto L81
            android.widget.CompoundButton r11 = r9.f17879a     // Catch: java.lang.Throwable -> L85
            r1 = -1
            int r10 = r0.m16977j(r10, r1)     // Catch: java.lang.Throwable -> L85
            r1 = 0
            android.graphics.PorterDuff$Mode r10 = p091j.C4237u0.m16955d(r10, r1)     // Catch: java.lang.Throwable -> L85
            p056f0.C3432f.m18856c(r11, r10)     // Catch: java.lang.Throwable -> L85
        L81:
            r0.m16965v()
            return
        L85:
            r10 = move-exception
            r0.m16965v()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p091j.C4184h.m17199e(android.util.AttributeSet, int):void");
    }

    /* renamed from: f */
    public void m17198f() {
        if (this.f17884f) {
            this.f17884f = false;
            return;
        }
        this.f17884f = true;
        m17203a();
    }

    /* renamed from: g */
    public void m17197g(ColorStateList colorStateList) {
        this.f17880b = colorStateList;
        this.f17882d = true;
        m17203a();
    }

    /* renamed from: h */
    public void m17196h(PorterDuff.Mode mode) {
        this.f17881c = mode;
        this.f17883e = true;
        m17203a();
    }

    public C4184h(CompoundButton compoundButton) {
        this.f17879a = compoundButton;
    }
}
