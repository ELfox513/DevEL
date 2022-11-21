package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.ObjectMap;
/* loaded from: classes.dex */
public class DragAndDrop {

    /* renamed from: t */
    public static final Vector2 f6312t = new Vector2();

    /* renamed from: a */
    public Source f6313a;

    /* renamed from: b */
    public Payload f6314b;

    /* renamed from: c */
    public Actor f6315c;

    /* renamed from: d */
    public boolean f6316d;

    /* renamed from: e */
    public Target f6317e;

    /* renamed from: f */
    public boolean f6318f;

    /* renamed from: j */
    public int f6322j;

    /* renamed from: m */
    public float f6325m;

    /* renamed from: n */
    public float f6326n;

    /* renamed from: o */
    public long f6327o;

    /* renamed from: g */
    public final Array<Target> f6319g = new Array<>(8);

    /* renamed from: h */
    public final ObjectMap<Source, DragListener> f6320h = new ObjectMap<>(8);

    /* renamed from: i */
    public float f6321i = 8.0f;

    /* renamed from: k */
    public float f6323k = 0.0f;

    /* renamed from: l */
    public float f6324l = 0.0f;

    /* renamed from: p */
    public int f6328p = 250;

    /* renamed from: q */
    public int f6329q = -1;

    /* renamed from: r */
    public boolean f6330r = true;

    /* renamed from: s */
    public boolean f6331s = true;

    /* loaded from: classes.dex */
    public static class Payload {
        @Null

        /* renamed from: a */
        public Actor f6334a;
        @Null

        /* renamed from: b */
        public Actor f6335b;
        @Null

        /* renamed from: c */
        public Actor f6336c;
        @Null

        /* renamed from: d */
        public Object f6337d;

        @Null
        public Actor getDragActor() {
            return this.f6334a;
        }

        @Null
        public Actor getInvalidDragActor() {
            return this.f6336c;
        }

        @Null
        public Object getObject() {
            return this.f6337d;
        }

        @Null
        public Actor getValidDragActor() {
            return this.f6335b;
        }

        public void setDragActor(@Null Actor actor) {
            this.f6334a = actor;
        }

        public void setInvalidDragActor(@Null Actor actor) {
            this.f6336c = actor;
        }

        public void setObject(@Null Object obj) {
            this.f6337d = obj;
        }

        public void setValidDragActor(@Null Actor actor) {
            this.f6335b = actor;
        }
    }

    public void addTarget(Target target) {
        this.f6319g.add(target);
    }

    @Null
    public Actor getDragActor() {
        return this.f6315c;
    }

    @Null
    public Payload getDragPayload() {
        return this.f6314b;
    }

    @Null
    public Source getDragSource() {
        return this.f6313a;
    }

    public int getDragTime() {
        return this.f6328p;
    }

    public boolean isDragValid() {
        return this.f6314b != null && System.currentTimeMillis() >= this.f6327o;
    }

    public boolean isDragging() {
        return this.f6314b != null;
    }

    public void removeTarget(Target target) {
        this.f6319g.removeValue(target, true);
    }

    public void setButton(int i) {
        this.f6322j = i;
    }

    public void setCancelTouchFocus(boolean z) {
        this.f6330r = z;
    }

    public void setDragTime(int i) {
        this.f6328p = i;
    }

    public void setKeepWithinStage(boolean z) {
        this.f6331s = z;
    }

    public void setTapSquareSize(float f) {
        this.f6321i = f;
    }

    /* loaded from: classes.dex */
    public static abstract class Source {

        /* renamed from: a */
        public final Actor f6338a;

        public void drag(InputEvent inputEvent, float f, float f2, int i) {
        }

        @Null
        public abstract Payload dragStart(InputEvent inputEvent, float f, float f2, int i);

        public void dragStop(InputEvent inputEvent, float f, float f2, int i, @Null Payload payload, @Null Target target) {
        }

        public Actor getActor() {
            return this.f6338a;
        }

        public Source(Actor actor) {
            if (actor != null) {
                this.f6338a = actor;
                return;
            }
            throw new IllegalArgumentException("actor cannot be null.");
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Target {

        /* renamed from: a */
        public final Actor f6339a;

        public abstract boolean drag(Source source, Payload payload, float f, float f2, int i);

        public abstract void drop(Source source, Payload payload, float f, float f2, int i);

        public Actor getActor() {
            return this.f6339a;
        }

        public void reset(Source source, Payload payload) {
        }

        public Target(Actor actor) {
            if (actor != null) {
                this.f6339a = actor;
                Stage stage = actor.getStage();
                if (stage != null && actor == stage.getRoot()) {
                    throw new IllegalArgumentException("The stage root cannot be a drag and drop target.");
                }
                return;
            }
            throw new IllegalArgumentException("actor cannot be null.");
        }
    }

    public void addSource(final Source source) {
        DragListener dragListener = new DragListener() { // from class: com.badlogic.gdx.scenes.scene2d.utils.DragAndDrop.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.DragListener
            public void dragStop(InputEvent inputEvent, float f, float f2, int i) {
                Target target;
                DragAndDrop dragAndDrop = DragAndDrop.this;
                if (i != dragAndDrop.f6329q) {
                    return;
                }
                dragAndDrop.f6329q = -1;
                if (dragAndDrop.f6314b == null) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                DragAndDrop dragAndDrop2 = DragAndDrop.this;
                if (currentTimeMillis < dragAndDrop2.f6327o) {
                    dragAndDrop2.f6318f = false;
                } else if (!dragAndDrop2.f6318f && dragAndDrop2.f6317e != null) {
                    float stageX = inputEvent.getStageX() + DragAndDrop.this.f6325m;
                    float stageY = inputEvent.getStageY();
                    DragAndDrop dragAndDrop3 = DragAndDrop.this;
                    float f3 = stageY + dragAndDrop3.f6326n;
                    Actor actor = dragAndDrop3.f6317e.f6339a;
                    Vector2 vector2 = DragAndDrop.f6312t;
                    actor.stageToLocalCoordinates(vector2.set(stageX, f3));
                    DragAndDrop dragAndDrop4 = DragAndDrop.this;
                    dragAndDrop4.f6318f = dragAndDrop4.f6317e.drag(source, dragAndDrop4.f6314b, vector2.f5527x, vector2.f5528y, i);
                }
                DragAndDrop dragAndDrop5 = DragAndDrop.this;
                Actor actor2 = dragAndDrop5.f6315c;
                if (actor2 != null && dragAndDrop5.f6316d) {
                    actor2.remove();
                }
                if (DragAndDrop.this.f6318f) {
                    float stageX2 = inputEvent.getStageX() + DragAndDrop.this.f6325m;
                    float stageY2 = inputEvent.getStageY();
                    DragAndDrop dragAndDrop6 = DragAndDrop.this;
                    float f4 = stageY2 + dragAndDrop6.f6326n;
                    Actor actor3 = dragAndDrop6.f6317e.f6339a;
                    Vector2 vector22 = DragAndDrop.f6312t;
                    actor3.stageToLocalCoordinates(vector22.set(stageX2, f4));
                    DragAndDrop dragAndDrop7 = DragAndDrop.this;
                    dragAndDrop7.f6317e.drop(source, dragAndDrop7.f6314b, vector22.f5527x, vector22.f5528y, i);
                }
                Source source2 = source;
                DragAndDrop dragAndDrop8 = DragAndDrop.this;
                Payload payload = dragAndDrop8.f6314b;
                if (dragAndDrop8.f6318f) {
                    target = dragAndDrop8.f6317e;
                } else {
                    target = null;
                }
                source2.dragStop(inputEvent, f, f2, i, payload, target);
                DragAndDrop dragAndDrop9 = DragAndDrop.this;
                Target target2 = dragAndDrop9.f6317e;
                if (target2 != null) {
                    target2.reset(source, dragAndDrop9.f6314b);
                }
                DragAndDrop dragAndDrop10 = DragAndDrop.this;
                dragAndDrop10.f6313a = null;
                dragAndDrop10.f6314b = null;
                dragAndDrop10.f6317e = null;
                dragAndDrop10.f6318f = false;
                dragAndDrop10.f6315c = null;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.DragListener
            public void drag(InputEvent inputEvent, float f, float f2, int i) {
                float f3;
                float f4;
                Target target;
                Actor actor;
                DragAndDrop dragAndDrop = DragAndDrop.this;
                if (dragAndDrop.f6314b == null || i != dragAndDrop.f6329q) {
                    return;
                }
                source.drag(inputEvent, f, f2, i);
                Stage stage = inputEvent.getStage();
                Actor actor2 = DragAndDrop.this.f6315c;
                float f5 = 0.0f;
                if (actor2 != null) {
                    f3 = actor2.getX();
                    f4 = actor2.getY();
                    actor2.setPosition(2.14748365E9f, 2.14748365E9f);
                } else {
                    f3 = 0.0f;
                    f4 = 0.0f;
                }
                float stageX = inputEvent.getStageX() + DragAndDrop.this.f6325m;
                float stageY = inputEvent.getStageY() + DragAndDrop.this.f6326n;
                boolean z = true;
                Actor hit = inputEvent.getStage().hit(stageX, stageY, true);
                if (hit == null) {
                    hit = inputEvent.getStage().hit(stageX, stageY, false);
                }
                if (actor2 != null) {
                    actor2.setPosition(f3, f4);
                }
                DragAndDrop dragAndDrop2 = DragAndDrop.this;
                dragAndDrop2.f6318f = false;
                Actor actor3 = null;
                if (hit != null) {
                    int i2 = dragAndDrop2.f6319g.size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        Target target2 = DragAndDrop.this.f6319g.get(i3);
                        if (target2.f6339a.isAscendantOf(hit)) {
                            target2.f6339a.stageToLocalCoordinates(DragAndDrop.f6312t.set(stageX, stageY));
                            target = target2;
                            break;
                        }
                    }
                }
                target = null;
                DragAndDrop dragAndDrop3 = DragAndDrop.this;
                Target target3 = dragAndDrop3.f6317e;
                if (target != target3) {
                    if (target3 != null) {
                        target3.reset(source, dragAndDrop3.f6314b);
                    }
                    DragAndDrop.this.f6317e = target;
                }
                if (target != null) {
                    DragAndDrop dragAndDrop4 = DragAndDrop.this;
                    Source source2 = source;
                    Payload payload = dragAndDrop4.f6314b;
                    Vector2 vector2 = DragAndDrop.f6312t;
                    dragAndDrop4.f6318f = target.drag(source2, payload, vector2.f5527x, vector2.f5528y, i);
                }
                DragAndDrop dragAndDrop5 = DragAndDrop.this;
                if (dragAndDrop5.f6317e != null) {
                    if (dragAndDrop5.f6318f) {
                        actor = dragAndDrop5.f6314b.f6335b;
                    } else {
                        actor = dragAndDrop5.f6314b.f6336c;
                    }
                    actor3 = actor;
                }
                if (actor3 == null) {
                    actor3 = dragAndDrop5.f6314b.f6334a;
                }
                if (actor3 != actor2) {
                    if (actor2 != null && dragAndDrop5.f6316d) {
                        actor2.remove();
                    }
                    DragAndDrop dragAndDrop6 = DragAndDrop.this;
                    dragAndDrop6.f6315c = actor3;
                    if (actor3.getStage() != null) {
                        z = false;
                    }
                    dragAndDrop6.f6316d = z;
                    if (DragAndDrop.this.f6316d) {
                        stage.addActor(actor3);
                    }
                }
                if (actor3 == null) {
                    return;
                }
                float stageX2 = (inputEvent.getStageX() - actor3.getWidth()) + DragAndDrop.this.f6323k;
                float stageY2 = inputEvent.getStageY();
                DragAndDrop dragAndDrop7 = DragAndDrop.this;
                float f6 = stageY2 + dragAndDrop7.f6324l;
                if (dragAndDrop7.f6331s) {
                    if (stageX2 < 0.0f) {
                        stageX2 = 0.0f;
                    }
                    if (f6 >= 0.0f) {
                        f5 = f6;
                    }
                    if (actor3.getWidth() + stageX2 > stage.getWidth()) {
                        stageX2 = stage.getWidth() - actor3.getWidth();
                    }
                    if (actor3.getHeight() + f5 > stage.getHeight()) {
                        f6 = stage.getHeight() - actor3.getHeight();
                    } else {
                        f6 = f5;
                    }
                }
                actor3.setPosition(stageX2, f6);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.DragListener
            public void dragStart(InputEvent inputEvent, float f, float f2, int i) {
                Stage stage;
                DragAndDrop dragAndDrop = DragAndDrop.this;
                if (dragAndDrop.f6329q != -1) {
                    inputEvent.stop();
                    return;
                }
                dragAndDrop.f6329q = i;
                long currentTimeMillis = System.currentTimeMillis();
                DragAndDrop dragAndDrop2 = DragAndDrop.this;
                dragAndDrop.f6327o = currentTimeMillis + dragAndDrop2.f6328p;
                Source source2 = source;
                dragAndDrop2.f6313a = source2;
                dragAndDrop2.f6314b = source2.dragStart(inputEvent, getTouchDownX(), getTouchDownY(), i);
                inputEvent.stop();
                DragAndDrop dragAndDrop3 = DragAndDrop.this;
                if (dragAndDrop3.f6330r && dragAndDrop3.f6314b != null && (stage = source.getActor().getStage()) != null) {
                    stage.cancelTouchFocusExcept(this, source.getActor());
                }
            }
        };
        dragListener.setTapSquareSize(this.f6321i);
        dragListener.setButton(this.f6322j);
        source.f6338a.addCaptureListener(dragListener);
        this.f6320h.put(source, dragListener);
    }

    public void cancelTouchFocusExcept(Source source) {
        Stage stage;
        DragListener dragListener = this.f6320h.get(source);
        if (dragListener != null && (stage = source.getActor().getStage()) != null) {
            stage.cancelTouchFocusExcept(dragListener, source.getActor());
        }
    }

    public void clear() {
        this.f6319g.clear();
        ObjectMap.Entries<Source, DragListener> it = this.f6320h.entries().iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            ((Source) next.key).f6338a.removeCaptureListener((EventListener) next.value);
        }
        this.f6320h.clear(8);
    }

    public void removeSource(Source source) {
        source.f6338a.removeCaptureListener(this.f6320h.remove(source));
    }

    public void setDragActorPosition(float f, float f2) {
        this.f6323k = f;
        this.f6324l = f2;
    }

    public void setTouchOffset(float f, float f2) {
        this.f6325m = f;
        this.f6326n = f2;
    }
}
