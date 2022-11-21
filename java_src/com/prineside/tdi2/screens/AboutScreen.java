package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.LabelButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.utils.MaterialColor;
/* loaded from: classes2.dex */
public class AboutScreen extends Screen {

    /* renamed from: a */
    public final UiManager.UiLayer f10528a;

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f10528a);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void hide() {
        this.f10528a.getTable().setVisible(false);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        this.f10528a.getTable().setVisible(true);
    }

    public AboutScreen() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 100, "AboutScreen main");
        this.f10528a = addLayer;
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.AboutScreen.1
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        Table table = addLayer.getTable();
        Label.LabelStyle labelStyle = Game.f8589i.assetManager.getLabelStyle(36);
        Label.LabelStyle labelStyle2 = new Label.LabelStyle(Game.f8589i.assetManager.getLabelStyle(30));
        labelStyle2.fontColor = MaterialColor.AMBER.P500;
        table.add((Table) new Image(Game.f8589i.assetManager.getDrawable("infinitode-2-logo"))).size(128.0f).padBottom(20.0f);
        table.row();
        table.add((Table) new Label(Game.f8589i.localeManager.i18n.get("game_name"), labelStyle));
        table.row();
        table.add((Table) new Label(Game.f8589i.localeManager.i18n.get("about_version"), labelStyle2)).height(48.0f).padTop(30.0f);
        table.row();
        table.add((Table) new Label("R.1.8.7 (build 184)", labelStyle)).height(48.0f);
        table.row();
        Table table2 = new Table();
        table2.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("get_support"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AboutScreen.3
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.actionResolver.openSupportPage();
            }
        })).size(320.0f, 64.0f);
        table2.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("report_bug"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AboutScreen.4
            @Override // java.lang.Runnable
            public void run() {
                Gdx.f38302net.openURI("https://tracker.prineside.com/set_project.php?project_id=1");
            }
        })).size(320.0f, 64.0f).padLeft(16.0f);
        table2.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("i_have_idea"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AboutScreen.5
            @Override // java.lang.Runnable
            public void run() {
                Gdx.f38302net.openURI("https://tracker.prineside.com/set_project.php?project_id=2");
            }
        })).size(320.0f, 64.0f).padLeft(16.0f);
        table.add(table2).padTop(16.0f).row();
        Table table3 = new Table();
        table.add(table3).padTop(30.0f).row();
        Table table4 = new Table();
        table3.add(table4).width(500.0f);
        table4.add((Table) new Label(Game.f8589i.localeManager.i18n.get("about_developer"), labelStyle2)).height(48.0f).padTop(30.0f);
        table4.row();
        table4.add((Table) new Label("Vadym Sakhno (therainycat)", labelStyle)).height(48.0f);
        table4.row();
        Label label = new Label("web.prineside@gmail.com", Game.f8589i.assetManager.getLabelStyle(30));
        Color color = MaterialColor.LIGHT_BLUE.P500;
        label.setColor(color);
        Touchable touchable = Touchable.enabled;
        label.setTouchable(touchable);
        label.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AboutScreen.6
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.app.getClipboard().setContents("web.prineside@gmail.com");
                Game game = Game.f8589i;
                game.uiManager.notifications.add(game.localeManager.i18n.get("copied_to_clipboard"), Game.f8589i.assetManager.getDrawable("icon-check"), MaterialColor.GREEN.P800, StaticSoundType.NOTIFICATION);
            }
        });
        table4.add((Table) label).height(48.0f);
        Table table5 = new Table();
        table3.add(table5).width(500.0f).row();
        table5.add((Table) new Label(Game.f8589i.localeManager.i18n.get("about_3d_artist"), labelStyle2)).height(48.0f).padTop(30.0f);
        table5.row();
        table5.add((Table) new Label("Ihor Pronoza (SlyCheD)", labelStyle)).height(48.0f);
        table5.row();
        Label label2 = new Label("ihor.pronoza@gmail.com", Game.f8589i.assetManager.getLabelStyle(30));
        label2.setColor(color);
        label2.setTouchable(touchable);
        label2.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AboutScreen.7
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.app.getClipboard().setContents("ihor.pronoza@gmail.com");
                Game game = Game.f8589i;
                game.uiManager.notifications.add(game.localeManager.i18n.get("copied_to_clipboard"), Game.f8589i.assetManager.getDrawable("icon-check"), MaterialColor.GREEN.P800, StaticSoundType.NOTIFICATION);
            }
        });
        table5.add((Table) label2).height(48.0f);
        Table table6 = new Table();
        table3.add(table6).colspan(2).row();
        table6.add((Table) new Label(Game.f8589i.localeManager.i18n.get("about_community_managers"), labelStyle2)).height(48.0f).padTop(30.0f);
        table6.row();
        table6.add((Table) new Label("Steven McManus (Zeraco)", labelStyle)).height(48.0f);
        table6.row();
        table6.add((Table) new Label("Alexander Susla (MarshallUA)", labelStyle)).height(48.0f);
        table6.row();
        Label label3 = new Label("infinitode.prineside.com", Game.f8589i.assetManager.getLabelStyle(30));
        label3.setColor(color);
        label3.setTouchable(touchable);
        label3.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AboutScreen.8
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.f38302net.openURI("https://infinitode.prineside.com");
            }
        });
        table.add((Table) label3).height(48.0f).padTop(48.0f);
        table.row();
        LabelButton labelButton = new LabelButton(Game.f8589i.localeManager.i18n.get("privacy_policy"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AboutScreen.9
            @Override // java.lang.Runnable
            public void run() {
                Gdx.f38302net.openURI(Config.PRIVACY_POLICY_URL);
            }
        });
        labelButton.setAlignment(1);
        table.add((Table) labelButton).padTop(16.0f).padBottom(16.0f).row();
        Table table7 = new Table();
        table.add(table7).padTop(15.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-colored-facebook"));
        image.setTouchable(touchable);
        image.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AboutScreen.10
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.f38302net.openURI("https://www.facebook.com/infinitodegame");
            }
        });
        table7.add((Table) image).size(64.0f).padRight(32.0f);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-colored-reddit"));
        image2.setTouchable(touchable);
        image2.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AboutScreen.11
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.f38302net.openURI("https://www.reddit.com/r/infinitode/");
            }
        });
        table7.add((Table) image2).size(64.0f).padRight(32.0f);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-colored-discord"));
        image3.setTouchable(touchable);
        image3.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AboutScreen.12
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.f38302net.openURI("https://discord.gg/4kZ2TJ4");
            }
        });
        table7.add((Table) image3).size(64.0f);
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            Game.f8589i.screenManager.goToMainMenu();
        }
    }
}
