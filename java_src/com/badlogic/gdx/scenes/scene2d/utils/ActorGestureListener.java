package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.input.GestureDetector;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Event;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class ActorGestureListener implements EventListener {

    /* renamed from: e */
    public static final Vector2 f6277e = new Vector2();

    /* renamed from: f */
    public static final Vector2 f6278f = new Vector2();

    /* renamed from: a */
    public final GestureDetector f6279a;

    /* renamed from: b */
    public InputEvent f6280b;

    /* renamed from: c */
    public Actor f6281c;

    /* renamed from: d */
    public Actor f6282d;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener$2 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C13412 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6288a;

        static {
            int[] iArr = new int[InputEvent.Type.values().length];
            f6288a = iArr;
            try {
                iArr[InputEvent.Type.touchDown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6288a[InputEvent.Type.touchUp.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6288a[InputEvent.Type.touchDragged.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ActorGestureListener() {
        this(20.0f, 0.4f, 1.1f, 2.14748365E9f);
    }

    public void fling(InputEvent inputEvent, float f, float f2, int i) {
    }

    public GestureDetector getGestureDetector() {
        return this.f6279a;
    }

    @Null
    public Actor getTouchDownTarget() {
        return this.f6282d;
    }

    public boolean longPress(Actor actor, float f, float f2) {
        return false;
    }

    public void pan(InputEvent inputEvent, float f, float f2, float f3, float f4) {
    }

    public void panStop(InputEvent inputEvent, float f, float f2, int i, int i2) {
    }

    public void pinch(InputEvent inputEvent, Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24) {
    }

    public void tap(InputEvent inputEvent, float f, float f2, int i, int i2) {
    }

    public void touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
    }

    public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
    }

    public void zoom(InputEvent inputEvent, float f, float f2) {
    }

    public ActorGestureListener(float f, float f2, float f3, float f4) {
        this.f6279a = new GestureDetector(f, f2, f3, f4, new GestureDetector.GestureAdapter() { // from class: com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener.1

            /* renamed from: a */
            public final Vector2 f6283a = new Vector2();

            /* renamed from: b */
            public final Vector2 f6284b = new Vector2();

            /* renamed from: c */
            public final Vector2 f6285c = new Vector2();

            /* renamed from: d */
            public final Vector2 f6286d = new Vector2();

            @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
            public boolean zoom(float f5, float f6) {
                ActorGestureListener actorGestureListener = ActorGestureListener.this;
                actorGestureListener.zoom(actorGestureListener.f6280b, f5, f6);
                return true;
            }

            /* renamed from: a */
            public final void m23703a(Vector2 vector2) {
                ActorGestureListener.this.f6281c.stageToLocalCoordinates(vector2);
                vector2.sub(ActorGestureListener.this.f6281c.stageToLocalCoordinates(ActorGestureListener.f6278f.set(0.0f, 0.0f)));
            }

            @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
            public boolean fling(float f5, float f6, int i) {
                Vector2 vector2 = ActorGestureListener.f6277e;
                m23703a(vector2.set(f5, f6));
                ActorGestureListener actorGestureListener = ActorGestureListener.this;
                actorGestureListener.fling(actorGestureListener.f6280b, vector2.f5527x, vector2.f5528y, i);
                return true;
            }

            @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
            public boolean longPress(float f5, float f6) {
                Actor actor = ActorGestureListener.this.f6281c;
                Vector2 vector2 = ActorGestureListener.f6277e;
                actor.stageToLocalCoordinates(vector2.set(f5, f6));
                ActorGestureListener actorGestureListener = ActorGestureListener.this;
                return actorGestureListener.longPress(actorGestureListener.f6281c, vector2.f5527x, vector2.f5528y);
            }

            @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
            public boolean pan(float f5, float f6, float f7, float f8) {
                Vector2 vector2 = ActorGestureListener.f6277e;
                m23703a(vector2.set(f7, f8));
                float f9 = vector2.f5527x;
                float f10 = vector2.f5528y;
                ActorGestureListener.this.f6281c.stageToLocalCoordinates(vector2.set(f5, f6));
                ActorGestureListener actorGestureListener = ActorGestureListener.this;
                actorGestureListener.pan(actorGestureListener.f6280b, vector2.f5527x, vector2.f5528y, f9, f10);
                return true;
            }

            @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
            public boolean panStop(float f5, float f6, int i, int i2) {
                Actor actor = ActorGestureListener.this.f6281c;
                Vector2 vector2 = ActorGestureListener.f6277e;
                actor.stageToLocalCoordinates(vector2.set(f5, f6));
                ActorGestureListener actorGestureListener = ActorGestureListener.this;
                actorGestureListener.panStop(actorGestureListener.f6280b, vector2.f5527x, vector2.f5528y, i, i2);
                return true;
            }

            @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
            public boolean pinch(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24) {
                ActorGestureListener.this.f6281c.stageToLocalCoordinates(this.f6283a.set(vector2));
                ActorGestureListener.this.f6281c.stageToLocalCoordinates(this.f6284b.set(vector22));
                ActorGestureListener.this.f6281c.stageToLocalCoordinates(this.f6285c.set(vector23));
                ActorGestureListener.this.f6281c.stageToLocalCoordinates(this.f6286d.set(vector24));
                ActorGestureListener actorGestureListener = ActorGestureListener.this;
                actorGestureListener.pinch(actorGestureListener.f6280b, this.f6283a, this.f6284b, this.f6285c, this.f6286d);
                return true;
            }

            @Override // com.badlogic.gdx.input.GestureDetector.GestureAdapter, com.badlogic.gdx.input.GestureDetector.GestureListener
            public boolean tap(float f5, float f6, int i, int i2) {
                Actor actor = ActorGestureListener.this.f6281c;
                Vector2 vector2 = ActorGestureListener.f6277e;
                actor.stageToLocalCoordinates(vector2.set(f5, f6));
                ActorGestureListener actorGestureListener = ActorGestureListener.this;
                actorGestureListener.tap(actorGestureListener.f6280b, vector2.f5527x, vector2.f5528y, i, i2);
                return true;
            }
        });
    }

    @Override // com.badlogic.gdx.scenes.scene2d.EventListener
    public boolean handle(Event event) {
        if (!(event instanceof InputEvent)) {
            return false;
        }
        InputEvent inputEvent = (InputEvent) event;
        int i = C13412.f6288a[inputEvent.getType().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                this.f6280b = inputEvent;
                this.f6281c = inputEvent.getListenerActor();
                this.f6279a.touchDragged(inputEvent.getStageX(), inputEvent.getStageY(), inputEvent.getPointer());
                return true;
            } else if (inputEvent.isTouchFocusCancel()) {
                this.f6279a.reset();
                return false;
            } else {
                this.f6280b = inputEvent;
                this.f6281c = inputEvent.getListenerActor();
                this.f6279a.touchUp(inputEvent.getStageX(), inputEvent.getStageY(), inputEvent.getPointer(), inputEvent.getButton());
                Actor actor = this.f6281c;
                Vector2 vector2 = f6277e;
                actor.stageToLocalCoordinates(vector2.set(inputEvent.getStageX(), inputEvent.getStageY()));
                touchUp(inputEvent, vector2.f5527x, vector2.f5528y, inputEvent.getPointer(), inputEvent.getButton());
                return true;
            }
        }
        this.f6281c = inputEvent.getListenerActor();
        this.f6282d = inputEvent.getTarget();
        this.f6279a.touchDown(inputEvent.getStageX(), inputEvent.getStageY(), inputEvent.getPointer(), inputEvent.getButton());
        Actor actor2 = this.f6281c;
        Vector2 vector22 = f6277e;
        actor2.stageToLocalCoordinates(vector22.set(inputEvent.getStageX(), inputEvent.getStageY()));
        touchDown(inputEvent, vector22.f5527x, vector22.f5528y, inputEvent.getPointer(), inputEvent.getButton());
        if (inputEvent.getTouchFocus()) {
            inputEvent.getStage().addTouchFocus(this, inputEvent.getListenerActor(), inputEvent.getTarget(), inputEvent.getPointer(), inputEvent.getButton());
        }
        return true;
    }
}
