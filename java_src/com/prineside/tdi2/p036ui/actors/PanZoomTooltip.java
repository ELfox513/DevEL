package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.AlphaAction;
import com.badlogic.gdx.scenes.scene2d.actions.RunnableAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.actors.PanZoomTooltip */
/* loaded from: classes2.dex */
public class PanZoomTooltip implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f12644a;

    /* renamed from: b */
    public final FingerActor f12645b;

    /* renamed from: d */
    public final FingerActor f12646d;

    /* renamed from: k */
    public final FingerActor f12647k;

    /* renamed from: p */
    public Label f12648p;

    /* renamed from: q */
    public Label f12649q;

    /* renamed from: r */
    public Group f12650r;

    /* renamed from: com.prineside.tdi2.ui.actors.PanZoomTooltip$FingerActor */
    /* loaded from: classes2.dex */
    public class FingerActor extends Group implements Disposable {

        /* renamed from: M */
        public TrailMultilineActor f12658M;

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            this.f12658M.dispose();
        }

        public FingerActor() {
            setTransform(false);
            setSize(1.0f, 1.0f);
            TrailMultilineActor trailMultilineActor = new TrailMultilineActor();
            this.f12658M = trailMultilineActor;
            Color color = MaterialColor.LIGHT_BLUE.P500;
            trailMultilineActor.setup(color, 8, 0.1f, 64.0f);
            addActor(this.f12658M);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("circle"));
            image.setPosition(-16.0f, -16.0f);
            image.setSize(32.0f, 32.0f);
            image.setColor(color);
            addActor(image);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f12644a);
        this.f12645b.dispose();
        this.f12646d.dispose();
        this.f12647k.dispose();
    }

    public void hide() {
        this.f12645b.clearActions();
        this.f12646d.clearActions();
        this.f12647k.clearActions();
        this.f12644a.getTable().clearActions();
        this.f12644a.getTable().addAction(Actions.sequence(Actions.alpha(0.0f, 0.3f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.PanZoomTooltip.7
            @Override // java.lang.Runnable
            public void run() {
                PanZoomTooltip.this.f12644a.getTable().setVisible(false);
            }
        })));
    }

    public void show() {
        this.f12648p.setText(Game.f8589i.localeManager.i18n.get("screen_pan"));
        this.f12649q.setText(Game.f8589i.localeManager.i18n.get("screen_zoom"));
        this.f12645b.clearActions();
        FingerActor fingerActor = this.f12645b;
        RunnableAction run = Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.PanZoomTooltip.2
            @Override // java.lang.Runnable
            public void run() {
                PanZoomTooltip.this.f12645b.f12658M.stop();
                PanZoomTooltip.this.f12645b.setPosition(50.0f, 100.0f);
            }
        });
        AlphaAction alpha = Actions.alpha(1.0f, 0.1f);
        Interpolation.Pow pow = Interpolation.pow2;
        fingerActor.addAction(Actions.forever(Actions.sequence(run, alpha, Actions.moveTo(350.0f, 350.0f, 1.25f, pow), Actions.alpha(0.0f, 0.5f), Actions.delay(0.3f))));
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            this.f12646d.setVisible(false);
            this.f12647k.setVisible(false);
            this.f12650r.setVisible(true);
        } else {
            this.f12646d.clearActions();
            this.f12646d.setPosition(630.0f, 250.0f);
            this.f12646d.addAction(Actions.forever(Actions.sequence(Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.PanZoomTooltip.3
                @Override // java.lang.Runnable
                public void run() {
                }
            }), Actions.moveTo(750.0f, 350.0f, 1.25f, pow), Actions.alpha(0.0f, 0.5f), Actions.delay(0.3f), Actions.alpha(1.0f, 0.1f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.PanZoomTooltip.4
                @Override // java.lang.Runnable
                public void run() {
                }
            }), Actions.moveTo(630.0f, 250.0f, 1.25f, pow), Actions.alpha(0.0f, 0.5f), Actions.delay(0.3f), Actions.alpha(1.0f, 0.1f))));
            this.f12647k.clearActions();
            this.f12647k.setPosition(570.0f, 200.0f);
            this.f12647k.addAction(Actions.forever(Actions.sequence(Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.PanZoomTooltip.5
                @Override // java.lang.Runnable
                public void run() {
                }
            }), Actions.moveTo(450.0f, 100.0f, 1.25f, pow), Actions.alpha(0.0f, 0.5f), Actions.delay(0.3f), Actions.alpha(1.0f, 0.1f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.actors.PanZoomTooltip.6
                @Override // java.lang.Runnable
                public void run() {
                }
            }), Actions.moveTo(570.0f, 200.0f, 1.25f, pow), Actions.alpha(0.0f, 0.5f), Actions.delay(0.3f), Actions.alpha(1.0f, 0.1f))));
        }
        this.f12644a.getTable().setVisible(true);
        this.f12644a.getTable().clearActions();
        this.f12644a.getTable().addAction(Actions.alpha(1.0f, 0.3f));
    }

    public PanZoomTooltip() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 150, "PanZoomTooltip");
        this.f12644a = addLayer;
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).size(800.0f, 400.0f);
        addLayer.getTable().setBackground(Game.f8589i.assetManager.getOverlayBackground());
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new InputVoid());
        addLayer.getTable().addListener(new InputListener() { // from class: com.prineside.tdi2.ui.actors.PanZoomTooltip.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                PanZoomTooltip.this.hide();
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                return true;
            }
        });
        FingerActor fingerActor = new FingerActor();
        this.f12645b = fingerActor;
        group.addActor(fingerActor);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f12648p = label;
        label.setPosition(0.0f, 0.0f);
        this.f12648p.setSize(400.0f, 50.0f);
        this.f12648p.setAlignment(1);
        group.addActor(this.f12648p);
        FingerActor fingerActor2 = new FingerActor();
        this.f12646d = fingerActor2;
        group.addActor(fingerActor2);
        FingerActor fingerActor3 = new FingerActor();
        this.f12647k = fingerActor3;
        group.addActor(fingerActor3);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f12649q = label2;
        label2.setPosition(400.0f, 0.0f);
        this.f12649q.setSize(400.0f, 50.0f);
        this.f12649q.setAlignment(1);
        group.addActor(this.f12649q);
        Group group2 = new Group();
        this.f12650r = group2;
        group2.setTransform(false);
        this.f12650r.setVisible(false);
        this.f12650r.setSize(400.0f, 300.0f);
        this.f12650r.setPosition(400.0f, 100.0f);
        group.addActor(this.f12650r);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-mouse-wheel"));
        image.setSize(96.0f, 96.0f);
        image.setPosition(152.0f, 82.0f);
        image.setColor(MaterialColor.LIGHT_BLUE.P300);
        this.f12650r.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-top-hollow"));
        image2.setSize(64.0f, 64.0f);
        image2.setPosition(168.0f, 178.0f);
        Interpolation.Pow pow = Interpolation.pow2;
        image2.addAction(Actions.forever(Actions.sequence(Actions.moveTo(168.0f, 226.0f, 1.25f, pow), Actions.fadeOut(0.3f), Actions.moveTo(168.0f, 178.0f), Actions.fadeIn(0.3f))));
        Color color2 = MaterialColor.LIGHT_BLUE.P500;
        image2.setColor(color2);
        this.f12650r.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom-hollow"));
        image3.setSize(64.0f, 64.0f);
        image3.setPosition(168.0f, 18.0f);
        image3.setColor(color2);
        image3.addAction(Actions.forever(Actions.sequence(Actions.moveTo(168.0f, -30.0f, 1.25f, pow), Actions.fadeOut(0.3f), Actions.moveTo(168.0f, 18.0f), Actions.fadeIn(0.3f))));
        this.f12650r.addActor(image3);
        addLayer.getTable().setVisible(false);
        hide();
    }
}
