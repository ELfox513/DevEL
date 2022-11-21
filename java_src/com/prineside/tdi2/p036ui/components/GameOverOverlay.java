package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.MapPrestigeConfig;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.LeaderBoardManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.AttentionRaysUnderlay;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.ParticlesCanvas;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.components.MapPrestigeOverlay;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.GraphicsSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.components.GameOverOverlay */
/* loaded from: classes2.dex */
public class GameOverOverlay implements Disposable {

    /* renamed from: A */
    public final Label f12990A;

    /* renamed from: B */
    public final Label f12991B;

    /* renamed from: C */
    public final Label f12992C;

    /* renamed from: D */
    public Group f12993D;

    /* renamed from: E */
    public ComplexButton f12994E;

    /* renamed from: F */
    public ComplexButton f12995F;

    /* renamed from: G */
    public final GameSystemProvider f12996G;

    /* renamed from: H */
    public Array<GameOverItemStack> f12997H;

    /* renamed from: I */
    public boolean f12998I;

    /* renamed from: J */
    public Array<ItemCell> f12999J;

    /* renamed from: a */
    public final UiManager.UiLayer f13000a;

    /* renamed from: b */
    public final UiManager.UiLayer f13001b;

    /* renamed from: d */
    public MapPrestigeOverlay f13002d;

    /* renamed from: k */
    public final Group f13003k;

    /* renamed from: p */
    public final Table f13004p;

    /* renamed from: q */
    public final Label f13005q;

    /* renamed from: r */
    public final Label f13006r;

    /* renamed from: s */
    public final Label f13007s;

    /* renamed from: t */
    public final Label f13008t;

    /* renamed from: u */
    public final Label f13009u;

    /* renamed from: v */
    public final Image f13010v;

    /* renamed from: w */
    public final Group f13011w;

    /* renamed from: x */
    public final Label f13012x;

    /* renamed from: y */
    public final Label f13013y;

    /* renamed from: z */
    public final Label f13014z;

    /* renamed from: com.prineside.tdi2.ui.components.GameOverOverlay$GameOverItemStack */
    /* loaded from: classes2.dex */
    public static class GameOverItemStack extends ItemStack {
        public boolean isDailyLoot;
        public boolean isDoubled;

        public GameOverItemStack(ItemStack itemStack) {
            super(itemStack);
        }
    }

    public void maximize() {
        m20574n(true);
    }

    public GameOverOverlay(final GameSystemProvider gameSystemProvider) {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 170, "GameOverOverlay overlay", true);
        this.f13000a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 171, "GameOverOverlay main");
        this.f13001b = addLayer2;
        this.f12999J = new Array<>();
        this.f12996G = gameSystemProvider;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(Config.BACKGROUND_COLOR);
        image.getColor().f3889a = 0.78f;
        addLayer.getTable().add((Table) image).expand().fill();
        Group group = new Group();
        group.setOrigin(600.0f, 380.0f);
        addLayer2.getTable().add((Table) group).size(1200.0f, 760.0f);
        Group group2 = new Group();
        this.f13003k = group2;
        group2.setOrigin(600.0f, 380.0f);
        group2.setSize(1200.0f, 760.0f);
        group.addActor(group2);
        group2.addActor(new QuadActor(new Color(791621631), new float[]{0.0f, 0.0f, 0.0f, 760.0f, 1190.0f, 748.0f, 1200.0f, 22.0f}));
        Table table = new Table();
        this.f13004p = table;
        table.setWidth(1200.0f);
        ScrollPane scrollPane = new ScrollPane(table);
        scrollPane.setSize(1198.0f, 484.0f);
        scrollPane.setPosition(1.0f, 33.0f);
        scrollPane.setCullingArea(null);
        group2.addActor(scrollPane);
        Actor image2 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image2.setSize(1150.0f, 64.0f);
        image2.setColor(new Color(791621631));
        image2.setPosition(25.0f, 453.0f);
        Touchable touchable = Touchable.disabled;
        image2.setTouchable(touchable);
        group2.addActor(image2);
        Actor image3 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image3.setSize(1150.0f, 64.0f);
        image3.setColor(new Color(791621631));
        image3.setPosition(25.0f, 32.0f);
        image3.setTouchable(touchable);
        group2.addActor(image3);
        String str = Game.f8589i.localeManager.i18n.get("game_over");
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        Actor label = new Label(str, new Label.LabelStyle(font, color));
        label.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label.setPosition(80.0f, 678.0f);
        label.setSize(100.0f, 32.0f);
        group2.addActor(label);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13005q = label2;
        label2.setPosition(80.0f, 636.0f);
        label2.setSize(100.0f, 32.0f);
        group2.addActor(label2);
        Label label3 = new Label(Game.f8589i.progressManager.getDifficultyName(gameSystemProvider.gameState.difficultyMode), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label3.setColor(Game.f8589i.progressManager.getDifficultyModeColor(gameSystemProvider.gameState.difficultyMode));
        label3.setPosition(80.0f, 678.0f);
        label3.setSize(1020.0f, 32.0f);
        label3.setAlignment(16);
        group2.addActor(label3);
        Label label4 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13006r = label4;
        label4.setPosition(80.0f, 636.0f);
        label4.setSize(1020.0f, 32.0f);
        label4.setAlignment(16);
        group2.addActor(label4);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("game_over_defeated_waves_hint"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label5.setPosition(250.0f, 532.0f);
        label5.setSize(100.0f, 18.0f);
        label5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label5.setAlignment(1);
        group2.addActor(label5);
        Label label6 = new Label(Game.f8589i.localeManager.i18n.get("new_record") + "!", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f12990A = label6;
        label6.setPosition(250.0f, 500.0f);
        label6.setSize(100.0f, 18.0f);
        Color color2 = MaterialColor.AMBER.P500;
        label6.setColor(color2);
        label6.setAlignment(1);
        label6.setVisible(false);
        group2.addActor(label6);
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("score"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label7.setPosition(550.0f, 525.0f);
        label7.setSize(100.0f, 18.0f);
        label7.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label7.setAlignment(1);
        group2.addActor(label7);
        Label label8 = new Label(Game.f8589i.localeManager.i18n.get("new_record") + "!", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f12991B = label8;
        label8.setPosition(550.0f, 493.0f);
        label8.setSize(100.0f, 18.0f);
        label8.setColor(color2);
        label8.setAlignment(1);
        label8.setVisible(false);
        group2.addActor(label8);
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("duration"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label9.setPosition(850.0f, 532.0f);
        label9.setSize(100.0f, 18.0f);
        label9.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label9.setAlignment(1);
        group2.addActor(label9);
        Label label10 = new Label(Game.f8589i.localeManager.i18n.get("new_record") + "!", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f12992C = label10;
        label10.setPosition(850.0f, 500.0f);
        label10.setSize(100.0f, 18.0f);
        label10.setColor(color2);
        label10.setAlignment(1);
        label10.setVisible(false);
        group2.addActor(label10);
        Label label11 = new Label("15,918", new Label.LabelStyle(Game.f8589i.assetManager.getFont(60), color));
        this.f13007s = label11;
        label11.setPosition(550.0f, 563.0f);
        label11.setSize(100.0f, 48.0f);
        label11.setAlignment(1);
        group2.addActor(label11);
        Label label12 = new Label("57", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13008t = label12;
        label12.setPosition(250.0f, 570.0f);
        label12.setSize(100.0f, 26.0f);
        label12.setAlignment(1);
        group2.addActor(label12);
        Label label13 = new Label("17m 56s", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13009u = label13;
        label13.setPosition(850.0f, 570.0f);
        label13.setSize(100.0f, 26.0f);
        label13.setAlignment(1);
        group2.addActor(label13);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        this.f13010v = image4;
        image4.setPosition(587.0f, 698.0f);
        image4.setSize(32.0f, 32.0f);
        image4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        image4.setOrigin(1);
        image4.addAction(Actions.forever(Actions.rotateBy(90.0f, 1.0f)));
        group2.addActor(image4);
        Group group3 = new Group();
        this.f13011w = group3;
        group3.setSize(286.0f, 144.0f);
        group3.setPosition(457.0f, 695.0f);
        group3.setOrigin(1);
        group3.setVisible(false);
        group2.addActor(group3);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("ui-game-over-leaderboards-rank"));
        image5.setSize(286.0f, 144.0f);
        group3.addActor(image5);
        Table table2 = new Table();
        table2.setPosition(0.0f, 35.0f);
        table2.setSize(286.0f, 90.0f);
        group3.addActor(table2);
        Table table3 = new Table();
        table2.add(table3).row();
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
        image6.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        table3.add((Table) image6).size(32.0f, 32.0f);
        Label label14 = new Label(Game.f8589i.localeManager.i18n.get("leaderboard"), Game.f8589i.assetManager.getLabelStyle(21));
        label14.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        table3.add((Table) label14).height(32.0f).padLeft(8.0f).padRight(8.0f);
        Table table4 = new Table();
        table2.add(table4).row();
        Label label15 = new Label("1234", Game.f8589i.assetManager.getLabelStyle(30));
        this.f13012x = label15;
        table4.add((Table) label15);
        Label label16 = new Label(" / 9876", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13013y = label16;
        table4.add((Table) label16);
        Label label17 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13014z = label17;
        label17.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        table2.add((Table) label17).row();
        Group group4 = new Group();
        this.f12993D = group4;
        group4.setTransform(false);
        this.f12993D.setSize(113.0f, 415.0f);
        this.f12993D.setPosition(1197.0f, 146.0f);
        group2.addActor(this.f12993D);
        ComplexButton icon = new ComplexButton("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.1
            @Override // java.lang.Runnable
            public void run() {
                if (GameOverOverlay.this.f12997H != null && !GameOverOverlay.this.f12998I) {
                    GameOverOverlay.this.f12998I = true;
                    GameOverOverlay.this.f12994E.setVisible(false);
                    Game.f8589i.purchaseManager.showRewardingAd(PurchaseManager.RewardingAdsType.END_GAME, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.1.1
                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                        public void retrieved(Boolean bool) {
                            int round;
                            if (bool.booleanValue()) {
                                IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.REWARD_VIDEO, Game.getTimestampSeconds());
                                for (int i = 0; i < GameOverOverlay.this.f12997H.size; i++) {
                                    ItemStack itemStack = (ItemStack) GameOverOverlay.this.f12997H.get(i);
                                    if ((itemStack.getItem().getType() == ItemType.GREEN_PAPER || itemStack.getItem().getType() == ItemType.RESOURCE) && (round = StrictMath.round(itemStack.getCount() * 0.255f)) > 0) {
                                        ItemStack itemStack2 = new ItemStack(itemStack.getItem(), round);
                                        issuedItems.items.add(itemStack2);
                                        Game.f8589i.progressManager.addItems(itemStack2);
                                    }
                                }
                                Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                                int i2 = 0;
                                while (true) {
                                    Array<ItemStack> array = issuedItems.items;
                                    if (i2 >= array.size) {
                                        return;
                                    }
                                    ItemStack itemStack3 = array.get(i2);
                                    for (int i3 = 0; i3 < GameOverOverlay.this.f12999J.size; i3++) {
                                        ItemCell itemCell = (ItemCell) GameOverOverlay.this.f12999J.get(i3);
                                        if (itemCell.getItem() == itemStack3.getItem()) {
                                            itemCell.setCount(itemCell.getCount() + itemStack3.getCount());
                                            Label label18 = new Label("+25%", Game.f8589i.assetManager.getLabelStyle(21));
                                            label18.setColor(MaterialColor.PURPLE.P500);
                                            label18.setAlignment(16);
                                            label18.setPosition(96.0f, 108.0f);
                                            label18.setSize(20.0f, 20.0f);
                                            itemCell.addActor(label18);
                                        }
                                    }
                                    i2++;
                                }
                            } else {
                                Game game = Game.f8589i;
                                game.uiManager.dialog.showAlert(game.localeManager.i18n.get("something_wrong_try_later"));
                            }
                        }
                    });
                }
            }
        }).setBackground(Game.f8589i.assetManager.getDrawable("ui-game-over-left-button"), 0.0f, 0.0f, 193.0f, 127.0f).setIcon(Game.f8589i.assetManager.getDrawable("rewarding-ad"), 42.0f, 13.0f, 96.0f, 96.0f);
        this.f12994E = icon;
        icon.setPosition(-28.0f, -13.0f);
        this.f12994E.setSize(193.0f, 127.0f);
        ComplexButton complexButton = this.f12994E;
        Color color3 = MaterialColor.PURPLE.P600;
        complexButton.setBackgroundColors(color3, MaterialColor.PURPLE.P700, MaterialColor.PURPLE.P500, Color.GRAY);
        this.f12994E.setVisible(false);
        group2.addActor(this.f12994E);
        Color color4 = MaterialColor.PURPLE.P200;
        AttentionRaysUnderlay attentionRaysUnderlay = new AttentionRaysUnderlay(280.0f, color4);
        attentionRaysUnderlay.setPosition(-44.0f, -76.0f);
        this.f12994E.addActorAt(0, attentionRaysUnderlay);
        Label label18 = new Label("+25%", Game.f8589i.assetManager.getLabelStyle(24));
        label18.setPosition(59.0f, 27.0f);
        label18.setSize(69.0f, 21.0f);
        label18.setColor(color3);
        label18.setAlignment(1);
        this.f12994E.addActor(label18);
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("ui-game-over-left-button"));
        image7.setColor(color4);
        image7.setTouchable(touchable);
        image7.addAction(Actions.forever(Actions.sequence(Actions.alpha(0.0f, 0.5f), Actions.alpha(0.14f, 0.5f))));
        this.f12994E.addActor(image7);
        ComplexButton label19 = new ComplexButton(Game.f8589i.localeManager.i18n.get("restart"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.2
            @Override // java.lang.Runnable
            public void run() {
                gameSystemProvider.gameState.restartGame(false);
            }
        }).setBackground(Game.f8589i.assetManager.getDrawable("ui-game-over-overlay-left-button"), 0.0f, 0.0f, 405.0f, 127.0f).setIcon(Game.f8589i.assetManager.getDrawable("icon-restart"), 289.0f, 29.0f, 64.0f, 64.0f).setLabel(0.0f, 29.0f, 269.0f, 64.0f, 16);
        this.f12995F = label19;
        label19.setPosition(459.0f, -13.0f);
        this.f12995F.setSize(405.0f, 127.0f);
        group2.addActor(this.f12995F);
        Actor label20 = new ComplexButton(Game.f8589i.localeManager.i18n.get("menu"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.3
            @Override // java.lang.Runnable
            public void run() {
                if (GameStateSystem.GameMode.isBasicLevel(gameSystemProvider.gameState.gameMode)) {
                    Game.f8589i.screenManager.goToLevelSelectScreen();
                } else {
                    Game.f8589i.screenManager.goToCustomMapSelectScreen();
                }
            }
        }).setBackground(Game.f8589i.assetManager.getDrawable("ui-game-over-overlay-right-button"), 0.0f, 0.0f, 373.0f, 127.0f).setIcon(Game.f8589i.assetManager.getDrawable("icon-house"), 279.0f, 29.0f, 64.0f, 64.0f).setLabel(0.0f, 29.0f, 259.0f, 64.0f, 16);
        label20.setPosition(847.0f, -13.0f);
        label20.setSize(373.0f, 127.0f);
        group2.addActor(label20);
        addLayer.getTable().setColor(1.0f, 1.0f, 1.0f, 0.0f);
        addLayer.getTable().setVisible(false);
        group2.setScale(0.0f);
        addLayer2.getTable().setVisible(false);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        MapPrestigeOverlay mapPrestigeOverlay = this.f13002d;
        if (mapPrestigeOverlay != null) {
            mapPrestigeOverlay.dispose();
        }
        Game.f8589i.uiManager.removeLayer(this.f13000a);
        Game.f8589i.uiManager.removeLayer(this.f13001b);
    }

    public void minimize() {
        this.f12996G._input.enableAllInput();
        this.f12996G._graphics.setUiScreenshotMode(new GraphicsSystem.ScreenshotModeConfig());
        m20574n(false);
    }

    /* renamed from: n */
    public final void m20574n(boolean z) {
        if (z) {
            UiUtils.bouncyShowOverlay(this.f13000a.getTable(), this.f13001b.getTable(), this.f13003k);
        } else {
            UiUtils.bouncyHideOverlay(this.f13000a.getTable(), this.f13001b.getTable(), this.f13003k);
        }
    }

    public void show(Array<GameOverItemStack> array, final MapPrestigeConfig mapPrestigeConfig) {
        DifficultyMode difficultyMode;
        boolean z;
        boolean z2;
        boolean z3;
        this.f13005q.setText(Game.f8589i.localeManager.i18n.get("game_over_reason_" + this.f12996G.gameState.gameOverReason.name()));
        GameStateSystem.GameMode gameMode = this.f12996G.gameState.gameMode;
        GameStateSystem.GameMode gameMode2 = GameStateSystem.GameMode.BASIC_LEVELS;
        if (gameMode == gameMode2) {
            this.f13006r.setText(Game.f8589i.localeManager.i18n.get("level") + " " + this.f12996G.gameState.basicLevelName);
            this.f13006r.setColor(Game.f8589i.basicLevelManager.getLevelStage(this.f12996G.gameState.basicLevelName).color);
        } else if (gameMode == GameStateSystem.GameMode.USER_MAPS) {
            this.f13006r.setText(Game.f8589i.localeManager.i18n.get("custom_map"));
            this.f13006r.setColor(Color.WHITE);
        }
        int completedWavesCount = this.f12996G.wave.getCompletedWavesCount();
        long score = this.f12996G.gameState.getScore();
        int currentGameStatistic = (int) this.f12996G.statistics.getCurrentGameStatistic(StatisticsType.PRT);
        this.f13007s.setText(StringFormatter.commaSeparatedNumber(score));
        this.f13008t.setText(StringFormatter.commaSeparatedNumber(completedWavesCount));
        this.f13009u.setText(StringFormatter.timePassed(currentGameStatistic, true, false));
        GameStateSystem gameStateSystem = this.f12996G.gameState;
        if (gameStateSystem.gameMode == gameMode2) {
            BasicLevel level = Game.f8589i.basicLevelManager.getLevel(gameStateSystem.basicLevelName);
            Label label = this.f12990A;
            if (level.maxReachedWave < completedWavesCount) {
                z = true;
            } else {
                z = false;
            }
            label.setVisible(z);
            Label label2 = this.f12992C;
            if (level.maxPlayingTime < currentGameStatistic) {
                z2 = true;
            } else {
                z2 = false;
            }
            label2.setVisible(z2);
            Label label3 = this.f12991B;
            if (level.maxScore < score) {
                z3 = true;
            } else {
                z3 = false;
            }
            label3.setVisible(z3);
            int[] starMilestoneWaves = level.getStarMilestoneWaves();
            int i = 0;
            for (int i2 = 0; i2 < starMilestoneWaves.length; i2++) {
                if (starMilestoneWaves[i2] != 0 && this.f12996G.wave.getCompletedWavesCount() >= starMilestoneWaves[i2]) {
                    i++;
                }
            }
            int i3 = 0;
            while (true) {
                Array<BasicLevelQuestConfig> array2 = level.quests;
                if (i3 >= array2.size) {
                    break;
                }
                BasicLevelQuestConfig basicLevelQuestConfig = array2.items[i3];
                if (basicLevelQuestConfig.isCompleted()) {
                    int i4 = 0;
                    while (true) {
                        Array<ItemStack> array3 = basicLevelQuestConfig.prizes;
                        if (i4 < array3.size) {
                            ItemStack itemStack = array3.items[i4];
                            if (itemStack.getItem() == Item.C1543D.STAR) {
                                i += itemStack.getCount();
                            }
                            i4++;
                        }
                    }
                }
                i3++;
            }
            Logger.log("GameOverOverlay", i + " stars");
            final ParticlesCanvas particlesCanvas = new ParticlesCanvas();
            particlesCanvas.setSize(3120.0f, 64.0f);
            particlesCanvas.setPosition(520.0f, 626.0f);
            this.f13003k.addActor(particlesCanvas);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
            image.setSize(48.0f, 48.0f);
            image.setPosition(520.0f, 626.0f);
            if (i < 1) {
                image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            } else {
                image.setColor(MaterialColor.AMBER.P400);
                image.setOrigin(24.0f, 24.0f);
                image.addAction(Actions.sequence(Actions.scaleTo(0.0f, 0.0f), Actions.scaleTo(1.0f, 1.0f, 0.3f, Interpolation.swingOut)));
            }
            this.f13003k.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
            image2.setSize(64.0f, 64.0f);
            image2.setPosition(568.0f, 626.0f);
            if (i < 2) {
                image2.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            } else {
                image2.setColor(MaterialColor.AMBER.P400);
                image2.setOrigin(32.0f, 32.0f);
                image2.addAction(Actions.sequence(Actions.scaleTo(0.0f, 0.0f), Actions.delay(0.6f), Actions.scaleTo(1.0f, 1.0f, 0.3f, Interpolation.swingOut)));
            }
            this.f13003k.addActor(image2);
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
            image3.setSize(48.0f, 48.0f);
            image3.setPosition(632.0f, 626.0f);
            if (i < 3) {
                image3.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            } else {
                image3.setColor(MaterialColor.AMBER.P400);
                image3.setOrigin(24.0f, 24.0f);
                image3.addAction(Actions.sequence(Actions.scaleTo(0.0f, 0.0f), Actions.delay(1.2f), Actions.scaleTo(1.0f, 1.0f, 0.3f, Interpolation.swingOut)));
            }
            this.f13003k.addActor(image3);
            if (i > 0) {
                ParticleEffect particleEffect = new ParticleEffect();
                particleEffect.load(Gdx.files.internal("particles/game-over-stars.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
                particleEffect.setEmittersCleanUpBlendFunction(false);
                final ParticleEffectPool particleEffectPool = new ParticleEffectPool(particleEffect, i, 8);
                ParticleEffectPool.PooledEffect obtain = particleEffectPool.obtain();
                obtain.getEmitters().first().setMinParticleCount(8);
                obtain.getEmitters().first().setMaxParticleCount(8);
                particlesCanvas.addParticle(obtain, 24.0f, 24.0f);
                if (i >= 2) {
                    Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.4
                        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                        public void run() {
                            ParticleEffectPool.PooledEffect obtain2 = particleEffectPool.obtain();
                            obtain2.getEmitters().first().setMinParticleCount(16);
                            obtain2.getEmitters().first().setMaxParticleCount(16);
                            particlesCanvas.addParticle(obtain2, 80.0f, 32.0f);
                        }
                    }, 0.6f);
                }
                if (i >= 3) {
                    Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.5
                        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                        public void run() {
                            ParticleEffectPool.PooledEffect obtain2 = particleEffectPool.obtain();
                            obtain2.getEmitters().first().setMinParticleCount(24);
                            obtain2.getEmitters().first().setMaxParticleCount(24);
                            particlesCanvas.addParticle(obtain2, 136.0f, 24.0f);
                        }
                    }, 1.2f);
                }
            }
        }
        this.f13010v.setVisible(false);
        this.f13011w.setVisible(false);
        if (this.f12996G.statistics.getCurrentGameStatistic(StatisticsType.PT) > 10.0d && (((difficultyMode = this.f12996G.gameState.difficultyMode) == DifficultyMode.NORMAL || DifficultyMode.isEndless(difficultyMode)) && Game.f8589i.authManager.isSignedIn())) {
            GameStateSystem gameStateSystem2 = this.f12996G.gameState;
            GameStateSystem.GameMode gameMode3 = gameStateSystem2.gameMode;
            GameStateSystem.GameMode gameMode4 = GameStateSystem.GameMode.BASIC_LEVELS;
            if (gameMode3 == gameMode4 && !Game.f8589i.basicLevelManager.getLevel(gameStateSystem2.basicLevelName).dailyQuest) {
                this.f13010v.setVisible(true);
                LeaderBoardManager leaderBoardManager = Game.f8589i.leaderBoardManager;
                GameStateSystem gameStateSystem3 = this.f12996G.gameState;
                leaderBoardManager.getLeaderboardsAdvanceRank(gameMode4, gameStateSystem3.difficultyMode, gameStateSystem3.basicLevelName, ReplayManager.LeaderboardsMode.score, gameStateSystem3.getScore(), new ObjectRetriever<LeaderBoardManager.LeaderboardsRankResult>() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.6
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public void retrieved(LeaderBoardManager.LeaderboardsRankResult leaderboardsRankResult) {
                        float f = Game.f8589i.settingsManager.isUiAnimationsEnabled() ? 1.0f : 0.0f;
                        GameOverOverlay.this.f13012x.setText(String.valueOf(leaderboardsRankResult.rank));
                        if (leaderboardsRankResult.success) {
                            Label label4 = GameOverOverlay.this.f13013y;
                            label4.setText(" / " + leaderboardsRankResult.total);
                            int i5 = leaderboardsRankResult.rank;
                            if (i5 == 1) {
                                Label label5 = GameOverOverlay.this.f13014z;
                                label5.setText(Game.f8589i.localeManager.i18n.get("leader") + "!");
                            } else {
                                int ceil = MathUtils.ceil((i5 / leaderboardsRankResult.total) * 100.0f);
                                if (ceil < 1) {
                                    ceil = 1;
                                }
                                if (ceil > 100) {
                                    ceil = 100;
                                }
                                GameOverOverlay.this.f13014z.setText(Game.f8589i.localeManager.i18n.format("top_percent", Integer.valueOf(ceil)));
                            }
                            GameOverOverlay.this.f13010v.setVisible(false);
                            GameOverOverlay.this.f13011w.clearActions();
                            GameOverOverlay.this.f13011w.setVisible(true);
                            GameOverOverlay.this.f13011w.setTransform(true);
                            Group group = GameOverOverlay.this.f13011w;
                            ScaleToAction scaleTo = Actions.scaleTo(0.0f, 0.0f);
                            DelayAction delay = Actions.delay(0.1f * f);
                            float f2 = f * 0.3f;
                            Interpolation.SwingOut swingOut = Interpolation.swingOut;
                            group.addAction(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(delay, Actions.scaleBy(1.0f, 0.0f, f2, swingOut)), Actions.scaleBy(0.0f, 1.0f, f2, swingOut)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.6.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    GameOverOverlay.this.f13011w.setTransform(false);
                                }
                            })));
                            return;
                        }
                        GameOverOverlay.this.f13010v.setVisible(false);
                        GameOverOverlay.this.f13011w.setVisible(false);
                    }
                });
            }
        }
        this.f13004p.clear();
        if (array.size != 0) {
            float percentValueAsMultiplier = ((float) this.f12996G.gameValue.getPercentValueAsMultiplier(GameValueType.GREEN_PAPERS_BONUS)) + 1.0f;
            float f = 2.0f;
            if (Game.f8589i.progressManager.isDoubleGainEnabled()) {
                percentValueAsMultiplier *= 2.0f;
            } else {
                f = 1.0f;
            }
            if (this.f12996G.gameState.isDailyQuestAndNotCompleted()) {
                percentValueAsMultiplier *= 0.1f;
                f *= 0.1f;
            }
            String upperCase = Game.f8589i.localeManager.i18n.get("received_items").toUpperCase();
            if (percentValueAsMultiplier != 1.0f || f != 1.0f) {
                String str = upperCase + " ( ";
                if (percentValueAsMultiplier != 1.0f) {
                    str = str + "[#66BB6A]<@icon-money>x" + (StrictMath.round(percentValueAsMultiplier * 100.0f) / 100.0f) + "[]";
                }
                if (f != 1.0f) {
                    str = str + " [#29B6F6]<@icon-cubes-stacked>x" + (StrictMath.round(f * 100.0f) / 100.0f) + "[]";
                }
                upperCase = str + " )";
            }
            Label label4 = new Label(Game.f8589i.assetManager.replaceRegionAliasesWithChars(upperCase), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), Color.WHITE));
            label4.setAlignment(1);
            this.f13004p.add((Table) label4).padBottom(18.0f).padTop(64.0f).row();
            Table table = new Table();
            this.f13004p.add(table);
            Array array4 = new Array(array);
            array4.sort(ProgressManager.ITEM_RARITY_COMPARATOR);
            float f2 = 0.25f;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < array4.size; i8++) {
                final GameOverItemStack gameOverItemStack = (GameOverItemStack) array4.get(i8);
                final ItemCell itemCell = new ItemCell();
                this.f12999J.add(itemCell);
                itemCell.setColRow(i5, i6);
                itemCell.setItem(gameOverItemStack);
                itemCell.setCovered(gameOverItemStack.covered);
                itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.7
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f3, float f4) {
                        Game.f8589i.uiManager.itemDescriptionDialog.show(gameOverItemStack.getItem(), gameOverItemStack.getCount());
                    }
                });
                boolean z4 = gameOverItemStack.isDailyLoot;
                if (z4 || gameOverItemStack.isDoubled) {
                    if (z4) {
                        itemCell.setSelected(true);
                    }
                    if (gameOverItemStack.isDailyLoot) {
                        itemCell.setCornerText(Game.f8589i.assetManager.replaceRegionAliasesWithChars("<@icon-calendar>"));
                    } else {
                        itemCell.setCornerText("x2");
                    }
                }
                table.add((Table) itemCell);
                i5++;
                if (i5 == 8) {
                    table.row();
                    i6++;
                    i5 = 0;
                }
                if (gameOverItemStack.covered) {
                    itemCell.addAction(Actions.sequence(Actions.delay(f2), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.8
                        @Override // java.lang.Runnable
                        public void run() {
                            itemCell.reveal();
                        }
                    })));
                    float f3 = 0.05f;
                    float f4 = 0.6f - (i7 * 0.05f);
                    if (f4 >= 0.05f) {
                        f3 = f4;
                    }
                    f2 += f3;
                    i7++;
                } else {
                    itemCell.shine(true, false);
                }
            }
        }
        this.f13004p.row();
        this.f13004p.add().height(100.0f).width(1.0f);
        if (this.f12994E != null && !this.f12998I && this.f12996G.statistics.getCurrentGameStatistic(StatisticsType.PRT) > 120.0d && Game.f8589i.purchaseManager.canShowRewardingAd(PurchaseManager.RewardingAdsType.END_GAME)) {
            this.f12997H = array;
            this.f12994E.setVisible(true);
        } else {
            ComplexButton complexButton = this.f12994E;
            if (complexButton != null) {
                complexButton.setVisible(false);
            }
        }
        this.f12993D.clear();
        if (mapPrestigeConfig != null) {
            ComplexButton complexButton2 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.9
                @Override // java.lang.Runnable
                public void run() {
                    if (GameOverOverlay.this.f13002d == null) {
                        GameOverOverlay.this.f13002d = new MapPrestigeOverlay();
                        GameOverOverlay.this.f13002d.listeners.add(new MapPrestigeOverlay.MapPrestigeOverlayListener() { // from class: com.prineside.tdi2.ui.components.GameOverOverlay.9.1
                            @Override // com.prineside.tdi2.GameListener
                            public boolean affectsGameState() {
                                return false;
                            }

                            @Override // com.prineside.tdi2.GameListener
                            public int getConstantId() {
                                return 0;
                            }

                            @Override // com.prineside.tdi2.p036ui.components.MapPrestigeOverlay.MapPrestigeOverlayListener
                            public void prestigeConfirmed() {
                                GameOverOverlay.this.f12995F.setEnabled(false);
                            }
                        });
                    }
                    GameOverOverlay.this.f13002d.show(mapPrestigeConfig);
                }
            });
            complexButton2.setBackground(Game.f8589i.assetManager.getDrawable("ui-game-over-prestige-button"), 0.0f, 0.0f, 113.0f, 100.0f);
            complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-dollar"), 31.0f, 16.0f, 64.0f, 64.0f);
            complexButton2.setSize(113.0f, 100.0f);
            this.f12993D.addActor(complexButton2);
            Label label5 = new Label(mapPrestigeConfig.getTotalBonus() + "%", Game.f8589i.assetManager.getLabelStyle(21));
            label5.setAlignment(1);
            label5.setColor(MaterialColor.LIGHT_BLUE.P300);
            label5.setSize(100.0f, 20.0f);
            label5.setPosition(11.0f, 124.0f);
            this.f12993D.addActor(label5);
            int crownsCount = mapPrestigeConfig.getCrownsCount();
            int[][] iArr = {new int[]{45, 162, 32}, new int[]{41, HttpStatus.SC_OK, 40}, new int[]{37, 245, 48}, new int[]{33, 295, 56}, new int[]{29, 351, 64}};
            int i9 = 0;
            while (i9 < 5) {
                int i10 = i9 + 1;
                Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
                int[] iArr2 = iArr[i9];
                image4.setPosition(iArr2[0], iArr2[1]);
                int i11 = iArr[i9][2];
                image4.setSize(i11, i11);
                if (crownsCount >= i10) {
                    image4.setColor(MaterialColor.LIGHT_BLUE.P500);
                } else {
                    image4.setColor(1.0f, 1.0f, 1.0f, 0.14f);
                }
                this.f12993D.addActor(image4);
                i9 = i10;
            }
        }
        m20574n(true);
    }
}
