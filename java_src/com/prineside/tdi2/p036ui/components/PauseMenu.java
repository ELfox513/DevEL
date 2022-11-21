package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.AttentionRaysUnderlay;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.HorizontalSlider;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.RightSideMenuButton;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.LootSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.PauseMenu */
/* loaded from: classes2.dex */
public class PauseMenu implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f13458a;

    /* renamed from: b */
    public final UiManager.UiLayer f13459b;

    /* renamed from: d */
    public final UiManager.UiLayer f13460d;

    /* renamed from: k */
    public Group f13461k;

    /* renamed from: p */
    public Group f13462p;

    /* renamed from: q */
    public Group f13463q;

    /* renamed from: r */
    public Group f13464r;

    /* renamed from: s */
    public Table f13465s;

    /* renamed from: t */
    public Table f13466t;

    /* renamed from: u */
    public Label f13467u;

    /* renamed from: v */
    public Label f13468v;

    /* renamed from: w */
    public Label f13469w;

    /* renamed from: x */
    public GameSystemProvider f13470x;

    /* renamed from: y */
    public _LootSystemListener f13471y;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.PauseMenu$_LootSystemListener */
    /* loaded from: classes2.dex */
    public class _LootSystemListener extends LootSystem.LootSystemListener.LootSystemListenerAdapter {
        public _LootSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener.LootSystemListenerAdapter, com.prineside.tdi2.systems.LootSystem.LootSystemListener
        public void rewardingAdRegistered() {
            if (PauseMenu.this.f13470x.gameState.isFastForwarding() || !PauseMenu.this.f13459b.getTable().isVisible()) {
                return;
            }
            PauseMenu.this.setVisible(true);
        }
    }

    public PauseMenu(final GameSystemProvider gameSystemProvider) {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, HttpStatus.SC_OK, "PauseMenu overlay", true);
        this.f13458a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, HttpStatus.SC_CREATED, "PauseMenu main");
        this.f13459b = addLayer2;
        UiManager.UiLayer addLayer3 = Game.f8589i.uiManager.addLayer(mainUiLayer, HttpStatus.SC_ACCEPTED, "PauseMenu ad loot bonus");
        this.f13460d = addLayer3;
        this.f13471y = new _LootSystemListener();
        this.f13470x = gameSystemProvider;
        addLayer3.getTable().setVisible(false);
        Group group = new Group();
        this.f13464r = group;
        group.setTransform(false);
        addLayer3.getTable().add().width(1.0f).expandY().fillY().row();
        addLayer3.getTable().add((Table) this.f13464r).size(540.0f, 105.0f).bottom().padBottom(50.0f);
        Image image = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        image.setColor(new Color(218959295));
        addLayer.getTable().add((Table) image).expand().fill();
        Table table = addLayer2.getTable();
        table.setName("pause_menu");
        Table table2 = new Table();
        table.add(table2).expand().fill();
        this.f13465s = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f13465s, Game.f8589i.assetManager.getScrollPaneStyle(0.0f));
        scrollPane.setOverscroll(false, false);
        scrollPane.setSmoothScrolling(false);
        scrollPane.setFadeScrollBars(false);
        table2.add((Table) scrollPane).expand().fill().top().left().padTop(40.0f).row();
        Group group2 = new Group();
        group2.setTransform(false);
        group2.setTouchable(Touchable.disabled);
        table2.add((Table) group2).size(1.0f, 256.0f).bottom().left().row();
        Group group3 = new Group();
        this.f13461k = group3;
        group3.setTransform(false);
        this.f13461k.setPosition(100.0f, 173.0f);
        group2.addActor(this.f13461k);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-arrow-pointer-bottom-left"));
        image2.setSize(64.0f, 64.0f);
        this.f13461k.addActor(image2);
        String str = Game.f8589i.localeManager.i18n.get("pause_menu_hint_hold_for_auto_wave");
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        Label label = new Label(str, new Label.LabelStyle(font, color));
        label.setPosition(74.0f, 48.0f);
        this.f13461k.addActor(label);
        Group group4 = new Group();
        this.f13462p = group4;
        group4.setTransform(false);
        this.f13462p.setPosition(268.0f, 136.0f);
        group2.addActor(this.f13462p);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-arrow-pointer-bottom-left"));
        image3.setSize(64.0f, 64.0f);
        this.f13462p.addActor(image3);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("pause_menu_hint_hold_for_pause"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label2.setPosition(74.0f, 48.0f);
        this.f13462p.addActor(label2);
        Group group5 = new Group();
        this.f13463q = group5;
        group5.setTransform(false);
        this.f13463q.setPosition(290.0f, 380.0f);
        group2.addActor(this.f13463q);
        Table table3 = new Table();
        table.add(table3).right().expandY().fillY().padBottom(40.0f);
        Table table4 = new Table();
        table3.add(table4).top().right().row();
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f13467u = label3;
        table4.add((Table) label3).padRight(40.0f).padTop(40.0f).top().right().row();
        Label label4 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13468v = label4;
        table4.add((Table) label4).padRight(40.0f).padTop(8.0f).top().right().row();
        Label label5 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13469w = label5;
        table4.add((Table) label5).padRight(40.0f).padTop(8.0f).top().right().row();
        table4.add().width(1.0f).height(32.0f).row();
        if (gameSystemProvider.gameState.rarityBoostEnabled) {
            Table table5 = new Table();
            table4.add(table5).padTop(8.0f).padRight(40.0f).expandX().fillX().row();
            table5.add().height(1.0f).expandX().fillX();
            Label label6 = new Label(Item.C1543D.RARITY_BOOST.getTitle(), Game.f8589i.assetManager.getLabelStyle(21));
            label6.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            table5.add((Table) label6);
            table5.add((Table) Item.C1543D.RARITY_BOOST.generateIcon(32.0f, false)).size(32.0f).padLeft(12.0f);
        }
        if (gameSystemProvider.gameState.lootBoostEnabled) {
            Table table6 = new Table();
            table4.add(table6).padTop(8.0f).padRight(40.0f).expandX().fillX().row();
            table6.add().height(1.0f).expandX().fillX();
            Label label7 = new Label(Item.C1543D.LOOT_BOOST.getTitle(), Game.f8589i.assetManager.getLabelStyle(21));
            label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            table6.add((Table) label7);
            table6.add((Table) Item.C1543D.LOOT_BOOST.generateIcon(32.0f, false)).size(32.0f).padLeft(12.0f);
        }
        table3.add().expandY().fillY().width(100.0f).minHeight(30.0f).row();
        Table table7 = new Table();
        this.f13466t = table7;
        table3.add(table7).padRight(40.0f).right().row();
        String str2 = Game.f8589i.localeManager.i18n.get("settings_instant_auto_wave_calls");
        if (str2.length() > 24) {
            str2 = str2.substring(0, 22) + "...";
        }
        table3.add(new LabelToggleButton(str2, Game.f8589i.settingsManager.isInstantAutoWaveCallEnabled(), 24, 32.0f, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.components.PauseMenu.1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setInstantAutoWaveCallEnabled(bool.booleanValue());
            }
        })).height(56.0f).width(348.0f).padRight(40.0f).right().row();
        table3.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_draw_particles"), Game.f8589i.settingsManager.isParticlesDrawing(), 24, 32.0f, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.components.PauseMenu.2
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setParticlesDrawing(bool.booleanValue());
            }
        })).height(56.0f).width(348.0f).padRight(40.0f).right().row();
        Group group6 = new Group();
        group6.setTransform(false);
        Label label8 = new Label(Game.f8589i.localeManager.i18n.get("settings_sound"), Game.f8589i.assetManager.getLabelStyle(24));
        label8.setSize(1.0f, 56.0f);
        group6.addActor(label8);
        HorizontalSlider horizontalSlider = new HorizontalSlider(200.0f, Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SOUND_VOLUME), 0.0d, 1.0d, new ObjectRetriever<Double>() { // from class: com.prineside.tdi2.ui.components.PauseMenu.3
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Double d) {
                Game.f8589i.settingsManager.setSoundVoulme(d.doubleValue());
            }
        });
        horizontalSlider.setNotifyOnDrag(true);
        horizontalSlider.setPosition(148.0f, (56.0f - horizontalSlider.getHeight()) * 0.5f);
        group6.addActor(horizontalSlider);
        table3.add((Table) group6).height(56.0f).width(348.0f).padRight(40.0f).right().row();
        Group group7 = new Group();
        group7.setTransform(false);
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("settings_music"), Game.f8589i.assetManager.getLabelStyle(24));
        label9.setSize(1.0f, 56.0f);
        group7.addActor(label9);
        HorizontalSlider horizontalSlider2 = new HorizontalSlider(200.0f, Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.MUSIC_VOLUME), 0.0d, 1.0d, new ObjectRetriever<Double>() { // from class: com.prineside.tdi2.ui.components.PauseMenu.4
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Double d) {
                if (gameSystemProvider._sound == null) {
                    return;
                }
                Game.f8589i.settingsManager.setMusicVolume(d.doubleValue());
                gameSystemProvider._sound.updateMusicPlayback();
            }
        });
        horizontalSlider2.setNotifyOnDrag(true);
        horizontalSlider2.setPosition(148.0f, (56.0f - horizontalSlider.getHeight()) * 0.5f);
        group7.addActor(horizontalSlider2);
        table3.add((Table) group7).height(56.0f).width(348.0f).padRight(40.0f).right().row();
        table3.add().height(16.0f).row();
        table3.add((Table) new RightSideMenuButton(Game.f8589i.localeManager.i18n.get("continue"), "icon-triangle-right", new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.5
            @Override // java.lang.Runnable
            public void run() {
                gameSystemProvider.gameState.resumeGame();
            }
        })).row();
        table3.add((Table) new RightSideMenuButton(Game.f8589i.localeManager.i18n.get("restart"), "icon-restart", new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.6
            @Override // java.lang.Runnable
            public void run() {
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("restart_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        GameStateSystem gameStateSystem = gameSystemProvider.gameState;
                        if (gameStateSystem.replayMode) {
                            GameStateSystem.startReplay(gameStateSystem.replayRecord);
                        } else {
                            gameStateSystem.restartGame(true);
                        }
                    }
                });
            }
        })).row();
        table3.add((Table) new RightSideMenuButton(Game.f8589i.localeManager.i18n.get("end_game_button_text"), "icon-times", new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.7
            @Override // java.lang.Runnable
            public void run() {
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("end_game_button_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PauseMenu.this.setVisible(false);
                        gameSystemProvider.gameState.triggerGameOver(GameStateSystem.GameOverReason.MANUAL);
                    }
                });
            }
        })).row();
        RightSideMenuButton rightSideMenuButton = new RightSideMenuButton(Game.f8589i.localeManager.i18n.get("main_menu"), "icon-house", new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.8
            @Override // java.lang.Runnable
            public void run() {
                if (!gameSystemProvider.gameValue.getBooleanValue(GameValueType.GAME_SAVES)) {
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("game_cant_be_continued_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Game.f8589i.screenManager.goToMainMenu();
                        }
                    });
                    return;
                }
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        rightSideMenuButton.setName("pause_menu_main_menu_button");
        table3.add((Table) rightSideMenuButton);
        addLayer.getTable().setVisible(false);
        addLayer2.getTable().setVisible(false);
        addLayer3.getTable().setVisible(false);
        gameSystemProvider.loot.listeners.add(this.f13471y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m20433j() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        settingsManager.setExplosionsDrawing(!settingsManager.isExplosionsDrawing());
        m20426q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m20432k() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        settingsManager.setFlyingCoinsEnabled(!settingsManager.isFlyingCoinsEnabled());
        m20426q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m20431l() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        settingsManager.setProjectilesDrawing(!settingsManager.isProjectilesDrawing());
        m20426q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m20430m() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        settingsManager.setProjectileTrailsDrawing(!settingsManager.isProjectileTrailsDrawing());
        m20426q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m20429n() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        settingsManager.setStainsEnabled(!settingsManager.isStainsEnabled());
        m20426q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m20428o() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.LOOT_ICONS_ENABLED;
        double d = 0.0d;
        if (Game.f8589i.settingsManager.getCustomValue(customValueType) == 0.0d) {
            d = 1.0d;
        }
        settingsManager.setCustomValue(customValueType, d);
        m20426q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m20427p() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.DRAW_TOWER_TARGET;
        double d = 0.0d;
        if (Game.f8589i.settingsManager.getCustomValue(customValueType) == 0.0d) {
            d = 1.0d;
        }
        settingsManager.setCustomValue(customValueType, d);
        m20426q();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13458a);
        Game.f8589i.uiManager.removeLayer(this.f13459b);
        Game.f8589i.uiManager.removeLayer(this.f13460d);
    }

    /* renamed from: q */
    public final void m20426q() {
        this.f13466t.clear();
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-explosion-range");
        Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.components.n
            @Override // java.lang.Runnable
            public final void run() {
                PauseMenu.this.m20433j();
            }
        };
        Color color = Color.WHITE;
        PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnable, color, color, color);
        if (Game.f8589i.settingsManager.isExplosionsDrawing()) {
            paddedImageButton.setColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P900);
        } else {
            paddedImageButton.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P700, MaterialColor.GREY.P900);
        }
        paddedImageButton.setIconPosition(6.0f, 6.0f).setIconSize(40.0f, 40.0f);
        this.f13466t.add((Table) paddedImageButton).size(52.0f);
        PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-coins"), new Runnable() { // from class: com.prineside.tdi2.ui.components.o
            @Override // java.lang.Runnable
            public final void run() {
                PauseMenu.this.m20432k();
            }
        }, color, color, color);
        if (Game.f8589i.settingsManager.isFlyingCoinsEnabled()) {
            paddedImageButton2.setColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P900);
        } else {
            paddedImageButton2.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P700, MaterialColor.GREY.P900);
        }
        paddedImageButton2.setIconPosition(6.0f, 6.0f).setIconSize(40.0f, 40.0f);
        this.f13466t.add((Table) paddedImageButton2).size(52.0f);
        PaddedImageButton paddedImageButton3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-bullet"), new Runnable() { // from class: com.prineside.tdi2.ui.components.p
            @Override // java.lang.Runnable
            public final void run() {
                PauseMenu.this.m20431l();
            }
        }, color, color, color);
        if (Game.f8589i.settingsManager.isProjectilesDrawing()) {
            paddedImageButton3.setColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P900);
        } else {
            paddedImageButton3.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P700, MaterialColor.GREY.P900);
        }
        paddedImageButton3.setIconPosition(6.0f, 6.0f).setIconSize(40.0f, 40.0f);
        this.f13466t.add((Table) paddedImageButton3).size(52.0f);
        PaddedImageButton paddedImageButton4 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-projectile-speed"), new Runnable() { // from class: com.prineside.tdi2.ui.components.q
            @Override // java.lang.Runnable
            public final void run() {
                PauseMenu.this.m20430m();
            }
        }, color, color, color);
        if (Game.f8589i.settingsManager.isProjectileTrailsDrawing()) {
            paddedImageButton4.setColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P900);
        } else {
            paddedImageButton4.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P700, MaterialColor.GREY.P900);
        }
        paddedImageButton4.setIconPosition(6.0f, 6.0f).setIconSize(40.0f, 40.0f);
        this.f13466t.add((Table) paddedImageButton4).size(52.0f);
        PaddedImageButton paddedImageButton5 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-dat-paper"), new Runnable() { // from class: com.prineside.tdi2.ui.components.r
            @Override // java.lang.Runnable
            public final void run() {
                PauseMenu.this.m20429n();
            }
        }, color, color, color);
        if (Game.f8589i.settingsManager.isStainsEnabled()) {
            paddedImageButton5.setColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P900);
        } else {
            paddedImageButton5.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P700, MaterialColor.GREY.P900);
        }
        paddedImageButton5.setIconPosition(6.0f, 6.0f).setIconSize(40.0f, 40.0f);
        this.f13466t.add((Table) paddedImageButton5).size(52.0f);
        PaddedImageButton paddedImageButton6 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-chest"), new Runnable() { // from class: com.prineside.tdi2.ui.components.s
            @Override // java.lang.Runnable
            public final void run() {
                PauseMenu.this.m20428o();
            }
        }, color, color, color);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.LOOT_ICONS_ENABLED) != 0.0d) {
            paddedImageButton6.setColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P900);
        } else {
            paddedImageButton6.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P700, MaterialColor.GREY.P900);
        }
        paddedImageButton6.setIconPosition(6.0f, 6.0f).setIconSize(40.0f, 40.0f);
        this.f13466t.add((Table) paddedImageButton6).size(52.0f);
        PaddedImageButton paddedImageButton7 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-crosshair"), new Runnable() { // from class: com.prineside.tdi2.ui.components.t
            @Override // java.lang.Runnable
            public final void run() {
                PauseMenu.this.m20427p();
            }
        }, color, color, color);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DRAW_TOWER_TARGET) != 0.0d) {
            paddedImageButton7.setColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P900);
        } else {
            paddedImageButton7.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P700, MaterialColor.GREY.P900);
        }
        paddedImageButton7.setIconPosition(6.0f, 6.0f).setIconSize(40.0f, 40.0f);
        this.f13466t.add((Table) paddedImageButton7).size(52.0f).padRight(-6.0f);
    }

    public void setVisible(boolean z) {
        ResourceType[] resourceTypeArr;
        int i;
        boolean z2;
        Label label;
        this.f13458a.getTable().setVisible(z);
        this.f13459b.getTable().setVisible(z);
        this.f13460d.getTable().setVisible(false);
        if (!z) {
            Game.f8589i.uiManager.stage.setScrollFocus(null);
        }
        if (z && !this.f13470x.gameState.isGameOver()) {
            int i2 = 5;
            if (Game.f8589i.purchaseManager.rewardingAdsAvailable()) {
                this.f13460d.getTable().setVisible(true);
                this.f13464r.clear();
                this.f13464r.addActor(new QuadActor(new Color(943208703), new float[]{5.0f, 0.0f, 0.0f, 100.0f, 540.0f, 105.0f, 535.0f, 0.0f}));
                Label label2 = new Label(Game.f8589i.localeManager.i18n.get("loot_bonus_menu_title"), Game.f8589i.assetManager.getLabelStyle(21));
                float f = 19.0f;
                label2.setPosition(19.0f, 64.0f);
                label2.setSize(100.0f, 16.0f);
                this.f13464r.addActor(label2);
                int rewardingAdViews = this.f13470x.loot.getRewardingAdViews();
                int i3 = 0;
                while (i3 < i2) {
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    image.setPosition((i3 * 62.0f) + f, 13.0f);
                    image.setSize(58.0f, 36.0f);
                    this.f13464r.addActor(image);
                    if (i3 == 4) {
                        label = new Label(LootSystem.REWARDING_AD_VIEW_BONUSES[i3] + "%", Game.f8589i.assetManager.getLabelStyle(24));
                    } else {
                        label = new Label(LootSystem.REWARDING_AD_VIEW_BONUSES[i3] + "%", Game.f8589i.assetManager.getLabelStyle(21));
                    }
                    label.setPosition(image.getX(), image.getY());
                    label.setAlignment(1);
                    label.setSize(58.0f, 36.0f);
                    this.f13464r.addActor(label);
                    if (rewardingAdViews > i3) {
                        label.setColor(Color.WHITE);
                        if (i3 == 4) {
                            image.setColor(MaterialColor.CYAN.P800);
                        } else {
                            image.setColor(MaterialColor.GREEN.P800);
                        }
                    } else {
                        image.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                        if (i3 == 4) {
                            label.setColor(MaterialColor.CYAN.P700);
                        } else {
                            label.setColor(MaterialColor.GREY.P700);
                        }
                    }
                    i3++;
                    i2 = 5;
                    f = 19.0f;
                }
                AttentionRaysUnderlay attentionRaysUnderlay = new AttentionRaysUnderlay(192.0f, MaterialColor.LIGHT_BLUE.P300);
                attentionRaysUnderlay.setPosition(340.0f, -44.0f);
                this.f13464r.addActor(attentionRaysUnderlay);
                ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("do_upgrade"), Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.components.PauseMenu.9
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.purchaseManager.showRewardingAd(PurchaseManager.RewardingAdsType.LOOT_MULTIPLIER, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.components.PauseMenu.9.1
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(Boolean bool) {
                                if (bool.booleanValue()) {
                                    PauseMenu.this.f13470x.loot.viewRewardingAdAction();
                                }
                            }
                        });
                    }
                });
                complexButton.setPosition(344.0f, 13.0f);
                complexButton.setSize(184.0f, 78.0f);
                complexButton.setBackground(new QuadDrawable(new QuadActor(Color.WHITE, new float[]{3.0f, 0.0f, 0.0f, 76.0f, 184.0f, 78.0f, 181.0f, 0.0f})), 0.0f, 0.0f, 184.0f, 78.0f);
                complexButton.setIcon(Game.f8589i.assetManager.getDrawable("rewarding-ad"), 14.0f, 15.0f, 48.0f, 48.0f);
                complexButton.setLabel(73.0f, 15.0f, 100.0f, 48.0f, 8);
                this.f13464r.addActor(complexButton);
                float timeToRewardingAds = this.f13470x.loot.getTimeToRewardingAds(true);
                if (timeToRewardingAds == -1.0f) {
                    attentionRaysUnderlay.setVisible(false);
                    complexButton.setText("MAX");
                    complexButton.setEnabled(false);
                } else if (timeToRewardingAds == 0.0f) {
                    attentionRaysUnderlay.setVisible(true);
                    complexButton.setEnabled(true);
                } else {
                    attentionRaysUnderlay.setVisible(false);
                    complexButton.setText(StringFormatter.digestTime(MathUtils.ceil(timeToRewardingAds)));
                    complexButton.setEnabled(false);
                }
            }
            GameStateSystem gameStateSystem = this.f13470x.gameState;
            this.f13469w.setText(Game.f8589i.progressManager.getDifficultyName(gameStateSystem.difficultyMode));
            this.f13469w.setColor(Game.f8589i.progressManager.getDifficultyModeColor(gameStateSystem.difficultyMode));
            if (gameStateSystem.gameMode == GameStateSystem.GameMode.BASIC_LEVELS) {
                if (gameStateSystem.dailyQuestLevel != null) {
                    this.f13468v.setText(Game.f8589i.localeManager.i18n.get("daily_quest"));
                } else {
                    this.f13468v.setText(Game.f8589i.localeManager.i18n.get("basic_level"));
                }
                this.f13467u.setText(gameStateSystem.basicLevelName);
            } else {
                this.f13468v.setText(Game.f8589i.localeManager.i18n.get("custom_map"));
                this.f13467u.setText(Game.f8589i.userMapManager.getUserMap(gameStateSystem.userMapId).name);
            }
            this.f13461k.setVisible(this.f13470x._graphics.mainUi.nextWaveButtonVisible());
            this.f13462p.setVisible(this.f13470x._graphics.mainUi.gameSpeedButtonVisible());
            DelayedRemovalArray delayedRemovalArray = new DelayedRemovalArray();
            Array.ArrayIterator it = new Array(gameStateSystem.getQuestsIssuedPrizes()).iterator();
            while (it.hasNext()) {
                delayedRemovalArray.addAll(((IssuedItems) it.next()).items);
            }
            delayedRemovalArray.addAll(gameStateSystem.getGameLootIssuedItems().items);
            int calculatePrizeGreenPapers = gameStateSystem.calculatePrizeGreenPapers();
            if (calculatePrizeGreenPapers > 0) {
                delayedRemovalArray.add(new ItemStack(Item.C1543D.GREEN_PAPER, calculatePrizeGreenPapers));
            }
            for (ResourceType resourceType : ResourceType.values) {
                int resources = gameStateSystem.getResources(resourceType);
                if (resources != 0) {
                    delayedRemovalArray.add(new ItemStack(Item.C1543D.F_RESOURCE.create(resourceType), resources));
                }
            }
            Array array = new Array(ItemStack.class);
            for (int i4 = 0; i4 < delayedRemovalArray.size; i4++) {
                ItemStack itemStack = (ItemStack) delayedRemovalArray.get(i4);
                int i5 = 0;
                while (true) {
                    if (i5 < array.size) {
                        ItemStack itemStack2 = ((ItemStack[]) array.items)[i5];
                        if (itemStack.covered == itemStack2.covered && itemStack2.getItem().sameAs(itemStack.getItem())) {
                            itemStack2.setCount(PMath.addWithoutOverflow(itemStack2.getCount(), itemStack.getCount()));
                            z2 = true;
                            break;
                        }
                        i5++;
                    } else {
                        z2 = false;
                        break;
                    }
                }
                if (!z2) {
                    array.add(new ItemStack(itemStack));
                }
            }
            array.sort(ProgressManager.ITEM_RARITY_COMPARATOR);
            this.f13465s.clear();
            if (!gameStateSystem.isGameOver()) {
                if (array.size <= 25) {
                    i = 5;
                } else {
                    i = 10;
                }
                int i6 = 0;
                int i7 = 0;
                for (int i8 = 0; i8 < array.size; i8++) {
                    final ItemStack itemStack3 = ((ItemStack[]) array.items)[i8];
                    ItemCell itemCell = new ItemCell();
                    itemCell.setCompact();
                    itemCell.setItem(itemStack3);
                    itemCell.setColRow(i6, i7);
                    if (itemStack3.covered) {
                        itemCell.setCovered(true);
                        itemCell.shine(false, false);
                    } else {
                        itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.PauseMenu.10
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                            public void clicked(InputEvent inputEvent, float f2, float f3) {
                                Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack3.getItem(), itemStack3.getCount());
                            }
                        });
                        itemCell.shine(false, false);
                    }
                    Cell add = this.f13465s.add((Table) itemCell);
                    i6++;
                    if (i6 == i) {
                        i7++;
                        add.row();
                        i6 = 0;
                    }
                }
            }
            m20426q();
        }
    }
}
