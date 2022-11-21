package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.components.MapEditorHints */
/* loaded from: classes2.dex */
public class MapEditorHints implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f13198a;

    /* renamed from: b */
    public final UiManager.UiLayer f13199b;

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorHints$HintConfig */
    /* loaded from: classes2.dex */
    public class HintConfig {

        /* renamed from: a */
        public String f13201a;

        /* renamed from: b */
        public float f13202b;

        public HintConfig(float f, String str) {
            this.f13201a = str;
            this.f13202b = f;
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13198a);
        Game.f8589i.uiManager.removeLayer(this.f13199b);
    }

    public void hide() {
        this.f13198a.getTable().setVisible(false);
        this.f13199b.getTable().setVisible(false);
    }

    public void show() {
        this.f13198a.getTable().setVisible(true);
        this.f13199b.getTable().setVisible(true);
    }

    public MapEditorHints() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 101, "MapEditorHints main");
        this.f13198a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 101, "MapEditorHints hide click catcher");
        this.f13199b = addLayer2;
        addLayer2.getTable().setTouchable(Touchable.enabled);
        addLayer2.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.MapEditorHints.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Logger.log("MapEditorHints", "click");
                MapEditorHints.this.hide();
            }
        });
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).expand().fillY().bottom().left().width(1000.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
        image.setFillParent(true);
        image.setColor(Config.BACKGROUND_COLOR);
        group.addActor(image);
        Label label = new Label(Game.f8589i.localeManager.i18n.get("map_editor_hint_modes") + ":", Game.f8589i.assetManager.getLabelStyle(36));
        label.setPosition(40.0f, 548.0f);
        label.setColor(MaterialColor.AMBER.P500);
        group.addActor(label);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        HintConfig[] hintConfigArr = {new HintConfig(78.0f, Game.f8589i.localeManager.i18n.get("map_editor_hint_pan_zoom")), new HintConfig(206.0f, Game.f8589i.localeManager.i18n.get("map_editor_hint_drag_drop")), new HintConfig(334.0f, Game.f8589i.localeManager.i18n.get("map_editor_hint_insert")), new HintConfig(462.0f, Game.f8589i.localeManager.i18n.get("map_editor_hint_remove")), new HintConfig(740.0f + scaledViewportHeight, Game.f8589i.localeManager.i18n.get("map_editor_hint_show_hints")), new HintConfig(scaledViewportHeight + 868.0f, Game.f8589i.localeManager.i18n.get("map_editor_hint_play"))};
        for (int i = 0; i < 6; i++) {
            HintConfig hintConfig = hintConfigArr[i];
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-left"));
            image2.setSize(32.0f, 32.0f);
            image2.setPosition(160.0f, hintConfig.f13202b - 16.0f);
            group.addActor(image2);
            Label label2 = new Label(hintConfig.f13201a, Game.f8589i.assetManager.getLabelStyle(24));
            label2.setSize(100.0f, 32.0f);
            label2.setPosition(210.0f, hintConfig.f13202b - 16.0f);
            group.addActor(label2);
        }
        hide();
    }
}
