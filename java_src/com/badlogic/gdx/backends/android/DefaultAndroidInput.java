package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Handler;
import android.text.method.PasswordTransformationMethod;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnCapturedPointerListener;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.badlogic.gdx.AbstractInput;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20;
import com.badlogic.gdx.utils.Pool;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class DefaultAndroidInput extends AbstractInput implements AndroidInput {
    public static final int NUM_TOUCHES = 20;

    /* renamed from: D */
    public final boolean f3780D;

    /* renamed from: F */
    public SensorManager f3782F;

    /* renamed from: I */
    public Handler f3785I;

    /* renamed from: J */
    public final Application f3786J;

    /* renamed from: K */
    public final Context f3787K;

    /* renamed from: L */
    public final AndroidTouchHandler f3788L;

    /* renamed from: M */
    public int f3789M;

    /* renamed from: N */
    public final AndroidHaptics f3790N;

    /* renamed from: Q */
    public boolean f3793Q;

    /* renamed from: X */
    public InputProcessor f3800X;

    /* renamed from: Y */
    public final AndroidApplicationConfiguration f3801Y;

    /* renamed from: Z */
    public final Input.Orientation f3802Z;

    /* renamed from: b0 */
    public SensorEventListener f3804b0;

    /* renamed from: c0 */
    public SensorEventListener f3805c0;

    /* renamed from: d0 */
    public SensorEventListener f3806d0;

    /* renamed from: e0 */
    public SensorEventListener f3807e0;

    /* renamed from: g0 */
    public final AndroidMouseHandler f3809g0;

    /* renamed from: q */
    public Pool<KeyEvent> f3813q = new Pool<KeyEvent>(16, CoreTile.FIXED_LEVEL_XP_REQUIREMENT) { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public KeyEvent newObject() {
            return new KeyEvent();
        }
    };

    /* renamed from: r */
    public Pool<TouchEvent> f3814r = new Pool<TouchEvent>(16, CoreTile.FIXED_LEVEL_XP_REQUIREMENT) { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.2
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public TouchEvent newObject() {
            return new TouchEvent();
        }
    };

    /* renamed from: s */
    public ArrayList<View.OnKeyListener> f3815s = new ArrayList<>();

    /* renamed from: t */
    public ArrayList<KeyEvent> f3816t = new ArrayList<>();

    /* renamed from: u */
    public ArrayList<TouchEvent> f3817u = new ArrayList<>();

    /* renamed from: v */
    public int[] f3818v = new int[20];

    /* renamed from: w */
    public int[] f3819w = new int[20];

    /* renamed from: x */
    public int[] f3820x = new int[20];

    /* renamed from: y */
    public int[] f3821y = new int[20];

    /* renamed from: z */
    public boolean[] f3822z = new boolean[20];

    /* renamed from: A */
    public int[] f3777A = new int[20];

    /* renamed from: B */
    public int[] f3778B = new int[20];

    /* renamed from: C */
    public float[] f3779C = new float[20];

    /* renamed from: E */
    public boolean[] f3781E = new boolean[20];
    public boolean accelerometerAvailable = false;

    /* renamed from: G */
    public final float[] f3783G = new float[3];
    public boolean gyroscopeAvailable = false;

    /* renamed from: H */
    public final float[] f3784H = new float[3];

    /* renamed from: O */
    public boolean f3791O = false;

    /* renamed from: P */
    public boolean f3792P = false;

    /* renamed from: R */
    public final float[] f3794R = new float[3];

    /* renamed from: S */
    public final float[] f3795S = new float[3];

    /* renamed from: T */
    public float f3796T = 0.0f;

    /* renamed from: U */
    public float f3797U = 0.0f;

    /* renamed from: V */
    public float f3798V = 0.0f;

    /* renamed from: W */
    public boolean f3799W = false;

    /* renamed from: a0 */
    public long f3803a0 = 0;

    /* renamed from: f0 */
    public final ArrayList<View.OnGenericMotionListener> f3808f0 = new ArrayList<>();

    /* renamed from: h0 */
    public boolean f3810h0 = true;

    /* renamed from: i0 */
    public final float[] f3811i0 = new float[9];

    /* renamed from: j0 */
    public final float[] f3812j0 = new float[3];

    /* renamed from: com.badlogic.gdx.backends.android.DefaultAndroidInput$3 */
    /* loaded from: classes.dex */
    public class RunnableC11673 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f3825a;

        /* renamed from: b */
        public final /* synthetic */ Input.OnscreenKeyboardType f3826b;

        /* renamed from: d */
        public final /* synthetic */ String f3827d;

        /* renamed from: k */
        public final /* synthetic */ String f3828k;

        /* renamed from: p */
        public final /* synthetic */ Input.TextInputListener f3829p;

        public RunnableC11673(String str, Input.OnscreenKeyboardType onscreenKeyboardType, String str2, String str3, Input.TextInputListener textInputListener) {
            this.f3825a = str;
            this.f3826b = onscreenKeyboardType;
            this.f3827d = str2;
            this.f3828k = str3;
            this.f3829p = textInputListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DefaultAndroidInput.this.f3787K);
            builder.setTitle(this.f3825a);
            final EditText editText = new EditText(DefaultAndroidInput.this.f3787K);
            Input.OnscreenKeyboardType onscreenKeyboardType = this.f3826b;
            if (onscreenKeyboardType != Input.OnscreenKeyboardType.Default) {
                editText.setInputType(DefaultAndroidInput.getAndroidInputType(onscreenKeyboardType));
            }
            editText.setHint(this.f3827d);
            editText.setText(this.f3828k);
            editText.setSingleLine();
            if (this.f3826b == Input.OnscreenKeyboardType.Password) {
                editText.setTransformationMethod(new PasswordTransformationMethod());
            }
            builder.setView(editText);
            builder.setPositiveButton(DefaultAndroidInput.this.f3787K.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DialogInterface$OnClickListenerC11681 dialogInterface$OnClickListenerC11681 = DialogInterface$OnClickListenerC11681.this;
                            RunnableC11673.this.f3829p.input(editText.getText().toString());
                        }
                    });
                }
            });
            builder.setNegativeButton(DefaultAndroidInput.this.f3787K.getString(17039360), new DialogInterface.OnClickListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RunnableC11673.this.f3829p.canceled();
                        }
                    });
                }
            });
            builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.3.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RunnableC11673.this.f3829p.canceled();
                        }
                    });
                }
            });
            builder.show();
        }
    }

    /* renamed from: com.badlogic.gdx.backends.android.DefaultAndroidInput$6 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11766 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3842a;

        static {
            int[] iArr = new int[Input.OnscreenKeyboardType.values().length];
            f3842a = iArr;
            try {
                iArr[Input.OnscreenKeyboardType.NumberPad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3842a[Input.OnscreenKeyboardType.PhonePad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3842a[Input.OnscreenKeyboardType.Email.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3842a[Input.OnscreenKeyboardType.Password.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3842a[Input.OnscreenKeyboardType.URI.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class KeyEvent {

        /* renamed from: a */
        public long f3843a;

        /* renamed from: b */
        public int f3844b;

        /* renamed from: c */
        public int f3845c;

        /* renamed from: d */
        public char f3846d;
    }

    /* loaded from: classes.dex */
    public class SensorListener implements SensorEventListener {
        public SensorListener() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                DefaultAndroidInput defaultAndroidInput = DefaultAndroidInput.this;
                if (defaultAndroidInput.f3802Z == Input.Orientation.Portrait) {
                    float[] fArr = sensorEvent.values;
                    float[] fArr2 = defaultAndroidInput.f3783G;
                    System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                } else {
                    float[] fArr3 = defaultAndroidInput.f3783G;
                    float[] fArr4 = sensorEvent.values;
                    fArr3[0] = fArr4[1];
                    fArr3[1] = -fArr4[0];
                    fArr3[2] = fArr4[2];
                }
            }
            if (sensorEvent.sensor.getType() == 2) {
                float[] fArr5 = sensorEvent.values;
                float[] fArr6 = DefaultAndroidInput.this.f3794R;
                System.arraycopy(fArr5, 0, fArr6, 0, fArr6.length);
            }
            if (sensorEvent.sensor.getType() == 4) {
                DefaultAndroidInput defaultAndroidInput2 = DefaultAndroidInput.this;
                if (defaultAndroidInput2.f3802Z == Input.Orientation.Portrait) {
                    float[] fArr7 = sensorEvent.values;
                    float[] fArr8 = defaultAndroidInput2.f3784H;
                    System.arraycopy(fArr7, 0, fArr8, 0, fArr8.length);
                } else {
                    float[] fArr9 = defaultAndroidInput2.f3784H;
                    float[] fArr10 = sensorEvent.values;
                    fArr9[0] = fArr10[1];
                    fArr9[1] = -fArr10[0];
                    fArr9[2] = fArr10[2];
                }
            }
            if (sensorEvent.sensor.getType() == 11) {
                DefaultAndroidInput defaultAndroidInput3 = DefaultAndroidInput.this;
                if (defaultAndroidInput3.f3802Z == Input.Orientation.Portrait) {
                    float[] fArr11 = sensorEvent.values;
                    float[] fArr12 = defaultAndroidInput3.f3795S;
                    System.arraycopy(fArr11, 0, fArr12, 0, fArr12.length);
                    return;
                }
                float[] fArr13 = defaultAndroidInput3.f3795S;
                float[] fArr14 = sensorEvent.values;
                fArr13[0] = fArr14[1];
                fArr13[1] = -fArr14[0];
                fArr13[2] = fArr14[2];
            }
        }
    }

    /* loaded from: classes.dex */
    public static class TouchEvent {

        /* renamed from: a */
        public long f3848a;

        /* renamed from: b */
        public int f3849b;

        /* renamed from: c */
        public int f3850c;

        /* renamed from: d */
        public int f3851d;

        /* renamed from: e */
        public int f3852e;

        /* renamed from: f */
        public int f3853f;

        /* renamed from: g */
        public int f3854g;

        /* renamed from: h */
        public int f3855h;
    }

    public static int getAndroidInputType(Input.OnscreenKeyboardType onscreenKeyboardType) {
        int i = C11766.f3842a[onscreenKeyboardType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return i != 5 ? 144 : 17;
                    }
                    return 129;
                }
                return 33;
            }
            return 3;
        }
        return 2;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void addGenericMotionListener(View.OnGenericMotionListener onGenericMotionListener) {
        this.f3808f0.add(onGenericMotionListener);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void addKeyListener(View.OnKeyListener onKeyListener) {
        this.f3815s.add(onKeyListener);
    }

    /* renamed from: b */
    public final float[] m24295b(float[] fArr) {
        float[] fArr2 = new float[fArr.length + 2];
        System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
        return fArr2;
    }

    /* renamed from: c */
    public final int[] m24294c(int[] iArr) {
        int[] iArr2 = new int[iArr.length + 2];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* renamed from: d */
    public final boolean[] m24293d(boolean[] zArr) {
        boolean[] zArr2 = new boolean[zArr.length + 2];
        System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
        return zArr2;
    }

    @Override // com.badlogic.gdx.Input
    public float getAccelerometerX() {
        return this.f3783G[0];
    }

    @Override // com.badlogic.gdx.Input
    public float getAccelerometerY() {
        return this.f3783G[1];
    }

    @Override // com.badlogic.gdx.Input
    public float getAccelerometerZ() {
        return this.f3783G[2];
    }

    @Override // com.badlogic.gdx.Input
    public long getCurrentEventTime() {
        return this.f3803a0;
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaX() {
        return this.f3820x[0];
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaY() {
        return this.f3821y[0];
    }

    @Override // com.badlogic.gdx.Input
    public float getGyroscopeX() {
        return this.f3784H[0];
    }

    @Override // com.badlogic.gdx.Input
    public float getGyroscopeY() {
        return this.f3784H[1];
    }

    @Override // com.badlogic.gdx.Input
    public float getGyroscopeZ() {
        return this.f3784H[2];
    }

    @Override // com.badlogic.gdx.Input
    public InputProcessor getInputProcessor() {
        return this.f3800X;
    }

    @Override // com.badlogic.gdx.Input
    public int getMaxPointers() {
        return 20;
    }

    @Override // com.badlogic.gdx.Input
    public Input.Orientation getNativeOrientation() {
        return this.f3802Z;
    }

    @Override // com.badlogic.gdx.Input
    public float getPressure() {
        return getPressure(0);
    }

    @Override // com.badlogic.gdx.Input
    public void getTextInput(Input.TextInputListener textInputListener, String str, String str2, String str3) {
        getTextInput(textInputListener, str, str2, str3, Input.OnscreenKeyboardType.Default);
    }

    @Override // com.badlogic.gdx.Input
    public int getX() {
        int i;
        synchronized (this) {
            i = this.f3818v[0];
        }
        return i;
    }

    @Override // com.badlogic.gdx.Input
    public int getY() {
        int i;
        synchronized (this) {
            i = this.f3819w[0];
        }
        return i;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isButtonJustPressed(int i) {
        if (i < 0 || i > 20) {
            return false;
        }
        return this.f3781E[i];
    }

    @Override // com.badlogic.gdx.Input
    public boolean isButtonPressed(int i) {
        synchronized (this) {
            boolean z = true;
            if (this.f3780D) {
                for (int i2 = 0; i2 < 20; i2++) {
                    if (this.f3822z[i2] && this.f3777A[i2] == i) {
                        return true;
                    }
                }
            }
            if (!this.f3822z[0] || this.f3777A[0] != i) {
                z = false;
            }
            return z;
        }
    }

    @Override // com.badlogic.gdx.Input
    public boolean isTouched(int i) {
        boolean z;
        synchronized (this) {
            z = this.f3822z[i];
        }
        return z;
    }

    @Override // com.badlogic.gdx.Input
    public boolean justTouched() {
        return this.f3799W;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void onDreamingStarted() {
        m24296a();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void onPause() {
        m24292e();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void onResume() {
        m24296a();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void processEvents() {
        int i;
        int i2;
        synchronized (this) {
            int i3 = 0;
            if (this.f3799W) {
                this.f3799W = false;
                int i4 = 0;
                while (true) {
                    boolean[] zArr = this.f3781E;
                    if (i4 >= zArr.length) {
                        break;
                    }
                    zArr[i4] = false;
                    i4++;
                }
            }
            if (this.f3115p) {
                this.f3115p = false;
                int i5 = 0;
                while (true) {
                    boolean[] zArr2 = this.f3112b;
                    if (i5 >= zArr2.length) {
                        break;
                    }
                    zArr2[i5] = false;
                    i5++;
                }
            }
            if (!isCursorCatched()) {
                this.f3820x[0] = 0;
                this.f3821y[0] = 0;
            }
            InputProcessor inputProcessor = this.f3800X;
            if (inputProcessor != null) {
                int size = this.f3816t.size();
                for (int i6 = 0; i6 < size; i6++) {
                    KeyEvent keyEvent = this.f3816t.get(i6);
                    this.f3803a0 = keyEvent.f3843a;
                    int i7 = keyEvent.f3844b;
                    if (i7 != 0) {
                        if (i7 != 1) {
                            if (i7 == 2 && (!isCursorCatched() || keyEvent.f3846d != 0)) {
                                inputProcessor.keyTyped(keyEvent.f3846d);
                            }
                        } else if (!isCursorCatched() || (i2 = keyEvent.f3845c) < 19 || i2 > 23) {
                            inputProcessor.keyUp(keyEvent.f3845c);
                        }
                    } else if (!isCursorCatched() || (i = keyEvent.f3845c) < 19 || i > 23) {
                        inputProcessor.keyDown(keyEvent.f3845c);
                        this.f3115p = true;
                        this.f3112b[keyEvent.f3845c] = true;
                    }
                    this.f3813q.free(keyEvent);
                }
                int size2 = this.f3817u.size();
                while (i3 < size2) {
                    TouchEvent touchEvent = this.f3817u.get(i3);
                    this.f3803a0 = touchEvent.f3848a;
                    int i8 = touchEvent.f3849b;
                    if (i8 != 0) {
                        if (i8 != 1) {
                            if (i8 != 2) {
                                if (i8 != 3) {
                                    if (i8 != 4) {
                                        if (i8 == 5) {
                                            inputProcessor.touchCancelled(touchEvent.f3850c, touchEvent.f3851d, touchEvent.f3855h, touchEvent.f3854g);
                                        }
                                    } else {
                                        inputProcessor.mouseMoved(touchEvent.f3850c, touchEvent.f3851d);
                                    }
                                } else {
                                    inputProcessor.scrolled(touchEvent.f3852e, touchEvent.f3853f);
                                }
                            } else {
                                inputProcessor.touchDragged(touchEvent.f3850c, touchEvent.f3851d, touchEvent.f3855h);
                            }
                        } else {
                            inputProcessor.touchUp(touchEvent.f3850c, touchEvent.f3851d, touchEvent.f3855h, touchEvent.f3854g);
                        }
                    } else {
                        inputProcessor.touchDown(touchEvent.f3850c, touchEvent.f3851d, touchEvent.f3855h, touchEvent.f3854g);
                        this.f3799W = true;
                        this.f3781E[touchEvent.f3854g] = true;
                    }
                    this.f3814r.free(touchEvent);
                    i3++;
                }
            } else {
                int size3 = this.f3817u.size();
                for (int i9 = 0; i9 < size3; i9++) {
                    TouchEvent touchEvent2 = this.f3817u.get(i9);
                    if (touchEvent2.f3849b == 0) {
                        this.f3799W = true;
                    }
                    this.f3814r.free(touchEvent2);
                }
                int size4 = this.f3816t.size();
                while (i3 < size4) {
                    this.f3813q.free(this.f3816t.get(i3));
                    i3++;
                }
            }
            this.f3816t.clear();
            this.f3817u.clear();
        }
    }

    @Override // com.badlogic.gdx.Input
    public void setCursorPosition(int i, int i2) {
    }

    @Override // com.badlogic.gdx.Input
    public void setInputProcessor(InputProcessor inputProcessor) {
        synchronized (this) {
            this.f3800X = inputProcessor;
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void setKeyboardAvailable(boolean z) {
        this.f3793Q = z;
    }

    @Override // com.badlogic.gdx.Input
    public void setOnscreenKeyboardVisible(boolean z) {
        setOnscreenKeyboardVisible(z, Input.OnscreenKeyboardType.Default);
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(int i) {
        this.f3790N.vibrate(i);
    }

    /* renamed from: a */
    public void m24296a() {
        if (this.f3801Y.useAccelerometer) {
            SensorManager sensorManager = (SensorManager) this.f3787K.getSystemService("sensor");
            this.f3782F = sensorManager;
            if (sensorManager.getSensorList(1).isEmpty()) {
                this.accelerometerAvailable = false;
            } else {
                SensorListener sensorListener = new SensorListener();
                this.f3804b0 = sensorListener;
                this.accelerometerAvailable = this.f3782F.registerListener(sensorListener, this.f3782F.getSensorList(1).get(0), this.f3801Y.sensorDelay);
            }
        } else {
            this.accelerometerAvailable = false;
        }
        if (this.f3801Y.useGyroscope) {
            SensorManager sensorManager2 = (SensorManager) this.f3787K.getSystemService("sensor");
            this.f3782F = sensorManager2;
            if (sensorManager2.getSensorList(4).isEmpty()) {
                this.gyroscopeAvailable = false;
            } else {
                SensorListener sensorListener2 = new SensorListener();
                this.f3805c0 = sensorListener2;
                this.gyroscopeAvailable = this.f3782F.registerListener(sensorListener2, this.f3782F.getSensorList(4).get(0), this.f3801Y.sensorDelay);
            }
        } else {
            this.gyroscopeAvailable = false;
        }
        this.f3792P = false;
        if (this.f3801Y.useRotationVectorSensor) {
            if (this.f3782F == null) {
                this.f3782F = (SensorManager) this.f3787K.getSystemService("sensor");
            }
            List<Sensor> sensorList = this.f3782F.getSensorList(11);
            if (!sensorList.isEmpty()) {
                this.f3807e0 = new SensorListener();
                Iterator<Sensor> it = sensorList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Sensor next = it.next();
                    if (next.getVendor().equals("Google Inc.") && next.getVersion() == 3) {
                        this.f3792P = this.f3782F.registerListener(this.f3807e0, next, this.f3801Y.sensorDelay);
                        break;
                    }
                }
                if (!this.f3792P) {
                    this.f3792P = this.f3782F.registerListener(this.f3807e0, sensorList.get(0), this.f3801Y.sensorDelay);
                }
            }
        }
        if (this.f3801Y.useCompass && !this.f3792P) {
            if (this.f3782F == null) {
                this.f3782F = (SensorManager) this.f3787K.getSystemService("sensor");
            }
            Sensor defaultSensor = this.f3782F.getDefaultSensor(2);
            if (defaultSensor != null) {
                boolean z = this.accelerometerAvailable;
                this.f3791O = z;
                if (z) {
                    SensorListener sensorListener3 = new SensorListener();
                    this.f3806d0 = sensorListener3;
                    this.f3791O = this.f3782F.registerListener(sensorListener3, defaultSensor, this.f3801Y.sensorDelay);
                }
            } else {
                this.f3791O = false;
            }
        } else {
            this.f3791O = false;
        }
        Gdx.app.log("AndroidInput", "sensor listener setup");
    }

    /* renamed from: e */
    public void m24292e() {
        SensorManager sensorManager = this.f3782F;
        if (sensorManager != null) {
            SensorEventListener sensorEventListener = this.f3804b0;
            if (sensorEventListener != null) {
                sensorManager.unregisterListener(sensorEventListener);
                this.f3804b0 = null;
            }
            SensorEventListener sensorEventListener2 = this.f3805c0;
            if (sensorEventListener2 != null) {
                this.f3782F.unregisterListener(sensorEventListener2);
                this.f3805c0 = null;
            }
            SensorEventListener sensorEventListener3 = this.f3807e0;
            if (sensorEventListener3 != null) {
                this.f3782F.unregisterListener(sensorEventListener3);
                this.f3807e0 = null;
            }
            SensorEventListener sensorEventListener4 = this.f3806d0;
            if (sensorEventListener4 != null) {
                this.f3782F.unregisterListener(sensorEventListener4);
                this.f3806d0 = null;
            }
            this.f3782F = null;
        }
        Gdx.app.log("AndroidInput", "sensor listener tear down");
    }

    /* renamed from: g */
    public final void m24291g() {
        if (this.f3792P) {
            SensorManager.getRotationMatrixFromVector(this.f3811i0, this.f3795S);
        } else if (!SensorManager.getRotationMatrix(this.f3811i0, null, this.f3783G, this.f3794R)) {
            return;
        }
        SensorManager.getOrientation(this.f3811i0, this.f3812j0);
        this.f3796T = (float) Math.toDegrees(this.f3812j0[0]);
        this.f3797U = (float) Math.toDegrees(this.f3812j0[1]);
        this.f3798V = (float) Math.toDegrees(this.f3812j0[2]);
    }

    @Override // com.badlogic.gdx.Input
    public float getAzimuth() {
        if (!this.f3791O && !this.f3792P) {
            return 0.0f;
        }
        m24291g();
        return this.f3796T;
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaX(int i) {
        return this.f3820x[i];
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaY(int i) {
        return this.f3821y[i];
    }

    public int getFreePointerIndex() {
        int length = this.f3778B.length;
        for (int i = 0; i < length; i++) {
            if (this.f3778B[i] == -1) {
                return i;
            }
        }
        this.f3779C = m24295b(this.f3779C);
        this.f3778B = m24294c(this.f3778B);
        this.f3818v = m24294c(this.f3818v);
        this.f3819w = m24294c(this.f3819w);
        this.f3820x = m24294c(this.f3820x);
        this.f3821y = m24294c(this.f3821y);
        this.f3822z = m24293d(this.f3822z);
        this.f3777A = m24294c(this.f3777A);
        return length;
    }

    @Override // com.badlogic.gdx.Input
    public float getPitch() {
        if (!this.f3791O && !this.f3792P) {
            return 0.0f;
        }
        m24291g();
        return this.f3797U;
    }

    @Override // com.badlogic.gdx.Input
    public float getPressure(int i) {
        return this.f3779C[i];
    }

    @Override // com.badlogic.gdx.Input
    public float getRoll() {
        if (!this.f3791O && !this.f3792P) {
            return 0.0f;
        }
        m24291g();
        return this.f3798V;
    }

    @Override // com.badlogic.gdx.Input
    public int getRotation() {
        int rotation;
        Context context = this.f3787K;
        if (context instanceof Activity) {
            rotation = ((Activity) context).getWindowManager().getDefaultDisplay().getRotation();
        } else {
            rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        }
        if (rotation != 1) {
            if (rotation != 2) {
                if (rotation != 3) {
                    return 0;
                }
                return 270;
            }
            return 180;
        }
        return 90;
    }

    @Override // com.badlogic.gdx.Input
    public void getRotationMatrix(float[] fArr) {
        if (this.f3792P) {
            SensorManager.getRotationMatrixFromVector(fArr, this.f3795S);
        } else {
            SensorManager.getRotationMatrix(fArr, null, this.f3783G, this.f3794R);
        }
    }

    @Override // com.badlogic.gdx.Input
    public void getTextInput(Input.TextInputListener textInputListener, String str, String str2, String str3, Input.OnscreenKeyboardType onscreenKeyboardType) {
        this.f3785I.post(new RunnableC11673(str, onscreenKeyboardType, str3, str2, textInputListener));
    }

    @Override // com.badlogic.gdx.Input
    public boolean isCursorCatched() {
        boolean hasPointerCapture;
        if (Build.VERSION.SDK_INT >= 26) {
            hasPointerCapture = ((AndroidGraphics) this.f3786J.getGraphics()).getView().hasPointerCapture();
            return hasPointerCapture;
        }
        return false;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isPeripheralAvailable(Input.Peripheral peripheral) {
        if (peripheral == Input.Peripheral.Accelerometer) {
            return this.accelerometerAvailable;
        }
        if (peripheral == Input.Peripheral.Gyroscope) {
            return this.gyroscopeAvailable;
        }
        if (peripheral == Input.Peripheral.Compass) {
            return this.f3791O;
        }
        if (peripheral == Input.Peripheral.HardwareKeyboard) {
            return this.f3793Q;
        }
        if (peripheral == Input.Peripheral.OnscreenKeyboard) {
            return true;
        }
        if (peripheral == Input.Peripheral.Vibrator) {
            return this.f3790N.hasVibratorAvailable();
        }
        if (peripheral == Input.Peripheral.HapticFeedback) {
            return this.f3790N.hasHapticsSupport();
        }
        if (peripheral == Input.Peripheral.MultitouchScreen) {
            return this.f3780D;
        }
        if (peripheral == Input.Peripheral.RotationVector) {
            return this.f3792P;
        }
        if (peripheral == Input.Peripheral.Pressure) {
            return true;
        }
        return false;
    }

    public int lookUpPointerIndex(int i) {
        int length = this.f3778B.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.f3778B[i2] == i) {
                return i2;
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < length; i3++) {
            sb.append(i3 + ":" + this.f3778B[i3] + " ");
        }
        Application application = Gdx.app;
        application.log("AndroidInput", "Pointer ID lookup failed: " + i + ", " + sb.toString());
        return -1;
    }

    @Override // android.view.View.OnGenericMotionListener
    public boolean onGenericMotion(View view, MotionEvent motionEvent) {
        if (this.f3809g0.onGenericMotion(motionEvent, this)) {
            return true;
        }
        int size = this.f3808f0.size();
        for (int i = 0; i < size; i++) {
            if (this.f3808f0.get(i).onGenericMotion(view, motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, android.view.KeyEvent keyEvent) {
        int size = this.f3815s.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f3815s.get(i2).onKey(view, i, keyEvent)) {
                return true;
            }
        }
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() > 0) {
            return isCatchKey(i);
        }
        synchronized (this) {
            if (keyEvent.getKeyCode() == 0 && keyEvent.getAction() == 2) {
                String characters = keyEvent.getCharacters();
                for (int i3 = 0; i3 < characters.length(); i3++) {
                    KeyEvent obtain = this.f3813q.obtain();
                    obtain.f3843a = System.nanoTime();
                    obtain.f3845c = 0;
                    obtain.f3846d = characters.charAt(i3);
                    obtain.f3844b = 2;
                    this.f3816t.add(obtain);
                }
                return false;
            }
            char unicodeChar = (char) keyEvent.getUnicodeChar();
            if (i == 67) {
                unicodeChar = '\b';
            }
            if (keyEvent.getKeyCode() >= 0 && keyEvent.getKeyCode() <= 255) {
                int action = keyEvent.getAction();
                if (action != 0) {
                    if (action == 1) {
                        long nanoTime = System.nanoTime();
                        KeyEvent obtain2 = this.f3813q.obtain();
                        obtain2.f3843a = nanoTime;
                        obtain2.f3846d = (char) 0;
                        obtain2.f3845c = keyEvent.getKeyCode();
                        obtain2.f3844b = 1;
                        if (i == 4 && keyEvent.isAltPressed()) {
                            obtain2.f3845c = 255;
                            i = 255;
                        }
                        this.f3816t.add(obtain2);
                        KeyEvent obtain3 = this.f3813q.obtain();
                        obtain3.f3843a = nanoTime;
                        obtain3.f3846d = unicodeChar;
                        obtain3.f3845c = 0;
                        obtain3.f3844b = 2;
                        this.f3816t.add(obtain3);
                        if (i == 255) {
                            boolean[] zArr = this.f3111a;
                            if (zArr[255]) {
                                this.f3114k--;
                                zArr[255] = false;
                            }
                        } else if (this.f3111a[keyEvent.getKeyCode()]) {
                            this.f3114k--;
                            this.f3111a[keyEvent.getKeyCode()] = false;
                        }
                    }
                } else {
                    KeyEvent obtain4 = this.f3813q.obtain();
                    obtain4.f3843a = System.nanoTime();
                    obtain4.f3846d = (char) 0;
                    obtain4.f3845c = keyEvent.getKeyCode();
                    obtain4.f3844b = 0;
                    if (i == 4 && keyEvent.isAltPressed()) {
                        obtain4.f3845c = 255;
                        i = 255;
                    }
                    this.f3816t.add(obtain4);
                    boolean[] zArr2 = this.f3111a;
                    int i4 = obtain4.f3845c;
                    if (!zArr2[i4]) {
                        this.f3114k++;
                        zArr2[i4] = true;
                    }
                }
                this.f3786J.getGraphics().requestRendering();
                return isCatchKey(i);
            }
            return false;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f3810h0 && view != null) {
            view.setFocusableInTouchMode(true);
            view.requestFocus();
            this.f3810h0 = false;
        }
        this.f3788L.onTouch(motionEvent, this);
        int i = this.f3789M;
        if (i != 0) {
            try {
                Thread.sleep(i);
            } catch (InterruptedException unused) {
            }
        }
        return true;
    }

    @Override // com.badlogic.gdx.Input
    public void setCursorCatched(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            View view = ((AndroidGraphics) this.f3786J.getGraphics()).getView();
            if (z) {
                view.requestPointerCapture();
                view.setOnCapturedPointerListener(new View$OnCapturedPointerListener() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.5
                    public boolean onCapturedPointer(View view2, MotionEvent motionEvent) {
                        DefaultAndroidInput.this.f3820x[0] = (int) motionEvent.getX();
                        DefaultAndroidInput.this.f3821y[0] = (int) motionEvent.getY();
                        return false;
                    }
                });
                return;
            }
            view.releasePointerCapture();
        }
    }

    @Override // com.badlogic.gdx.Input
    public void setOnscreenKeyboardVisible(final boolean z, final Input.OnscreenKeyboardType onscreenKeyboardType) {
        this.f3785I.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.DefaultAndroidInput.4
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) DefaultAndroidInput.this.f3787K.getSystemService("input_method");
                if (z) {
                    View view = ((AndroidGraphics) DefaultAndroidInput.this.f3786J.getGraphics()).getView();
                    Input.OnscreenKeyboardType onscreenKeyboardType2 = onscreenKeyboardType;
                    if (onscreenKeyboardType2 == null) {
                        onscreenKeyboardType2 = Input.OnscreenKeyboardType.Default;
                    }
                    GLSurfaceView20 gLSurfaceView20 = (GLSurfaceView20) view;
                    if (gLSurfaceView20.onscreenKeyboardType != onscreenKeyboardType2) {
                        gLSurfaceView20.onscreenKeyboardType = onscreenKeyboardType2;
                        inputMethodManager.restartInput(view);
                    }
                    view.setFocusable(true);
                    view.setFocusableInTouchMode(true);
                    inputMethodManager.showSoftInput(((AndroidGraphics) DefaultAndroidInput.this.f3786J.getGraphics()).getView(), 0);
                    return;
                }
                inputMethodManager.hideSoftInputFromWindow(((AndroidGraphics) DefaultAndroidInput.this.f3786J.getGraphics()).getView().getWindowToken(), 0);
            }
        });
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(int i, boolean z) {
        this.f3790N.vibrate(i);
    }

    public DefaultAndroidInput(Application application, Context context, Object obj, AndroidApplicationConfiguration androidApplicationConfiguration) {
        int i = 0;
        this.f3789M = 0;
        if (obj instanceof View) {
            View view = (View) obj;
            view.setOnKeyListener(this);
            view.setOnTouchListener(this);
            view.setFocusable(true);
            view.setFocusableInTouchMode(true);
            view.requestFocus();
            view.setOnGenericMotionListener(this);
        }
        this.f3801Y = androidApplicationConfiguration;
        this.f3809g0 = new AndroidMouseHandler();
        while (true) {
            int[] iArr = this.f3778B;
            if (i >= iArr.length) {
                break;
            }
            iArr[i] = -1;
            i++;
        }
        this.f3785I = new Handler();
        this.f3786J = application;
        this.f3787K = context;
        this.f3789M = androidApplicationConfiguration.touchSleepTime;
        AndroidTouchHandler androidTouchHandler = new AndroidTouchHandler();
        this.f3788L = androidTouchHandler;
        this.f3780D = androidTouchHandler.supportsMultitouch(context);
        this.f3790N = new AndroidHaptics(context);
        int rotation = getRotation();
        Graphics.DisplayMode displayMode = application.getGraphics().getDisplayMode();
        if (((rotation != 0 && rotation != 180) || displayMode.width < displayMode.height) && ((rotation != 90 && rotation != 270) || displayMode.width > displayMode.height)) {
            this.f3802Z = Input.Orientation.Portrait;
        } else {
            this.f3802Z = Input.Orientation.Landscape;
        }
        setCatchKey(255, true);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidInput
    public void onDreamingStopped() {
        m24292e();
        Arrays.fill(this.f3778B, -1);
        Arrays.fill(this.f3822z, false);
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(int i, int i2, boolean z) {
        this.f3790N.vibrate(i, i2, z);
    }

    @Override // com.badlogic.gdx.Input
    public int getX(int i) {
        int i2;
        synchronized (this) {
            i2 = this.f3818v[i];
        }
        return i2;
    }

    @Override // com.badlogic.gdx.Input
    public int getY(int i) {
        int i2;
        synchronized (this) {
            i2 = this.f3819w[i];
        }
        return i2;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isTouched() {
        synchronized (this) {
            if (this.f3780D) {
                for (int i = 0; i < 20; i++) {
                    if (this.f3822z[i]) {
                        return true;
                    }
                }
            }
            return this.f3822z[0];
        }
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(Input.VibrationType vibrationType) {
        this.f3790N.vibrate(vibrationType);
    }
}
