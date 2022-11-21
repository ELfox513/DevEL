package com.badlogic.gdx.input;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputProcessor;
import java.io.DataOutputStream;
import java.net.Socket;
/* loaded from: classes.dex */
public class RemoteSender implements InputProcessor {
    public static final int ACCEL = 6;
    public static final int COMPASS = 7;
    public static final int GYRO = 9;
    public static final int KEY_DOWN = 0;
    public static final int KEY_TYPED = 2;
    public static final int KEY_UP = 1;
    public static final int SIZE = 8;
    public static final int TOUCH_DOWN = 3;
    public static final int TOUCH_DRAGGED = 5;
    public static final int TOUCH_UP = 4;

    /* renamed from: a */
    public DataOutputStream f5240a;

    /* renamed from: b */
    public boolean f5241b;

    public boolean isConnected() {
        boolean z;
        synchronized (this) {
            z = this.f5241b;
        }
        return z;
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean keyDown(int i) {
        synchronized (this) {
            if (!this.f5241b) {
                return false;
            }
            try {
                this.f5240a.writeInt(0);
                this.f5240a.writeInt(i);
            } finally {
                synchronized (this) {
                    return false;
                }
            }
            return false;
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean keyTyped(char c) {
        synchronized (this) {
            if (!this.f5241b) {
                return false;
            }
            try {
                this.f5240a.writeInt(2);
                this.f5240a.writeChar(c);
            } finally {
                synchronized (this) {
                    return false;
                }
            }
            return false;
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean keyUp(int i) {
        synchronized (this) {
            if (!this.f5241b) {
                return false;
            }
            try {
                this.f5240a.writeInt(1);
                this.f5240a.writeInt(i);
            } finally {
                synchronized (this) {
                    return false;
                }
            }
            return false;
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean mouseMoved(int i, int i2) {
        return false;
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean scrolled(float f, float f2) {
        return false;
    }

    public void sendUpdate() {
        synchronized (this) {
            if (!this.f5241b) {
                return;
            }
            try {
                this.f5240a.writeInt(6);
                this.f5240a.writeFloat(Gdx.input.getAccelerometerX());
                this.f5240a.writeFloat(Gdx.input.getAccelerometerY());
                this.f5240a.writeFloat(Gdx.input.getAccelerometerZ());
                this.f5240a.writeInt(7);
                this.f5240a.writeFloat(Gdx.input.getAzimuth());
                this.f5240a.writeFloat(Gdx.input.getPitch());
                this.f5240a.writeFloat(Gdx.input.getRoll());
                this.f5240a.writeInt(8);
                this.f5240a.writeFloat(Gdx.graphics.getWidth());
                this.f5240a.writeFloat(Gdx.graphics.getHeight());
                this.f5240a.writeInt(9);
                this.f5240a.writeFloat(Gdx.input.getGyroscopeX());
                this.f5240a.writeFloat(Gdx.input.getGyroscopeY());
                this.f5240a.writeFloat(Gdx.input.getGyroscopeZ());
            } catch (Throwable unused) {
                this.f5240a = null;
                this.f5241b = false;
            }
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchCancelled(int i, int i2, int i3, int i4) {
        return touchUp(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchDown(int i, int i2, int i3, int i4) {
        synchronized (this) {
            if (!this.f5241b) {
                return false;
            }
            try {
                this.f5240a.writeInt(3);
                this.f5240a.writeInt(i);
                this.f5240a.writeInt(i2);
                this.f5240a.writeInt(i3);
            } finally {
                synchronized (this) {
                    return false;
                }
            }
            return false;
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchDragged(int i, int i2, int i3) {
        synchronized (this) {
            if (!this.f5241b) {
                return false;
            }
            try {
                this.f5240a.writeInt(5);
                this.f5240a.writeInt(i);
                this.f5240a.writeInt(i2);
                this.f5240a.writeInt(i3);
            } finally {
                synchronized (this) {
                    return false;
                }
            }
            return false;
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchUp(int i, int i2, int i3, int i4) {
        synchronized (this) {
            if (!this.f5241b) {
                return false;
            }
            try {
                this.f5240a.writeInt(4);
                this.f5240a.writeInt(i);
                this.f5240a.writeInt(i2);
                this.f5240a.writeInt(i3);
            } finally {
                synchronized (this) {
                    return false;
                }
            }
            return false;
        }
    }

    public RemoteSender(String str, int i) {
        this.f5241b = false;
        try {
            Socket socket = new Socket(str, i);
            socket.setTcpNoDelay(true);
            socket.setSoTimeout(3000);
            DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
            this.f5240a = dataOutputStream;
            dataOutputStream.writeBoolean(Gdx.input.isPeripheralAvailable(Input.Peripheral.MultitouchScreen));
            this.f5241b = true;
            Gdx.input.setInputProcessor(this);
        } catch (Exception unused) {
            Application application = Gdx.app;
            application.log("RemoteSender", "couldn't connect to " + str + ":" + i);
        }
    }
}
