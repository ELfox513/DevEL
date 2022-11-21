package com.badlogic.gdx.backends.android;

import android.view.MotionEvent;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.DefaultAndroidInput;
/* loaded from: classes.dex */
public class AndroidMouseHandler {

    /* renamed from: a */
    public int f3728a = 0;

    /* renamed from: b */
    public int f3729b = 0;

    /* renamed from: a */
    public final void m24306a(DefaultAndroidInput defaultAndroidInput, int i, int i2, int i3, int i4, int i5, long j) {
        DefaultAndroidInput.TouchEvent obtain = defaultAndroidInput.f3814r.obtain();
        obtain.f3848a = j;
        obtain.f3850c = i2;
        obtain.f3851d = i3;
        obtain.f3849b = i;
        obtain.f3852e = i4;
        obtain.f3853f = i5;
        defaultAndroidInput.f3817u.add(obtain);
    }

    public boolean onGenericMotion(MotionEvent motionEvent, DefaultAndroidInput defaultAndroidInput) {
        if ((motionEvent.getSource() & 2) == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        long nanoTime = System.nanoTime();
        synchronized (defaultAndroidInput) {
            if (action != 7) {
                if (action == 8) {
                    m24306a(defaultAndroidInput, 3, 0, 0, (int) (-Math.signum(motionEvent.getAxisValue(10))), (int) (-Math.signum(motionEvent.getAxisValue(9))), nanoTime);
                }
            } else {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x != this.f3728a || y != this.f3729b) {
                    m24306a(defaultAndroidInput, 4, x, y, 0, 0, nanoTime);
                    this.f3728a = x;
                    this.f3729b = y;
                }
            }
        }
        Gdx.app.getGraphics().requestRendering();
        return true;
    }
}
