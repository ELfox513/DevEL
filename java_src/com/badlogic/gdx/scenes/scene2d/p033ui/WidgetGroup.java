package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.SnapshotArray;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.WidgetGroup */
/* loaded from: classes.dex */
public class WidgetGroup extends Group implements Layout {

    /* renamed from: N */
    public boolean f6255N;

    /* renamed from: M */
    public boolean f6254M = true;

    /* renamed from: O */
    public boolean f6256O = true;

    public WidgetGroup() {
    }

    public float getMaxHeight() {
        return 0.0f;
    }

    public float getMaxWidth() {
        return 0.0f;
    }

    public float getMinHeight() {
        return getPrefHeight();
    }

    public float getMinWidth() {
        return getPrefWidth();
    }

    public float getPrefHeight() {
        return 0.0f;
    }

    public float getPrefWidth() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    /* renamed from: i */
    public void mo23709i() {
        invalidateHierarchy();
    }

    public void invalidate() {
        this.f6254M = true;
    }

    public void layout() {
    }

    public boolean needsLayout() {
        return this.f6254M;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void setFillParent(boolean z) {
        this.f6255N = z;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void sizeChanged() {
        invalidate();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void setLayoutEnabled(boolean z) {
        this.f6256O = z;
        m23708p(this, z);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void validate() {
        if (!this.f6256O) {
            return;
        }
        Group parent = getParent();
        if (this.f6255N && parent != null) {
            Stage stage = getStage();
            if (stage != null && parent == stage.getRoot()) {
                setSize(stage.getWidth(), stage.getHeight());
            } else {
                setSize(parent.getWidth(), parent.getHeight());
            }
        }
        if (!this.f6254M) {
            return;
        }
        this.f6254M = false;
        layout();
        if (!this.f6254M || (parent instanceof WidgetGroup)) {
            return;
        }
        for (int i = 0; i < 5; i++) {
            this.f6254M = false;
            layout();
            if (!this.f6254M) {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        validate();
        super.draw(batch, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public Actor hit(float f, float f2, boolean z) {
        validate();
        return super.hit(f, f2, z);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidateHierarchy() {
        invalidate();
        Group parent = getParent();
        if (parent instanceof Layout) {
            ((Layout) parent).invalidateHierarchy();
        }
    }

    /* renamed from: p */
    public final void m23708p(Group group, boolean z) {
        SnapshotArray<Actor> children = group.getChildren();
        int i = children.size;
        for (int i2 = 0; i2 < i; i2++) {
            Actor actor = children.get(i2);
            if (actor instanceof Layout) {
                ((Layout) actor).setLayoutEnabled(z);
            } else if (actor instanceof Group) {
                m23708p((Group) actor, z);
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void pack() {
        setSize(getPrefWidth(), getPrefHeight());
        validate();
        setSize(getPrefWidth(), getPrefHeight());
        validate();
    }

    public WidgetGroup(Actor... actorArr) {
        for (Actor actor : actorArr) {
            addActor(actor);
        }
    }
}
