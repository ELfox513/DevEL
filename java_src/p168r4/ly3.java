package p168r4;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
/* renamed from: r4.ly3 */
/* loaded from: classes2.dex */
public final class ly3 implements DisplayManager.DisplayListener, jy3 {

    /* renamed from: a */
    public final DisplayManager f27420a;

    /* renamed from: b */
    public iy3 f27421b;

    public ly3(DisplayManager displayManager) {
        this.f27420a = displayManager;
    }

    @Override // p168r4.jy3
    /* renamed from: a */
    public final void mo9537a() {
        this.f27420a.unregisterDisplayListener(this);
        this.f27421b = null;
    }

    /* renamed from: d */
    public final Display m9534d() {
        return this.f27420a.getDisplay(0);
    }

    public final void onDisplayAdded(int i) {
    }

    public final void onDisplayChanged(int i) {
        iy3 iy3Var = this.f27421b;
        if (iy3Var == null || i != 0) {
            return;
        }
        iy3Var.mo10457a(m9534d());
    }

    public final void onDisplayRemoved(int i) {
    }

    /* renamed from: c */
    public static jy3 m9535c(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            return new ly3(displayManager);
        }
        return null;
    }

    @Override // p168r4.jy3
    /* renamed from: b */
    public final void mo9536b(iy3 iy3Var) {
        this.f27421b = iy3Var;
        this.f27420a.registerDisplayListener(this, C5979lc.m9724M(null));
        iy3Var.mo10457a(m9534d());
    }
}
