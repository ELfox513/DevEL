package p016b3;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.View$OnApplyWindowInsetsListener;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import java.util.Locale;
import p168r4.C5592av;
import p168r4.C6225rz;
import p235z2.C7601t;
@TargetApi(28)
/* renamed from: b3.f */
/* loaded from: classes.dex */
public final class C0474f extends C0462c {
    @Override // p016b3.C0478g
    /* renamed from: q */
    public final void mo26375q(final Activity activity) {
        boolean isInMultiWindowMode;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30863N0)).booleanValue() && C7601t.m935h().m9051p().mo26192v() == null) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            if (!isInMultiWindowMode) {
                m26389v(true, activity);
                activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListener(this, activity) { // from class: b3.d

                    /* renamed from: a */
                    public final C0474f f1591a;

                    /* renamed from: b */
                    public final Activity f1592b;

                    {
                        this.f1591a = this;
                        this.f1592b = activity;
                    }

                    @Override // android.view.View$OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        return C0474f.m26390u(this.f1592b, view, windowInsets);
                    }
                });
            }
        }
    }

    /* renamed from: u */
    public static final /* synthetic */ WindowInsets m26390u(Activity activity, View view, WindowInsets windowInsets) {
        WindowInsets onApplyWindowInsets;
        DisplayCutout displayCutout;
        if (C7601t.m935h().m9051p().mo26192v() == null) {
            displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                InterfaceC0549y1 m9051p = C7601t.m935h().m9051p();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(str)) {
                        str = String.valueOf(str).concat("|");
                    }
                    String valueOf = String.valueOf(str);
                    String valueOf2 = String.valueOf(format);
                    if (valueOf2.length() != 0) {
                        str = valueOf.concat(valueOf2);
                    } else {
                        str = new String(valueOf);
                    }
                }
                m9051p.mo26219R0(str);
            } else {
                C7601t.m935h().m9051p().mo26219R0("");
            }
        }
        m26389v(false, activity);
        onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        return onApplyWindowInsets;
    }

    /* renamed from: v */
    public static final void m26389v(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = 1;
        if (true != z) {
            i2 = 2;
        }
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }
}
