package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.prineside.tdi2.Game;
/* renamed from: com.prineside.tdi2.ui.actors.AttentionRaysUnderlay */
/* loaded from: classes2.dex */
public class AttentionRaysUnderlay extends Group {

    /* renamed from: M */
    public Image f12482M;

    /* renamed from: N */
    public Image[] f12483N;

    /* renamed from: O */
    public Color f12484O;
    public float size;

    public void restart() {
        Image[] imageArr;
        Color cpy = this.f12484O.cpy();
        cpy.f3889a = 0.0f;
        float f = this.size;
        setSize(f, f);
        int i = 0;
        for (Image image : this.f12483N) {
            image.clearActions();
            float f2 = this.size;
            image.setSize(f2, f2);
            float f3 = this.size;
            image.setOrigin(f3 * 0.5f, f3 * 0.5f);
            image.setColor(cpy);
            if (image != this.f12482M) {
                float f4 = i;
                image.addAction(Actions.sequence(Actions.delay(1.0f * f4), Actions.forever(Actions.parallel(Actions.rotateBy((f4 * 3.0f) + 42.0f, 3.0f), Actions.sequence(Actions.color(this.f12484O, 1.5f), Actions.color(cpy, 1.5f))))));
                i++;
            }
            addActor(image);
        }
        this.f12482M.setColor(cpy);
        this.f12482M.addAction(Actions.parallel(Actions.color(this.f12484O, 1.5f), Actions.forever(Actions.rotateBy(45.0f, 3.0f))));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void setColor(Color color) {
        this.f12484O = color;
        restart();
    }

    public AttentionRaysUnderlay(float f, Color color) {
        this.size = f;
        this.f12484O = color;
        setTransform(false);
        setTouchable(Touchable.disabled);
        this.f12482M = new Image(Game.f8589i.assetManager.getTextureRegion("attention-rays-0"));
        this.f12483N = new Image[]{this.f12482M, new Image(Game.f8589i.assetManager.getTextureRegion("attention-rays-1")), new Image(Game.f8589i.assetManager.getTextureRegion("attention-rays-2")), new Image(Game.f8589i.assetManager.getTextureRegion("attention-rays-3"))};
        restart();
    }
}
