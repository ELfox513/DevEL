package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Tooltip */
/* loaded from: classes.dex */
public class Tooltip<T extends Actor> extends InputListener {

    /* renamed from: h */
    public static Vector2 f6171h = new Vector2();

    /* renamed from: b */
    public final TooltipManager f6172b;

    /* renamed from: c */
    public final Container<T> f6173c;

    /* renamed from: d */
    public boolean f6174d;

    /* renamed from: e */
    public boolean f6175e;

    /* renamed from: f */
    public boolean f6176f;

    /* renamed from: g */
    public Actor f6177g;

    public Tooltip(@Null T t) {
        this(t, TooltipManager.getInstance());
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void enter(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
        if (i != -1) {
            return;
        }
        if (this.f6176f && Gdx.input.isTouched()) {
            return;
        }
        Actor listenerActor = inputEvent.getListenerActor();
        if (actor != null && actor.isDescendantOf(listenerActor)) {
            return;
        }
        m23737a(listenerActor, f, f2);
        this.f6172b.enter(this);
    }

    @Null
    public T getActor() {
        return this.f6173c.getActor();
    }

    public Container<T> getContainer() {
        return this.f6173c;
    }

    public TooltipManager getManager() {
        return this.f6172b;
    }

    public void hide() {
        this.f6172b.hide(this);
    }

    public void setActor(@Null T t) {
        this.f6173c.setActor(t);
    }

    public void setAlways(boolean z) {
        this.f6175e = z;
    }

    public void setInstant(boolean z) {
        this.f6174d = z;
    }

    public void setTouchIndependent(boolean z) {
        this.f6176f = z;
    }

    public Tooltip(@Null T t, TooltipManager tooltipManager) {
        this.f6172b = tooltipManager;
        Container<T> container = new Container(t) { // from class: com.badlogic.gdx.scenes.scene2d.ui.Tooltip.1
            @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
            public void act(float f) {
                super.act(f);
                Actor actor = Tooltip.this.f6177g;
                if (actor != null && actor.getStage() == null) {
                    remove();
                }
            }
        };
        this.f6173c = container;
        container.setTouchable(Touchable.disabled);
    }

    /* renamed from: a */
    public final void m23737a(Actor actor, float f, float f2) {
        this.f6177g = actor;
        Stage stage = actor.getStage();
        if (stage == null) {
            return;
        }
        this.f6173c.setSize(this.f6172b.maxWidth, 2.14748365E9f);
        this.f6173c.validate();
        Container<T> container = this.f6173c;
        container.width(container.getActor().getWidth());
        this.f6173c.pack();
        TooltipManager tooltipManager = this.f6172b;
        float f3 = tooltipManager.offsetX;
        float f4 = tooltipManager.offsetY;
        float f5 = tooltipManager.edgeDistance;
        float f6 = f + f3;
        Vector2 localToStageCoordinates = actor.localToStageCoordinates(f6171h.set(f6, (f2 - f4) - this.f6173c.getHeight()));
        if (localToStageCoordinates.f5528y < f5) {
            localToStageCoordinates = actor.localToStageCoordinates(f6171h.set(f6, f2 + f4));
        }
        if (localToStageCoordinates.f5527x < f5) {
            localToStageCoordinates.f5527x = f5;
        }
        if (localToStageCoordinates.f5527x + this.f6173c.getWidth() > stage.getWidth() - f5) {
            localToStageCoordinates.f5527x = (stage.getWidth() - f5) - this.f6173c.getWidth();
        }
        if (localToStageCoordinates.f5528y + this.f6173c.getHeight() > stage.getHeight() - f5) {
            localToStageCoordinates.f5528y = (stage.getHeight() - f5) - this.f6173c.getHeight();
        }
        this.f6173c.setPosition(localToStageCoordinates.f5527x, localToStageCoordinates.f5528y);
        Vector2 localToStageCoordinates2 = actor.localToStageCoordinates(f6171h.set(actor.getWidth() / 2.0f, actor.getHeight() / 2.0f));
        localToStageCoordinates2.sub(this.f6173c.getX(), this.f6173c.getY());
        this.f6173c.setOrigin(localToStageCoordinates2.f5527x, localToStageCoordinates2.f5528y);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void exit(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
        if (actor != null && actor.isDescendantOf(inputEvent.getListenerActor())) {
            return;
        }
        hide();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
        if (this.f6173c.hasParent()) {
            return false;
        }
        m23737a(inputEvent.getListenerActor(), f, f2);
        return true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
        if (this.f6174d) {
            this.f6173c.toFront();
            return false;
        }
        this.f6172b.touchDown(this);
        return false;
    }
}
