package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.widget.PopupWindow;
@TargetApi(19)
/* renamed from: r4.wp1 */
/* loaded from: classes2.dex */
public final class wp1 {

    /* renamed from: a */
    public Context f33273a;

    /* renamed from: b */
    public PopupWindow f33274b;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
        if (r0 == false) goto L12;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5632b() {
        /*
            r3 = this;
            android.content.Context r0 = r3.f33273a
            if (r0 == 0) goto L2a
            android.widget.PopupWindow r1 = r3.f33274b
            if (r1 != 0) goto L9
            goto L2a
        L9:
            boolean r1 = r0 instanceof android.app.Activity
            r2 = 0
            if (r1 == 0) goto L1c
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = p168r4.vp1.m6041a(r0)
            if (r0 != 0) goto L17
            goto L1c
        L17:
            r3.f33273a = r2
            r3.f33274b = r2
            return
        L1c:
            android.widget.PopupWindow r0 = r3.f33274b
            boolean r0 = r0.isShowing()
            if (r0 == 0) goto L17
            android.widget.PopupWindow r0 = r3.f33274b
            r0.dismiss()
            goto L17
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.wp1.m5632b():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5633a(android.content.Context r7, android.view.View r8) {
        /*
            r6 = this;
            boolean r0 = p026c4.C1054o.m24735f()
            if (r0 == 0) goto L62
            boolean r0 = p026c4.C1054o.m24733h()
            if (r0 == 0) goto Ld
            goto L62
        Ld:
            boolean r0 = r7 instanceof android.app.Activity
            r1 = 0
            if (r0 == 0) goto L1a
            r0 = r7
            android.app.Activity r0 = (android.app.Activity) r0
            android.view.Window r0 = r0.getWindow()
            goto L1b
        L1a:
            r0 = r1
        L1b:
            if (r0 == 0) goto L5a
            android.view.View r2 = r0.getDecorView()
            if (r2 != 0) goto L24
            goto L5a
        L24:
            r2 = r7
            android.app.Activity r2 = (android.app.Activity) r2
            boolean r2 = p168r4.vp1.m6041a(r2)
            if (r2 == 0) goto L2e
            goto L5a
        L2e:
            android.widget.FrameLayout r2 = new android.widget.FrameLayout
            r2.<init>(r7)
            android.view.ViewGroup$LayoutParams r3 = new android.view.ViewGroup$LayoutParams
            r4 = -1
            r3.<init>(r4, r4)
            r2.setLayoutParams(r3)
            r2.addView(r8, r4, r4)
            android.widget.PopupWindow r8 = new android.widget.PopupWindow
            r3 = 1
            r5 = 0
            r8.<init>(r2, r3, r3, r5)
            r8.setOutsideTouchable(r3)
            r8.setClippingEnabled(r5)
            java.lang.String r2 = "Displaying the 1x1 popup off the screen."
            p168r4.cm0.m12442a(r2)
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.Exception -> L59
            r8.showAtLocation(r0, r5, r4, r4)     // Catch: java.lang.Exception -> L59
            goto L5b
        L59:
        L5a:
            r8 = r1
        L5b:
            r6.f33274b = r8
            if (r8 != 0) goto L60
            r7 = r1
        L60:
            r6.f33273a = r7
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.wp1.m5633a(android.content.Context, android.view.View):void");
    }
}
