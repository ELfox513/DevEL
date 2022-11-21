package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.SnapshotArray;
import com.badlogic.gdx.utils.reflect.ClassReflection;
/* loaded from: classes.dex */
public class Actor {

    /* renamed from: C */
    public float f5622C;
    @Null

    /* renamed from: E */
    public Object f5624E;
    @Null

    /* renamed from: a */
    public Stage f5625a;
    @Null

    /* renamed from: b */
    public Group f5626b;
    @Null

    /* renamed from: q */
    public String f5630q;

    /* renamed from: t */
    public boolean f5633t;

    /* renamed from: u */
    public float f5634u;

    /* renamed from: v */
    public float f5635v;

    /* renamed from: w */
    public float f5636w;

    /* renamed from: x */
    public float f5637x;

    /* renamed from: y */
    public float f5638y;

    /* renamed from: z */
    public float f5639z;

    /* renamed from: d */
    public final DelayedRemovalArray<EventListener> f5627d = new DelayedRemovalArray<>(0);

    /* renamed from: k */
    public final DelayedRemovalArray<EventListener> f5628k = new DelayedRemovalArray<>(0);

    /* renamed from: p */
    public final Array<Action> f5629p = new Array<>(0);

    /* renamed from: r */
    public Touchable f5631r = Touchable.enabled;

    /* renamed from: s */
    public boolean f5632s = true;

    /* renamed from: A */
    public float f5620A = 1.0f;

    /* renamed from: B */
    public float f5621B = 1.0f;

    /* renamed from: D */
    public final Color f5623D = new Color(1.0f, 1.0f, 1.0f, 1.0f);

    @Deprecated
    public boolean ancestorsVisible() {
        return ascendantsVisible();
    }

    public boolean ascendantsVisible() {
        Actor actor = this;
        while (actor.isVisible()) {
            actor = actor.f5626b;
            if (actor == null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public void mo20676b() {
    }

    /* renamed from: c */
    public void m23867c() {
    }

    public boolean clipBegin() {
        return clipBegin(this.f5634u, this.f5635v, this.f5636w, this.f5637x);
    }

    public void clipEnd() {
        Pools.free(ScissorStack.popScissors());
    }

    /* renamed from: d */
    public void mo23819d() {
    }

    public Actor debug() {
        setDebug(true);
        return this;
    }

    public void draw(Batch batch, float f) {
    }

    public void drawDebug(ShapeRenderer shapeRenderer) {
        mo23712a(shapeRenderer);
    }

    /* renamed from: e */
    public void m23866e(@Null Group group) {
        this.f5626b = group;
    }

    /* renamed from: f */
    public void mo23796f(Stage stage) {
        this.f5625a = stage;
    }

    public Array<Action> getActions() {
        return this.f5629p;
    }

    public DelayedRemovalArray<EventListener> getCaptureListeners() {
        return this.f5628k;
    }

    public Color getColor() {
        return this.f5623D;
    }

    public boolean getDebug() {
        return this.f5633t;
    }

    public float getHeight() {
        return this.f5637x;
    }

    public DelayedRemovalArray<EventListener> getListeners() {
        return this.f5627d;
    }

    @Null
    public String getName() {
        return this.f5630q;
    }

    public float getOriginX() {
        return this.f5638y;
    }

    public float getOriginY() {
        return this.f5639z;
    }

    @Null
    public Group getParent() {
        return this.f5626b;
    }

    public float getRight() {
        return this.f5634u + this.f5636w;
    }

    public float getRotation() {
        return this.f5622C;
    }

    public float getScaleX() {
        return this.f5620A;
    }

    public float getScaleY() {
        return this.f5621B;
    }

    @Null
    public Stage getStage() {
        return this.f5625a;
    }

    public float getTop() {
        return this.f5635v + this.f5637x;
    }

    public Touchable getTouchable() {
        return this.f5631r;
    }

    @Null
    public Object getUserObject() {
        return this.f5624E;
    }

    public float getWidth() {
        return this.f5636w;
    }

    public float getX() {
        return this.f5634u;
    }

    public float getY() {
        return this.f5635v;
    }

    public boolean hasActions() {
        return this.f5629p.size > 0;
    }

    public boolean hasParent() {
        return this.f5626b != null;
    }

    @Null
    public Actor hit(float f, float f2, boolean z) {
        if ((!z || this.f5631r == Touchable.enabled) && isVisible() && f >= 0.0f && f < this.f5636w && f2 >= 0.0f && f2 < this.f5637x) {
            return this;
        }
        return null;
    }

    public boolean isTouchable() {
        return this.f5631r == Touchable.enabled;
    }

    public boolean isVisible() {
        return this.f5632s;
    }

    public Vector2 localToAscendantCoordinates(@Null Actor actor, Vector2 vector2) {
        Actor actor2 = this;
        do {
            actor2.localToParentCoordinates(vector2);
            actor2 = actor2.f5626b;
            if (actor2 == actor) {
                return vector2;
            }
        } while (actor2 != null);
        throw new IllegalArgumentException("Actor is not an ascendant: " + actor);
    }

    public Vector2 localToStageCoordinates(Vector2 vector2) {
        return localToAscendantCoordinates(null, vector2);
    }

    public void moveBy(float f, float f2) {
        if (f != 0.0f || f2 != 0.0f) {
            this.f5634u += f;
            this.f5635v += f2;
            mo20676b();
        }
    }

    public boolean remove() {
        Group group = this.f5626b;
        if (group != null) {
            return group.removeActor(this, true);
        }
        return false;
    }

    public void removeAction(@Null Action action) {
        if (action == null || !this.f5629p.removeValue(action, true)) {
            return;
        }
        action.setActor(null);
    }

    public void rotateBy(float f) {
        if (f != 0.0f) {
            this.f5622C = (this.f5622C + f) % 360.0f;
            m23867c();
        }
    }

    public void scaleBy(float f) {
        if (f != 0.0f) {
            this.f5620A += f;
            this.f5621B += f;
            mo23819d();
        }
    }

    public void setColor(Color color) {
        this.f5623D.set(color);
    }

    public void setName(@Null String str) {
        this.f5630q = str;
    }

    public void setOrigin(float f, float f2) {
        this.f5638y = f;
        this.f5639z = f2;
    }

    public void setOriginX(float f) {
        this.f5638y = f;
    }

    public void setOriginY(float f) {
        this.f5639z = f;
    }

    public void setPosition(float f, float f2) {
        if (this.f5634u == f && this.f5635v == f2) {
            return;
        }
        this.f5634u = f;
        this.f5635v = f2;
        mo20676b();
    }

    public void setScale(float f) {
        if (this.f5620A == f && this.f5621B == f) {
            return;
        }
        this.f5620A = f;
        this.f5621B = f;
        mo23819d();
    }

    public void setTouchable(Touchable touchable) {
        this.f5631r = touchable;
    }

    public void setUserObject(@Null Object obj) {
        this.f5624E = obj;
    }

    public void setVisible(boolean z) {
        this.f5632s = z;
    }

    public void setX(float f) {
        if (this.f5634u != f) {
            this.f5634u = f;
            mo20676b();
        }
    }

    public void setY(float f) {
        if (this.f5635v != f) {
            this.f5635v = f;
            mo20676b();
        }
    }

    public void sizeBy(float f) {
        if (f != 0.0f) {
            this.f5636w += f;
            this.f5637x += f;
            sizeChanged();
        }
    }

    public void sizeChanged() {
    }

    public void toBack() {
        setZIndex(0);
    }

    public void toFront() {
        setZIndex(Integer.MAX_VALUE);
    }

    /* renamed from: a */
    public void mo23712a(ShapeRenderer shapeRenderer) {
        if (!this.f5633t) {
            return;
        }
        shapeRenderer.set(ShapeRenderer.ShapeType.Line);
        Stage stage = this.f5625a;
        if (stage != null) {
            shapeRenderer.setColor(stage.getDebugColor());
        }
        shapeRenderer.rect(this.f5634u, this.f5635v, this.f5638y, this.f5639z, this.f5636w, this.f5637x, this.f5620A, this.f5621B, this.f5622C);
    }

    public void act(float f) {
        int indexOf;
        Array<Action> array = this.f5629p;
        if (array.size == 0) {
            return;
        }
        Stage stage = this.f5625a;
        if (stage != null && stage.getActionsRequestRendering()) {
            Gdx.graphics.requestRendering();
        }
        int i = 0;
        while (i < array.size) {
            try {
                Action action = array.get(i);
                if (action.act(f) && i < array.size) {
                    if (array.get(i) == action) {
                        indexOf = i;
                    } else {
                        indexOf = array.indexOf(action, true);
                    }
                    if (indexOf != -1) {
                        array.removeIndex(indexOf);
                        action.setActor(null);
                        i--;
                    }
                }
                i++;
            } catch (RuntimeException e) {
                String actor = toString();
                throw new RuntimeException("Actor: " + actor.substring(0, Math.min(actor.length(), 128)), e);
            }
        }
    }

    public boolean addCaptureListener(EventListener eventListener) {
        if (eventListener != null) {
            if (!this.f5628k.contains(eventListener, true)) {
                this.f5628k.add(eventListener);
            }
            return true;
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    public boolean addListener(EventListener eventListener) {
        if (eventListener != null) {
            if (!this.f5627d.contains(eventListener, true)) {
                this.f5627d.add(eventListener);
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    public void clearActions() {
        for (int i = this.f5629p.size - 1; i >= 0; i--) {
            this.f5629p.get(i).setActor(null);
        }
        this.f5629p.clear();
    }

    public void clearListeners() {
        this.f5627d.clear();
        this.f5628k.clear();
    }

    public boolean clipBegin(float f, float f2, float f3, float f4) {
        Stage stage;
        if (f3 <= 0.0f || f4 <= 0.0f || (stage = this.f5625a) == null) {
            return false;
        }
        Rectangle rectangle = Rectangle.tmp;
        rectangle.f5523x = f;
        rectangle.f5524y = f2;
        rectangle.width = f3;
        rectangle.height = f4;
        Rectangle rectangle2 = (Rectangle) Pools.obtain(Rectangle.class);
        stage.calculateScissors(rectangle, rectangle2);
        if (ScissorStack.pushScissors(rectangle2)) {
            return true;
        }
        Pools.free(rectangle2);
        return false;
    }

    @Null
    public <T extends Actor> T firstAscendant(Class<T> cls) {
        if (cls != null) {
            Group group = (T) this;
            while (!ClassReflection.isInstance(cls, group)) {
                group = group.f5626b;
                if (group == null) {
                    return null;
                }
            }
            return group;
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public float getX(int i) {
        float f;
        float f2 = this.f5634u;
        if ((i & 16) != 0) {
            f = this.f5636w;
        } else if ((i & 8) != 0) {
            return f2;
        } else {
            f = this.f5636w / 2.0f;
        }
        return f2 + f;
    }

    public float getY(int i) {
        float f;
        float f2 = this.f5635v;
        if ((i & 2) != 0) {
            f = this.f5637x;
        } else if ((i & 4) != 0) {
            return f2;
        } else {
            f = this.f5637x / 2.0f;
        }
        return f2 + f;
    }

    public int getZIndex() {
        Group group = this.f5626b;
        if (group == null) {
            return -1;
        }
        return group.f5649F.indexOf(this, true);
    }

    public boolean isAscendantOf(Actor actor) {
        if (actor != null) {
            while (actor != this) {
                actor = actor.f5626b;
                if (actor == null) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public boolean isDescendantOf(Actor actor) {
        if (actor != null) {
            Actor actor2 = this;
            while (actor2 != actor) {
                actor2 = actor2.f5626b;
                if (actor2 == null) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public Vector2 localToParentCoordinates(Vector2 vector2) {
        float f = -this.f5622C;
        float f2 = this.f5620A;
        float f3 = this.f5621B;
        float f4 = this.f5634u;
        float f5 = this.f5635v;
        if (f == 0.0f) {
            if (f2 == 1.0f && f3 == 1.0f) {
                vector2.f5527x += f4;
                vector2.f5528y += f5;
            } else {
                float f6 = this.f5638y;
                float f7 = this.f5639z;
                vector2.f5527x = ((vector2.f5527x - f6) * f2) + f6 + f4;
                vector2.f5528y = ((vector2.f5528y - f7) * f3) + f7 + f5;
            }
        } else {
            double d = f * 0.017453292f;
            float cos = (float) Math.cos(d);
            float sin = (float) Math.sin(d);
            float f8 = this.f5638y;
            float f9 = this.f5639z;
            float f10 = (vector2.f5527x - f8) * f2;
            float f11 = (vector2.f5528y - f9) * f3;
            vector2.f5527x = (f10 * cos) + (f11 * sin) + f8 + f4;
            vector2.f5528y = (f10 * (-sin)) + (f11 * cos) + f9 + f5;
        }
        return vector2;
    }

    public Vector2 localToScreenCoordinates(Vector2 vector2) {
        Stage stage = this.f5625a;
        if (stage == null) {
            return vector2;
        }
        return stage.stageToScreenCoordinates(localToAscendantCoordinates(null, vector2));
    }

    public Vector2 parentToLocalCoordinates(Vector2 vector2) {
        float f = this.f5622C;
        float f2 = this.f5620A;
        float f3 = this.f5621B;
        float f4 = this.f5634u;
        float f5 = this.f5635v;
        if (f == 0.0f) {
            if (f2 == 1.0f && f3 == 1.0f) {
                vector2.f5527x -= f4;
                vector2.f5528y -= f5;
            } else {
                float f6 = this.f5638y;
                float f7 = this.f5639z;
                vector2.f5527x = (((vector2.f5527x - f4) - f6) / f2) + f6;
                vector2.f5528y = (((vector2.f5528y - f5) - f7) / f3) + f7;
            }
        } else {
            double d = f * 0.017453292f;
            float cos = (float) Math.cos(d);
            float sin = (float) Math.sin(d);
            float f8 = this.f5638y;
            float f9 = this.f5639z;
            float f10 = (vector2.f5527x - f4) - f8;
            float f11 = (vector2.f5528y - f5) - f9;
            vector2.f5527x = (((f10 * cos) + (f11 * sin)) / f2) + f8;
            vector2.f5528y = (((f10 * (-sin)) + (f11 * cos)) / f3) + f9;
        }
        return vector2;
    }

    public boolean removeCaptureListener(EventListener eventListener) {
        if (eventListener != null) {
            return this.f5628k.removeValue(eventListener, true);
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    public boolean removeListener(EventListener eventListener) {
        if (eventListener != null) {
            return this.f5627d.removeValue(eventListener, true);
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }

    public Vector2 screenToLocalCoordinates(Vector2 vector2) {
        Stage stage = this.f5625a;
        if (stage == null) {
            return vector2;
        }
        return stageToLocalCoordinates(stage.screenToStageCoordinates(vector2));
    }

    public void setBounds(float f, float f2, float f3, float f4) {
        if (this.f5634u != f || this.f5635v != f2) {
            this.f5634u = f;
            this.f5635v = f2;
            mo20676b();
        }
        if (this.f5636w != f3 || this.f5637x != f4) {
            this.f5636w = f3;
            this.f5637x = f4;
            sizeChanged();
        }
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f5623D.set(f, f2, f3, f4);
    }

    public void setDebug(boolean z) {
        this.f5633t = z;
        if (z) {
            Stage.f5669I = true;
        }
    }

    public void setHeight(float f) {
        if (this.f5637x != f) {
            this.f5637x = f;
            sizeChanged();
        }
    }

    public void setRotation(float f) {
        if (this.f5622C != f) {
            this.f5622C = f;
            m23867c();
        }
    }

    public void setScaleX(float f) {
        if (this.f5620A != f) {
            this.f5620A = f;
            mo23819d();
        }
    }

    public void setScaleY(float f) {
        if (this.f5621B != f) {
            this.f5621B = f;
            mo23819d();
        }
    }

    public void setSize(float f, float f2) {
        if (this.f5636w != f || this.f5637x != f2) {
            this.f5636w = f;
            this.f5637x = f2;
            sizeChanged();
        }
    }

    public void setWidth(float f) {
        if (this.f5636w != f) {
            this.f5636w = f;
            sizeChanged();
        }
    }

    public boolean setZIndex(int i) {
        SnapshotArray<Actor> snapshotArray;
        int i2;
        if (i >= 0) {
            Group group = this.f5626b;
            if (group == null || (i2 = (snapshotArray = group.f5649F).size) <= 1) {
                return false;
            }
            int min = Math.min(i, i2 - 1);
            if (snapshotArray.get(min) == this || !snapshotArray.removeValue(this, true)) {
                return false;
            }
            snapshotArray.insert(min, this);
            return true;
        }
        throw new IllegalArgumentException("ZIndex cannot be < 0.");
    }

    public Vector2 stageToLocalCoordinates(Vector2 vector2) {
        Group group = this.f5626b;
        if (group != null) {
            group.stageToLocalCoordinates(vector2);
        }
        parentToLocalCoordinates(vector2);
        return vector2;
    }

    public String toString() {
        String str = this.f5630q;
        if (str == null) {
            String name = getClass().getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf != -1) {
                return name.substring(lastIndexOf + 1);
            }
            return name;
        }
        return str;
    }

    public void addAction(Action action) {
        action.setActor(this);
        this.f5629p.add(action);
        Stage stage = this.f5625a;
        if (stage != null && stage.getActionsRequestRendering()) {
            Gdx.graphics.requestRendering();
        }
    }

    public void clear() {
        clearActions();
        clearListeners();
    }

    public boolean fire(Event event) {
        boolean isCancelled;
        if (event.getStage() == null) {
            event.setStage(getStage());
        }
        event.setTarget(this);
        Array array = (Array) Pools.obtain(Array.class);
        for (Group group = this.f5626b; group != null; group = group.f5626b) {
            array.add(group);
        }
        try {
            Object[] objArr = array.items;
            int i = array.size - 1;
            while (true) {
                if (i >= 0) {
                    ((Group) objArr[i]).notify(event, true);
                    if (event.isStopped()) {
                        isCancelled = event.isCancelled();
                        break;
                    }
                    i--;
                } else {
                    notify(event, true);
                    if (event.isStopped()) {
                        isCancelled = event.isCancelled();
                    } else {
                        notify(event, false);
                        if (!event.getBubbles()) {
                            isCancelled = event.isCancelled();
                        } else if (event.isStopped()) {
                            isCancelled = event.isCancelled();
                        } else {
                            int i2 = array.size;
                            int i3 = 0;
                            while (true) {
                                if (i3 < i2) {
                                    ((Group) objArr[i3]).notify(event, false);
                                    if (event.isStopped()) {
                                        isCancelled = event.isCancelled();
                                        break;
                                    }
                                    i3++;
                                } else {
                                    isCancelled = event.isCancelled();
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            return isCancelled;
        } finally {
            array.clear();
            Pools.free(array);
        }
    }

    public boolean hasKeyboardFocus() {
        Stage stage = getStage();
        if (stage != null && stage.getKeyboardFocus() == this) {
            return true;
        }
        return false;
    }

    public boolean hasScrollFocus() {
        Stage stage = getStage();
        if (stage != null && stage.getScrollFocus() == this) {
            return true;
        }
        return false;
    }

    public boolean isTouchFocusListener() {
        Stage stage = getStage();
        if (stage == null) {
            return false;
        }
        int i = stage.f5692z.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (stage.f5692z.get(i2).f5694b == this) {
                return true;
            }
        }
        return false;
    }

    public boolean isTouchFocusTarget() {
        Stage stage = getStage();
        if (stage == null) {
            return false;
        }
        int i = stage.f5692z.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (stage.f5692z.get(i2).f5695d == this) {
                return true;
            }
        }
        return false;
    }

    public Vector2 localToActorCoordinates(Actor actor, Vector2 vector2) {
        localToStageCoordinates(vector2);
        return actor.stageToLocalCoordinates(vector2);
    }

    public boolean notify(Event event, boolean z) {
        DelayedRemovalArray<EventListener> delayedRemovalArray;
        if (event.getTarget() != null) {
            if (z) {
                delayedRemovalArray = this.f5628k;
            } else {
                delayedRemovalArray = this.f5627d;
            }
            if (delayedRemovalArray.size == 0) {
                return event.isCancelled();
            }
            event.setListenerActor(this);
            event.setCapture(z);
            if (event.getStage() == null) {
                event.setStage(this.f5625a);
            }
            try {
                delayedRemovalArray.begin();
                int i = delayedRemovalArray.size;
                for (int i2 = 0; i2 < i; i2++) {
                    if (delayedRemovalArray.get(i2).handle(event)) {
                        event.handle();
                    }
                }
                delayedRemovalArray.end();
                return event.isCancelled();
            } catch (RuntimeException e) {
                String actor = toString();
                throw new RuntimeException("Actor: " + actor.substring(0, Math.min(actor.length(), 128)), e);
            }
        }
        throw new IllegalArgumentException("The event target cannot be null.");
    }

    public void setOrigin(int i) {
        if ((i & 8) != 0) {
            this.f5638y = 0.0f;
        } else if ((i & 16) != 0) {
            this.f5638y = this.f5636w;
        } else {
            this.f5638y = this.f5636w / 2.0f;
        }
        if ((i & 4) != 0) {
            this.f5639z = 0.0f;
        } else if ((i & 2) != 0) {
            this.f5639z = this.f5637x;
        } else {
            this.f5639z = this.f5637x / 2.0f;
        }
    }

    public void scaleBy(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        this.f5620A += f;
        this.f5621B += f2;
        mo23819d();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setX(float r2, int r3) {
        /*
            r1 = this;
            r0 = r3 & 16
            if (r0 == 0) goto L8
            float r3 = r1.f5636w
        L6:
            float r2 = r2 - r3
            goto L12
        L8:
            r3 = r3 & 8
            if (r3 != 0) goto L12
            float r3 = r1.f5636w
            r0 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r0
            goto L6
        L12:
            float r3 = r1.f5634u
            int r3 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r3 == 0) goto L1d
            r1.f5634u = r2
            r1.mo20676b()
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.Actor.setX(float, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setY(float r2, int r3) {
        /*
            r1 = this;
            r0 = r3 & 2
            if (r0 == 0) goto L8
            float r3 = r1.f5637x
        L6:
            float r2 = r2 - r3
            goto L12
        L8:
            r3 = r3 & 4
            if (r3 != 0) goto L12
            float r3 = r1.f5637x
            r0 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r0
            goto L6
        L12:
            float r3 = r1.f5635v
            int r3 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r3 == 0) goto L1d
            r1.f5635v = r2
            r1.mo20676b()
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.Actor.setY(float, int):void");
    }

    public void sizeBy(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        this.f5636w += f;
        this.f5637x += f2;
        sizeChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setPosition(float r3, float r4, int r5) {
        /*
            r2 = this;
            r0 = r5 & 16
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == 0) goto La
            float r0 = r2.f5636w
        L8:
            float r3 = r3 - r0
            goto L12
        La:
            r0 = r5 & 8
            if (r0 != 0) goto L12
            float r0 = r2.f5636w
            float r0 = r0 / r1
            goto L8
        L12:
            r0 = r5 & 2
            if (r0 == 0) goto L1a
            float r5 = r2.f5637x
        L18:
            float r4 = r4 - r5
            goto L22
        L1a:
            r5 = r5 & 4
            if (r5 != 0) goto L22
            float r5 = r2.f5637x
            float r5 = r5 / r1
            goto L18
        L22:
            float r5 = r2.f5634u
            int r5 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r5 != 0) goto L2e
            float r5 = r2.f5635v
            int r5 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r5 == 0) goto L35
        L2e:
            r2.f5634u = r3
            r2.f5635v = r4
            r2.mo20676b()
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.Actor.setPosition(float, float, int):void");
    }

    public void setScale(float f, float f2) {
        if (this.f5620A == f && this.f5621B == f2) {
            return;
        }
        this.f5620A = f;
        this.f5621B = f2;
        mo23819d();
    }
}
