package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.Vibrator;
import android.p010os.VibrationEffect;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.math.MathUtils;
/* loaded from: classes.dex */
public class AndroidHaptics {

    /* renamed from: a */
    public final Vibrator f3677a;

    /* renamed from: b */
    public AudioAttributes f3678b;

    /* renamed from: c */
    public boolean f3679c;

    /* renamed from: d */
    public boolean f3680d;

    /* renamed from: com.badlogic.gdx.backends.android.AndroidHaptics$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11521 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3681a;

        static {
            int[] iArr = new int[Input.VibrationType.values().length];
            f3681a = iArr;
            try {
                iArr[Input.VibrationType.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3681a[Input.VibrationType.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3681a[Input.VibrationType.HEAVY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean hasHapticsSupport() {
        return this.f3680d;
    }

    public boolean hasVibratorAvailable() {
        return this.f3679c;
    }

    public void vibrate(int i) {
        if (this.f3679c) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f3677a.vibrate(VibrationEffect.createOneShot(i, -1));
            } else {
                this.f3677a.vibrate(i);
            }
        }
    }

    public AndroidHaptics(Context context) {
        boolean hasAmplitudeControl;
        this.f3679c = false;
        this.f3680d = false;
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        this.f3677a = vibrator;
        if (vibrator != null && vibrator.hasVibrator()) {
            this.f3679c = true;
            if (Build.VERSION.SDK_INT >= 29) {
                hasAmplitudeControl = vibrator.hasAmplitudeControl();
                if (hasAmplitudeControl) {
                    this.f3680d = true;
                }
                this.f3678b = new AudioAttributes.Builder().setContentType(4).setUsage(14).build();
            }
        }
    }

    public void vibrate(Input.VibrationType vibrationType) {
        VibrationEffect createPredefined;
        if (!this.f3680d || Build.VERSION.SDK_INT < 29) {
            return;
        }
        int i = C11521.f3681a[vibrationType.ordinal()];
        int i2 = 2;
        if (i != 1) {
            if (i == 2) {
                i2 = 0;
            } else if (i != 3) {
                throw new IllegalArgumentException("Unknown VibrationType " + vibrationType);
            } else {
                i2 = 5;
            }
        }
        Vibrator vibrator = this.f3677a;
        createPredefined = VibrationEffect.createPredefined(i2);
        vibrator.vibrate(createPredefined, this.f3678b);
    }

    public void vibrate(int i, int i2, boolean z) {
        if (!this.f3680d) {
            if (z) {
                vibrate(i);
                return;
            }
            return;
        }
        int clamp = MathUtils.clamp(i2, 0, 255);
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3677a.vibrate(VibrationEffect.createOneShot(i, clamp));
        }
    }
}
