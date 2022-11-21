package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.UiManager;
/* renamed from: com.prineside.tdi2.ui.actors.ScreenBorderGradient */
/* loaded from: classes2.dex */
public class ScreenBorderGradient implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f12713a;

    /* renamed from: b */
    public final UiManager.UiLayer f12714b;

    /* renamed from: d */
    public NinePatch f12715d;

    /* renamed from: k */
    public Image f12716k;

    /* renamed from: p */
    public Image f12717p;

    /* renamed from: q */
    public Color f12718q;

    /* renamed from: r */
    public Color f12719r;

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f12713a);
        Game.f8589i.uiManager.removeLayer(this.f12714b);
    }

    public void flash(Color color, float f) {
        this.f12716k.clearActions();
        this.f12716k.addAction(Actions.sequence(Actions.color(color, 0.1f * f), Actions.color(this.f12718q, f * 0.9f)));
    }

    public void fullscreenFlash(Color color, float f, Interpolation interpolation) {
        this.f12717p.clearActions();
        this.f12717p.addAction(Actions.sequence(Actions.color(color, 0.05f * f), Actions.color(this.f12719r, f * 0.95f, interpolation)));
    }

    public ScreenBorderGradient() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 100, "ScreenBorderGradient", true);
        this.f12713a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "ScreenBorderGradient - full screen", true);
        this.f12714b = addLayer2;
        this.f12719r = new Color(0.0f, 0.0f, 0.0f, 0.0f);
        AssetManager assetManager = Game.f8589i.assetManager;
        this.f12718q = assetManager.getColor("screen_border_gradient_normal");
        this.f12715d = new NinePatch(assetManager.getTextureRegion("ui-screen-border-0"), assetManager.getTextureRegion("ui-screen-border-1"), assetManager.getTextureRegion("ui-screen-border-2"), assetManager.getTextureRegion("ui-screen-border-3"), null, assetManager.getTextureRegion("ui-screen-border-5"), assetManager.getTextureRegion("ui-screen-border-6"), assetManager.getTextureRegion("ui-screen-border-7"), assetManager.getTextureRegion("ui-screen-border-8"));
        Image image = new Image(new BaseDrawable() { // from class: com.prineside.tdi2.ui.actors.ScreenBorderGradient.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable, com.badlogic.gdx.scenes.scene2d.utils.Drawable
            public void draw(Batch batch, float f, float f2, float f3, float f4) {
                ScreenBorderGradient.this.f12715d.setColor(ScreenBorderGradient.this.f12716k.getColor());
                ScreenBorderGradient.this.f12715d.draw(batch, f, f2, 0.0f, 0.0f, f3, f4, 1.0f, 1.0f, 0.0f);
            }
        });
        this.f12716k = image;
        image.setColor(this.f12718q);
        addLayer.getTable().add((Table) this.f12716k).expand().fill();
        Table table = addLayer.getTable();
        Touchable touchable = Touchable.disabled;
        table.setTouchable(touchable);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank")) { // from class: com.prineside.tdi2.ui.actors.ScreenBorderGradient.2
            @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Image, com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
            public void draw(Batch batch, float f) {
                if (ScreenBorderGradient.this.f12717p.getColor().f3889a > 0.0f) {
                    batch.flush();
                    batch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
                    super.draw(batch, f);
                    batch.flush();
                    batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                }
            }
        };
        this.f12717p = image2;
        image2.setColor(0.0f, 0.0f, 0.0f, 0.0f);
        addLayer2.getTable().add((Table) this.f12717p).expand().fill();
        addLayer2.getTable().setTouchable(touchable);
    }
}
