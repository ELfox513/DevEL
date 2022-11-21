package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.input.GestureDetector;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class CameraInputController extends GestureDetector {

    /* renamed from: K */
    public boolean f4816K;

    /* renamed from: L */
    public boolean f4817L;

    /* renamed from: M */
    public boolean f4818M;

    /* renamed from: N */
    public boolean f4819N;

    /* renamed from: O */
    public boolean f4820O;

    /* renamed from: P */
    public boolean f4821P;

    /* renamed from: Q */
    public int f4822Q;

    /* renamed from: R */
    public float f4823R;

    /* renamed from: S */
    public float f4824S;

    /* renamed from: T */
    public final Vector3 f4825T;

    /* renamed from: U */
    public final Vector3 f4826U;

    /* renamed from: V */
    public final CameraGestureListener f4827V;

    /* renamed from: W */
    public int f4828W;

    /* renamed from: X */
    public boolean f4829X;
    public int activateKey;
    public boolean alwaysScroll;
    public boolean autoUpdate;
    public int backwardKey;
    public Camera camera;
    public int forwardButton;
    public int forwardKey;
    public boolean forwardTarget;
    public float pinchZoomFactor;
    public float rotateAngle;
    public int rotateButton;
    public int rotateLeftKey;
    public int rotateRightKey;
    public float scrollFactor;
    public boolean scrollTarget;
    public Vector3 target;
    public int translateButton;
    public boolean translateTarget;
    public float translateUnits;

    /* loaded from: classes.dex */
    public static class CameraGestureListener extends GestureDetector.GestureAdapter {

        /* renamed from: a */
        public float f4830a;
        public CameraInputController controller;

        @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean fling(float f, float f2, int i) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean longPress(float f, float f2) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean pan(float f, float f2, float f3, float f4) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean pinch(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean tap(float f, float f2, int i, int i2) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean touchDown(float f, float f2, int i, int i2) {
            this.f4830a = 0.0f;
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean zoom(float f, float f2) {
            float f3 = f2 - f;
            float f4 = f3 - this.f4830a;
            this.f4830a = f3;
            float width = Gdx.graphics.getWidth();
            float height = Gdx.graphics.getHeight();
            CameraInputController cameraInputController = this.controller;
            if (width > height) {
                width = height;
            }
            return cameraInputController.m24064b(f4 / width);
        }
    }

    public CameraInputController(CameraGestureListener cameraGestureListener, Camera camera) {
        super(cameraGestureListener);
        this.rotateButton = 0;
        this.rotateAngle = 360.0f;
        this.translateButton = 1;
        this.translateUnits = 10.0f;
        this.forwardButton = 2;
        this.activateKey = 0;
        this.alwaysScroll = true;
        this.scrollFactor = -0.1f;
        this.pinchZoomFactor = 10.0f;
        this.autoUpdate = true;
        this.target = new Vector3();
        this.translateTarget = true;
        this.forwardTarget = true;
        this.scrollTarget = false;
        this.forwardKey = 51;
        this.backwardKey = 47;
        this.rotateRightKey = 29;
        this.rotateLeftKey = 32;
        this.f4822Q = -1;
        this.f4825T = new Vector3();
        this.f4826U = new Vector3();
        this.f4827V = cameraGestureListener;
        cameraGestureListener.controller = this;
        this.camera = camera;
    }

    /* renamed from: b */
    public boolean m24064b(float f) {
        return zoom(this.pinchZoomFactor * f);
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean scrolled(float f, float f2) {
        return zoom(f2 * this.scrollFactor * this.translateUnits);
    }

    /* renamed from: c */
    public boolean m24063c(float f, float f2, int i) {
        if (i == this.rotateButton) {
            this.f4825T.set(this.camera.direction).crs(this.camera.f3888up).f5534y = 0.0f;
            this.camera.rotateAround(this.target, this.f4825T.nor(), f2 * this.rotateAngle);
            this.camera.rotateAround(this.target, Vector3.f5530Y, f * (-this.rotateAngle));
        } else if (i == this.translateButton) {
            Camera camera = this.camera;
            camera.translate(this.f4825T.set(camera.direction).crs(this.camera.f3888up).nor().scl((-f) * this.translateUnits));
            Camera camera2 = this.camera;
            camera2.translate(this.f4826U.set(camera2.f3888up).scl((-f2) * this.translateUnits));
            if (this.translateTarget) {
                this.target.add(this.f4825T).add(this.f4826U);
            }
        } else if (i == this.forwardButton) {
            Camera camera3 = this.camera;
            camera3.translate(this.f4825T.set(camera3.direction).scl(f2 * this.translateUnits));
            if (this.forwardTarget) {
                this.target.add(this.f4825T);
            }
        }
        if (this.autoUpdate) {
            this.camera.update();
            return true;
        }
        return true;
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean keyDown(int i) {
        if (i == this.activateKey) {
            this.f4816K = true;
        }
        if (i == this.forwardKey) {
            this.f4817L = true;
            return false;
        } else if (i == this.backwardKey) {
            this.f4818M = true;
            return false;
        } else if (i == this.rotateRightKey) {
            this.f4819N = true;
            return false;
        } else if (i == this.rotateLeftKey) {
            this.f4820O = true;
            return false;
        } else {
            return false;
        }
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean keyUp(int i) {
        if (i == this.activateKey) {
            this.f4816K = false;
            this.f4822Q = -1;
        }
        if (i == this.forwardKey) {
            this.f4817L = false;
        } else if (i == this.backwardKey) {
            this.f4818M = false;
        } else if (i == this.rotateRightKey) {
            this.f4819N = false;
        } else if (i == this.rotateLeftKey) {
            this.f4820O = false;
        }
        return false;
    }

    public void setInvertedControls(boolean z) {
        if (this.f4821P != z) {
            this.rotateAngle = -this.rotateAngle;
        }
        this.f4821P = z;
    }

    @Override // com.badlogic.gdx.input.GestureDetector, com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchDown(int i, int i2, int i3, int i4) {
        int i5 = this.f4828W | (1 << i3);
        this.f4828W = i5;
        boolean z = !MathUtils.isPowerOfTwo(i5);
        this.f4829X = z;
        if (z) {
            this.f4822Q = -1;
        } else if (this.f4822Q < 0 && (this.activateKey == 0 || this.f4816K)) {
            this.f4823R = i;
            this.f4824S = i2;
            this.f4822Q = i4;
        }
        if (super.touchDown(i, i2, i3, i4) || this.activateKey == 0 || this.f4816K) {
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.input.GestureDetector, com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchUp(int i, int i2, int i3, int i4) {
        int i5 = this.f4828W & ((1 << i3) ^ (-1));
        this.f4828W = i5;
        this.f4829X = !MathUtils.isPowerOfTwo(i5);
        if (i4 == this.f4822Q) {
            this.f4822Q = -1;
        }
        if (super.touchUp(i, i2, i3, i4) || this.f4816K) {
            return true;
        }
        return false;
    }

    public void update() {
        if (this.f4819N || this.f4820O || this.f4817L || this.f4818M) {
            float deltaTime = Gdx.graphics.getDeltaTime();
            if (this.f4819N) {
                Camera camera = this.camera;
                camera.rotate(camera.f3888up, (-deltaTime) * this.rotateAngle);
            }
            if (this.f4820O) {
                Camera camera2 = this.camera;
                camera2.rotate(camera2.f3888up, this.rotateAngle * deltaTime);
            }
            if (this.f4817L) {
                Camera camera3 = this.camera;
                camera3.translate(this.f4825T.set(camera3.direction).scl(this.translateUnits * deltaTime));
                if (this.forwardTarget) {
                    this.target.add(this.f4825T);
                }
            }
            if (this.f4818M) {
                Camera camera4 = this.camera;
                camera4.translate(this.f4825T.set(camera4.direction).scl((-deltaTime) * this.translateUnits));
                if (this.forwardTarget) {
                    this.target.add(this.f4825T);
                }
            }
            if (this.autoUpdate) {
                this.camera.update();
            }
        }
    }

    public boolean zoom(float f) {
        if (!this.alwaysScroll && this.activateKey != 0 && !this.f4816K) {
            return false;
        }
        Camera camera = this.camera;
        camera.translate(this.f4825T.set(camera.direction).scl(f));
        if (this.scrollTarget) {
            this.target.add(this.f4825T);
        }
        if (this.autoUpdate) {
            this.camera.update();
            return true;
        }
        return true;
    }

    @Override // com.badlogic.gdx.input.GestureDetector, com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchDragged(int i, int i2, int i3) {
        boolean z = super.touchDragged(i, i2, i3);
        if (!z && this.f4822Q >= 0) {
            float f = i;
            float f2 = i2;
            this.f4823R = f;
            this.f4824S = f2;
            return m24063c((f - this.f4823R) / Gdx.graphics.getWidth(), (this.f4824S - f2) / Gdx.graphics.getHeight(), this.f4822Q);
        }
        return z;
    }

    public CameraInputController(Camera camera) {
        this(new CameraGestureListener(), camera);
    }
}
