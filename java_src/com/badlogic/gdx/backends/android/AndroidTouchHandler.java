package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.view.MotionEvent;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.DefaultAndroidInput;
/* loaded from: classes.dex */
public class AndroidTouchHandler {
    /* renamed from: b */
    public final int m24303b(int i) {
        if (i == 0 || i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        return i == 16 ? 4 : -1;
    }

    public boolean supportsMultitouch(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch");
    }

    /* renamed from: a */
    public final void m24304a(DefaultAndroidInput defaultAndroidInput, int i, int i2, int i3, int i4, int i5, long j) {
        DefaultAndroidInput.TouchEvent obtain = defaultAndroidInput.f3814r.obtain();
        obtain.f3848a = j;
        obtain.f3855h = i4;
        obtain.f3850c = i2;
        obtain.f3851d = i3;
        obtain.f3849b = i;
        obtain.f3854g = i5;
        defaultAndroidInput.f3817u.add(obtain);
    }

    public void onTouch(MotionEvent motionEvent, DefaultAndroidInput defaultAndroidInput) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int action = motionEvent.getAction() & 255;
        int action2 = (motionEvent.getAction() & 65280) >> 8;
        int pointerId = motionEvent.getPointerId(action2);
        long nanoTime = System.nanoTime();
        synchronized (defaultAndroidInput) {
            int i8 = 20;
            boolean z = false;
            switch (action) {
                case 0:
                case 5:
                    int freePointerIndex = defaultAndroidInput.getFreePointerIndex();
                    if (freePointerIndex < 20) {
                        defaultAndroidInput.f3778B[freePointerIndex] = pointerId;
                        int x = (int) motionEvent.getX(action2);
                        int y = (int) motionEvent.getY(action2);
                        int m24303b = m24303b(motionEvent.getButtonState());
                        if (m24303b != -1) {
                            i = m24303b;
                            i2 = x;
                            i3 = y;
                            m24304a(defaultAndroidInput, 0, x, y, freePointerIndex, i, nanoTime);
                        } else {
                            i = m24303b;
                            i2 = x;
                            i3 = y;
                        }
                        defaultAndroidInput.f3818v[freePointerIndex] = i2;
                        defaultAndroidInput.f3819w[freePointerIndex] = i3;
                        defaultAndroidInput.f3820x[freePointerIndex] = 0;
                        defaultAndroidInput.f3821y[freePointerIndex] = 0;
                        boolean[] zArr = defaultAndroidInput.f3822z;
                        int i9 = i;
                        if (i9 != -1) {
                            z = true;
                        }
                        zArr[freePointerIndex] = z;
                        defaultAndroidInput.f3777A[freePointerIndex] = i9;
                        defaultAndroidInput.f3779C[freePointerIndex] = motionEvent.getPressure(action2);
                        break;
                    } else {
                        break;
                    }
                case 1:
                case 3:
                case 4:
                case 6:
                    int lookUpPointerIndex = defaultAndroidInput.lookUpPointerIndex(pointerId);
                    if (lookUpPointerIndex != -1 && lookUpPointerIndex < 20) {
                        defaultAndroidInput.f3778B[lookUpPointerIndex] = -1;
                        int x2 = (int) motionEvent.getX(action2);
                        int y2 = (int) motionEvent.getY(action2);
                        int i10 = defaultAndroidInput.f3777A[lookUpPointerIndex];
                        if (i10 != -1) {
                            if (action == 3) {
                                m24304a(defaultAndroidInput, 5, x2, y2, lookUpPointerIndex, i10, nanoTime);
                            } else {
                                m24304a(defaultAndroidInput, 1, x2, y2, lookUpPointerIndex, i10, nanoTime);
                            }
                        }
                        defaultAndroidInput.f3818v[lookUpPointerIndex] = x2;
                        defaultAndroidInput.f3819w[lookUpPointerIndex] = y2;
                        defaultAndroidInput.f3820x[lookUpPointerIndex] = 0;
                        defaultAndroidInput.f3821y[lookUpPointerIndex] = 0;
                        defaultAndroidInput.f3822z[lookUpPointerIndex] = false;
                        defaultAndroidInput.f3777A[lookUpPointerIndex] = 0;
                        defaultAndroidInput.f3779C[lookUpPointerIndex] = 0.0f;
                        break;
                    }
                    break;
                case 2:
                    int pointerCount = motionEvent.getPointerCount();
                    int i11 = 0;
                    while (i11 < pointerCount) {
                        int pointerId2 = motionEvent.getPointerId(i11);
                        int x3 = (int) motionEvent.getX(i11);
                        int y3 = (int) motionEvent.getY(i11);
                        int lookUpPointerIndex2 = defaultAndroidInput.lookUpPointerIndex(pointerId2);
                        if (lookUpPointerIndex2 == -1) {
                            i6 = i11;
                        } else if (lookUpPointerIndex2 >= i8) {
                            break;
                        } else {
                            int i12 = defaultAndroidInput.f3777A[lookUpPointerIndex2];
                            if (i12 != -1) {
                                i4 = lookUpPointerIndex2;
                                i5 = y3;
                                i6 = i11;
                                i7 = x3;
                                m24304a(defaultAndroidInput, 2, x3, y3, lookUpPointerIndex2, i12, nanoTime);
                            } else {
                                i4 = lookUpPointerIndex2;
                                i5 = y3;
                                i6 = i11;
                                i7 = x3;
                                m24304a(defaultAndroidInput, 4, i7, i5, lookUpPointerIndex2, 0, nanoTime);
                            }
                            int[] iArr = defaultAndroidInput.f3820x;
                            int[] iArr2 = defaultAndroidInput.f3818v;
                            iArr[i4] = i7 - iArr2[i4];
                            int[] iArr3 = defaultAndroidInput.f3821y;
                            int[] iArr4 = defaultAndroidInput.f3819w;
                            iArr3[i4] = i5 - iArr4[i4];
                            iArr2[i4] = i7;
                            iArr4[i4] = i5;
                            defaultAndroidInput.f3779C[i4] = motionEvent.getPressure(i6);
                        }
                        i11 = i6 + 1;
                        i8 = 20;
                    }
                    break;
            }
        }
        Gdx.app.getGraphics().requestRendering();
    }
}
