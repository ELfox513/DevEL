package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.p033ui.Widget;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.shapes.TrailMultiLine;
/* renamed from: com.prineside.tdi2.ui.actors.TrailMultilineActor */
/* loaded from: classes2.dex */
public class TrailMultilineActor extends Widget implements Disposable {

    /* renamed from: I */
    public long f12757I;

    /* renamed from: J */
    public boolean f12758J;

    /* renamed from: K */
    public boolean f12759K;
    public final TrailMultiLine trail;

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        ((TrailMultiLine.TrailMultiLineFactory) Game.f8589i.shapeManager.getFactory(ShapeType.TRAIL_MULTI_LINE)).free(this.trail);
    }

    public void stop() {
        this.f12759K = false;
    }

    public void setup(Color color, int i, float f, float f2) {
        this.trail.setup(color, i, f, f2);
        this.f12758J = true;
        this.f12759K = false;
    }

    public TrailMultilineActor() {
        TrailMultiLine trailMultiLine = (TrailMultiLine) Game.f8589i.shapeManager.getFactory(ShapeType.TRAIL_MULTI_LINE).obtain();
        this.trail = trailMultiLine;
        trailMultiLine.setTexture(Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin"));
        setSize(1.0f, 1.0f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        super.draw(batch, f);
        if (!this.f12758J) {
            return;
        }
        float realTickCount = ((float) (Game.getRealTickCount() - this.f12757I)) / 1000000.0f;
        if (realTickCount > 0.5f) {
            realTickCount = 0.5f;
        }
        this.f12757I = Game.getRealTickCount();
        if (!this.f12759K) {
            this.trail.setStartPoint(getX(), getY());
            this.f12759K = true;
            return;
        }
        this.trail.updateStartPos(realTickCount, getX(), getY());
        this.trail.update(realTickCount);
        this.trail.draw(batch);
    }
}
