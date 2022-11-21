package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Pool;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.shared.CameraTools;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.IntRectangle;
import com.prineside.tdi2.utils.PMath;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class CameraController {
    public static final float DEFAULT_MAX_ZOOM_MAP_SCALE = 1.25f;
    public static final float DEFAULT_MIN_ZOOM_TILE_SIZE = 1.524f;

    /* renamed from: s */
    public static final Rectangle f8478s = new Rectangle();

    /* renamed from: t */
    public static final Vector2 f8479t = new Vector2();

    /* renamed from: u */
    public static final Vector2 f8480u = new Vector2();
    public OrthographicCamera camera;
    public CameraTools.Scenario currentScenario;

    /* renamed from: e */
    public int f8485e;

    /* renamed from: f */
    public int f8486f;

    /* renamed from: g */
    public int f8487g;

    /* renamed from: h */
    public int f8488h;

    /* renamed from: i */
    public boolean f8489i;

    /* renamed from: j */
    public int f8490j;

    /* renamed from: k */
    public int f8491k;

    /* renamed from: l */
    public CameraControllerAnimation f8492l;

    /* renamed from: o */
    public Map f8495o;
    public boolean scenarioLooped;
    public float scenarioTime;
    public double zoom = 1.0d;

    /* renamed from: a */
    public final IntRectangle f8481a = new IntRectangle();

    /* renamed from: b */
    public final IntRectangle f8482b = new IntRectangle();

    /* renamed from: c */
    public double f8483c = 0.5d;

    /* renamed from: d */
    public double f8484d = 4.0d;

    /* renamed from: m */
    public float f8493m = 1.524f;

    /* renamed from: n */
    public float f8494n = 1.25f;

    /* renamed from: p */
    public final DelayedRemovalArray<CameraControllerListener> f8496p = new DelayedRemovalArray<>(CameraControllerListener.class);

    /* renamed from: q */
    public final _InputProcessor f8497q = new _InputProcessor();

    /* renamed from: r */
    public final Pool<CameraControllerTouch> f8498r = new Pool<CameraControllerTouch>() { // from class: com.prineside.tdi2.CameraController.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public CameraControllerTouch newObject() {
            return new CameraControllerTouch();
        }
    };

    /* loaded from: classes2.dex */
    public static class BasicAnimation implements CameraControllerAnimation {

        /* renamed from: a */
        public float f8500a;

        /* renamed from: b */
        public float f8501b;

        /* renamed from: c */
        public double f8502c;

        /* renamed from: d */
        public float f8503d;

        /* renamed from: e */
        public CameraController f8504e;

        /* renamed from: f */
        public float f8505f;

        /* renamed from: g */
        public float f8506g;

        /* renamed from: h */
        public double f8507h;

        /* renamed from: i */
        public float f8508i;

        /* renamed from: j */
        public Interpolation f8509j;

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public void end() {
        }

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public boolean isDone() {
            return this.f8503d == this.f8508i;
        }

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public void start(CameraController cameraController) {
            Vector3 vector3 = cameraController.camera.position;
            this.f8500a = vector3.f5533x;
            this.f8501b = vector3.f5534y;
            this.f8502c = cameraController.zoom;
            this.f8503d = 0.0f;
            this.f8504e = cameraController;
        }

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public void update(float f) {
            float f2 = this.f8503d + f;
            this.f8503d = f2;
            float f3 = this.f8508i;
            if (f2 >= f3) {
                this.f8503d = f3;
            }
            float apply = this.f8509j.apply(this.f8503d / f3);
            float f4 = this.f8500a;
            float f5 = f4 + ((this.f8505f - f4) * apply);
            float f6 = this.f8501b;
            float f7 = f6 + ((this.f8506g - f6) * apply);
            Vector3 vector3 = this.f8504e.camera.position;
            vector3.set(f5, f7, vector3.f5535z);
            CameraController cameraController = this.f8504e;
            double d = this.f8502c;
            double d2 = apply;
            Double.isNaN(d2);
            cameraController.zoom = d + ((this.f8507h - d) * d2);
            cameraController.updateCamera();
        }

        public BasicAnimation(float f, float f2, double d, float f3, Interpolation interpolation) {
            this.f8505f = f;
            this.f8506g = f2;
            this.f8507h = d;
            this.f8508i = f3;
            this.f8509j = interpolation;
        }
    }

    /* loaded from: classes2.dex */
    public interface CameraControllerAnimation {
        void end();

        boolean isDone();

        void start(CameraController cameraController);

        void update(float f);
    }

    /* loaded from: classes2.dex */
    public interface CameraControllerListener {
        void onViewportUpdated(CameraController cameraController);
    }

    /* loaded from: classes2.dex */
    public static class CameraControllerTouch implements Pool.Poolable {

        /* renamed from: a */
        public int f8510a;

        /* renamed from: b */
        public int f8511b;

        /* renamed from: d */
        public int f8512d;

        /* renamed from: k */
        public int f8513k;

        /* renamed from: p */
        public float f8514p;

        /* renamed from: q */
        public float f8515q;

        /* renamed from: r */
        public double f8516r;

        /* renamed from: s */
        public Vector2 f8517s;

        /* renamed from: t */
        public boolean f8518t = false;

        /* renamed from: u */
        public boolean f8519u = false;

        /* renamed from: x */
        public int f8520x;

        /* renamed from: y */
        public int f8521y;

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f8518t = false;
            this.f8519u = false;
        }

        public String toString() {
            return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.f8510a + ", " + this.f8511b + ")";
        }

        public void setup(int i, int i2, float f, float f2, double d) {
            this.f8520x = i;
            this.f8521y = i2;
            this.f8510a = i;
            this.f8511b = i2;
            this.f8512d = i;
            this.f8513k = i2;
            this.f8514p = f;
            this.f8515q = f2;
            this.f8516r = d;
        }
    }

    /* loaded from: classes2.dex */
    public static class ShakeAnimation implements CameraControllerAnimation {

        /* renamed from: a */
        public float f8522a;

        /* renamed from: b */
        public float f8523b;

        /* renamed from: c */
        public float f8524c;

        /* renamed from: d */
        public CameraController f8525d;

        /* renamed from: e */
        public float f8526e;

        /* renamed from: f */
        public float f8527f;

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public boolean isDone() {
            return this.f8524c == this.f8527f;
        }

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public void end() {
            Vector3 vector3 = this.f8525d.camera.position;
            vector3.set(this.f8522a, this.f8523b, vector3.f5535z);
            this.f8525d.updateCamera();
        }

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public void start(CameraController cameraController) {
            Vector3 vector3 = cameraController.camera.position;
            this.f8522a = vector3.f5533x;
            this.f8523b = vector3.f5534y;
            this.f8524c = 0.0f;
            this.f8525d = cameraController;
        }

        @Override // com.prineside.tdi2.CameraController.CameraControllerAnimation
        public void update(float f) {
            float f2 = this.f8524c + f;
            this.f8524c = f2;
            float f3 = this.f8527f;
            if (f2 >= f3) {
                this.f8524c = f3;
            }
            float apply = this.f8526e * (1.0f - Interpolation.exp5Out.apply(this.f8524c / f3));
            float f4 = ((FastRandom.getFloat() * 2.0f) - 1.0f) * apply;
            float f5 = ((FastRandom.getFloat() * 2.0f) - 1.0f) * apply;
            Vector3 vector3 = this.f8525d.camera.position;
            vector3.set(this.f8522a + f4, this.f8523b + f5, vector3.f5535z);
            this.f8525d.updateCamera();
        }

        public ShakeAnimation(float f, float f2) {
            this.f8526e = f;
            this.f8527f = f2;
        }
    }

    /* loaded from: classes2.dex */
    public class _InputProcessor implements InputProcessor {

        /* renamed from: a */
        public int f8528a;

        /* renamed from: b */
        public int f8529b;

        /* renamed from: d */
        public long f8530d;

        /* renamed from: k */
        public boolean f8531k;

        /* renamed from: p */
        public final IntMap<CameraControllerTouch> f8532p;

        public _InputProcessor() {
            this.f8532p = new IntMap<>();
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyDown(int i) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyTyped(char c) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyUp(int i) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchCancelled(int i, int i2, int i3, int i4) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            boolean z = false;
            this.f8531k = false;
            if (this.f8532p.get(i3) != null) {
                CameraControllerTouch cameraControllerTouch = this.f8532p.get(i3);
                z = (cameraControllerTouch.f8518t || cameraControllerTouch.f8519u) ? true : true;
                this.f8532p.remove(i3);
                CameraController.this.f8498r.free(cameraControllerTouch);
            }
            return z;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean mouseMoved(int i, int i2) {
            CameraController.this.f8490j = i;
            CameraController.this.f8491k = i2;
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean scrolled(float f, float f2) {
            double d;
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.TOUCHES_STOP_CAMERA_SCENARIOS) != 0.0d) {
                CameraController.this.currentScenario = null;
            }
            CameraController.this.stopAnimations();
            double d2 = CameraController.this.zoom;
            Vector2 vector2 = CameraController.f8479t;
            Vector2 vector22 = CameraController.f8480u;
            vector2.set(CameraController.this.f8490j, CameraController.this.f8491k);
            CameraController.this.screenToMap(vector2);
            vector22.set(CameraController.this.f8490j, CameraController.this.f8491k);
            CameraController.this.screenToViewport(vector22);
            float f3 = vector22.f5527x;
            CameraController cameraController = CameraController.this;
            OrthographicCamera orthographicCamera = cameraController.camera;
            float f4 = f3 / orthographicCamera.viewportWidth;
            float f5 = vector22.f5528y / orthographicCamera.viewportHeight;
            if (f2 > 0.0f) {
                d = cameraController.zoom + 0.2d;
            } else {
                d = cameraController.zoom - 0.2d;
            }
            cameraController.setZoom(d);
            CameraController cameraController2 = CameraController.this;
            if (cameraController2.zoom != d2) {
                cameraController2.lookAt((int) vector2.f5527x, (int) vector2.f5528y, f4, f5);
                return false;
            }
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchDown(int i, int i2, int i3, int i4) {
            CameraController.this.stopAnimations();
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.TOUCHES_STOP_CAMERA_SCENARIOS) != 0.0d) {
                CameraController.this.currentScenario = null;
            }
            if (i3 > 2) {
                return false;
            }
            CameraControllerTouch cameraControllerTouch = (CameraControllerTouch) CameraController.this.f8498r.obtain();
            CameraController cameraController = CameraController.this;
            Vector3 vector3 = cameraController.camera.position;
            cameraControllerTouch.setup(i, i2, vector3.f5533x, vector3.f5534y, cameraController.zoom);
            if (i3 == 1) {
                CameraControllerTouch cameraControllerTouch2 = this.f8532p.get(0);
                if (cameraControllerTouch2 != null) {
                    cameraControllerTouch2.f8512d = cameraControllerTouch2.f8520x;
                    cameraControllerTouch2.f8513k = cameraControllerTouch2.f8521y;
                }
            } else if (this.f8532p.size == 0 && i3 == 0 && Math.abs(this.f8528a - i) < 32 && Math.abs(this.f8529b - i2) < 32 && Game.getTimestampMillis() - this.f8530d < 300) {
                this.f8531k = true;
            }
            this.f8532p.put(i3, cameraControllerTouch);
            this.f8528a = i;
            this.f8529b = i2;
            this.f8530d = Game.getTimestampMillis();
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) {
            CameraControllerTouch cameraControllerTouch;
            Vector2 vector2;
            IntMap<CameraControllerTouch> intMap = this.f8532p;
            int i4 = intMap.size;
            if (i4 != 0) {
                CameraControllerTouch cameraControllerTouch2 = null;
                if (i4 == 1) {
                    if (this.f8531k) {
                        Iterator<CameraControllerTouch> it = intMap.values().iterator();
                        if (it.hasNext()) {
                            cameraControllerTouch2 = it.next();
                        }
                        if (cameraControllerTouch2 == null) {
                            this.f8531k = false;
                            return false;
                        }
                        CameraController cameraController = CameraController.this;
                        double d = cameraController.zoom;
                        double height = ((((this.f8528a - i) + (this.f8529b - i2)) * 1080.0f) / Gdx.graphics.getHeight()) * 0.002f;
                        Double.isNaN(height);
                        cameraController.setZoom(d + height);
                        this.f8528a = i;
                        this.f8529b = i2;
                    } else {
                        CameraControllerTouch cameraControllerTouch3 = intMap.get(i3);
                        if (cameraControllerTouch3 != null && !cameraControllerTouch3.f8518t) {
                            int i5 = i - cameraControllerTouch3.f8510a;
                            int i6 = i2 - cameraControllerTouch3.f8511b;
                            CameraController cameraController2 = CameraController.this;
                            double d2 = cameraController2.zoom;
                            Vector3 vector3 = cameraController2.camera.position;
                            vector3.set(cameraControllerTouch3.f8514p + ((-i5) * ((float) d2)), cameraControllerTouch3.f8515q + (i6 * ((float) d2)), vector3.f5535z);
                            CameraController.this.updateCamera();
                            if (StrictMath.abs(i5) > 20 || StrictMath.abs(i6) > 20) {
                                cameraControllerTouch3.f8519u = true;
                            }
                        }
                    }
                } else if (i4 == 2) {
                    Iterator<CameraControllerTouch> it2 = intMap.values().iterator();
                    CameraControllerTouch cameraControllerTouch4 = null;
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        CameraControllerTouch next = it2.next();
                        if (cameraControllerTouch4 == null) {
                            cameraControllerTouch4 = next;
                        } else {
                            cameraControllerTouch2 = next;
                            break;
                        }
                    }
                    double distanceBetweenPoints = PMath.getDistanceBetweenPoints(cameraControllerTouch4.f8512d, cameraControllerTouch4.f8513k, cameraControllerTouch2.f8512d, cameraControllerTouch2.f8513k);
                    double distanceBetweenPoints2 = PMath.getDistanceBetweenPoints(cameraControllerTouch4.f8520x, cameraControllerTouch4.f8521y, cameraControllerTouch2.f8520x, cameraControllerTouch2.f8521y);
                    Double.isNaN(distanceBetweenPoints2);
                    Double.isNaN(distanceBetweenPoints);
                    double d3 = distanceBetweenPoints2 / distanceBetweenPoints;
                    if (!cameraControllerTouch4.f8518t) {
                        float f = (cameraControllerTouch4.f8521y + cameraControllerTouch2.f8521y) / 2;
                        Vector2 vector22 = new Vector2();
                        vector22.set((cameraControllerTouch4.f8520x + cameraControllerTouch2.f8520x) / 2, f);
                        CameraController.this.screenToMap(vector22);
                        cameraControllerTouch4.f8517s = vector22;
                        cameraControllerTouch2.f8517s = vector22;
                        cameraControllerTouch = cameraControllerTouch2;
                    } else {
                        double d4 = cameraControllerTouch4.f8516r;
                        CameraController.f8479t.set((cameraControllerTouch4.f8520x + cameraControllerTouch2.f8520x) / 2, (cameraControllerTouch4.f8521y + cameraControllerTouch2.f8521y) / 2);
                        CameraController.this.screenToViewport(CameraController.f8479t);
                        float f2 = CameraController.f8479t.f5527x / CameraController.this.camera.viewportWidth;
                        float f3 = CameraController.f8479t.f5528y;
                        CameraController cameraController3 = CameraController.this;
                        float f4 = f3 / cameraController3.camera.viewportHeight;
                        cameraControllerTouch = cameraControllerTouch2;
                        cameraController3.setZoom(cameraControllerTouch4.f8516r / d3);
                        CameraController cameraController4 = CameraController.this;
                        if (cameraController4.zoom != d4 && (vector2 = cameraControllerTouch4.f8517s) != null) {
                            cameraController4.lookAt((int) vector2.f5527x, (int) vector2.f5528y, f2, f4);
                        }
                    }
                    cameraControllerTouch4.f8518t = true;
                    cameraControllerTouch.f8518t = true;
                }
            }
            CameraControllerTouch cameraControllerTouch5 = this.f8532p.get(i3);
            if (cameraControllerTouch5 != null) {
                cameraControllerTouch5.f8520x = i;
                cameraControllerTouch5.f8521y = i2;
                return false;
            }
            return false;
        }
    }

    public InputProcessor getInputProcessor() {
        return this.f8497q;
    }

    public Vector3 getLookPos() {
        return this.camera.position;
    }

    public int getMapHeight() {
        return this.f8486f;
    }

    public int getMapWidth() {
        return this.f8485e;
    }

    public double getMaxZoom() {
        return this.f8484d;
    }

    public double getMinZoom() {
        return this.f8483c;
    }

    public boolean isRectVisible(IntRectangle intRectangle) {
        return this.f8481a.overlaps(intRectangle);
    }

    public boolean isRectVisibleMarginSmall(IntRectangle intRectangle) {
        return this.f8482b.overlaps(intRectangle);
    }

    public void lookAt(float f, float f2) {
        Vector3 vector3 = this.camera.position;
        vector3.set(f, f2, vector3.f5535z);
        updateCamera();
    }

    public void stopScenario() {
        this.currentScenario = null;
    }

    public void addListener(CameraControllerListener cameraControllerListener) {
        if (cameraControllerListener != null) {
            if (!this.f8496p.contains(cameraControllerListener, true)) {
                this.f8496p.add(cameraControllerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: h */
    public final void m22033h(double d, Rectangle rectangle) {
        double d2;
        double d3;
        Double.isNaN(this.f8487g);
        rectangle.width = (int) (d2 * d);
        Double.isNaN(this.f8488h);
        rectangle.height = (int) (d3 * d);
    }

    /* renamed from: i */
    public final void m22032i() {
        IntRectangle intRectangle = this.f8481a;
        OrthographicCamera orthographicCamera = this.camera;
        Vector3 vector3 = orthographicCamera.position;
        float f = vector3.f5533x;
        float f2 = orthographicCamera.viewportWidth;
        float f3 = vector3.f5534y;
        float f4 = orthographicCamera.viewportHeight;
        intRectangle.set((int) (f - (f2 / 2.0f)), (int) (f + (f2 / 2.0f)), (int) (f3 - (f4 / 2.0f)), (int) (f3 + (f4 / 2.0f)));
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_VIEWPORT_CULLING) != 0.0d) {
            IntRectangle intRectangle2 = this.f8481a;
            int i = intRectangle2.maxX;
            intRectangle2.maxX = i - ((i - intRectangle2.minX) / 2);
        }
        IntRectangle intRectangle3 = this.f8482b;
        IntRectangle intRectangle4 = this.f8481a;
        intRectangle3.set(intRectangle4.minX - 64, intRectangle4.maxX + 64, intRectangle4.minY - 64, intRectangle4.maxY + 64);
        this.f8496p.begin();
        int i2 = 0;
        while (true) {
            DelayedRemovalArray<CameraControllerListener> delayedRemovalArray = this.f8496p;
            if (i2 < delayedRemovalArray.size) {
                delayedRemovalArray.items[i2].onViewportUpdated(this);
                i2++;
            } else {
                delayedRemovalArray.end();
                this.f8489i = true;
                return;
            }
        }
    }

    /* renamed from: j */
    public final void m22031j() {
        int i;
        int i2;
        int i3;
        int i4;
        double density = (((128.0f / Gdx.graphics.getDensity()) / 160.0f) * 2.54f) / this.f8493m;
        this.f8483c = density;
        if (density < 0.33000001311302185d) {
            this.f8483c = 0.33000001311302185d;
        }
        if (this.f8483c > 1.0d) {
            this.f8483c = 1.0d;
        }
        if (this.f8485e / this.f8487g < this.f8486f / this.f8488h) {
            this.f8484d = (i3 / i4) * this.f8494n;
        } else {
            this.f8484d = (i / i2) * this.f8494n;
        }
        if (this.f8484d > 16.0d) {
            this.f8484d = 16.0d;
        }
        if (this.f8484d < 2.0d) {
            this.f8484d = 2.0d;
        }
    }

    public void mapToViewport(Vector2 vector2) {
        float f = vector2.f5527x;
        OrthographicCamera orthographicCamera = this.camera;
        Vector3 vector3 = orthographicCamera.position;
        vector2.f5527x = (f - vector3.f5533x) + (orthographicCamera.viewportWidth / 2.0f);
        vector2.f5528y = (vector2.f5528y - vector3.f5534y) + (orthographicCamera.viewportHeight / 2.0f);
    }

    public void playScenario(CameraTools.Scenario scenario, float f, boolean z) {
        this.currentScenario = scenario;
        this.scenarioTime = f;
        this.scenarioLooped = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void realUpdate(float r7) {
        /*
            r6 = this;
            com.prineside.tdi2.ui.shared.CameraTools$Scenario r0 = r6.currentScenario
            r1 = 0
            if (r0 == 0) goto L7e
            float r2 = r6.scenarioTime
            float r2 = r2 + r7
            r6.scenarioTime = r2
            int r7 = r0.length
            float r3 = (float) r7
            int r4 = r0.fps
            float r5 = (float) r4
            float r3 = r3 / r5
            int r3 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r3 <= 0) goto L2f
            boolean r3 = r6.scenarioLooped
            if (r3 == 0) goto L28
            float r7 = (float) r7
            float r3 = (float) r4
            float r7 = r7 / r3
            float r2 = r2 % r7
            r6.scenarioTime = r2
            int r7 = r0.startFrame
            float r7 = (float) r7
            float r3 = (float) r4
            float r7 = r7 / r3
            float r2 = r2 + r7
            r6.scenarioTime = r2
            goto L2f
        L28:
            float r7 = (float) r7
            float r2 = (float) r4
            float r7 = r7 / r2
            r6.scenarioTime = r7
            r7 = 1
            goto L30
        L2f:
            r7 = 0
        L30:
            float r2 = r6.scenarioTime
            com.badlogic.gdx.math.Vector3 r0 = r0.calculate(r2)
            com.badlogic.gdx.graphics.OrthographicCamera r2 = r6.camera
            com.badlogic.gdx.math.Vector3 r2 = r2.position
            float r3 = r0.f5533x
            boolean r3 = java.lang.Float.isNaN(r3)
            if (r3 == 0) goto L49
            com.badlogic.gdx.graphics.OrthographicCamera r3 = r6.camera
            com.badlogic.gdx.math.Vector3 r3 = r3.position
            float r3 = r3.f5533x
            goto L4b
        L49:
            float r3 = r0.f5533x
        L4b:
            float r4 = r0.f5534y
            boolean r4 = java.lang.Float.isNaN(r4)
            if (r4 == 0) goto L5a
            com.badlogic.gdx.graphics.OrthographicCamera r4 = r6.camera
            com.badlogic.gdx.math.Vector3 r4 = r4.position
            float r4 = r4.f5534y
            goto L5c
        L5a:
            float r4 = r0.f5534y
        L5c:
            com.badlogic.gdx.graphics.OrthographicCamera r5 = r6.camera
            com.badlogic.gdx.math.Vector3 r5 = r5.position
            float r5 = r5.f5535z
            r2.set(r3, r4, r5)
            float r2 = r0.f5535z
            boolean r2 = java.lang.Float.isNaN(r2)
            if (r2 == 0) goto L70
            double r2 = r6.zoom
            goto L73
        L70:
            float r0 = r0.f5535z
            double r2 = (double) r0
        L73:
            r6.zoom = r2
            r6.updateCamera()
            if (r7 == 0) goto L90
            r7 = 0
            r6.currentScenario = r7
            goto L90
        L7e:
            com.prineside.tdi2.CameraController$CameraControllerAnimation r0 = r6.f8492l
            if (r0 == 0) goto L90
            r0.update(r7)
            com.prineside.tdi2.CameraController$CameraControllerAnimation r7 = r6.f8492l
            boolean r7 = r7.isDone()
            if (r7 == 0) goto L90
            r6.stopAnimations()
        L90:
            com.prineside.tdi2.Map r7 = r6.f8495o
            if (r7 == 0) goto Lb5
            boolean r0 = r6.f8489i
            if (r0 == 0) goto Lb5
            r6.f8489i = r1
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.Tile> r7 = r7.tilesArray
            int r7 = r7.size
        L9e:
            if (r1 >= r7) goto Lb5
            com.prineside.tdi2.Map r0 = r6.f8495o
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.Tile> r0 = r0.tilesArray
            T[] r0 = r0.items
            com.prineside.tdi2.Tile[] r0 = (com.prineside.tdi2.Tile[]) r0
            r0 = r0[r1]
            com.prineside.tdi2.utils.IntRectangle r2 = r0.boundingBox
            boolean r2 = r6.isRectVisible(r2)
            r0.visibleOnScreen = r2
            int r1 = r1 + 1
            goto L9e
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.CameraController.realUpdate(float):void");
    }

    public void removeListener(CameraControllerListener cameraControllerListener) {
        if (cameraControllerListener != null) {
            this.f8496p.removeValue(cameraControllerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void screenToStage(Vector2 vector2) {
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() / this.f8488h;
        vector2.f5527x *= scaledViewportHeight;
        vector2.f5528y = Game.f8589i.settingsManager.getScaledViewportHeight() - (vector2.f5528y * scaledViewportHeight);
    }

    public void screenToViewport(Vector2 vector2) {
        float f = vector2.f5527x / this.f8487g;
        OrthographicCamera orthographicCamera = this.camera;
        vector2.f5527x = f * orthographicCamera.viewportWidth;
        vector2.f5528y = (1.0f - (vector2.f5528y / this.f8488h)) * orthographicCamera.viewportHeight;
    }

    public void setMap(Map map) {
        this.f8495o = map;
        this.f8489i = true;
    }

    public void setMapSize(int i, int i2) {
        this.f8485e = i;
        this.f8486f = i2;
        m22031j();
        updateCamera();
    }

    public void setScreenSize(int i, int i2) {
        if (i == 0 || i2 == 0) {
            i = 1280;
            i2 = Config.DISPLAY_HEIGHT;
        }
        this.f8487g = i;
        this.f8488h = i2;
        m22031j();
        updateCamera();
    }

    public void setZoom(double d) {
        this.zoom = d;
        double d2 = this.f8483c;
        if (d < d2) {
            this.zoom = d2;
        } else {
            double d3 = this.f8484d;
            if (d > d3) {
                this.zoom = d3;
            }
        }
        if (Game.f8589i.debugManager.isEnabled()) {
            Game.f8589i.debugManager.registerValue("Zoom").append(((float) (this.zoom * 100.0d)) / 100.0f);
        }
        updateCamera();
    }

    public void setZoomBoundaries(float f, float f2) {
        this.f8493m = f;
        this.f8494n = f2;
        m22031j();
    }

    public void stageToScreen(Vector2 vector2) {
        float scaledViewportHeight = this.f8488h / Game.f8589i.settingsManager.getScaledViewportHeight();
        vector2.f5527x *= scaledViewportHeight;
        vector2.f5528y = this.f8488h - (vector2.f5528y * scaledViewportHeight);
    }

    public void stopAnimations() {
        CameraControllerAnimation cameraControllerAnimation = this.f8492l;
        if (cameraControllerAnimation != null) {
            cameraControllerAnimation.end();
            this.f8492l = null;
        }
    }

    public void updateCamera() {
        float scaledViewportHeight = (1.0f / Game.f8589i.settingsManager.getScaledViewportHeight()) * this.f8488h;
        float f = 1200.0f * scaledViewportHeight;
        float scaledViewportHeight2 = Game.f8589i.settingsManager.getScaledViewportHeight() * 0.5f * scaledViewportHeight;
        float scaledViewportHeight3 = Game.f8589i.settingsManager.getScaledViewportHeight() * 0.5f * scaledViewportHeight;
        Rectangle rectangle = f8478s;
        m22033h(this.zoom, rectangle);
        OrthographicCamera orthographicCamera = this.camera;
        float f2 = rectangle.width;
        orthographicCamera.viewportWidth = f2;
        float f3 = rectangle.height;
        orthographicCamera.viewportHeight = f3;
        double d = f;
        double d2 = this.zoom;
        Double.isNaN(d);
        float f4 = (float) (d * d2);
        Double.isNaN(d);
        float f5 = (float) (d * d2);
        int i = this.f8485e;
        if (i + f4 + f5 <= f2) {
            orthographicCamera.position.f5533x = i / 2;
        } else {
            float f6 = (-f4) + (f2 / 2.0f);
            float f7 = (i + f5) - (f2 / 2.0f);
            Vector3 vector3 = orthographicCamera.position;
            float f8 = vector3.f5533x;
            if (f8 < f6) {
                vector3.f5533x = f6;
            } else if (f8 > f7) {
                vector3.f5533x = f7;
            }
        }
        double d3 = scaledViewportHeight2;
        Double.isNaN(d3);
        float f9 = (float) (d3 * d2);
        double d4 = scaledViewportHeight3;
        Double.isNaN(d4);
        float f10 = (float) (d4 * d2);
        int i2 = this.f8486f;
        if (i2 + f9 + f10 <= f3) {
            orthographicCamera.position.f5534y = i2 / 2;
        } else {
            float f11 = (-f10) + (f3 / 2.0f);
            float f12 = (i2 + f9) - (f3 / 2.0f);
            Vector3 vector32 = orthographicCamera.position;
            float f13 = vector32.f5534y;
            if (f13 < f11) {
                vector32.f5534y = f11;
            } else if (f13 > f12) {
                vector32.f5534y = f12;
            }
        }
        orthographicCamera.update();
        m22032i();
    }

    public void viewportToScreen(Vector2 vector2) {
        float f = vector2.f5527x;
        OrthographicCamera orthographicCamera = this.camera;
        vector2.f5527x = (f / orthographicCamera.viewportWidth) * this.f8487g;
        vector2.f5528y = (1.0f - (vector2.f5528y / orthographicCamera.viewportHeight)) * this.f8488h;
    }

    public CameraController(OrthographicCamera orthographicCamera, int i, int i2) {
        this.camera = orthographicCamera;
        this.f8485e = i;
        this.f8486f = i2;
        setScreenSize(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        setZoomBoundaries(1.524f, 1.25f);
        updateCamera();
    }

    public void animate(CameraControllerAnimation cameraControllerAnimation) {
        stopAnimations();
        this.f8492l = cameraControllerAnimation;
        cameraControllerAnimation.start(this);
    }

    public void fitMapToScreen(float f) {
        stopAnimations();
        this.currentScenario = null;
        lookAt(this.f8485e / 2, this.f8486f / 2);
        float f2 = f * 2.0f;
        float f3 = this.f8487g - f2;
        float f4 = this.f8488h - f2;
        int i = this.f8485e;
        int i2 = this.f8486f;
        if (i / f3 < i2 / f4) {
            setZoom(i2 / f4);
        } else {
            setZoom(i / f3);
        }
    }

    public void lookAt(float f, float f2, float f3, float f4) {
        OrthographicCamera orthographicCamera = this.camera;
        float f5 = orthographicCamera.viewportWidth;
        float f6 = orthographicCamera.viewportHeight;
        lookAt(f + ((f5 / 2.0f) - (f3 * f5)), f2 + ((f6 / 2.0f) - (f4 * f6)));
    }

    public void mapToScreen(Vector2 vector2) {
        mapToViewport(vector2);
        viewportToScreen(vector2);
    }

    public void mapToStage(Vector2 vector2) {
        mapToScreen(vector2);
        screenToStage(vector2);
    }

    public void screenToMap(Vector2 vector2) {
        screenToViewport(vector2);
        OrthographicCamera orthographicCamera = this.camera;
        Vector3 vector3 = orthographicCamera.position;
        vector2.f5527x = (vector3.f5533x - (orthographicCamera.viewportWidth / 2.0f)) + vector2.f5527x;
        vector2.f5528y = (vector3.f5534y - (orthographicCamera.viewportHeight / 2.0f)) + vector2.f5528y;
    }

    public void stageToMap(Vector2 vector2) {
        stageToScreen(vector2);
        screenToMap(vector2);
    }
}
