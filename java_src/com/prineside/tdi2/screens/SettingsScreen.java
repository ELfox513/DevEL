package com.prineside.tdi2.screens;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.List;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.ActionResolver;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.ibxm.IBXM;
import com.prineside.tdi2.managers.LocaleManager;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.managers.music.LiveMusicManager;
import com.prineside.tdi2.p036ui.actors.HorizontalSlider;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.LabelButton;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.shared.DeveloperConsole;
import com.prineside.tdi2.p036ui.shared.Dialog;
import com.prineside.tdi2.p036ui.shared.Notifications;
import com.prineside.tdi2.screens.SettingsScreen;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.IntPair;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Random;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.utility.JavaConstant;
import p218x1.C7221i;
/* loaded from: classes2.dex */
public class SettingsScreen extends Screen {

    /* renamed from: r */
    public static final int[] f11060r = {0, 24, 30, 45, 48, 60, 72, 90, 100, 120, 128, 140, 144, 240};

    /* renamed from: a */
    public final UiManager.UiLayer f11061a;

    /* renamed from: b */
    public final UiManager.UiLayer f11062b;

    /* renamed from: c */
    public final UiManager.UiLayer f11063c;

    /* renamed from: d */
    public Table f11064d;

    /* renamed from: e */
    public int f11065e;

    /* renamed from: f */
    public int f11066f;

    /* renamed from: g */
    public ScrollPane f11067g;

    /* renamed from: h */
    public LabelToggleButton f11068h;

    /* renamed from: i */
    public LabelToggleButton f11069i;

    /* renamed from: j */
    public SelectBox<String> f11070j;

    /* renamed from: k */
    public HorizontalSlider f11071k;

    /* renamed from: l */
    public HorizontalSlider f11072l;

    /* renamed from: m */
    public HorizontalSlider f11073m;

    /* renamed from: n */
    public HorizontalSlider f11074n;

    /* renamed from: o */
    public HorizontalSlider f11075o;

    /* renamed from: p */
    public Label f11076p;

    /* renamed from: q */
    public RectButton f11077q;

    /* loaded from: classes2.dex */
    public class LocaleButton {

        /* renamed from: a */
        public Image f11140a;

        /* renamed from: b */
        public boolean f11141b;

        /* renamed from: c */
        public boolean f11142c;

        /* renamed from: d */
        public Table f11143d = new Table();
        public Label label;

        public void onClick() {
        }

        public LocaleButton(String str) {
            Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-check"));
            this.f11140a = image;
            image.setColor(MaterialColor.LIGHT_GREEN.P500);
            Label label = new Label(str, new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE));
            this.label = label;
            label.setColor(MaterialColor.LIGHT_BLUE.P300);
            this.f11143d.add((Table) this.f11140a).padRight(16.0f).size(48.0f, 48.0f);
            this.f11143d.add((Table) this.label).expandX().fillX();
            this.f11143d.setTouchable(Touchable.enabled);
            this.f11143d.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.SettingsScreen.LocaleButton.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    LocaleButton.this.onClick();
                }
            });
            this.f11143d.addListener(new InputListener() { // from class: com.prineside.tdi2.screens.SettingsScreen.LocaleButton.2
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                    LocaleButton localeButton = LocaleButton.this;
                    localeButton.f11141b = true;
                    localeButton.m21108b();
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                    LocaleButton localeButton = LocaleButton.this;
                    localeButton.f11141b = false;
                    localeButton.m21108b();
                }
            });
            setSelected(false);
        }

        /* renamed from: b */
        public final void m21108b() {
            if (this.f11142c) {
                this.label.setColor(MaterialColor.LIGHT_GREEN.P300);
            } else if (this.f11141b) {
                this.label.setColor(Color.WHITE);
            } else {
                this.label.setColor(MaterialColor.LIGHT_BLUE.P300);
            }
        }

        public void setSelected(boolean z) {
            this.f11142c = z;
            if (z) {
                this.f11140a.setVisible(true);
            } else {
                this.f11140a.setVisible(false);
            }
            m21108b();
        }
    }

    /* renamed from: m */
    public static /* synthetic */ int m21125m(SettingsScreen settingsScreen) {
        int i = settingsScreen.f11065e;
        settingsScreen.f11065e = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m21123o(Boolean bool) {
        this.f11077q.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m21122p(Boolean bool) {
        this.f11077q.setEnabled(true);
    }

    /* renamed from: q */
    public static /* synthetic */ int m21121q(IntPair intPair, IntPair intPair2) {
        return C7221i.m2085a(intPair.f15103a, intPair2.f15103a);
    }

    public SettingsScreen() {
        int i;
        boolean z;
        SettingsManager.InitConfig initConfig;
        boolean z2;
        boolean z3;
        int[] iArr;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        Cell width;
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 100, "SettingsScreen main");
        this.f11061a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "SettingsScreen gradient");
        this.f11062b = addLayer2;
        this.f11063c = Game.f8589i.uiManager.addLayer(mainUiLayer, 102, "SettingsScreen safezone hint", true);
        final ActionResolver.InitConfigManager initConfigManager = Game.f8589i.actionResolver.getInitConfigManager();
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game game = Game.f8589i;
        game.uiManager.screenTitle.setIcon(game.assetManager.getDrawable("icon-wrench")).setText(Game.f8589i.localeManager.i18n.get("settings_title")).setVisible(true);
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.1
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        this.f11064d = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f11064d, Game.f8589i.assetManager.getScrollPaneStyle(16.0f));
        this.f11067g = scrollPane;
        scrollPane.setScrollingDisabled(true, false);
        addLayer.getTable().add((Table) this.f11067g).expand().fill();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image.setColor(Config.BACKGROUND_COLOR);
        addLayer2.getTable().setTouchable(Touchable.disabled);
        addLayer2.getTable().add((Table) image).expandX().fillX().height(128.0f).row();
        addLayer2.getTable().add().expand().fill().row();
        this.f11064d.add().height(128.0f).fillX().expandX().row();
        Table m21115w = m21115w(Game.f8589i.localeManager.i18n.get("settings_language"), "icon-locale");
        Table table = new Table();
        m21115w.add(table).expandX().fillX().row();
        Array.ArrayIterator<LocaleManager.Locale> it = Game.f8589i.localeManager.getAvailableLocales().iterator();
        loop0: while (true) {
            i = 0;
            while (it.hasNext()) {
                final LocaleManager.Locale next = it.next();
                LocaleButton localeButton = new LocaleButton(next.name) { // from class: com.prineside.tdi2.screens.SettingsScreen.2
                    @Override // com.prineside.tdi2.screens.SettingsScreen.LocaleButton
                    public void onClick() {
                        SettingsScreen.this.m21114x(next.alias);
                    }
                };
                localeButton.setSelected(next.alias.equals(Game.f8589i.localeManager.i18n.getLocale().getLanguage() + JavaConstant.Dynamic.DEFAULT_NAME + Game.f8589i.localeManager.i18n.getLocale().getCountry()));
                width = table.add(localeButton.f11143d).height(64.0f).width(340.0f);
                i++;
                if (i == 4) {
                    break;
                }
            }
            width.row();
        }
        Application.ApplicationType type = Gdx.app.getType();
        Application.ApplicationType applicationType = Application.ApplicationType.Desktop;
        if (type == applicationType) {
            LocaleButton localeButton2 = new LocaleButton(Game.f8589i.assetManager.replaceRegionAliasesWithChars("简体中文<@icon-link-out>").toString()) { // from class: com.prineside.tdi2.screens.SettingsScreen.3
                @Override // com.prineside.tdi2.screens.SettingsScreen.LocaleButton
                public void onClick() {
                    Gdx.f38302net.openURI(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.CN_STORE_LINK));
                }
            };
            localeButton2.setSelected(false);
            Cell width2 = table.add(localeButton2.f11143d).height(64.0f).width(340.0f);
            if (i + 1 == 4) {
                width2.row();
            }
        }
        LabelButton labelButton = new LabelButton(Game.f8589i.localeManager.i18n.get("settings_fix_translation") + " " + ((Object) Game.f8589i.assetManager.replaceRegionAliasesWithChars("<@icon-link-out>")), Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.4
            @Override // java.lang.Runnable
            public void run() {
                Gdx.f38302net.openURI(Config.I18N_SUGGEST_FIX_URL);
            }
        });
        labelButton.setColors(MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P300);
        m21115w.add((Table) labelButton).left().height(64.0f).padTop(16.0f).padLeft(64.0f).row();
        Table m21115w2 = m21115w(Game.f8589i.localeManager.i18n.get("settings_audio"), "icon-note");
        m21115w2.add((Table) new Label(Game.f8589i.localeManager.i18n.get("settings_sound"), Game.f8589i.assetManager.getLabelStyle(30))).padLeft(64.0f).size(616.0f, 64.0f);
        m21115w2.add((Table) new Label(Game.f8589i.localeManager.i18n.get("settings_music"), Game.f8589i.assetManager.getLabelStyle(30))).padLeft(64.0f).size(616.0f, 64.0f).row();
        Table table2 = new Table();
        m21115w2.add(table2).padLeft(64.0f).padBottom(16.0f).size(616.0f, 48.0f);
        StringBuilder sb = new StringBuilder();
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.SOUND_VOLUME;
        sb.append(StrictMath.round(settingsManager.getCustomValue(customValueType) * 100.0d));
        sb.append("%");
        final Label label = new Label(sb.toString(), Game.f8589i.assetManager.getLabelStyle(24));
        HorizontalSlider horizontalSlider = new HorizontalSlider(400.0f, Game.f8589i.settingsManager.getCustomValue(customValueType), 0.0d, 1.0d, new ObjectRetriever<Double>() { // from class: com.prineside.tdi2.screens.SettingsScreen.5
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Double d) {
                Game.f8589i.settingsManager.setSoundVoulme(d.doubleValue());
                Label label2 = label;
                label2.setText(StrictMath.round(d.doubleValue() * 100.0d) + "%");
            }
        });
        horizontalSlider.setNotifyOnDrag(true);
        table2.add((Table) horizontalSlider).size(400.0f, 48.0f);
        table2.add((Table) label).padLeft(16.0f);
        table2.add().height(1.0f).expandX().fillX();
        Table table3 = new Table();
        m21115w2.add(table3).padLeft(64.0f).padBottom(16.0f).size(616.0f, 48.0f).row();
        StringBuilder sb2 = new StringBuilder();
        SettingsManager settingsManager2 = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType2 = SettingsManager.CustomValueType.MUSIC_VOLUME;
        sb2.append(StrictMath.round(settingsManager2.getCustomValue(customValueType2) * 100.0d));
        sb2.append("%");
        final Label label2 = new Label(sb2.toString(), Game.f8589i.assetManager.getLabelStyle(24));
        HorizontalSlider horizontalSlider2 = new HorizontalSlider(400.0f, Game.f8589i.settingsManager.getCustomValue(customValueType2), 0.0d, 1.0d, new ObjectRetriever<Double>() { // from class: com.prineside.tdi2.screens.SettingsScreen.6
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Double d) {
                double customValue = Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.MUSIC_VOLUME);
                Game.f8589i.settingsManager.setMusicVolume(d.doubleValue());
                if (customValue > 0.0d && d.doubleValue() <= 0.0d) {
                    Game.f8589i.musicManager.stopMusic();
                } else if (customValue <= 0.0d && d.doubleValue() > 0.0d) {
                    Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
                }
                Label label3 = label2;
                label3.setText(StrictMath.round(d.doubleValue() * 100.0d) + "%");
            }
        });
        horizontalSlider2.setNotifyOnDrag(true);
        table3.add((Table) horizontalSlider2).size(400.0f, 48.0f);
        table3.add((Table) label2).padLeft(16.0f);
        table3.add().height(1.0f).expandX().fillX();
        m21115w2.add((Table) new Label(Game.f8589i.localeManager.i18n.get("settings_shooting_sound"), Game.f8589i.assetManager.getLabelStyle(30))).padLeft(64.0f).size(616.0f, 64.0f).row();
        Table table4 = new Table();
        m21115w2.add(table4).padLeft(64.0f).padBottom(16.0f).size(616.0f, 48.0f).row();
        StringBuilder sb3 = new StringBuilder();
        SettingsManager settingsManager3 = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType3 = SettingsManager.CustomValueType.SHOOTING_SOUNDS_VOLUME;
        sb3.append(StrictMath.round(settingsManager3.getCustomValue(customValueType3) * 100.0d));
        sb3.append("%");
        final Label label3 = new Label(sb3.toString(), Game.f8589i.assetManager.getLabelStyle(24));
        HorizontalSlider horizontalSlider3 = new HorizontalSlider(400.0f, Game.f8589i.settingsManager.getCustomValue(customValueType3), 0.0d, 1.0d, new ObjectRetriever<Double>() { // from class: com.prineside.tdi2.screens.SettingsScreen.7
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Double d) {
                Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.SHOOTING_SOUNDS_VOLUME, d.doubleValue());
                Label label4 = label3;
                label4.setText(StrictMath.round(d.doubleValue() * 100.0d) + "%");
            }
        });
        horizontalSlider3.setNotifyOnDrag(true);
        table4.add((Table) horizontalSlider3).size(400.0f, 48.0f);
        table4.add((Table) label3).padLeft(16.0f);
        table4.add().height(1.0f).expandX().fillX();
        String str = Game.f8589i.localeManager.i18n.get("settings_smooth_music");
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SMOOTH_MUSIC) != 0.0d) {
            z = true;
        } else {
            z = false;
        }
        m21115w2.add(new LabelToggleButton(str, z, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.8
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                IBXM ibxm;
                Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.SMOOTH_MUSIC, bool.booleanValue() ? 1.0d : 0.0d);
                MusicManager musicManager = Game.f8589i.musicManager;
                if (!(musicManager instanceof LiveMusicManager) || (ibxm = ((LiveMusicManager) musicManager).ibxm) == null) {
                    return;
                }
                ibxm.setInterpolation(musicManager.getInterpolation());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        if (Gdx.app.getType() == applicationType) {
            Label label4 = new Label(Game.f8589i.localeManager.i18n.get("settings_cache_music_hint") + "\n" + Game.f8589i.localeManager.i18n.get("requires_game_restart"), Game.f8589i.assetManager.getLabelStyle(24));
            label4.setWrap(true);
            label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            m21115w2.add((Table) label4).padLeft(64.0f).width(616.0f).top();
        }
        Table m21115w3 = m21115w(Game.f8589i.localeManager.i18n.get("settings_special"), "icon-star");
        m21115w3.add((Table) new LabelButton(Game.f8589i.localeManager.i18n.get("settings_secret_code"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.9
            @Override // java.lang.Runnable
            public void run() {
                Input.TextInputListener textInputListener = new Input.TextInputListener() { // from class: com.prineside.tdi2.screens.SettingsScreen.9.1
                    @Override // com.badlogic.gdx.Input.TextInputListener
                    public void canceled() {
                    }

                    @Override // com.badlogic.gdx.Input.TextInputListener
                    public void input(final String str2) {
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.9.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Game.f8589i.secretCodeManager.applyCode(str2);
                            }
                        });
                    }
                };
                Game game2 = Game.f8589i;
                game2.uiManager.getTextInput(textInputListener, game2.localeManager.i18n.get("secret_code"), "", "");
            }
        })).height(64.0f).padLeft(64.0f).width(616.0f);
        m21115w3.add((Table) new LabelButton(Game.f8589i.localeManager.i18n.get("settings_restore_purchases"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.10
            @Override // java.lang.Runnable
            public void run() {
                if (Game.f8589i.purchaseManager.isPurchasesEnabled()) {
                    Dialog dialog = Game.f8589i.uiManager.dialog;
                    dialog.showConfirm(Game.f8589i.localeManager.i18n.get("settings_restore_purchases") + TypeDescription.Generic.OfWildcardType.SYMBOL, new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Game.f8589i.purchaseManager.purchaseManager.purchaseRestore();
                            Game game2 = Game.f8589i;
                            game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("settings_purchases_restored"));
                        }
                    });
                }
            }
        })).height(64.0f).padLeft(64.0f).width(616.0f).row();
        Table m21115w4 = m21115w(Game.f8589i.localeManager.i18n.get("settings_gameplay"), "icon-joystick");
        m21115w4.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_instant_auto_wave_calls"), Game.f8589i.settingsManager.isInstantAutoWaveCallEnabled(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.11
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setInstantAutoWaveCallEnabled(bool.booleanValue());
            }
        })).height(64.0f).padLeft(64.0f).width(616.0f);
        if (Gdx.app.getType() == applicationType) {
            String str2 = Game.f8589i.localeManager.i18n.get("settings_rmb_equals_hold_button");
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.INSTANT_HOLD_BUTTON_ON_RMB) != 0.0d) {
                z16 = true;
            } else {
                z16 = false;
            }
            m21115w4.add(new LabelToggleButton(str2, z16, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.12
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(Boolean bool) {
                    Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.INSTANT_HOLD_BUTTON_ON_RMB, bool.booleanValue() ? 1.0d : 0.0d);
                }
            })).height(64.0f).padLeft(64.0f).width(616.0f).row();
        }
        Group group = new Group();
        group.setTransform(false);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("settings_auto_save_interval"), Game.f8589i.assetManager.getLabelStyle(30));
        label5.setSize(100.0f, 64.0f);
        label5.setPosition(0.0f, 64.0f);
        group.addActor(label5);
        final Label label6 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        label6.setPosition(420.0f, 0.0f);
        label6.setSize(180.0f, 64.0f);
        group.addActor(label6);
        int customValue = (int) (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.STATE_AUTO_SAVE_INTERVAL) * 2.0d);
        HorizontalSlider horizontalSlider4 = new HorizontalSlider(400.0f, 0.0d, 0.0d, 30.0d, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.m0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                SettingsScreen.m21124n(Label.this, (Double) obj);
            }
        });
        this.f11074n = horizontalSlider4;
        horizontalSlider4.setNotifyOnDrag(true);
        this.f11074n.setSize(400.0f, 64.0f);
        this.f11074n.setValue(customValue, true);
        group.addActor(this.f11074n);
        m21115w4.row();
        m21115w4.add((Table) group).padLeft(64.0f).width(616.0f).height(128.0f);
        LabelButton labelButton2 = new LabelButton(Game.f8589i.localeManager.i18n.get("settings_reset_progress"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.13
            @Override // java.lang.Runnable
            public void run() {
                Game game2 = Game.f8589i;
                game2.uiManager.dialog.showConfirm(game2.localeManager.i18n.get("settings_reset_progress_question"), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.13.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean isDeveloperModeEnabled = Game.f8589i.progressManager.isDeveloperModeEnabled();
                        Logger.log("SettingsScreen", "reset progress");
                        Game.f8589i.preferencesManager.resetEverything();
                        Game.f8589i.replayManager.deleteAllReplays();
                        Game.f8589i.screenManager.goToMainMenu();
                        GameStateSystem.deleteSavedGame();
                        if (isDeveloperModeEnabled) {
                            DeveloperConsole developerConsole = Game.f8589i.uiManager.developerConsole;
                            if (developerConsole != null) {
                                developerConsole.dispose();
                            }
                            Game game3 = Game.f8589i;
                            game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("restart_the_game"), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.13.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Game.exit();
                                }
                            });
                        }
                    }
                });
                Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
            }
        });
        labelButton2.setColors(MaterialColor.RED.P600, MaterialColor.ORANGE.P400);
        m21115w4.add((Table) labelButton2).bottom().left().padLeft(64.0f).width(616.0f).height(64.0f).row();
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("settings_auto_save_hint"), Game.f8589i.assetManager.getLabelStyle(24));
        label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label7.setWrap(true);
        m21115w4.add((Table) label7).top().left().padLeft(64.0f).width(616.0f).padTop(8.0f).padBottom(16.0f).row();
        if (Game.f8589i.actionResolver.hasNotifications()) {
            m21115w4.row();
            String str3 = Game.f8589i.localeManager.i18n.get("settings_notifications");
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SEND_NOTIFICATIONS) != 0.0d) {
                z15 = true;
            } else {
                z15 = false;
            }
            m21115w4.add(new LabelToggleButton(str3, z15, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.14
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(Boolean bool) {
                    Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.SEND_NOTIFICATIONS, bool.booleanValue() ? 1.0d : 0.0d);
                    Game.f8589i.progressManager.updateNativeNotifications();
                }
            })).padLeft(64.0f).width(616.0f).height(64.0f);
        }
        m21115w4.row();
        m21115w4.add().height(1.0f).expandX().fillX().row();
        if (Gdx.app.getType() == applicationType) {
            m21115w4.add((Table) new LabelButton(Game.f8589i.localeManager.i18n.get("settings_edit_hotkeys"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.15
                @Override // java.lang.Runnable
                public void run() {
                    Game.f8589i.screenManager.goToHotkeyEditorScreen();
                }
            })).padLeft(64.0f).height(64.0f).width(616.0f).row();
        }
        if (Gdx.graphics.supportsDisplayModeChange() || initConfigManager.isAvailable(SettingsManager.InitConfig.GRAPHICS_AA_LEVELS)) {
            Table m21115w5 = m21115w(Game.f8589i.localeManager.i18n.get("settings_screen"), "icon-screen");
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
            Color color = Color.WHITE;
            List.ListStyle listStyle = new List.ListStyle(font, color, color, Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.LIGHT_BLUE.P800));
            Drawable drawable = listStyle.selection;
            drawable.setLeftWidth(drawable.getLeftWidth() + 10.0f);
            Drawable drawable2 = listStyle.selection;
            drawable2.setRightWidth(drawable2.getRightWidth() + 10.0f);
            SelectBox.SelectBoxStyle selectBoxStyle = new SelectBox.SelectBoxStyle(Game.f8589i.assetManager.getFont(24), color, Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.GREY.P900), new ScrollPane.ScrollPaneStyle(Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.GREY.P800), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank"), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank")), listStyle);
            Drawable drawable3 = selectBoxStyle.background;
            drawable3.setLeftWidth(drawable3.getLeftWidth() + 10.0f);
            Drawable drawable4 = selectBoxStyle.background;
            drawable4.setRightWidth(drawable4.getRightWidth() + 10.0f);
            Table table5 = new Table();
            m21115w5.add(table5).colspan(2).width(1360.0f).row();
            if (Gdx.graphics.supportsDisplayModeChange()) {
                if (initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_FS_ENABLED) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                LabelToggleButton labelToggleButton = new LabelToggleButton("Full screen", z2, 30, 40.0f, true, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.n0
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        SettingsScreen.this.m21123o((Boolean) obj);
                    }
                });
                this.f11068h = labelToggleButton;
                table5.add(labelToggleButton).width(616.0f).padLeft(64.0f).height(64.0f).top().left();
                if (initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_VSYNC) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                LabelToggleButton labelToggleButton2 = new LabelToggleButton("Vertical synchronization", z3, 30, 40.0f, true, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.o0
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        SettingsScreen.this.m21122p((Boolean) obj);
                    }
                });
                this.f11069i = labelToggleButton2;
                table5.add(labelToggleButton2).width(616.0f).padLeft(64.0f).height(64.0f).top().left().row();
                Graphics.DisplayMode[] displayModes = Gdx.graphics.getDisplayModes();
                int i2 = 0;
                for (Graphics.DisplayMode displayMode : displayModes) {
                    int i3 = displayMode.bitsPerPixel;
                    if (i2 < i3) {
                        i2 = i3;
                    }
                }
                Array array = new Array(IntPair.class);
                for (Graphics.DisplayMode displayMode2 : displayModes) {
                    if (displayMode2.bitsPerPixel >= i2 && displayMode2.height >= 540.0f) {
                        int i4 = 0;
                        while (true) {
                            if (i4 < array.size) {
                                T[] tArr = array.items;
                                if (((IntPair[]) tArr)[i4].f15103a == displayMode2.width && ((IntPair[]) tArr)[i4].f15104b == displayMode2.height) {
                                    z4 = true;
                                    break;
                                }
                                i4++;
                            } else {
                                z4 = false;
                                break;
                            }
                        }
                        if (!z4) {
                            array.add(new IntPair(displayMode2.width, displayMode2.height));
                        }
                    }
                }
                array.sort(new Comparator() { // from class: com.prineside.tdi2.screens.p0
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int m21121q;
                        m21121q = SettingsScreen.m21121q((IntPair) obj, (IntPair) obj2);
                        return m21121q;
                    }
                });
                Array<String> array2 = new Array<>(String.class);
                for (int i5 = 0; i5 < array.size; i5++) {
                    IntPair intPair = ((IntPair[]) array.items)[i5];
                    array2.add(intPair.f15103a + "x" + intPair.f15104b);
                }
                Graphics.DisplayMode bestFullscreenMode = SettingsManager.getBestFullscreenMode(initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_FS_WIDTH), initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_FS_HEIGHT));
                SelectBox<String> selectBox = new SelectBox<>(selectBoxStyle);
                this.f11070j = selectBox;
                selectBox.setItems(array2);
                this.f11070j.setSelected(bestFullscreenMode.width + "x" + bestFullscreenMode.height);
                this.f11070j.addListener(new ChangeListener() { // from class: com.prineside.tdi2.screens.SettingsScreen.16
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        SettingsScreen.this.f11077q.setEnabled(true);
                    }
                });
                table5.add((Table) this.f11070j).width(516.0f).padLeft(64.0f).height(64.0f).padTop(8.0f).padRight(100.0f).top().left();
                Group group2 = new Group();
                group2.setTransform(false);
                table5.add((Table) group2).width(616.0f).padLeft(64.0f).height(64.0f).top().left().row();
                final Label label8 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
                label8.setPosition(420.0f, 0.0f);
                label8.setSize(180.0f, 64.0f);
                group2.addActor(label8);
                int i6 = initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_FPS_LIMIT);
                HorizontalSlider horizontalSlider5 = new HorizontalSlider(400.0f, i6, 0.0d, 1.0d, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.q0
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        SettingsScreen.this.m21120r(label8, (Double) obj);
                    }
                });
                this.f11071k = horizontalSlider5;
                horizontalSlider5.setNotifyOnDrag(true);
                this.f11071k.setSize(400.0f, 64.0f);
                int i7 = 9001;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    iArr = f11060r;
                    if (i8 >= iArr.length) {
                        break;
                    }
                    int abs = Math.abs(iArr[i8] - i6);
                    if (abs < i7) {
                        i9 = i8;
                        i7 = abs;
                    }
                    i8++;
                }
                this.f11071k.setValue(i9 / (iArr.length - 1), true);
                group2.addActor(this.f11071k);
            }
            if (initConfigManager.isAvailable(SettingsManager.InitConfig.GRAPHICS_AA_LEVELS)) {
                table5.add((Table) new Label("Anti-aliasing", Game.f8589i.assetManager.getLabelStyle(30))).top().left().padTop(24.0f).padLeft(64.0f).row();
                Group group3 = new Group();
                group3.setTransform(false);
                table5.add((Table) group3).width(600.0f).padLeft(64.0f).height(64.0f).top().left().row();
                final Label label9 = new Label(initConfigManager.get(initConfig) + " samples", Game.f8589i.assetManager.getLabelStyle(24));
                label9.setPosition(420.0f, 0.0f);
                label9.setSize(180.0f, 64.0f);
                group3.addActor(label9);
                HorizontalSlider horizontalSlider6 = new HorizontalSlider(400.0f, initConfigManager.get(initConfig), 0.0d, 4.0d, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.r0
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        SettingsScreen.this.m21119s(label9, initConfigManager, (Double) obj);
                    }
                });
                this.f11075o = horizontalSlider6;
                horizontalSlider6.setNotifyOnDrag(true);
                this.f11075o.setSize(400.0f, 64.0f);
                group3.addActor(this.f11075o);
            }
            RectButton rectButton = new RectButton("Apply settings", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.s0
                @Override // java.lang.Runnable
                public final void run() {
                    SettingsScreen.this.m21118t(initConfigManager);
                }
            });
            this.f11077q = rectButton;
            rectButton.setEnabled(false);
            table5.add((Table) this.f11077q).size(220.0f, 64.0f).padLeft(64.0f).left().padTop(32.0f).padBottom(16.0f).row();
            Label label10 = new Label("Game should be restarted to apply some settings", Game.f8589i.assetManager.getLabelStyle(24));
            this.f11076p = label10;
            label10.setColor(MaterialColor.AMBER.P500);
            this.f11076p.setVisible(false);
            table5.add((Table) this.f11076p).top().left().row();
            table5.add().height(1.0f).expandX().fillX();
        }
        Table m21115w6 = m21115w(Game.f8589i.localeManager.i18n.get("settings_graphics"), "icon-easel");
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_large_fonts"), Game.f8589i.settingsManager.isLargeFontsEnabled(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.17
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setLargeFontsEnabled(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_draw_particles"), Game.f8589i.settingsManager.isParticlesDrawing(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.18
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setParticlesDrawing(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_draw_explosions"), Game.f8589i.settingsManager.isExplosionsDrawing(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.19
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setExplosionsDrawing(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_draw_projectiles"), Game.f8589i.settingsManager.isProjectilesDrawing(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.20
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setProjectilesDrawing(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_draw_projectile_trails"), Game.f8589i.settingsManager.isProjectileTrailsDrawing(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.21
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setProjectileTrailsDrawing(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_flying_coins"), Game.f8589i.settingsManager.isFlyingCoinsEnabled(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.22
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setFlyingCoinsEnabled(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_ui_animations"), Game.f8589i.settingsManager.isUiAnimationsEnabled(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.23
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setUiAnimationsEnabled(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        m21115w6.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_stains"), Game.f8589i.settingsManager.isStainsEnabled(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.24
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setStainsEnabled(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        String str4 = Game.f8589i.localeManager.i18n.get("settings_slow_motion_pause");
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SLOW_MOTION_PAUSE) == 1.0d) {
            z5 = true;
        } else {
            z5 = false;
        }
        m21115w6.add(new LabelToggleButton(str4, z5, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.25
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.SLOW_MOTION_PAUSE, bool.booleanValue() ? 1.0d : 0.0d);
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        String str5 = Game.f8589i.localeManager.i18n.get("settings_draw_tower_target");
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DRAW_TOWER_TARGET) == 1.0d) {
            z6 = true;
        } else {
            z6 = false;
        }
        m21115w6.add(new LabelToggleButton(str5, z6, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.26
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.DRAW_TOWER_TARGET, bool.booleanValue() ? 1.0d : 0.0d);
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        String str6 = Game.f8589i.localeManager.i18n.get("settings_live_leaderboards");
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.LIVE_LEADERBOARDS) > 0.0d) {
            z7 = true;
        } else {
            z7 = false;
        }
        m21115w6.add(new LabelToggleButton(str6, z7, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.27
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.LIVE_LEADERBOARDS, bool.booleanValue() ? 1.0d : 0.0d);
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        String str7 = Game.f8589i.localeManager.i18n.get("settings_statistics_chart");
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.STATISTICS_CHART_ENABLED) > 0.0d) {
            z8 = true;
        } else {
            z8 = false;
        }
        m21115w6.add(new LabelToggleButton(str7, z8, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.28
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.STATISTICS_CHART_ENABLED, bool.booleanValue() ? 1.0d : 0.0d);
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        final LabelToggleButton labelToggleButton3 = new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_3d_models"), Game.f8589i.settingsManager.isThreeDeeModelsEnabled(), 30, 40.0f, true, null);
        labelToggleButton3.onToggle = new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.29
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                if (Game.f8589i.settingsManager.setThreeDeeModelsEnabled(bool.booleanValue())) {
                    Game.f8589i.uiManager.mainMenuUiScene.recreate();
                    Game.f8589i.uiManager.mainMenuUiScene.rebuildIfNeeded();
                    return;
                }
                labelToggleButton3.setEnabled(Game.f8589i.settingsManager.isThreeDeeModelsEnabled());
            }
        };
        m21115w6.add(labelToggleButton3).padLeft(64.0f).width(616.0f).height(64.0f);
        String str8 = Game.f8589i.localeManager.i18n.get("settings_loot_icons");
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.LOOT_ICONS_ENABLED) != 0.0d) {
            z9 = true;
        } else {
            z9 = false;
        }
        LabelToggleButton labelToggleButton4 = new LabelToggleButton(str8, z9, 30, 40.0f, true, null);
        labelToggleButton4.onToggle = new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.30
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.LOOT_ICONS_ENABLED, bool.booleanValue() ? 1.0d : 0.0d);
            }
        };
        m21115w6.add(labelToggleButton4).padLeft(64.0f).width(616.0f).height(64.0f).row();
        if (HotKeyHintLabel.isAvailable()) {
            String str9 = Game.f8589i.localeManager.i18n.get("settings_hot_key_hints");
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UI_HOT_KEY_HINTS) != 0.0d) {
                z14 = true;
            } else {
                z14 = false;
            }
            LabelToggleButton labelToggleButton5 = new LabelToggleButton(str9, z14, 30, 40.0f, true, null);
            labelToggleButton5.onToggle = new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.31
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(Boolean bool) {
                    Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.UI_HOT_KEY_HINTS, bool.booleanValue() ? 1.0d : 0.0d);
                }
            };
            m21115w6.add(labelToggleButton5).padLeft(64.0f).width(616.0f).height(64.0f);
            z10 = false;
        } else {
            z10 = true;
        }
        if (Game.f8589i.actionResolver.rewardAdsAvailable()) {
            LabelToggleButton labelToggleButton6 = new LabelToggleButton();
            String str10 = Game.f8589i.localeManager.i18n.get("settings_pause_ads_icon");
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.ENABLE_PAUSE_AD_ICON) != 0.0d) {
                z13 = true;
            } else {
                z13 = false;
            }
            labelToggleButton6.setup(str10, z13, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.32
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(Boolean bool) {
                    Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.ENABLE_PAUSE_AD_ICON, bool.booleanValue() ? 1.0d : 0.0d);
                }
            });
            Cell height = m21115w6.add(labelToggleButton6).padLeft(64.0f).width(616.0f).height(64.0f);
            if (!z10) {
                height.row();
            }
        }
        Group group4 = new Group();
        group4.setTransform(false);
        Label label11 = new Label(Game.f8589i.localeManager.i18n.get("settings_ui_safe_zone"), Game.f8589i.assetManager.getLabelStyle(30));
        label11.setSize(100.0f, 64.0f);
        label11.setPosition(0.0f, 64.0f);
        group4.addActor(label11);
        final Label label12 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        label12.setPosition(420.0f, 0.0f);
        label12.setSize(180.0f, 64.0f);
        group4.addActor(label12);
        double d = initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_SAFE_AREA);
        HorizontalSlider horizontalSlider7 = new HorizontalSlider(400.0f, d, 0.0d, 120.0d, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.t0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                SettingsScreen.this.m21117u(initConfigManager, label12, (Double) obj);
            }
        });
        this.f11072l = horizontalSlider7;
        horizontalSlider7.setNotifyOnDrag(true);
        this.f11072l.setSize(400.0f, 64.0f);
        this.f11072l.setValue(d, true);
        group4.addActor(this.f11072l);
        m21115w6.row();
        m21115w6.add((Table) group4).padLeft(64.0f).width(616.0f).height(128.0f);
        Group group5 = new Group();
        group5.setTransform(false);
        Label label13 = new Label(Game.f8589i.localeManager.i18n.get("settings_ui_scale"), Game.f8589i.assetManager.getLabelStyle(30));
        label13.setSize(100.0f, 64.0f);
        label13.setPosition(0.0f, 64.0f);
        group5.addActor(label13);
        final Label label14 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        label14.setPosition(420.0f, 0.0f);
        label14.setSize(180.0f, 64.0f);
        group5.addActor(label14);
        double customValue2 = Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UI_SCALE);
        HorizontalSlider horizontalSlider8 = new HorizontalSlider(400.0f, customValue2, 0.7d, 1.0d, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.u0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                SettingsScreen.m21116v(Label.this, (Double) obj);
            }
        });
        this.f11073m = horizontalSlider8;
        horizontalSlider8.setNotifyOnDrag(true);
        this.f11073m.setSize(400.0f, 64.0f);
        this.f11073m.setValue(customValue2, true);
        group5.addActor(this.f11073m);
        m21115w6.add((Table) group5).padLeft(64.0f).width(616.0f).height(128.0f);
        m21115w6.row();
        Table m21115w7 = m21115w(Game.f8589i.localeManager.i18n.get("settings_development"), "icon-tools");
        m21115w7.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_debug_mode"), Game.f8589i.settingsManager.isInDebugMode(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.33
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setDebugMode(bool.booleanValue());
                SettingsScreen.m21125m(SettingsScreen.this);
                if (SettingsScreen.this.f11065e <= 3) {
                    Game.f8589i.soundManager.playRarity(RarityType.COMMON);
                } else if (SettingsScreen.this.f11065e == 4) {
                    Game.f8589i.soundManager.playRarity(RarityType.RARE);
                } else if (SettingsScreen.this.f11065e == 5) {
                    Game.f8589i.soundManager.playRarity(RarityType.VERY_RARE);
                } else if (SettingsScreen.this.f11065e == 6) {
                    Game.f8589i.soundManager.playRarity(RarityType.EPIC);
                } else if (SettingsScreen.this.f11065e == 7) {
                    Game.f8589i.soundManager.playRarity(RarityType.LEGENDARY);
                }
                if (SettingsScreen.this.f11065e == 8) {
                    Game game2 = Game.f8589i;
                    game2.screenManager.startNewBasicLevel(game2.basicLevelManager.getLevel("zecred"), null);
                }
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        m21115w7.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_debug_detailed_mode"), Game.f8589i.settingsManager.isInDebugDetailedMode(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.34
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setDebugDetailedMode(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_SHOW_FPS) != 0.0d) {
            z11 = true;
        } else {
            z11 = false;
        }
        m21115w7.add(new LabelToggleButton("FPS", z11, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.35
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                SettingsManager settingsManager4 = Game.f8589i.settingsManager;
                SettingsManager.CustomValueType customValueType4 = SettingsManager.CustomValueType.DBG_SHOW_FPS;
                settingsManager4.setCustomValue(customValueType4, Game.f8589i.settingsManager.getCustomValue(customValueType4) == 0.0d ? 1.0d : 0.0d);
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_SYNC_VALIDATION) != 0.0d) {
            z12 = true;
        } else {
            z12 = false;
        }
        m21115w7.add(new LabelToggleButton("Desync check", z12, 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.36
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                SettingsManager settingsManager4 = Game.f8589i.settingsManager;
                SettingsManager.CustomValueType customValueType4 = SettingsManager.CustomValueType.DBG_SYNC_VALIDATION;
                settingsManager4.setCustomValue(customValueType4, Game.f8589i.settingsManager.getCustomValue(customValueType4) == 0.0d ? 1.0d : 0.0d);
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f).row();
        m21115w7.add(new LabelToggleButton(Game.f8589i.localeManager.i18n.get("settings_debug_bug_reports"), Game.f8589i.settingsManager.isBugReportsEnabled(), 30, 40.0f, true, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.SettingsScreen.37
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                Game.f8589i.settingsManager.setBugReportsEnabled(bool.booleanValue());
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        m21115w7.add((Table) new LabelButton("Send logs", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.39

            /* renamed from: com.prineside.tdi2.screens.SettingsScreen$39$1 */
            /* loaded from: classes2.dex */
            public class C21821 implements Input.TextInputListener {
                public C21821() {
                }

                @Override // com.badlogic.gdx.Input.TextInputListener
                public void canceled() {
                }

                @Override // com.badlogic.gdx.Input.TextInputListener
                public void input(final String str) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.v0
                        @Override // java.lang.Runnable
                        public final void run() {
                            SettingsScreen.RunnableC218139.C21821.m21112b(str);
                        }
                    });
                }

                /* renamed from: b */
                public static /* synthetic */ void m21112b(String str) {
                    RandomXS128 randomXS128 = FastRandom.random;
                    randomXS128.setSeed(new Random().nextLong());
                    String distinguishableString = FastRandom.getDistinguishableString(6, randomXS128);
                    StringBuilder sb = new StringBuilder();
                    sb.append("Manual ");
                    sb.append(distinguishableString);
                    sb.append(": ");
                    if (str.length() > 256) {
                        str = str.substring(0, 256);
                    }
                    sb.append(str);
                    Logger.report(sb.toString());
                    Gdx.app.getClipboard().setContents(distinguishableString);
                    Notifications notifications = Game.f8589i.uiManager.notifications;
                    notifications.add("Logs sent, ID: [#FFFF00]" + distinguishableString + "[] (copied to clipboard)", null, null, null);
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.uiManager.getTextInput(new C21821(), "Why do you want to send logs?", "", "Reason (in English)");
            }
        })).padLeft(64.0f).height(64.0f).width(616.0f).row();
        m21115w7.add((Table) new LabelButton("Replay", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.40
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.uiManager.getTextInput(new Input.TextInputListener() { // from class: com.prineside.tdi2.screens.SettingsScreen.40.1
                    @Override // com.badlogic.gdx.Input.TextInputListener
                    public void canceled() {
                    }

                    @Override // com.badlogic.gdx.Input.TextInputListener
                    public void input(final String str11) {
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.40.1.1

                            /* renamed from: com.prineside.tdi2.screens.SettingsScreen$40$1$1$1 */
                            /* loaded from: classes2.dex */
                            public class C21871 implements Net.HttpResponseListener {
                                public C21871() {
                                }

                                @Override // com.badlogic.gdx.Net.HttpResponseListener
                                public void cancelled() {
                                    Logger.error("SettingsScreen", Transaction.REVERSAL_TEXT_CANCELLED);
                                }

                                /* renamed from: b */
                                public static /* synthetic */ void m21110b(JsonValue jsonValue, String str) {
                                    try {
                                        GameStateSystem.startReplay(ReplayManager.ReplayRecord.fromCompactString(jsonValue.getString("replay"), true));
                                    } catch (Exception e) {
                                        Logger.error("SettingsScreen", e.getMessage(), e);
                                        Logger.error("SettingsScreen", str);
                                        Notifications notifications = Game.f8589i.uiManager.notifications;
                                        notifications.add("Failed to load the replay: " + e.getMessage(), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                                    }
                                }

                                @Override // com.badlogic.gdx.Net.HttpResponseListener
                                public void failed(Throwable th) {
                                    Logger.error("SettingsScreen", "Failed", th);
                                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.40.1.1.1.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Game game = Game.f8589i;
                                            game.uiManager.notifications.add("Failed to load the replay", game.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                                        }
                                    });
                                }

                                @Override // com.badlogic.gdx.Net.HttpResponseListener
                                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                                    final String resultAsString = httpResponse.getResultAsString();
                                    Logger.log("SettingsScreen", resultAsString);
                                    try {
                                        final JsonValue parse = new JsonReader().parse(resultAsString);
                                        if (parse.getString("status").equals("success")) {
                                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.w0
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SettingsScreen.RunnableC218440.C21851.RunnableC21861.C21871.m21110b(JsonValue.this, resultAsString);
                                                }
                                            });
                                        } else {
                                            Logger.error("SettingsScreen", "Status is not success: " + parse.getString("status"));
                                            Logger.log("SettingsScreen", resultAsString);
                                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.40.1.1.1.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    Notifications notifications = Game.f8589i.uiManager.notifications;
                                                    notifications.add(parse.getString("status") + ": " + parse.getString("message"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                                                }
                                            });
                                        }
                                    } catch (Exception unused) {
                                        Logger.error("SettingsScreen", "Invalid response: " + resultAsString);
                                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.40.1.1.1.2
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                Notifications notifications = Game.f8589i.uiManager.notifications;
                                                notifications.add("Invalid response: " + resultAsString, Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                                            }
                                        });
                                    }
                                }
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                ReplayManager.ReplayRecord record = Game.f8589i.replayManager.getRecord(str11);
                                if (record != null && record.getStateBytes() != null) {
                                    try {
                                        GameStateSystem.startReplay(record);
                                        return;
                                    } catch (Exception e) {
                                        Logger.error("SettingsScreen", "parsing failed", e);
                                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.40.1.1.2
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                Game game2 = Game.f8589i;
                                                game2.uiManager.notifications.add("Failed to load the replay", game2.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                                            }
                                        });
                                        return;
                                    }
                                }
                                Logger.log("SettingsScreen", "requesting server for replay");
                                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                                httpRequest.setUrl(Config.SITE_URL + "/?m=api&a=getReplay" + Config.SITE_SHARED_GET_PART);
                                HashMap hashMap = new HashMap();
                                hashMap.put("replayid", str11);
                                if (Game.f8589i.authManager.getSessionId() != null) {
                                    hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
                                }
                                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                                Gdx.f38302net.sendHttpRequest(httpRequest, new C21871());
                            }
                        });
                    }
                }, "Replay ID", "", "Enter replay ID to start");
            }
        })).padLeft(64.0f).width(616.0f).height(64.0f);
        m21115w7.add((Table) new LabelButton("Device info", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.SettingsScreen.41
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.screenManager.setScreen(new PerformanceReportScreen());
            }
        })).padLeft(64.0f).height(64.0f).width(616.0f).row();
        this.f11064d.add().height(144.0f).fillX().expandX().row();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m21120r(Label label, Double d) {
        float value = (float) this.f11071k.getValue();
        int[] iArr = f11060r;
        int round = MathUtils.round(value * (iArr.length - 1));
        RectButton rectButton = this.f11077q;
        if (rectButton != null) {
            rectButton.setEnabled(true);
        }
        int i = iArr[round];
        if (i == 0) {
            label.setText("No FPS limit");
            return;
        }
        label.setText("Max " + i + " FPS");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m21119s(Label label, ActionResolver.InitConfigManager initConfigManager, Double d) {
        this.f11077q.setEnabled(true);
        int round = MathUtils.round((float) d.doubleValue());
        label.setText(round + " samples");
        if (round != initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_AA_LEVELS)) {
            this.f11076p.setVisible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m21118t(ActionResolver.InitConfigManager initConfigManager) {
        int round;
        if (Gdx.graphics.supportsDisplayModeChange()) {
            Gdx.graphics.setVSync(this.f11069i.isEnabled());
            SettingsManager.InitConfig initConfig = SettingsManager.InitConfig.GRAPHICS_VSYNC;
            if (initConfigManager.get(initConfig) != this.f11069i.isEnabled()) {
                initConfigManager.set(initConfig, this.f11069i.isEnabled() ? 1 : 0);
            }
            float value = (float) this.f11071k.getValue();
            int[] iArr = f11060r;
            int i = iArr[MathUtils.round(value * (iArr.length - 1))];
            SettingsManager.InitConfig initConfig2 = SettingsManager.InitConfig.GRAPHICS_FPS_LIMIT;
            if (initConfigManager.get(initConfig2) != i) {
                initConfigManager.set(initConfig2, i);
            }
            Game.f8589i.actionResolver.setFpsLimit(i);
            if (this.f11070j.getSelected() != null) {
                String[] split = this.f11070j.getSelected().split("x");
                if (split.length >= 2) {
                    try {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        initConfigManager.set(SettingsManager.InitConfig.GRAPHICS_FS_WIDTH, parseInt);
                        initConfigManager.set(SettingsManager.InitConfig.GRAPHICS_FS_HEIGHT, parseInt2);
                    } catch (Exception e) {
                        Logger.error("SettingsScreen", e.getMessage());
                    }
                }
            }
            if (this.f11068h.isEnabled()) {
                Graphics.DisplayMode bestFullscreenMode = SettingsManager.getBestFullscreenMode(initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_FS_WIDTH), initConfigManager.get(SettingsManager.InitConfig.GRAPHICS_FS_HEIGHT));
                if (bestFullscreenMode != null) {
                    Gdx.graphics.setFullscreenMode(bestFullscreenMode);
                    SettingsManager.InitConfig initConfig3 = SettingsManager.InitConfig.GRAPHICS_FS_ENABLED;
                    if (initConfigManager.get(initConfig3) == 0) {
                        initConfigManager.set(initConfig3, 1);
                    }
                }
            } else {
                Gdx.graphics.setWindowedMode(1280, Config.DISPLAY_HEIGHT);
                SettingsManager.InitConfig initConfig4 = SettingsManager.InitConfig.GRAPHICS_FS_ENABLED;
                if (initConfigManager.get(initConfig4) != 0) {
                    initConfigManager.set(initConfig4, 0);
                }
            }
        }
        SettingsManager.InitConfig initConfig5 = SettingsManager.InitConfig.GRAPHICS_AA_LEVELS;
        if (initConfigManager.isAvailable(initConfig5) && initConfigManager.get(initConfig5) != (round = MathUtils.round((float) this.f11075o.getValue()))) {
            initConfigManager.set(initConfig5, round);
        }
        this.f11077q.setEnabled(false);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f11061a);
        Game.f8589i.uiManager.removeLayer(this.f11062b);
        Game.f8589i.uiManager.removeLayer(this.f11063c);
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

    /* renamed from: w */
    public final Table m21115w(String str, String str2) {
        Table table = new Table();
        this.f11064d.add(table).fillX().expandX().row();
        if (this.f11066f % 2 == 0) {
            table.add((Table) new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f}, new Color(0.0f, 0.0f, 0.0f, 0.28f))).expandX().fillX().height(24.0f).padTop(8.0f).row();
        }
        Table table2 = new Table();
        if (this.f11066f % 2 == 0) {
            table2.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)));
        }
        table.add(table2).expandX().fillX().row();
        Table table3 = new Table();
        table2.add(table3).width(1360.0f).padTop(32.0f).row();
        table3.add((Table) new Image(Game.f8589i.assetManager.getDrawable(str2))).padRight(16.0f).size(48.0f).left();
        table3.add((Table) new Label(str, Game.f8589i.assetManager.getLabelStyle(36))).expandX().fillX();
        Table table4 = new Table();
        table2.add(table4).padBottom(16.0f).padTop(16.0f).width(1360.0f).row();
        if (this.f11066f % 2 == 0) {
            table.add((Table) new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f}, new Color(0.0f, 0.0f, 0.0f, 0.28f))).expandX().fillX().height(24.0f).padBottom(8.0f).row();
        }
        this.f11066f++;
        return table4;
    }

    /* renamed from: x */
    public final void m21114x(String str) {
        Game.f8589i.localeManager.setLocale(str, true);
        Game.f8589i.screenManager.goToSettingsScreen();
    }

    /* renamed from: n */
    public static /* synthetic */ void m21124n(Label label, Double d) {
        int round = MathUtils.round(d.floatValue());
        Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.STATE_AUTO_SAVE_INTERVAL, round * 0.5f);
        if (round == 0) {
            label.setText(Game.f8589i.localeManager.i18n.get("never"));
        } else if (round % 2 == 0) {
            label.setText((round / 2) + Game.f8589i.localeManager.i18n.get("TIME_CHAR_MINUTE"));
        } else {
            label.setText((round / 2) + Game.f8589i.localeManager.i18n.get("TIME_CHAR_MINUTE") + " 30" + Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ void m21117u(ActionResolver.InitConfigManager initConfigManager, Label label, Double d) {
        int round = MathUtils.round(d.floatValue());
        initConfigManager.set(SettingsManager.InitConfig.GRAPHICS_SAFE_AREA, round);
        this.f11063c.getTable().setTouchable(Touchable.disabled);
        this.f11063c.getTable().clear();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        Color color = MaterialColor.LIGHT_BLUE.P500;
        image.setColor(color.cpy().mul(1.0f, 1.0f, 1.0f, 0.56f));
        float f = round;
        this.f11063c.getTable().add((Table) image).expandY().fillY().width(f);
        this.f11063c.getTable().add().fill().expand();
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setColor(color.cpy().mul(1.0f, 1.0f, 1.0f, 0.56f));
        this.f11063c.getTable().add((Table) image2).expandY().fillY().width(f);
        image.addAction(Actions.sequence(Actions.delay(0.2f), Actions.fadeOut(1.0f)));
        image2.addAction(Actions.sequence(Actions.delay(0.2f), Actions.fadeOut(1.0f)));
        if (round == 0) {
            label.setText("Full screen");
            return;
        }
        label.setText(round + "px");
    }

    /* renamed from: v */
    public static /* synthetic */ void m21116v(Label label, Double d) {
        double doubleValue = d.doubleValue();
        Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.UI_SCALE, doubleValue);
        label.setText(MathUtils.round((float) (doubleValue * 100.0d)) + "%");
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        super.show();
        Game.f8589i.uiManager.stage.setScrollFocus(this.f11067g);
    }
}
