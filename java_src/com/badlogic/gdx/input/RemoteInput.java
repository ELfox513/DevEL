package com.badlogic.gdx.input;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.DataInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
/* loaded from: classes.dex */
public class RemoteInput implements Runnable, Input {
    public static int DEFAULT_PORT = 8190;

    /* renamed from: A */
    public int[] f5207A;

    /* renamed from: B */
    public int[] f5208B;

    /* renamed from: C */
    public boolean[] f5209C;

    /* renamed from: D */
    public boolean f5210D;

    /* renamed from: E */
    public InputProcessor f5211E;

    /* renamed from: F */
    public final int f5212F;

    /* renamed from: a */
    public ServerSocket f5213a;

    /* renamed from: b */
    public float[] f5214b;

    /* renamed from: d */
    public float[] f5215d;
    public final String[] ips;

    /* renamed from: k */
    public float[] f5216k;

    /* renamed from: p */
    public boolean f5217p;

    /* renamed from: q */
    public float f5218q;

    /* renamed from: r */
    public float f5219r;

    /* renamed from: s */
    public boolean f5220s;

    /* renamed from: t */
    public RemoteInputListener f5221t;

    /* renamed from: u */
    public int f5222u;

    /* renamed from: v */
    public boolean[] f5223v;

    /* renamed from: w */
    public boolean f5224w;

    /* renamed from: x */
    public boolean[] f5225x;

    /* renamed from: y */
    public int[] f5226y;

    /* renamed from: z */
    public int[] f5227z;

    /* loaded from: classes.dex */
    public class EventTrigger implements Runnable {

        /* renamed from: a */
        public TouchEvent f5228a;

        /* renamed from: b */
        public KeyEvent f5229b;

        public EventTrigger(TouchEvent touchEvent, KeyEvent keyEvent) {
            this.f5228a = touchEvent;
            this.f5229b = keyEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            RemoteInput remoteInput = RemoteInput.this;
            remoteInput.f5210D = false;
            if (remoteInput.f5224w) {
                remoteInput.f5224w = false;
                int i = 0;
                while (true) {
                    boolean[] zArr = RemoteInput.this.f5225x;
                    if (i >= zArr.length) {
                        break;
                    }
                    zArr[i] = false;
                    i++;
                }
            }
            RemoteInput remoteInput2 = RemoteInput.this;
            InputProcessor inputProcessor = remoteInput2.f5211E;
            if (inputProcessor != null) {
                TouchEvent touchEvent = this.f5228a;
                if (touchEvent != null) {
                    int i2 = touchEvent.f5235a;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 == 2) {
                                int[] iArr = remoteInput2.f5226y;
                                int i3 = touchEvent.f5238d;
                                int i4 = touchEvent.f5236b;
                                iArr[i3] = i4 - remoteInput2.f5207A[i3];
                                int[] iArr2 = remoteInput2.f5227z;
                                int i5 = touchEvent.f5237c;
                                iArr2[i3] = i5 - remoteInput2.f5208B[i3];
                                inputProcessor.touchDragged(i4, i5, i3);
                            }
                        } else {
                            int[] iArr3 = remoteInput2.f5226y;
                            int i6 = touchEvent.f5238d;
                            iArr3[i6] = 0;
                            remoteInput2.f5227z[i6] = 0;
                            inputProcessor.touchUp(touchEvent.f5236b, touchEvent.f5237c, i6, 0);
                            RemoteInput.this.f5209C[this.f5228a.f5238d] = false;
                        }
                    } else {
                        int[] iArr4 = remoteInput2.f5226y;
                        int i7 = touchEvent.f5238d;
                        iArr4[i7] = 0;
                        remoteInput2.f5227z[i7] = 0;
                        inputProcessor.touchDown(touchEvent.f5236b, touchEvent.f5237c, i7, 0);
                        RemoteInput remoteInput3 = RemoteInput.this;
                        remoteInput3.f5209C[this.f5228a.f5238d] = true;
                        remoteInput3.f5210D = true;
                    }
                    RemoteInput remoteInput4 = RemoteInput.this;
                    int[] iArr5 = remoteInput4.f5207A;
                    TouchEvent touchEvent2 = this.f5228a;
                    int i8 = touchEvent2.f5238d;
                    iArr5[i8] = touchEvent2.f5236b;
                    remoteInput4.f5208B[i8] = touchEvent2.f5237c;
                }
                KeyEvent keyEvent = this.f5229b;
                if (keyEvent != null) {
                    int i9 = keyEvent.f5231a;
                    if (i9 != 0) {
                        if (i9 != 1) {
                            if (i9 == 2) {
                                RemoteInput.this.f5211E.keyTyped(keyEvent.f5233c);
                                return;
                            }
                            return;
                        }
                        RemoteInput.this.f5211E.keyUp(keyEvent.f5232b);
                        RemoteInput remoteInput5 = RemoteInput.this;
                        boolean[] zArr2 = remoteInput5.f5223v;
                        int i10 = this.f5229b.f5232b;
                        if (zArr2[i10]) {
                            remoteInput5.f5222u--;
                            zArr2[i10] = false;
                            return;
                        }
                        return;
                    }
                    RemoteInput.this.f5211E.keyDown(keyEvent.f5232b);
                    RemoteInput remoteInput6 = RemoteInput.this;
                    boolean[] zArr3 = remoteInput6.f5223v;
                    int i11 = this.f5229b.f5232b;
                    if (!zArr3[i11]) {
                        remoteInput6.f5222u++;
                        zArr3[i11] = true;
                    }
                    remoteInput6.f5224w = true;
                    remoteInput6.f5225x[i11] = true;
                    return;
                }
                return;
            }
            TouchEvent touchEvent3 = this.f5228a;
            if (touchEvent3 != null) {
                int i12 = touchEvent3.f5235a;
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 == 2) {
                            int[] iArr6 = remoteInput2.f5226y;
                            int i13 = touchEvent3.f5238d;
                            iArr6[i13] = touchEvent3.f5236b - remoteInput2.f5207A[i13];
                            remoteInput2.f5227z[i13] = touchEvent3.f5237c - remoteInput2.f5208B[i13];
                        }
                    } else {
                        int[] iArr7 = remoteInput2.f5226y;
                        int i14 = touchEvent3.f5238d;
                        iArr7[i14] = 0;
                        remoteInput2.f5227z[i14] = 0;
                        remoteInput2.f5209C[i14] = false;
                    }
                } else {
                    int[] iArr8 = remoteInput2.f5226y;
                    int i15 = touchEvent3.f5238d;
                    iArr8[i15] = 0;
                    remoteInput2.f5227z[i15] = 0;
                    remoteInput2.f5209C[i15] = true;
                    remoteInput2.f5210D = true;
                }
                int[] iArr9 = remoteInput2.f5207A;
                int i16 = touchEvent3.f5238d;
                iArr9[i16] = touchEvent3.f5236b;
                remoteInput2.f5208B[i16] = touchEvent3.f5237c;
            }
            KeyEvent keyEvent2 = this.f5229b;
            if (keyEvent2 != null) {
                int i17 = keyEvent2.f5231a;
                if (i17 == 0) {
                    boolean[] zArr4 = remoteInput2.f5223v;
                    int i18 = keyEvent2.f5232b;
                    if (!zArr4[i18]) {
                        remoteInput2.f5222u++;
                        zArr4[i18] = true;
                    }
                    remoteInput2.f5224w = true;
                    remoteInput2.f5225x[i18] = true;
                }
                if (i17 == 1) {
                    boolean[] zArr5 = remoteInput2.f5223v;
                    int i19 = keyEvent2.f5232b;
                    if (zArr5[i19]) {
                        remoteInput2.f5222u--;
                        zArr5[i19] = false;
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class KeyEvent {

        /* renamed from: a */
        public int f5231a;

        /* renamed from: b */
        public int f5232b;

        /* renamed from: c */
        public char f5233c;

        public KeyEvent() {
        }
    }

    /* loaded from: classes.dex */
    public interface RemoteInputListener {
        void onConnected();

        void onDisconnected();
    }

    /* loaded from: classes.dex */
    public class TouchEvent {

        /* renamed from: a */
        public int f5235a;

        /* renamed from: b */
        public int f5236b;

        /* renamed from: c */
        public int f5237c;

        /* renamed from: d */
        public int f5238d;

        public TouchEvent() {
        }
    }

    public RemoteInput() {
        this(DEFAULT_PORT);
    }

    @Override // com.badlogic.gdx.Input
    public float getAccelerometerX() {
        return this.f5214b[0];
    }

    @Override // com.badlogic.gdx.Input
    public float getAccelerometerY() {
        return this.f5214b[1];
    }

    @Override // com.badlogic.gdx.Input
    public float getAccelerometerZ() {
        return this.f5214b[2];
    }

    @Override // com.badlogic.gdx.Input
    public float getAzimuth() {
        return this.f5216k[0];
    }

    @Override // com.badlogic.gdx.Input
    public long getCurrentEventTime() {
        return 0L;
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaX() {
        return this.f5226y[0];
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaY() {
        return this.f5227z[0];
    }

    @Override // com.badlogic.gdx.Input
    public float getGyroscopeX() {
        return this.f5215d[0];
    }

    @Override // com.badlogic.gdx.Input
    public float getGyroscopeY() {
        return this.f5215d[1];
    }

    @Override // com.badlogic.gdx.Input
    public float getGyroscopeZ() {
        return this.f5215d[2];
    }

    public String[] getIPs() {
        return this.ips;
    }

    @Override // com.badlogic.gdx.Input
    public InputProcessor getInputProcessor() {
        return this.f5211E;
    }

    @Override // com.badlogic.gdx.Input
    public int getMaxPointers() {
        return 20;
    }

    @Override // com.badlogic.gdx.Input
    public Input.Orientation getNativeOrientation() {
        return Input.Orientation.Landscape;
    }

    @Override // com.badlogic.gdx.Input
    public float getPitch() {
        return this.f5216k[1];
    }

    @Override // com.badlogic.gdx.Input
    public float getPressure() {
        return getPressure(0);
    }

    @Override // com.badlogic.gdx.Input
    public float getRoll() {
        return this.f5216k[2];
    }

    @Override // com.badlogic.gdx.Input
    public int getRotation() {
        return 0;
    }

    @Override // com.badlogic.gdx.Input
    public void getRotationMatrix(float[] fArr) {
    }

    @Override // com.badlogic.gdx.Input
    public void getTextInput(Input.TextInputListener textInputListener, String str, String str2, String str3) {
        Gdx.app.getInput().getTextInput(textInputListener, str, str2, str3);
    }

    @Override // com.badlogic.gdx.Input
    public int getX() {
        return this.f5207A[0];
    }

    @Override // com.badlogic.gdx.Input
    public int getY() {
        return this.f5208B[0];
    }

    @Override // com.badlogic.gdx.Input
    public boolean isButtonJustPressed(int i) {
        return i == 0 && this.f5210D;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isButtonPressed(int i) {
        if (i != 0) {
            return false;
        }
        int i2 = 0;
        while (true) {
            boolean[] zArr = this.f5209C;
            if (i2 >= zArr.length) {
                return false;
            }
            if (zArr[i2]) {
                return true;
            }
            i2++;
        }
    }

    @Override // com.badlogic.gdx.Input
    public boolean isCatchBackKey() {
        return false;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isCatchKey(int i) {
        return false;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isCatchMenuKey() {
        return false;
    }

    public boolean isConnected() {
        return this.f5220s;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isCursorCatched() {
        return false;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isKeyJustPressed(int i) {
        if (i == -1) {
            return this.f5224w;
        }
        if (i >= 0 && i <= 255) {
            return this.f5225x[i];
        }
        return false;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isKeyPressed(int i) {
        if (i == -1) {
            return this.f5222u > 0;
        } else if (i < 0 || i > 255) {
            return false;
        } else {
            return this.f5223v[i];
        }
    }

    @Override // com.badlogic.gdx.Input
    public boolean isTouched() {
        return this.f5209C[0];
    }

    @Override // com.badlogic.gdx.Input
    public boolean justTouched() {
        return this.f5210D;
    }

    @Override // java.lang.Runnable
    public void run() {
        KeyEvent keyEvent;
        TouchEvent touchEvent;
        while (true) {
            try {
                this.f5220s = false;
                RemoteInputListener remoteInputListener = this.f5221t;
                if (remoteInputListener != null) {
                    remoteInputListener.onDisconnected();
                }
                System.out.println("listening, port " + this.f5212F);
                Socket accept = this.f5213a.accept();
                accept.setTcpNoDelay(true);
                accept.setSoTimeout(3000);
                this.f5220s = true;
                RemoteInputListener remoteInputListener2 = this.f5221t;
                if (remoteInputListener2 != null) {
                    remoteInputListener2.onConnected();
                }
                DataInputStream dataInputStream = new DataInputStream(accept.getInputStream());
                this.f5217p = dataInputStream.readBoolean();
                while (true) {
                    TouchEvent touchEvent2 = null;
                    switch (dataInputStream.readInt()) {
                        case 0:
                            keyEvent = new KeyEvent();
                            keyEvent.f5232b = dataInputStream.readInt();
                            keyEvent.f5231a = 0;
                            continue;
                        case 1:
                            keyEvent = new KeyEvent();
                            keyEvent.f5232b = dataInputStream.readInt();
                            keyEvent.f5231a = 1;
                            continue;
                        case 2:
                            keyEvent = new KeyEvent();
                            keyEvent.f5233c = dataInputStream.readChar();
                            keyEvent.f5231a = 2;
                            continue;
                        case 3:
                            touchEvent = new TouchEvent();
                            touchEvent.f5236b = (int) ((dataInputStream.readInt() / this.f5218q) * Gdx.graphics.getWidth());
                            touchEvent.f5237c = (int) ((dataInputStream.readInt() / this.f5219r) * Gdx.graphics.getHeight());
                            touchEvent.f5238d = dataInputStream.readInt();
                            touchEvent.f5235a = 0;
                            touchEvent2 = touchEvent;
                            keyEvent = null;
                            continue;
                        case 4:
                            touchEvent = new TouchEvent();
                            touchEvent.f5236b = (int) ((dataInputStream.readInt() / this.f5218q) * Gdx.graphics.getWidth());
                            touchEvent.f5237c = (int) ((dataInputStream.readInt() / this.f5219r) * Gdx.graphics.getHeight());
                            touchEvent.f5238d = dataInputStream.readInt();
                            touchEvent.f5235a = 1;
                            touchEvent2 = touchEvent;
                            keyEvent = null;
                            continue;
                        case 5:
                            touchEvent = new TouchEvent();
                            touchEvent.f5236b = (int) ((dataInputStream.readInt() / this.f5218q) * Gdx.graphics.getWidth());
                            touchEvent.f5237c = (int) ((dataInputStream.readInt() / this.f5219r) * Gdx.graphics.getHeight());
                            touchEvent.f5238d = dataInputStream.readInt();
                            touchEvent.f5235a = 2;
                            touchEvent2 = touchEvent;
                            keyEvent = null;
                            continue;
                        case 6:
                            this.f5214b[0] = dataInputStream.readFloat();
                            this.f5214b[1] = dataInputStream.readFloat();
                            this.f5214b[2] = dataInputStream.readFloat();
                            keyEvent = null;
                            continue;
                        case 7:
                            this.f5216k[0] = dataInputStream.readFloat();
                            this.f5216k[1] = dataInputStream.readFloat();
                            this.f5216k[2] = dataInputStream.readFloat();
                            keyEvent = null;
                            continue;
                        case 8:
                            this.f5218q = dataInputStream.readFloat();
                            this.f5219r = dataInputStream.readFloat();
                            keyEvent = null;
                            continue;
                        case 9:
                            this.f5215d[0] = dataInputStream.readFloat();
                            this.f5215d[1] = dataInputStream.readFloat();
                            this.f5215d[2] = dataInputStream.readFloat();
                            keyEvent = null;
                            continue;
                        default:
                            keyEvent = null;
                            continue;
                    }
                    Gdx.app.postRunnable(new EventTrigger(touchEvent2, keyEvent));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.badlogic.gdx.Input
    public void setCatchBackKey(boolean z) {
    }

    @Override // com.badlogic.gdx.Input
    public void setCatchKey(int i, boolean z) {
    }

    @Override // com.badlogic.gdx.Input
    public void setCatchMenuKey(boolean z) {
    }

    @Override // com.badlogic.gdx.Input
    public void setCursorCatched(boolean z) {
    }

    @Override // com.badlogic.gdx.Input
    public void setCursorPosition(int i, int i2) {
    }

    @Override // com.badlogic.gdx.Input
    public void setInputProcessor(InputProcessor inputProcessor) {
        this.f5211E = inputProcessor;
    }

    @Override // com.badlogic.gdx.Input
    public void setOnscreenKeyboardVisible(boolean z) {
    }

    @Override // com.badlogic.gdx.Input
    public void setOnscreenKeyboardVisible(boolean z, Input.OnscreenKeyboardType onscreenKeyboardType) {
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(int i) {
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(int i, int i2, boolean z) {
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(int i, boolean z) {
    }

    @Override // com.badlogic.gdx.Input
    public void vibrate(Input.VibrationType vibrationType) {
    }

    public RemoteInput(RemoteInputListener remoteInputListener) {
        this(DEFAULT_PORT, remoteInputListener);
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaX(int i) {
        return this.f5226y[i];
    }

    @Override // com.badlogic.gdx.Input
    public int getDeltaY(int i) {
        return this.f5227z[i];
    }

    @Override // com.badlogic.gdx.Input
    public float getPressure(int i) {
        return isTouched(i) ? 1.0f : 0.0f;
    }

    @Override // com.badlogic.gdx.Input
    public void getTextInput(Input.TextInputListener textInputListener, String str, String str2, String str3, Input.OnscreenKeyboardType onscreenKeyboardType) {
        Gdx.app.getInput().getTextInput(textInputListener, str, str2, str3, onscreenKeyboardType);
    }

    @Override // com.badlogic.gdx.Input
    public int getX(int i) {
        return this.f5207A[i];
    }

    @Override // com.badlogic.gdx.Input
    public int getY(int i) {
        return this.f5208B[i];
    }

    @Override // com.badlogic.gdx.Input
    public boolean isPeripheralAvailable(Input.Peripheral peripheral) {
        if (peripheral == Input.Peripheral.Accelerometer || peripheral == Input.Peripheral.Compass) {
            return true;
        }
        if (peripheral == Input.Peripheral.MultitouchScreen) {
            return this.f5217p;
        }
        return false;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isTouched(int i) {
        return this.f5209C[i];
    }

    public RemoteInput(int i) {
        this(i, null);
    }

    public RemoteInput(int i, RemoteInputListener remoteInputListener) {
        this.f5214b = new float[3];
        this.f5215d = new float[3];
        this.f5216k = new float[3];
        this.f5217p = false;
        this.f5218q = 0.0f;
        this.f5219r = 0.0f;
        this.f5220s = false;
        this.f5222u = 0;
        this.f5223v = new boolean[256];
        this.f5224w = false;
        this.f5225x = new boolean[256];
        this.f5226y = new int[20];
        this.f5227z = new int[20];
        this.f5207A = new int[20];
        this.f5208B = new int[20];
        this.f5209C = new boolean[20];
        this.f5210D = false;
        this.f5211E = null;
        this.f5221t = remoteInputListener;
        try {
            this.f5212F = i;
            this.f5213a = new ServerSocket(i);
            Thread thread = new Thread(this);
            thread.setDaemon(true);
            thread.start();
            InetAddress[] allByName = InetAddress.getAllByName(InetAddress.getLocalHost().getHostName());
            this.ips = new String[allByName.length];
            for (int i2 = 0; i2 < allByName.length; i2++) {
                this.ips[i2] = allByName[i2].getHostAddress();
            }
        } catch (Exception e) {
            throw new GdxRuntimeException("Couldn't open listening socket at port '" + i + "'", e);
        }
    }
}
