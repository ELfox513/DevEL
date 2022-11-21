package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g3d.Environment;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.environment.DirectionalLight;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.TrophyType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.TrophyManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ModelView;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.TextureRegionConfig;
/* renamed from: com.prineside.tdi2.ui.shared.TrophyViewOverlay */
/* loaded from: classes2.dex */
public class TrophyViewOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14907a;

    /* renamed from: b */
    public Group f14908b;

    /* renamed from: c */
    public Label f14909c;

    /* renamed from: d */
    public Table f14910d;

    /* renamed from: e */
    public ModelView f14911e;

    /* renamed from: f */
    public ModelView f14912f;

    /* renamed from: g */
    public Image f14913g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m19868b() {
        this.f14907a.getTable().setVisible(false);
    }

    public TrophyViewOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 161, "TrophyViewOverlay main");
        this.f14907a = addLayer;
        Group group = new Group();
        this.f14908b = group;
        group.setOrigin(458.0f, 203.0f);
        this.f14908b.setTouchable(Touchable.childrenOnly);
        addLayer.getTable().add((Table) this.f14908b).size(916.0f, 406.0f);
        QuadActor quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{0.0f, 17.0f, 0.0f, 93.0f, 525.0f, 94.0f, 498.0f, 0.0f});
        quadActor.setPosition(389.0f, 253.0f);
        this.f14908b.addActor(quadActor);
        QuadActor quadActor2 = new QuadActor(new Color(791621631), new float[]{0.0f, 17.0f, 0.0f, 102.0f, 510.0f, 107.0f, 489.0f, 13.0f});
        quadActor2.setPosition(389.0f, 253.0f);
        Touchable touchable = Touchable.enabled;
        quadActor2.setTouchable(touchable);
        this.f14908b.addActor(quadActor2);
        Label label = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), Color.WHITE));
        this.f14909c = label;
        label.setPosition(427.0f, 297.0f);
        this.f14909c.setSize(500.0f, 26.0f);
        this.f14908b.addActor(this.f14909c);
        this.f14908b.addActor(new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{17.0f, 0.0f, 3.0f, 383.0f, 413.0f, 381.0f, 391.0f, 14.0f}));
        QuadActor quadActor3 = new QuadActor(new Color(791621631), new float[]{3.0f, 14.0f, 0.0f, 406.0f, 391.0f, 402.0f, 387.0f, 18.0f});
        quadActor3.setTouchable(touchable);
        this.f14908b.addActor(quadActor3);
        Environment environment = new Environment();
        environment.set(new ColorAttribute(ColorAttribute.AmbientLight, 0.3f, 0.3f, 0.3f, 1.0f));
        environment.add(new DirectionalLight().set(0.75f, 0.75f, 0.75f, -0.5f, -1.0f, -0.2f));
        ModelView.Transformer transformer = ModelView.rotateModelAround;
        ModelView modelView = new ModelView(564, 564, transformer, environment, false);
        this.f14911e = modelView;
        modelView.setName("trophy-view-overlay-model-view");
        this.f14911e.setPosition(-87.0f, -72.0f);
        this.f14911e.setSize(564.0f, 564.0f);
        this.f14911e.setTouchable(Touchable.disabled);
        this.f14911e.camera.position.set(0.5f, 0.15f, 0.0f);
        this.f14911e.camera.lookAt(0.0f, -0.03f, 0.0f);
        this.f14911e.camera.update();
        this.f14908b.addActor(this.f14911e);
        Image image = new Image();
        this.f14913g = image;
        image.setPosition(67.0f, 82.0f);
        this.f14913g.setSize(256.0f, 256.0f);
        this.f14908b.addActor(this.f14913g);
        ModelView modelView2 = new ModelView(64, 64, transformer, new Environment(), false);
        this.f14912f = modelView2;
        modelView2.setName("trophy-view-overlay-model-view-locked");
        this.f14912f.setPosition(-87.0f, -72.0f);
        this.f14912f.setSize(564.0f, 564.0f);
        this.f14908b.addActor(this.f14912f);
        Table table = new Table();
        this.f14910d = table;
        table.setPosition(419.0f, 35.0f);
        this.f14910d.setSize(450.0f, 201.0f);
        this.f14908b.addActor(this.f14910d);
        addLayer.getTable().setVisible(false);
    }

    public void hide() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        Game.f8589i.uiManager.darkOverlay.removeCaller("TrophyViewOverlay");
        this.f14908b.clearActions();
        Group group = this.f14908b;
        DelayAction delay = Actions.delay(0.07f * f);
        float f2 = f * 0.3f;
        Interpolation.SwingIn swingIn = Interpolation.swingIn;
        group.addAction(Actions.sequence(Actions.parallel(Actions.sequence(delay, Actions.scaleBy(0.0f, -this.f14908b.getScaleY(), f2, swingIn)), Actions.scaleBy(-this.f14908b.getScaleX(), 0.0f, f2, swingIn)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.z1
            @Override // java.lang.Runnable
            public final void run() {
                TrophyViewOverlay.this.m19868b();
            }
        })));
    }

    public void show(TrophyType trophyType) {
        float f;
        this.f14910d.clearChildren();
        this.f14912f.setVisible(false);
        this.f14911e.setVisible(false);
        this.f14913g.setVisible(false);
        if (Game.f8589i.trophyManager.getConfig(trophyType).isReceived()) {
            if (Game.f8589i.settingsManager.isThreeDeeModelsEnabled()) {
                ModelView modelView = this.f14911e;
                Model sceneModel = Game.f8589i.assetManager.getSceneModel();
                modelView.setModelPart(sceneModel, "t-" + trophyType.name(), null, 0.3f);
                this.f14911e.setVisible(true);
            } else {
                this.f14913g.setDrawable(new TextureRegionDrawable(Game.f8589i.trophyManager.getConfig(trophyType).getIconTexture()));
                this.f14913g.setColor(Color.WHITE);
                this.f14913g.setVisible(true);
            }
            TrophyManager.TrophyConfig config = Game.f8589i.trophyManager.getConfig(trophyType);
            this.f14909c.setText(config.getTitle());
            this.f14909c.setColor(Color.WHITE);
            int i = 0;
            while (true) {
                Array<GameValueManager.GameValueEffect> array = config.gameValues;
                if (i >= array.size) {
                    break;
                }
                GameValueManager.GameValueEffect gameValueEffect = array.get(i);
                GameValueManager.GameValueStockConfig stockValueConfig = Game.f8589i.gameValueManager.getStockValueConfig(gameValueEffect.type);
                Group group = new Group();
                group.setTransform(false);
                this.f14910d.add((Table) group).size(64.0f).pad(8.0f);
                Array<TextureRegionConfig> icon = stockValueConfig.getIcon();
                for (int i2 = 0; i2 < icon.size; i2++) {
                    group.addActor(icon.items[i2].createImage(0.0f, 0.0f, 64.0f));
                }
                Label label = new Label(Game.f8589i.gameValueManager.getTitle(gameValueEffect.type), Game.f8589i.assetManager.getLabelStyle(24));
                label.setWrap(true);
                this.f14910d.add((Table) label).padLeft(10.0f).height(80.0f).expandX().fillX();
                this.f14910d.add((Table) new Label(Game.f8589i.gameValueManager.formatEffectValue(gameValueEffect.delta, stockValueConfig.units), Game.f8589i.assetManager.getLabelStyle(30))).height(80.0f).padLeft(16.0f).row();
                i++;
            }
            this.f14910d.add().expandY().fillY().width(1.0f);
        } else {
            if (Game.f8589i.settingsManager.isThreeDeeModelsEnabled()) {
                ModelView modelView2 = this.f14912f;
                Model sceneModel2 = Game.f8589i.assetManager.getSceneModel();
                modelView2.setModelPart(sceneModel2, "t-" + trophyType.name(), Game.f8589i.assetManager.getNormalMaterial(), 0.3f);
                this.f14912f.setVisible(true);
            } else {
                this.f14913g.setDrawable(new TextureRegionDrawable(Game.f8589i.trophyManager.getConfig(trophyType).getWhiteTexture()));
                this.f14913g.setColor(Color.BLACK);
                this.f14913g.setVisible(true);
            }
            this.f14909c.setText(Game.f8589i.localeManager.i18n.get("unknown_trophy"));
            this.f14909c.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        }
        this.f14907a.getTable().setVisible(true);
        Game.f8589i.uiManager.darkOverlay.addCaller("TrophyViewOverlay", this.f14907a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.a2
            @Override // java.lang.Runnable
            public final void run() {
                TrophyViewOverlay.this.hide();
            }
        });
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.f14908b.clearActions();
        Group group2 = this.f14908b;
        ScaleToAction scaleTo = Actions.scaleTo(0.0f, 0.0f);
        DelayAction delay = Actions.delay(0.1f * f);
        float f2 = f * 0.3f;
        Interpolation.SwingOut swingOut = Interpolation.swingOut;
        group2.addAction(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(delay, Actions.scaleBy(1.0f, 0.0f, f2, swingOut)), Actions.scaleBy(0.0f, 1.0f, f2, swingOut))));
    }
}
