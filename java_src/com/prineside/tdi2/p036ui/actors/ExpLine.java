package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.actors.ExpLine */
/* loaded from: classes2.dex */
public class ExpLine extends Group {

    /* renamed from: M */
    public final Image f12518M;

    /* renamed from: N */
    public final Image f12519N;

    public void setCoeff(float f) {
        float clamp = MathUtils.clamp(f, 0.0f, 1.0f) * 356.0f;
        this.f12518M.setWidth(clamp);
        this.f12519N.setX(clamp);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void setColor(Color color) {
        this.f12518M.setColor(color);
        this.f12519N.setColor(color);
    }

    public ExpLine() {
        setTransform(false);
        setTouchable(Touchable.disabled);
        Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(356.0f, 24.0f);
        image.setColor(new Color(0.0f, 0.0f, 0.0f, 0.28f));
        addActor(image);
        Actor image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-exp-line-end"));
        image2.setSize(8.0f, 24.0f);
        image2.setColor(new Color(0.0f, 0.0f, 0.0f, 0.28f));
        image2.setPosition(356.0f, 0.0f);
        addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f12518M = image3;
        image3.setSize(356.0f, 24.0f);
        Color color = MaterialColor.AMBER.P700;
        image3.setColor(color);
        addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("ui-exp-line-end"));
        this.f12519N = image4;
        image4.setSize(8.0f, 24.0f);
        image4.setColor(color);
        image4.setPosition(356.0f, 0.0f);
        addActor(image4);
    }
}
