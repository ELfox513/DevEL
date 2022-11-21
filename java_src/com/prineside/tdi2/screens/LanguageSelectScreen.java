package com.prineside.tdi2.screens;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.managers.LocaleManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
/* loaded from: classes2.dex */
public class LanguageSelectScreen extends Screen {

    /* renamed from: a */
    public final UiManager.UiLayer f10707a;

    /* renamed from: d */
    public static /* synthetic */ void m21303d(Boolean bool) {
        Game.f8589i.settingsManager.setMusicVolume(bool.booleanValue() ? 0.699999988079071d : 0.0d);
    }

    /* renamed from: e */
    public static /* synthetic */ void m21302e(Boolean bool) {
        Game.f8589i.settingsManager.setSoundVoulme(bool.booleanValue() ? 0.699999988079071d : 0.0d);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f10707a);
    }

    public LanguageSelectScreen() {
        int i;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 100, "LanguageSelectScreen main");
        this.f10707a = addLayer;
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.uiManager.screenTitle.setText("Language").setIcon(Game.f8589i.assetManager.getDrawable("icon-locale")).setVisible(true);
        Table table = addLayer.getTable();
        Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), Color.WHITE);
        int i2 = Game.f8589i.localeManager.getAvailableLocales().size;
        if (i2 > 10) {
            i = 3;
        } else if (i2 > 5) {
            i = 2;
        } else {
            i = 1;
        }
        Table table2 = new Table();
        table.add(table2).colspan(i).padBottom(32.0f).row();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(0.0f, 0.0f, 0.0f, 0.56f);
        table.add((Table) image).height(1.0f).fillX().colspan(i).row();
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setColor(1.0f, 1.0f, 1.0f, 0.14f);
        table.add((Table) image2).height(1.0f).fillX().colspan(i).padBottom(32.0f).row();
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-note"));
        Color color = MaterialColor.LIGHT_BLUE.P400;
        image3.setColor(color);
        table2.add((Table) image3).size(40.0f).padRight(12.0f);
        table2.add(new LabelToggleButton("Music", Game.f8589i.settingsManager.isMusicEnabled(), 30, 32.0f, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.o
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LanguageSelectScreen.m21303d((Boolean) obj);
            }
        })).height(32.0f);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-speaker"));
        image4.setColor(color);
        table2.add((Table) image4).size(40.0f).padRight(12.0f).padLeft(92.0f);
        table2.add(new LabelToggleButton("Sounds", Game.f8589i.settingsManager.isSoundEnabled(), 30, 32.0f, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.p
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LanguageSelectScreen.m21302e((Boolean) obj);
            }
        })).height(32.0f);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("icon-large-fonts"));
        image5.setColor(color);
        table2.add((Table) image5).size(40.0f).padRight(12.0f).padLeft(92.0f);
        table2.add(new LabelToggleButton("Large fonts", Game.f8589i.settingsManager.isLargeFontsEnabled(), 30, 32.0f, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.q
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LanguageSelectScreen.m21301f((Boolean) obj);
            }
        })).height(32.0f);
        Array.ArrayIterator<LocaleManager.Locale> it = Game.f8589i.localeManager.getAvailableLocales().iterator();
        int i3 = 0;
        while (it.hasNext()) {
            final LocaleManager.Locale next = it.next();
            final Label label = new Label(next.name, labelStyle);
            label.setAlignment(1);
            table.add((Table) label).size(460.0f, 120.0f);
            label.addListener(new InputListener() { // from class: com.prineside.tdi2.screens.LanguageSelectScreen.1
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void enter(InputEvent inputEvent, float f, float f2, int i4, Actor actor) {
                    label.setColor(MaterialColor.LIGHT_BLUE.P500);
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void exit(InputEvent inputEvent, float f, float f2, int i4, Actor actor) {
                    label.setColor(Color.WHITE);
                }
            });
            label.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.LanguageSelectScreen.2
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Game.f8589i.localeManager.setLocale(next.alias, true);
                    Game.f8589i.screenManager.goToMainMenu();
                }
            });
            i3++;
            if (i3 % i == 0) {
                table.row();
            }
        }
        if (Gdx.app.getType() != Application.ApplicationType.Desktop) {
            final Label label2 = new Label(Game.f8589i.assetManager.replaceRegionAliasesWithChars("简体中文<@icon-link-out>").toString(), labelStyle);
            label2.setAlignment(1);
            table.add((Table) label2).size(460.0f, 120.0f);
            label2.addListener(new InputListener() { // from class: com.prineside.tdi2.screens.LanguageSelectScreen.3
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void enter(InputEvent inputEvent, float f, float f2, int i4, Actor actor) {
                    label2.setColor(MaterialColor.LIGHT_BLUE.P500);
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void exit(InputEvent inputEvent, float f, float f2, int i4, Actor actor) {
                    label2.setColor(Color.WHITE);
                }
            });
            label2.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.LanguageSelectScreen.4
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Gdx.f38302net.openURI(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.CN_STORE_LINK));
                }
            });
            if ((i3 + 1) % i == 0) {
                table.row();
            }
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m21301f(Boolean bool) {
        Game.f8589i.settingsManager.setLargeFontsEnabled(bool.booleanValue());
        Game.f8589i.screenManager.goToLanguageSelectScreen();
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
    }
}
