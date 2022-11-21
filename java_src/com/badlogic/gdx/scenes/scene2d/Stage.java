package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.FocusListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.Scaling;
import com.badlogic.gdx.utils.SnapshotArray;
import com.badlogic.gdx.utils.viewport.ScalingViewport;
import com.badlogic.gdx.utils.viewport.Viewport;
/* loaded from: classes.dex */
public class Stage extends InputAdapter implements Disposable {

    /* renamed from: I */
    public static boolean f5669I;

    /* renamed from: A */
    public boolean f5670A;

    /* renamed from: B */
    public ShapeRenderer f5671B;

    /* renamed from: C */
    public boolean f5672C;

    /* renamed from: D */
    public boolean f5673D;

    /* renamed from: E */
    public boolean f5674E;

    /* renamed from: F */
    public boolean f5675F;

    /* renamed from: G */
    public Table.Debug f5676G;

    /* renamed from: H */
    public final Color f5677H;

    /* renamed from: a */
    public Viewport f5678a;

    /* renamed from: b */
    public final Batch f5679b;

    /* renamed from: d */
    public boolean f5680d;

    /* renamed from: k */
    public Group f5681k;

    /* renamed from: p */
    public final Vector2 f5682p;

    /* renamed from: q */
    public final Actor[] f5683q;

    /* renamed from: r */
    public final boolean[] f5684r;

    /* renamed from: s */
    public final int[] f5685s;

    /* renamed from: t */
    public final int[] f5686t;

    /* renamed from: u */
    public int f5687u;

    /* renamed from: v */
    public int f5688v;
    @Null

    /* renamed from: w */
    public Actor f5689w;
    @Null

    /* renamed from: x */
    public Actor f5690x;
    @Null

    /* renamed from: y */
    public Actor f5691y;

    /* renamed from: z */
    public final SnapshotArray<TouchFocus> f5692z;

    /* loaded from: classes.dex */
    public static final class TouchFocus implements Pool.Poolable {

        /* renamed from: a */
        public EventListener f5693a;

        /* renamed from: b */
        public Actor f5694b;

        /* renamed from: d */
        public Actor f5695d;

        /* renamed from: k */
        public int f5696k;

        /* renamed from: p */
        public int f5697p;

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f5694b = null;
            this.f5693a = null;
            this.f5695d = null;
        }
    }

    public Stage() {
        this(new ScalingViewport(Scaling.stretch, Gdx.graphics.getWidth(), Gdx.graphics.getHeight(), new OrthographicCamera()), new SpriteBatch());
        this.f5680d = true;
    }

    public void act() {
        act(Math.min(Gdx.graphics.getDeltaTime(), 0.033333335f));
    }

    public void addAction(Action action) {
        this.f5681k.addAction(action);
    }

    public void addActor(Actor actor) {
        this.f5681k.addActor(actor);
    }

    public boolean addCaptureListener(EventListener eventListener) {
        return this.f5681k.addCaptureListener(eventListener);
    }

    public boolean addListener(EventListener eventListener) {
        return this.f5681k.addListener(eventListener);
    }

    public void cancelTouchFocus(Actor actor) {
        SnapshotArray<TouchFocus> snapshotArray = this.f5692z;
        TouchFocus[] begin = snapshotArray.begin();
        int i = snapshotArray.size;
        InputEvent inputEvent = null;
        for (int i2 = 0; i2 < i; i2++) {
            TouchFocus touchFocus = begin[i2];
            if (touchFocus.f5694b == actor && snapshotArray.removeValue(touchFocus, true)) {
                if (inputEvent == null) {
                    inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
                    inputEvent.setType(InputEvent.Type.touchUp);
                    inputEvent.setStage(this);
                    inputEvent.setStageX(-2.14748365E9f);
                    inputEvent.setStageY(-2.14748365E9f);
                }
                inputEvent.setTarget(touchFocus.f5695d);
                inputEvent.setListenerActor(touchFocus.f5694b);
                inputEvent.setPointer(touchFocus.f5696k);
                inputEvent.setButton(touchFocus.f5697p);
                touchFocus.f5693a.handle(inputEvent);
            }
        }
        snapshotArray.end();
        if (inputEvent != null) {
            Pools.free(inputEvent);
        }
    }

    public boolean getActionsRequestRendering() {
        return this.f5670A;
    }

    public Array<Actor> getActors() {
        return this.f5681k.f5649F;
    }

    public Batch getBatch() {
        return this.f5679b;
    }

    public Camera getCamera() {
        return this.f5678a.getCamera();
    }

    public Color getDebugColor() {
        return this.f5677H;
    }

    public float getHeight() {
        return this.f5678a.getWorldHeight();
    }

    @Null
    public Actor getKeyboardFocus() {
        return this.f5690x;
    }

    public Group getRoot() {
        return this.f5681k;
    }

    @Null
    public Actor getScrollFocus() {
        return this.f5691y;
    }

    public Viewport getViewport() {
        return this.f5678a;
    }

    public float getWidth() {
        return this.f5678a.getWorldWidth();
    }

    public boolean isDebugAll() {
        return this.f5673D;
    }

    public boolean removeCaptureListener(EventListener eventListener) {
        return this.f5681k.removeCaptureListener(eventListener);
    }

    public boolean removeListener(EventListener eventListener) {
        return this.f5681k.removeListener(eventListener);
    }

    public Vector2 screenToStageCoordinates(Vector2 vector2) {
        this.f5678a.unproject(vector2);
        return vector2;
    }

    public void setActionsRequestRendering(boolean z) {
        this.f5670A = z;
    }

    public void setDebugInvisible(boolean z) {
        this.f5672C = z;
    }

    public void setDebugTableUnderMouse(@Null Table.Debug debug) {
        if (debug == null) {
            debug = Table.Debug.none;
        }
        if (this.f5676G == debug) {
            return;
        }
        this.f5676G = debug;
        if (debug != Table.Debug.none) {
            f5669I = true;
        } else {
            this.f5681k.setDebug(false, true);
        }
    }

    public void setViewport(Viewport viewport) {
        this.f5678a = viewport;
    }

    public Vector2 toScreenCoordinates(Vector2 vector2, Matrix4 matrix4) {
        return this.f5678a.toScreenCoordinates(vector2, matrix4);
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchCancelled(int i, int i2, int i3, int i4) {
        cancelTouchFocus();
        return false;
    }

    public void unfocusAll() {
        setScrollFocus(null);
        setKeyboardFocus(null);
        cancelTouchFocus();
    }

    /* renamed from: a */
    public void m23857a(Actor actor) {
        int length = this.f5683q.length;
        for (int i = 0; i < length; i++) {
            Actor[] actorArr = this.f5683q;
            if (actor == actorArr[i]) {
                actorArr[i] = null;
                m23853e(actor, this.f5685s[i], this.f5686t[i], i);
            }
        }
        if (actor == this.f5689w) {
            this.f5689w = null;
            m23853e(actor, this.f5687u, this.f5688v, -1);
        }
    }

    public void act(float f) {
        int length = this.f5683q.length;
        for (int i = 0; i < length; i++) {
            Actor[] actorArr = this.f5683q;
            Actor actor = actorArr[i];
            if (this.f5684r[i]) {
                actorArr[i] = m23854d(actor, this.f5685s[i], this.f5686t[i], i);
            } else if (actor != null) {
                actorArr[i] = null;
                m23853e(actor, this.f5685s[i], this.f5686t[i], i);
            }
        }
        Application.ApplicationType type = Gdx.app.getType();
        if (type == Application.ApplicationType.Desktop || type == Application.ApplicationType.Applet || type == Application.ApplicationType.WebGL) {
            this.f5689w = m23854d(this.f5689w, this.f5687u, this.f5688v, -1);
        }
        this.f5681k.act(f);
    }

    public void addTouchFocus(EventListener eventListener, Actor actor, Actor actor2, int i, int i2) {
        TouchFocus touchFocus = (TouchFocus) Pools.obtain(TouchFocus.class);
        touchFocus.f5694b = actor;
        touchFocus.f5695d = actor2;
        touchFocus.f5693a = eventListener;
        touchFocus.f5696k = i;
        touchFocus.f5697p = i2;
        this.f5692z.add(touchFocus);
    }

    /* renamed from: b */
    public final void m23856b(Actor actor, Actor actor2) {
        if (actor == actor2) {
            return;
        }
        actor.setDebug(false);
        if (actor instanceof Group) {
            SnapshotArray<Actor> snapshotArray = ((Group) actor).f5649F;
            int i = snapshotArray.size;
            for (int i2 = 0; i2 < i; i2++) {
                m23856b(snapshotArray.get(i2), actor2);
            }
        }
    }

    /* renamed from: c */
    public final void m23855c() {
        Group group;
        if (this.f5671B == null) {
            ShapeRenderer shapeRenderer = new ShapeRenderer();
            this.f5671B = shapeRenderer;
            shapeRenderer.setAutoShapeType(true);
        }
        if (!this.f5674E && !this.f5675F && this.f5676G == Table.Debug.none) {
            if (this.f5673D) {
                this.f5681k.debugAll();
            }
        } else {
            screenToStageCoordinates(this.f5682p.set(Gdx.input.getX(), Gdx.input.getY()));
            Vector2 vector2 = this.f5682p;
            Actor hit = hit(vector2.f5527x, vector2.f5528y, true);
            if (hit == null) {
                return;
            }
            if (this.f5675F && (group = hit.f5626b) != null) {
                hit = group;
            }
            if (this.f5676G == Table.Debug.none) {
                hit.setDebug(true);
            } else {
                while (hit != null && !(hit instanceof Table)) {
                    hit = hit.f5626b;
                }
                if (hit == null) {
                    return;
                }
                ((Table) hit).debug(this.f5676G);
            }
            if (this.f5673D && (hit instanceof Group)) {
                ((Group) hit).debugAll();
            }
            m23856b(this.f5681k, hit);
        }
        Gdx.f3119gl.glEnable(GL20.GL_BLEND);
        this.f5671B.setProjectionMatrix(this.f5678a.getCamera().combined);
        this.f5671B.begin();
        this.f5681k.drawDebug(this.f5671B);
        this.f5671B.end();
        Gdx.f3119gl.glDisable(GL20.GL_BLEND);
    }

    public void calculateScissors(Rectangle rectangle, Rectangle rectangle2) {
        Matrix4 transformMatrix;
        ShapeRenderer shapeRenderer = this.f5671B;
        if (shapeRenderer != null && shapeRenderer.isDrawing()) {
            transformMatrix = this.f5671B.getTransformMatrix();
        } else {
            transformMatrix = this.f5679b.getTransformMatrix();
        }
        this.f5678a.calculateScissors(transformMatrix, rectangle, rectangle2);
    }

    public void cancelTouchFocusExcept(@Null EventListener eventListener, @Null Actor actor) {
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.touchUp);
        inputEvent.setStage(this);
        inputEvent.setStageX(-2.14748365E9f);
        inputEvent.setStageY(-2.14748365E9f);
        SnapshotArray<TouchFocus> snapshotArray = this.f5692z;
        TouchFocus[] begin = snapshotArray.begin();
        int i = snapshotArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            TouchFocus touchFocus = begin[i2];
            if ((touchFocus.f5693a != eventListener || touchFocus.f5694b != actor) && snapshotArray.removeValue(touchFocus, true)) {
                inputEvent.setTarget(touchFocus.f5695d);
                inputEvent.setListenerActor(touchFocus.f5694b);
                inputEvent.setPointer(touchFocus.f5696k);
                inputEvent.setButton(touchFocus.f5697p);
                touchFocus.f5693a.handle(inputEvent);
            }
        }
        snapshotArray.end();
        Pools.free(inputEvent);
    }

    @Null
    /* renamed from: d */
    public final Actor m23854d(@Null Actor actor, int i, int i2, int i3) {
        screenToStageCoordinates(this.f5682p.set(i, i2));
        Vector2 vector2 = this.f5682p;
        Actor hit = hit(vector2.f5527x, vector2.f5528y, true);
        if (hit == actor) {
            return actor;
        }
        if (actor != null) {
            InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
            inputEvent.setType(InputEvent.Type.exit);
            inputEvent.setStage(this);
            inputEvent.setStageX(this.f5682p.f5527x);
            inputEvent.setStageY(this.f5682p.f5528y);
            inputEvent.setPointer(i3);
            inputEvent.setRelatedActor(hit);
            actor.fire(inputEvent);
            Pools.free(inputEvent);
        }
        if (hit != null) {
            InputEvent inputEvent2 = (InputEvent) Pools.obtain(InputEvent.class);
            inputEvent2.setType(InputEvent.Type.enter);
            inputEvent2.setStage(this);
            inputEvent2.setStageX(this.f5682p.f5527x);
            inputEvent2.setStageY(this.f5682p.f5528y);
            inputEvent2.setPointer(i3);
            inputEvent2.setRelatedActor(actor);
            hit.fire(inputEvent2);
            Pools.free(inputEvent2);
        }
        return hit;
    }

    public void draw() {
        Camera camera = this.f5678a.getCamera();
        camera.update();
        if (!this.f5681k.isVisible()) {
            return;
        }
        Batch batch = this.f5679b;
        batch.setProjectionMatrix(camera.combined);
        batch.begin();
        this.f5681k.draw(batch, 1.0f);
        batch.end();
        if (f5669I) {
            m23855c();
        }
    }

    /* renamed from: e */
    public final void m23853e(Actor actor, int i, int i2, int i3) {
        screenToStageCoordinates(this.f5682p.set(i, i2));
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.exit);
        inputEvent.setStage(this);
        inputEvent.setStageX(this.f5682p.f5527x);
        inputEvent.setStageY(this.f5682p.f5528y);
        inputEvent.setPointer(i3);
        inputEvent.setRelatedActor(actor);
        actor.fire(inputEvent);
        Pools.free(inputEvent);
    }

    /* renamed from: f */
    public boolean m23852f(int i, int i2) {
        int screenX = this.f5678a.getScreenX();
        int screenWidth = this.f5678a.getScreenWidth() + screenX;
        int screenY = this.f5678a.getScreenY();
        int screenHeight = this.f5678a.getScreenHeight() + screenY;
        int height = (Gdx.graphics.getHeight() - 1) - i2;
        if (i >= screenX && i < screenWidth && height >= screenY && height < screenHeight) {
            return true;
        }
        return false;
    }

    @Null
    public Actor hit(float f, float f2, boolean z) {
        this.f5681k.parentToLocalCoordinates(this.f5682p.set(f, f2));
        Group group = this.f5681k;
        Vector2 vector2 = this.f5682p;
        return group.hit(vector2.f5527x, vector2.f5528y, z);
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean keyDown(int i) {
        Actor actor = this.f5690x;
        if (actor == null) {
            actor = this.f5681k;
        }
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.keyDown);
        inputEvent.setStage(this);
        inputEvent.setKeyCode(i);
        actor.fire(inputEvent);
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean keyTyped(char c) {
        Actor actor = this.f5690x;
        if (actor == null) {
            actor = this.f5681k;
        }
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.keyTyped);
        inputEvent.setStage(this);
        inputEvent.setCharacter(c);
        actor.fire(inputEvent);
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean keyUp(int i) {
        Actor actor = this.f5690x;
        if (actor == null) {
            actor = this.f5681k;
        }
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.keyUp);
        inputEvent.setStage(this);
        inputEvent.setKeyCode(i);
        actor.fire(inputEvent);
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean mouseMoved(int i, int i2) {
        this.f5687u = i;
        this.f5688v = i2;
        if (!m23852f(i, i2)) {
            return false;
        }
        screenToStageCoordinates(this.f5682p.set(i, i2));
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.mouseMoved);
        inputEvent.setStage(this);
        inputEvent.setStageX(this.f5682p.f5527x);
        inputEvent.setStageY(this.f5682p.f5528y);
        Vector2 vector2 = this.f5682p;
        Actor hit = hit(vector2.f5527x, vector2.f5528y, true);
        if (hit == null) {
            hit = this.f5681k;
        }
        hit.fire(inputEvent);
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    public void removeTouchFocus(EventListener eventListener, Actor actor, Actor actor2, int i, int i2) {
        SnapshotArray<TouchFocus> snapshotArray = this.f5692z;
        for (int i3 = snapshotArray.size - 1; i3 >= 0; i3--) {
            TouchFocus touchFocus = snapshotArray.get(i3);
            if (touchFocus.f5693a == eventListener && touchFocus.f5694b == actor && touchFocus.f5695d == actor2 && touchFocus.f5696k == i && touchFocus.f5697p == i2) {
                snapshotArray.removeIndex(i3);
                Pools.free(touchFocus);
            }
        }
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean scrolled(float f, float f2) {
        Actor actor = this.f5691y;
        if (actor == null) {
            actor = this.f5681k;
        }
        screenToStageCoordinates(this.f5682p.set(this.f5687u, this.f5688v));
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.scrolled);
        inputEvent.setStage(this);
        inputEvent.setStageX(this.f5682p.f5527x);
        inputEvent.setStageY(this.f5682p.f5528y);
        inputEvent.setScrollAmountX(f);
        inputEvent.setScrollAmountY(f2);
        actor.fire(inputEvent);
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    public void setDebugAll(boolean z) {
        if (this.f5673D == z) {
            return;
        }
        this.f5673D = z;
        if (z) {
            f5669I = true;
        } else {
            this.f5681k.setDebug(false, true);
        }
    }

    public void setDebugParentUnderMouse(boolean z) {
        if (this.f5675F == z) {
            return;
        }
        this.f5675F = z;
        if (z) {
            f5669I = true;
        } else {
            this.f5681k.setDebug(false, true);
        }
    }

    public void setDebugUnderMouse(boolean z) {
        if (this.f5674E == z) {
            return;
        }
        this.f5674E = z;
        if (z) {
            f5669I = true;
        } else {
            this.f5681k.setDebug(false, true);
        }
    }

    public boolean setKeyboardFocus(@Null Actor actor) {
        if (this.f5690x == actor) {
            return true;
        }
        FocusListener.FocusEvent focusEvent = (FocusListener.FocusEvent) Pools.obtain(FocusListener.FocusEvent.class);
        focusEvent.setStage(this);
        focusEvent.setType(FocusListener.FocusEvent.Type.keyboard);
        Actor actor2 = this.f5690x;
        if (actor2 != null) {
            focusEvent.setFocused(false);
            focusEvent.setRelatedActor(actor);
            actor2.fire(focusEvent);
        }
        boolean z = !focusEvent.isCancelled();
        if (z) {
            this.f5690x = actor;
            if (actor != null) {
                focusEvent.setFocused(true);
                focusEvent.setRelatedActor(actor2);
                actor.fire(focusEvent);
                z = !focusEvent.isCancelled();
                if (!z) {
                    this.f5690x = actor2;
                }
            }
        }
        Pools.free(focusEvent);
        return z;
    }

    public void setRoot(Group group) {
        Group group2 = group.f5626b;
        if (group2 != null) {
            group2.removeActor(group, false);
        }
        this.f5681k = group;
        group.m23866e(null);
        group.mo23796f(this);
    }

    public boolean setScrollFocus(@Null Actor actor) {
        if (this.f5691y == actor) {
            return true;
        }
        FocusListener.FocusEvent focusEvent = (FocusListener.FocusEvent) Pools.obtain(FocusListener.FocusEvent.class);
        focusEvent.setStage(this);
        focusEvent.setType(FocusListener.FocusEvent.Type.scroll);
        Actor actor2 = this.f5691y;
        if (actor2 != null) {
            focusEvent.setFocused(false);
            focusEvent.setRelatedActor(actor);
            actor2.fire(focusEvent);
        }
        boolean z = !focusEvent.isCancelled();
        if (z) {
            this.f5691y = actor;
            if (actor != null) {
                focusEvent.setFocused(true);
                focusEvent.setRelatedActor(actor2);
                actor.fire(focusEvent);
                z = !focusEvent.isCancelled();
                if (!z) {
                    this.f5691y = actor2;
                }
            }
        }
        Pools.free(focusEvent);
        return z;
    }

    public Vector2 stageToScreenCoordinates(Vector2 vector2) {
        this.f5678a.project(vector2);
        vector2.f5528y = Gdx.graphics.getHeight() - vector2.f5528y;
        return vector2;
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchDragged(int i, int i2, int i3) {
        this.f5685s[i3] = i;
        this.f5686t[i3] = i2;
        this.f5687u = i;
        this.f5688v = i2;
        if (this.f5692z.size == 0) {
            return false;
        }
        screenToStageCoordinates(this.f5682p.set(i, i2));
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.touchDragged);
        inputEvent.setStage(this);
        inputEvent.setStageX(this.f5682p.f5527x);
        inputEvent.setStageY(this.f5682p.f5528y);
        inputEvent.setPointer(i3);
        SnapshotArray<TouchFocus> snapshotArray = this.f5692z;
        TouchFocus[] begin = snapshotArray.begin();
        int i4 = snapshotArray.size;
        for (int i5 = 0; i5 < i4; i5++) {
            TouchFocus touchFocus = begin[i5];
            if (touchFocus.f5696k == i3 && snapshotArray.contains(touchFocus, true)) {
                inputEvent.setTarget(touchFocus.f5695d);
                inputEvent.setListenerActor(touchFocus.f5694b);
                if (touchFocus.f5693a.handle(inputEvent)) {
                    inputEvent.handle();
                }
            }
        }
        snapshotArray.end();
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchUp(int i, int i2, int i3, int i4) {
        this.f5684r[i3] = false;
        this.f5685s[i3] = i;
        this.f5686t[i3] = i2;
        if (this.f5692z.size == 0) {
            return false;
        }
        screenToStageCoordinates(this.f5682p.set(i, i2));
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.touchUp);
        inputEvent.setStage(this);
        inputEvent.setStageX(this.f5682p.f5527x);
        inputEvent.setStageY(this.f5682p.f5528y);
        inputEvent.setPointer(i3);
        inputEvent.setButton(i4);
        SnapshotArray<TouchFocus> snapshotArray = this.f5692z;
        TouchFocus[] begin = snapshotArray.begin();
        int i5 = snapshotArray.size;
        for (int i6 = 0; i6 < i5; i6++) {
            TouchFocus touchFocus = begin[i6];
            if (touchFocus.f5696k == i3 && touchFocus.f5697p == i4 && snapshotArray.removeValue(touchFocus, true)) {
                inputEvent.setTarget(touchFocus.f5695d);
                inputEvent.setListenerActor(touchFocus.f5694b);
                if (touchFocus.f5693a.handle(inputEvent)) {
                    inputEvent.handle();
                }
                Pools.free(touchFocus);
            }
        }
        snapshotArray.end();
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    public Stage(Viewport viewport) {
        this(viewport, new SpriteBatch());
        this.f5680d = true;
    }

    public void clear() {
        unfocusAll();
        this.f5681k.clear();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        clear();
        if (this.f5680d) {
            this.f5679b.dispose();
        }
        ShapeRenderer shapeRenderer = this.f5671B;
        if (shapeRenderer != null) {
            shapeRenderer.dispose();
        }
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchDown(int i, int i2, int i3, int i4) {
        if (!m23852f(i, i2)) {
            return false;
        }
        this.f5684r[i3] = true;
        this.f5685s[i3] = i;
        this.f5686t[i3] = i2;
        screenToStageCoordinates(this.f5682p.set(i, i2));
        InputEvent inputEvent = (InputEvent) Pools.obtain(InputEvent.class);
        inputEvent.setType(InputEvent.Type.touchDown);
        inputEvent.setStage(this);
        inputEvent.setStageX(this.f5682p.f5527x);
        inputEvent.setStageY(this.f5682p.f5528y);
        inputEvent.setPointer(i3);
        inputEvent.setButton(i4);
        Vector2 vector2 = this.f5682p;
        Actor hit = hit(vector2.f5527x, vector2.f5528y, true);
        if (hit == null) {
            if (this.f5681k.getTouchable() == Touchable.enabled) {
                this.f5681k.fire(inputEvent);
            }
        } else {
            hit.fire(inputEvent);
        }
        boolean isHandled = inputEvent.isHandled();
        Pools.free(inputEvent);
        return isHandled;
    }

    public void unfocus(Actor actor) {
        cancelTouchFocus(actor);
        Actor actor2 = this.f5691y;
        if (actor2 != null && actor2.isDescendantOf(actor)) {
            setScrollFocus(null);
        }
        Actor actor3 = this.f5690x;
        if (actor3 != null && actor3.isDescendantOf(actor)) {
            setKeyboardFocus(null);
        }
    }

    public Stage(Viewport viewport, Batch batch) {
        this.f5682p = new Vector2();
        this.f5683q = new Actor[20];
        this.f5684r = new boolean[20];
        this.f5685s = new int[20];
        this.f5686t = new int[20];
        this.f5692z = new SnapshotArray<>(true, 4, TouchFocus.class);
        this.f5670A = true;
        this.f5676G = Table.Debug.none;
        this.f5677H = new Color(0.0f, 1.0f, 0.0f, 0.85f);
        if (viewport == null) {
            throw new IllegalArgumentException("viewport cannot be null.");
        }
        if (batch != null) {
            this.f5678a = viewport;
            this.f5679b = batch;
            Group group = new Group();
            this.f5681k = group;
            group.mo23796f(this);
            viewport.update(Gdx.graphics.getWidth(), Gdx.graphics.getHeight(), true);
            return;
        }
        throw new IllegalArgumentException("batch cannot be null.");
    }

    public void setDebugTableUnderMouse(boolean z) {
        setDebugTableUnderMouse(z ? Table.Debug.all : Table.Debug.none);
    }

    public void cancelTouchFocus() {
        cancelTouchFocusExcept(null, null);
    }
}
