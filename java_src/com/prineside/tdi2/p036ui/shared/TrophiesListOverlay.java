package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TrophyType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.QuadActor;
/* renamed from: com.prineside.tdi2.ui.shared.TrophiesListOverlay */
/* loaded from: classes2.dex */
public class TrophiesListOverlay {

    /* renamed from: g */
    public static final Color f14898g = new Color(218959247);

    /* renamed from: a */
    public final UiManager.UiLayer f14899a;

    /* renamed from: b */
    public Table f14900b;

    /* renamed from: c */
    public ScrollPane f14901c;

    /* renamed from: d */
    public Label f14902d;

    /* renamed from: e */
    public Label f14903e;

    /* renamed from: f */
    public Label f14904f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m19870b() {
        this.f14899a.getTable().setVisible(false);
    }

    public TrophiesListOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 153, "TrophiesList main");
        this.f14899a = addLayer;
        Table table = new Table();
        Touchable touchable = Touchable.childrenOnly;
        table.setTouchable(touchable);
        ScrollPane scrollPane = new ScrollPane(table);
        this.f14901c = scrollPane;
        scrollPane.setTransform(true);
        this.f14901c.setOrigin(559.0f, Game.f8589i.settingsManager.getScaledViewportHeight() / 2.0f);
        this.f14901c.setTouchable(touchable);
        addLayer.getTable().add((Table) this.f14901c).width(1118.0f).expandY().fillY();
        Group group = new Group();
        group.setTransform(false);
        QuadActor quadActor = new QuadActor(new Color(791621631), new float[]{0.0f, 0.0f, 0.0f, 110.0f, 1060.0f, 95.0f, 1060.0f, 0.0f});
        quadActor.setSize(1118.0f, 110.0f);
        group.addActor(quadActor);
        table.add((Table) group).height(110.0f).padTop(160.0f).width(1118.0f).row();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f14902d = label;
        label.setSize(1000.0f, 26.0f);
        this.f14902d.setPosition(40.0f, 26.0f);
        this.f14902d.setAlignment(12);
        group.addActor(this.f14902d);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f14903e = label2;
        label2.setPosition(40.0f, 26.0f);
        this.f14903e.setSize(1038.0f, 26.0f);
        this.f14903e.setAlignment(20);
        this.f14903e.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group.addActor(this.f14903e);
        Table table2 = new Table();
        this.f14900b = table2;
        table2.setTouchable(Touchable.enabled);
        this.f14900b.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(791621631)));
        table.add(this.f14900b).expandX().fillX().row();
        Group group2 = new Group();
        group2.setTransform(false);
        QuadActor quadActor2 = new QuadActor(new Color(791621631), new float[]{0.0f, 0.0f, 0.0f, 30.0f, 1060.0f, 30.0f, 1060.0f, 15.0f});
        quadActor2.setSize(1118.0f, 30.0f);
        group2.addActor(quadActor2);
        Label label3 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f14904f = label3;
        label3.addAction(Actions.forever(Actions.sequence(Actions.color(color, 0.4f), Actions.color(new Color(1.0f, 1.0f, 1.0f, 0.56f), 0.8f), Actions.delay(0.5f))));
        this.f14904f.setTouchable(Touchable.disabled);
        this.f14904f.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14904f.setSize(1118.0f, 20.0f);
        this.f14904f.setPosition(0.0f, -60.0f);
        this.f14904f.setAlignment(1);
        group2.addActor(this.f14904f);
        table.add((Table) group2).height(30.0f).padBottom(160.0f).width(1118.0f).row();
        addLayer.getTable().setVisible(false);
    }

    public void hide() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        Game.f8589i.uiManager.darkOverlay.removeCaller("TrophiesListOverlay");
        this.f14901c.clearActions();
        ScrollPane scrollPane = this.f14901c;
        DelayAction delay = Actions.delay(0.07f * f);
        float f2 = f * 0.3f;
        Interpolation.SwingIn swingIn = Interpolation.swingIn;
        scrollPane.addAction(Actions.sequence(Actions.parallel(Actions.sequence(delay, Actions.scaleBy(0.0f, -this.f14901c.getScaleY(), f2, swingIn)), Actions.scaleBy(-this.f14901c.getScaleX(), 0.0f, f2, swingIn)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.y1
            @Override // java.lang.Runnable
            public final void run() {
                TrophiesListOverlay.this.m19870b();
            }
        })));
    }

    public void show() {
        TrophyType[] trophyTypeArr;
        float f;
        Image image;
        this.f14900b.clear();
        this.f14902d.setText(Game.f8589i.localeManager.i18n.get("trophies").toUpperCase());
        this.f14903e.setText(Game.f8589i.localeManager.i18n.get("tap_icons_for_more_info"));
        this.f14904f.setText(Game.f8589i.localeManager.i18n.get("tap_outside_list_to_hide"));
        int i = 0;
        int i2 = 0;
        for (final TrophyType trophyType : TrophyType.values) {
            ItemCell itemCell = new ItemCell();
            itemCell.setColRow(i, i2);
            if (Game.f8589i.trophyManager.getConfig(trophyType).isReceived()) {
                image = new Image(Game.f8589i.trophyManager.getConfig(trophyType).getIconTexture());
            } else {
                Image image2 = new Image(Game.f8589i.trophyManager.getConfig(trophyType).getWhiteTexture());
                image2.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                image = image2;
            }
            itemCell.setIconAndCount(image, 1.25f, 0);
            itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.TrophiesListOverlay.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f2, float f3) {
                    Game.f8589i.uiManager.trophyViewOverlay.show(trophyType);
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            });
            Cell size = this.f14900b.add((Table) itemCell).size(128.0f, 140.0f);
            i++;
            if (i == 8) {
                i2++;
                size.row();
                i = 0;
            }
        }
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        Game.f8589i.uiManager.darkOverlay.addCaller("TrophiesListOverlay", this.f14899a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.x1
            @Override // java.lang.Runnable
            public final void run() {
                TrophiesListOverlay.this.hide();
            }
        });
        this.f14899a.getTable().setVisible(true);
        this.f14901c.clearActions();
        ScrollPane scrollPane = this.f14901c;
        ScaleToAction scaleTo = Actions.scaleTo(0.0f, 0.0f);
        DelayAction delay = Actions.delay(0.1f * f);
        float f2 = f * 0.3f;
        Interpolation.SwingOut swingOut = Interpolation.swingOut;
        scrollPane.addAction(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(delay, Actions.scaleBy(1.0f, 0.0f, f2, swingOut)), Actions.scaleBy(0.0f, 1.0f, f2, swingOut))));
    }
}
