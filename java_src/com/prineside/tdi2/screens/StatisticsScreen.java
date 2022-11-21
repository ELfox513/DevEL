package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntFloatMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.MinerManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.LabelButton;
import com.prineside.tdi2.p036ui.actors.PieChartActor;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.shapes.PieChart;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2.dex */
public class StatisticsScreen extends Screen {

    /* renamed from: n */
    public static final StringBuilder f11149n = new StringBuilder();

    /* renamed from: a */
    public final UiManager.UiLayer f11150a;

    /* renamed from: b */
    public ScrollPane f11151b;

    /* renamed from: c */
    public RectButton f11152c;

    /* renamed from: d */
    public RectButton f11153d;

    /* renamed from: e */
    public RectButton f11154e;

    /* renamed from: f */
    public RectButton f11155f;

    /* renamed from: g */
    public RectButton f11156g;

    /* renamed from: h */
    public Table f11157h;

    /* renamed from: i */
    public Image f11158i;

    /* renamed from: j */
    public MainTabType f11159j;

    /* renamed from: k */
    public ReplayManager.ReplayRecord f11160k;

    /* renamed from: l */
    public Label.LabelStyle f11161l;

    /* renamed from: m */
    public Drawable f11162m;

    /* renamed from: com.prineside.tdi2.screens.StatisticsScreen$13 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C220613 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11167a;

        static {
            int[] iArr = new int[MainTabType.values().length];
            f11167a = iArr;
            try {
                iArr[MainTabType.ALL_TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11167a[MainTabType.BY_GAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11167a[MainTabType.MAX_ONE_GAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11167a[MainTabType.ACHIEVEMENTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11167a[MainTabType.EARNINGS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum MainTabType {
        ALL_TIME,
        BY_GAME,
        MAX_ONE_GAME,
        ACHIEVEMENTS,
        EARNINGS
    }

    /* renamed from: q */
    public static /* synthetic */ void m21091q() {
        Game.f8589i.achievementManager.syncAchievementsWithPlatform();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f11150a);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        m21089s();
    }

    public StatisticsScreen() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 100, "StatisticsScreen main");
        this.f11150a = addLayer;
        this.f11159j = MainTabType.ALL_TIME;
        this.f11160k = null;
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game game = Game.f8589i;
        game.uiManager.screenTitle.setIcon(game.assetManager.getDrawable("icon-statistics")).setText(Game.f8589i.localeManager.i18n.get("statistics_title")).setVisible(true);
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.1
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(30);
        Color color = Color.WHITE;
        this.f11161l = new Label.LabelStyle(font, color);
        this.f11162m = Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f));
        Table table = addLayer.getTable();
        Table table2 = new Table();
        table.add(table2).padLeft(40.0f).padRight(40.0f).padTop(160.0f).width(320.0f).minHeight(100.0f).expandY().fillY();
        RectButton rectButton = new RectButton(Game.f8589i.localeManager.i18n.get("statistics_subtitle_all_time"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.2
            @Override // java.lang.Runnable
            public void run() {
                StatisticsScreen.this.f11159j = MainTabType.ALL_TIME;
                StatisticsScreen.this.m21089s();
            }
        });
        this.f11152c = rectButton;
        rectButton.setSize(320.0f, 64.0f);
        this.f11152c.setBackground(new QuadDrawable(new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f}, color)), 0.0f, 0.0f, 320.0f, 64.0f);
        this.f11152c.setBackgroundColors(new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.07f), new Color(1.0f, 1.0f, 1.0f, 0.14f), new Color(0.0f, 0.0f, 0.0f, 0.28f));
        RectButton rectButton2 = this.f11152c;
        Color color2 = MaterialColor.LIGHT_BLUE.P500;
        rectButton2.setIconLabelColors(color2, color2, color2, color);
        table2.add((Table) this.f11152c).top().row();
        RectButton rectButton3 = new RectButton(Game.f8589i.localeManager.i18n.get("statistics_subtitle_by_game"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.3
            @Override // java.lang.Runnable
            public void run() {
                StatisticsScreen.this.f11160k = null;
                StatisticsScreen.this.f11159j = MainTabType.BY_GAME;
                StatisticsScreen.this.m21089s();
            }
        });
        this.f11153d = rectButton3;
        rectButton3.setSize(320.0f, 64.0f);
        this.f11153d.setBackground(new QuadDrawable(new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f}, color)), 0.0f, 0.0f, 320.0f, 64.0f);
        this.f11153d.setBackgroundColors(new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.07f), new Color(1.0f, 1.0f, 1.0f, 0.14f), new Color(0.0f, 0.0f, 0.0f, 0.28f));
        this.f11153d.setIconLabelColors(color2, color2, color2, color);
        table2.add((Table) this.f11153d).top().padTop(4.0f).row();
        RectButton rectButton4 = new RectButton(Game.f8589i.localeManager.i18n.get("statistics_subtitle_max_per_game"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.4
            @Override // java.lang.Runnable
            public void run() {
                StatisticsScreen.this.f11159j = MainTabType.MAX_ONE_GAME;
                StatisticsScreen.this.m21089s();
            }
        });
        this.f11154e = rectButton4;
        rectButton4.setSize(320.0f, 64.0f);
        this.f11154e.setBackground(new QuadDrawable(new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f}, color)), 0.0f, 0.0f, 320.0f, 64.0f);
        this.f11154e.setBackgroundColors(new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.07f), new Color(1.0f, 1.0f, 1.0f, 0.14f), new Color(0.0f, 0.0f, 0.0f, 0.28f));
        this.f11154e.setIconLabelColors(color2, color2, color2, color);
        table2.add((Table) this.f11154e).top().padTop(4.0f).row();
        RectButton rectButton5 = new RectButton(Game.f8589i.localeManager.i18n.get("statistics_subtitle_achievements"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.5
            @Override // java.lang.Runnable
            public void run() {
                StatisticsScreen.this.f11159j = MainTabType.ACHIEVEMENTS;
                StatisticsScreen.this.m21089s();
            }
        });
        this.f11155f = rectButton5;
        rectButton5.setSize(320.0f, 64.0f);
        this.f11155f.setBackground(new QuadDrawable(new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f}, color)), 0.0f, 0.0f, 320.0f, 64.0f);
        this.f11155f.setBackgroundColors(new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.07f), new Color(1.0f, 1.0f, 1.0f, 0.14f), new Color(0.0f, 0.0f, 0.0f, 0.28f));
        this.f11155f.setIconLabelColors(color2, color2, color2, color);
        table2.add((Table) this.f11155f).top().padTop(4.0f).row();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("count-bubble"));
        this.f11158i = image;
        image.setSize(32.25f, 36.75f);
        this.f11158i.setPosition(277.75f, 11.0f);
        if (Game.f8589i.achievementManager.countAchievementsToRedeem() == 0) {
            this.f11158i.setVisible(false);
        }
        this.f11155f.addActor(this.f11158i);
        RectButton rectButton6 = new RectButton(Game.f8589i.localeManager.i18n.get("statistics_subtitle_earned_items"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color), new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.6
            @Override // java.lang.Runnable
            public void run() {
                Array<IssuedItems> issuedPrizes = Game.f8589i.progressManager.getIssuedPrizes();
                for (int i = 0; i < issuedPrizes.size && i != 50; i++) {
                    issuedPrizes.get(i).shown = false;
                }
                Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
            }
        });
        this.f11156g = rectButton6;
        rectButton6.setSize(320.0f, 64.0f);
        this.f11156g.setBackground(new QuadDrawable(new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f}, color)), 0.0f, 0.0f, 320.0f, 64.0f);
        this.f11156g.setBackgroundColors(new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.07f), new Color(1.0f, 1.0f, 1.0f, 0.14f), new Color(0.0f, 0.0f, 0.0f, 0.28f));
        this.f11156g.setIconLabelColors(color2, color2, color2, color);
        table2.add((Table) this.f11156g).expandY().top().padTop(4.0f).row();
        Table table3 = new Table();
        ScrollPane scrollPane = new ScrollPane(table3);
        this.f11151b = scrollPane;
        table.add((Table) scrollPane).padRight(40.0f).fill().expand();
        table3.add().top().left().height(160.0f).fillX().expandX().row();
        Table table4 = new Table();
        this.f11157h = table4;
        table3.add(table4).expandX().fillX().padBottom(160.0f).row();
        table3.add().fill().expand();
        m21089s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m21093o() {
        try {
            GameStateSystem.startReplay(this.f11160k, true);
        } catch (Exception e) {
            Logger.error("StatisticsScreen", "parsing failed", e);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.11
                @Override // java.lang.Runnable
                public void run() {
                    Game game = Game.f8589i;
                    game.uiManager.notifications.add("Failed to load the replay", game.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m21092p() {
        try {
            GameStateSystem.startReplay(this.f11160k);
        } catch (Exception e) {
            Logger.error("StatisticsScreen", "parsing failed", e);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.12
                @Override // java.lang.Runnable
                public void run() {
                    Game game = Game.f8589i;
                    game.uiManager.notifications.add("Failed to load the replay", game.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m21090r(AchievementType achievementType) {
        boolean z;
        if (!Game.f8589i.achievementManager.redeemed[achievementType.ordinal()]) {
            Game.f8589i.achievementManager.redeem(achievementType);
            Image image = this.f11158i;
            if (Game.f8589i.achievementManager.countAchievementsToRedeem() > 0) {
                z = true;
            } else {
                z = false;
            }
            image.setVisible(z);
            m21089s();
        }
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

    /* renamed from: j */
    public final void m21098j(Table table, CharSequence charSequence, CharSequence charSequence2) {
        Table table2 = new Table();
        table2.setBackground(this.f11162m);
        StringBuilder stringBuilder = f11149n;
        stringBuilder.setLength(0);
        stringBuilder.append(charSequence);
        if (charSequence.length() > 32) {
            stringBuilder.setLength(32);
            stringBuilder.append("...");
        }
        table2.add((Table) new Label(stringBuilder, this.f11161l)).padLeft(16.0f);
        Label label = new Label(charSequence2, this.f11161l);
        label.setAlignment(16);
        table2.add((Table) label).padRight(16.0f).expandX().fillX();
        table.add(table2).fillX().expandX().height(64.0f).padBottom(4.0f).row();
    }

    /* renamed from: l */
    public final void m21096l(Table table, IntFloatMap intFloatMap) {
        TowerType[] towerTypeArr;
        boolean z;
        float f;
        TowerType[] towerTypeArr2;
        TowerType[] towerTypeArr3;
        Table table2 = table;
        Table table3 = new Table();
        for (TowerType towerType : TowerType.values) {
            if (intFloatMap.get(Game.f8589i.towerManager.getMoneySpentStatisticType(towerType).ordinal(), 0.0f) != 0.0f) {
                Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image.setColor(Game.f8589i.towerManager.getFactory(towerType).getColor());
                table3.add((Table) image).size(24.0f, 24.0f).padRight(16.0f);
                table3.add((Table) new Label(Game.f8589i.towerManager.getFactory(towerType).getTitle(), this.f11161l)).expandX().fillX().row();
            }
        }
        if (Gdx.graphics.getWidth() / Gdx.graphics.getHeight() < 1.5f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            table2.add(table3).fillX().expandX().padBottom(64.0f).row();
        }
        if (z) {
            f = 240.0f;
        } else {
            f = 336.0f;
        }
        if (!z) {
            Table table4 = new Table();
            table2.add(table4);
            table2.add(table3).padLeft(80.0f);
            table2 = table4;
        }
        Label label = new Label(Game.f8589i.localeManager.i18n.get("statistics_TB"), this.f11161l);
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table2.add((Table) label).height(64.0f).padBottom(16.0f).row();
        PieChartActor pieChartActor = new PieChartActor();
        Array<PieChart.ChartEntryConfig> array = new Array<>(PieChart.ChartEntryConfig.class);
        float f2 = 0.0f;
        for (TowerType towerType2 : TowerType.values) {
            float f3 = intFloatMap.get(Game.f8589i.towerManager.getBuiltStatisticType(towerType2).ordinal(), 0.0f);
            if (f3 > 0.0d) {
                f2 += f3;
                array.add(new PieChart.ChartEntryConfig(Game.f8589i.towerManager.getFactory(towerType2).getColor(), f3, 0.0f));
            }
        }
        if (f2 == 0.0f) {
            array.add(new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 0.28f), 100.0f, 0.0f));
        }
        pieChartActor.setConfigs(array);
        table2.add((Table) pieChartActor).size(f, f).row();
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("damage_by_tower"), this.f11161l);
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table2.add((Table) label2).height(64.0f).padBottom(16.0f).padTop(64.0f).row();
        PieChartActor pieChartActor2 = new PieChartActor();
        Array<PieChart.ChartEntryConfig> array2 = new Array<>(PieChart.ChartEntryConfig.class);
        float f4 = 0.0f;
        for (TowerType towerType3 : TowerType.values) {
            float f5 = intFloatMap.get(Game.f8589i.towerManager.getDamageDealtStatisticType(towerType3).ordinal(), 0.0f);
            if (f5 > 0.0f) {
                f4 += f5;
                array2.add(new PieChart.ChartEntryConfig(Game.f8589i.towerManager.getFactory(towerType3).getColor(), f5, 0.0f));
            }
        }
        if (f4 == 0.0f) {
            array2.add(new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 0.28f), 100.0f, 0.0f));
        }
        pieChartActor2.setConfigs(array2);
        table2.add((Table) pieChartActor2).size(f, f).row();
    }

    /* renamed from: m */
    public final void m21095m(Table table, IntFloatMap intFloatMap) {
        m21099i(table, StatisticsType.CG, intFloatMap);
        m21099i(table, StatisticsType.EK, intFloatMap);
        m21099i(table, StatisticsType.EP, intFloatMap);
        m21099i(table, StatisticsType.GPG, intFloatMap);
        m21099i(table, StatisticsType.WD, intFloatMap);
        m21099i(table, StatisticsType.SG, intFloatMap);
        MinerManager minerManager = Game.f8589i.minerManager;
        MinerType minerType = MinerType.SCALAR;
        if (minerManager.isMinerOpened(minerType, Game.f8589i.gameValueManager.getSnapshot())) {
            m21099i(table, StatisticsType.RG, intFloatMap);
        }
        Game game = Game.f8589i;
        if (game.minerManager.isMinerOpened(minerType, game.gameValueManager.getSnapshot())) {
            m21099i(table, StatisticsType.RG_S, intFloatMap);
        }
        if (Game.f8589i.minerManager.isMinerOpened(MinerType.VECTOR, Game.f8589i.gameValueManager.getSnapshot())) {
            m21099i(table, StatisticsType.RG_V, intFloatMap);
        }
        if (Game.f8589i.minerManager.isMinerOpened(MinerType.MATRIX, Game.f8589i.gameValueManager.getSnapshot())) {
            m21099i(table, StatisticsType.RG_M, intFloatMap);
        }
        if (Game.f8589i.minerManager.isMinerOpened(MinerType.TENSOR, Game.f8589i.gameValueManager.getSnapshot())) {
            m21099i(table, StatisticsType.RG_T, intFloatMap);
        }
        if (Game.f8589i.minerManager.isMinerOpened(MinerType.INFIAR, Game.f8589i.gameValueManager.getSnapshot())) {
            m21099i(table, StatisticsType.RG_I, intFloatMap);
        }
        m21099i(table, StatisticsType.TB, intFloatMap);
        m21099i(table, StatisticsType.TS, intFloatMap);
        m21099i(table, StatisticsType.TU, intFloatMap);
        m21099i(table, StatisticsType.TMS, intFloatMap);
        m21099i(table, StatisticsType.TDD, intFloatMap);
        m21099i(table, StatisticsType.GS, intFloatMap);
        m21097k(table, StatisticsType.PT, intFloatMap);
        m21097k(table, StatisticsType.PRT, intFloatMap);
        m21099i(table, StatisticsType.WC, intFloatMap);
        m21097k(table, StatisticsType.WCST, intFloatMap);
        m21099i(table, StatisticsType.WCGC, intFloatMap);
    }

    /* renamed from: n */
    public final void m21094n(Table table, IntFloatMap intFloatMap) {
        TowerType[] towerTypeArr;
        StatisticsType moneySpentStatisticType;
        Label label = new Label(Game.f8589i.localeManager.i18n.get("towers"), Game.f8589i.assetManager.getLabelStyle(36));
        label.setAlignment(12);
        Color color = MaterialColor.AMBER.P500;
        label.setColor(color);
        table.add((Table) label).height(64.0f).padLeft(16.0f).padBottom(8.0f).expandX().fillX();
        String str = Game.f8589i.localeManager.i18n.get("built");
        Locale locale = Locale.ENGLISH;
        Label label2 = new Label(str.toLowerCase(locale), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setAlignment(12);
        label2.setColor(color);
        table.add((Table) label2).height(64.0f).padLeft(16.0f).padBottom(8.0f).width(125.0f);
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("statistics_money_spent").toLowerCase(locale), Game.f8589i.assetManager.getLabelStyle(24));
        label3.setAlignment(12);
        label3.setColor(color);
        table.add((Table) label3).height(64.0f).padLeft(16.0f).padBottom(8.0f).width(200.0f);
        Label label4 = new Label(Game.f8589i.localeManager.i18n.get("damage").toLowerCase(locale), Game.f8589i.assetManager.getLabelStyle(24));
        label4.setAlignment(12);
        label4.setColor(color);
        table.add((Table) label4).height(64.0f).padLeft(16.0f).padBottom(8.0f).width(175.0f);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("kills").toLowerCase(locale), Game.f8589i.assetManager.getLabelStyle(24));
        label5.setAlignment(12);
        label5.setColor(color);
        table.add((Table) label5).height(64.0f).padLeft(16.0f).padBottom(8.0f).width(125.0f).row();
        for (TowerType towerType : TowerType.values) {
            if (intFloatMap.get(Game.f8589i.towerManager.getMoneySpentStatisticType(towerType).ordinal(), 0.0f) != 0.0f) {
                StatisticsType builtStatisticType = Game.f8589i.towerManager.getBuiltStatisticType(towerType);
                StatisticsType damageDealtStatisticType = Game.f8589i.towerManager.getDamageDealtStatisticType(towerType);
                StatisticsType enemiesKilledStatisticsType = Game.f8589i.towerManager.getEnemiesKilledStatisticsType(towerType);
                Table table2 = new Table();
                table2.setBackground(this.f11162m);
                table.add(table2).fillX().expandX().colspan(5).padBottom(4.0f).row();
                Tower.Factory<? extends Tower> factory = Game.f8589i.towerManager.getFactory(towerType);
                table2.add((Table) Game.f8589i.towerManager.getFactory(towerType).createIconActor(64.0f)).height(64.0f).width(64.0f).padLeft(16.0f);
                table2.add((Table) new Label(factory.getTitle(), this.f11161l)).height(64.0f).padLeft(16.0f).expandX().fillX();
                table2.add((Table) new Label(StringFormatter.compactNumber(intFloatMap.get(builtStatisticType.ordinal(), 0.0f), false), this.f11161l)).height(64.0f).padLeft(16.0f).width(125.0f);
                table2.add((Table) new Label(StringFormatter.compactNumber(intFloatMap.get(moneySpentStatisticType.ordinal(), 0.0f), false), this.f11161l)).height(64.0f).padLeft(16.0f).width(200.0f);
                table2.add((Table) new Label(StringFormatter.compactNumber(intFloatMap.get(damageDealtStatisticType.ordinal(), 0.0f), false), this.f11161l)).height(64.0f).padLeft(16.0f).width(175.0f);
                table2.add((Table) new Label(StringFormatter.compactNumber(intFloatMap.get(enemiesKilledStatisticsType.ordinal(), 0.0f), false), this.f11161l)).height(64.0f).padLeft(16.0f).width(125.0f);
            }
        }
    }

    /* renamed from: s */
    public final void m21089s() {
        StatisticsType[] statisticsTypeArr;
        StatisticsType[] statisticsTypeArr2;
        AchievementType[] achievementTypeArr;
        this.f11157h.clear();
        this.f11152c.setEnabled(true);
        this.f11153d.setEnabled(true);
        this.f11154e.setEnabled(true);
        this.f11156g.setEnabled(true);
        this.f11155f.setEnabled(true);
        int i = C220613.f11167a[this.f11159j.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        this.f11155f.setEnabled(false);
                        int i2 = 0;
                        for (AchievementType achievementType : AchievementType.values) {
                            if (Game.f8589i.achievementManager.isRequirementMet(achievementType)) {
                                i2++;
                            }
                        }
                        Table table = new Table();
                        Table table2 = new Table();
                        table.add(table2).expandX().fillX().top().left();
                        table2.add((Table) new Label(Game.f8589i.localeManager.i18n.get("achievements") + " [#8BC34A]" + i2 + " / " + AchievementType.values.length + "[]", Game.f8589i.assetManager.getLabelStyle(36))).top().left().expandX().row();
                        Label label = new Label(Game.f8589i.localeManager.i18n.get("achievements_screen_hint"), Game.f8589i.assetManager.getLabelStyle(24));
                        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        table2.add((Table) label).top().left().expandX().padBottom(15.0f).row();
                        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("do_synchronize"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.z0
                            @Override // java.lang.Runnable
                            public final void run() {
                                StatisticsScreen.m21091q();
                            }
                        });
                        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-restart"), 128.0f, 8.0f, 48.0f, 48.0f);
                        complexButton.setLabel(0.0f, 0.0f, 120.0f, 64.0f, 16);
                        Color color = MaterialColor.LIGHT_GREEN.P500;
                        complexButton.setIconLabelColors(color, MaterialColor.LIGHT_GREEN.P300, MaterialColor.LIGHT_GREEN.P700, MaterialColor.GREY.P500);
                        table.add((Table) complexButton).top().right().width(192.0f).height(64.0f);
                        this.f11157h.add(table).expandX().fillX().row();
                        Drawable tint = Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f));
                        Drawable tint2 = Game.f8589i.assetManager.getDrawable("blank").tint(color.cpy().mul(1.0f, 1.0f, 1.0f, 0.1f));
                        Color color2 = new Color(1.0f, 1.0f, 1.0f, 0.14f);
                        for (final AchievementType achievementType2 : AchievementType.values) {
                            Table table3 = new Table();
                            if (Game.f8589i.achievementManager.isRequirementMet(achievementType2)) {
                                table3.setBackground(tint2);
                            } else {
                                table3.setBackground(tint);
                            }
                            ComplexButton complexButton2 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.screens.a1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StatisticsScreen.this.m21090r(achievementType2);
                                }
                            });
                            complexButton2.setBackground(new QuadDrawable(new QuadActor(Color.WHITE, new float[]{0.0f, 0.0f, 0.0f, 80.0f, 90.0f, 80.0f, 80.0f, 0.0f})), 0.0f, 0.0f, 90.0f, 80.0f);
                            complexButton2.setBackgroundColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P900, MaterialColor.LIGHT_GREEN.P700, color2);
                            complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-gift"), 20.0f, 16.0f, 48.0f, 48.0f);
                            if (!Game.f8589i.achievementManager.isRequirementMet(achievementType2)) {
                                complexButton2.setVisible(false);
                            } else if (Game.f8589i.achievementManager.redeemed[achievementType2.ordinal()]) {
                                complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-check"), 20.0f, 16.0f, 48.0f, 48.0f);
                                complexButton2.setEnabled(false);
                            }
                            table3.add((Table) complexButton2).size(90.0f, 80.0f);
                            Table table4 = new Table();
                            Label label2 = new Label(Game.f8589i.achievementManager.getName(achievementType2), Game.f8589i.assetManager.getLabelStyle(24));
                            if (Game.f8589i.achievementManager.isRequirementMet(achievementType2)) {
                                label2.setColor(MaterialColor.LIGHT_GREEN.P500);
                            }
                            table4.add((Table) label2).top().left().height(25.0f).expandX().padTop(15.0f).row();
                            Label label3 = new Label("?????", Game.f8589i.assetManager.getLabelStyle(21));
                            if (Game.f8589i.achievementManager.isRequirementMet(achievementType2) || !Game.f8589i.achievementManager.configs[achievementType2.ordinal()].hidden) {
                                label3.setText(Game.f8589i.achievementManager.getDescription(achievementType2));
                            }
                            label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                            table4.add((Table) label3).padTop(5.0f).height(20.0f).top().left().padBottom(15.0f).row();
                            table3.add(table4).height(80.0f).padLeft(15.0f).expandX().fillX();
                            if (Game.f8589i.achievementManager.configs[achievementType2.ordinal()].required > 1) {
                                Label label4 = new Label(((Object) StringFormatter.commaSeparatedNumber(Game.f8589i.achievementManager.getCurrentProgress(achievementType2))) + " / " + ((Object) StringFormatter.commaSeparatedNumber(Game.f8589i.achievementManager.configs[achievementType2.ordinal()].required)), Game.f8589i.assetManager.getLabelStyle(24));
                                label4.setAlignment(16);
                                table3.add((Table) label4).width(200.0f).padRight(15.0f);
                            } else {
                                table3.add().height(1.0f).width(200.0f).padRight(15.0f);
                            }
                            this.f11157h.add(table3).expandX().fillX().padBottom(5.0f).row();
                        }
                        return;
                    }
                    return;
                }
                this.f11154e.setEnabled(false);
                IntFloatMap intFloatMap = new IntFloatMap();
                for (StatisticsType statisticsType : StatisticsType.values) {
                    intFloatMap.put(statisticsType.ordinal(), (float) Game.f8589i.statisticsManager.getMaxOneGame(statisticsType));
                }
                Table table5 = new Table();
                this.f11157h.add(table5).width(600.0f).padRight(40.0f);
                m21095m(table5, intFloatMap);
                Table table6 = new Table();
                this.f11157h.add(table6).top().fillX().expandX().minHeight(100.0f).row();
                m21096l(table6, intFloatMap);
                Table table7 = new Table();
                this.f11157h.add(table7).expandX().fillX().colspan(2).row();
                m21094n(table7, intFloatMap);
                return;
            }
            this.f11153d.setEnabled(false);
            if (this.f11160k == null) {
                Array<String> allRecordIds = Game.f8589i.replayManager.getAllRecordIds();
                if (allRecordIds.size == 0) {
                    this.f11157h.add((Table) new Label(Game.f8589i.localeManager.i18n.get("no_replays_found"), Game.f8589i.assetManager.getLabelStyle(30))).row();
                    return;
                }
                Array array = new Array();
                for (int i3 = 0; i3 < allRecordIds.size; i3++) {
                    array.add(Game.f8589i.replayManager.getRecord(allRecordIds.get(i3)));
                }
                array.sort(new Comparator<ReplayManager.ReplayRecord>() { // from class: com.prineside.tdi2.screens.StatisticsScreen.7
                    @Override // java.util.Comparator
                    public int compare(ReplayManager.ReplayRecord replayRecord, ReplayManager.ReplayRecord replayRecord2) {
                        long j = replayRecord.startTimestamp;
                        long j2 = replayRecord2.startTimestamp;
                        if (j == j2) {
                            return 0;
                        }
                        return j < j2 ? 1 : -1;
                    }
                });
                for (int i4 = 0; i4 < array.size; i4++) {
                    final ReplayManager.ReplayRecord replayRecord = (ReplayManager.ReplayRecord) array.get(i4);
                    Table table8 = new Table();
                    table8.setBackground(this.f11162m);
                    StringBuilder stringBuilder = f11149n;
                    stringBuilder.setLength(0);
                    if (GameStateSystem.GameMode.isBasicLevel(replayRecord.gameMode)) {
                        stringBuilder.append(Game.f8589i.localeManager.i18n.get("level")).append(" ").append(replayRecord.levelName);
                    } else {
                        stringBuilder.append(Game.f8589i.localeManager.i18n.get("custom_map"));
                    }
                    stringBuilder.append(", ").append(Game.f8589i.localeManager.i18n.get("defeated").toLowerCase(Locale.ENGLISH)).append(" ").append(replayRecord.defeatedWaves).append(" ").append(Game.f8589i.localeManager.i18n.get("waves"));
                    stringBuilder.append(" [#888888FF]- ").append(Game.f8589i.progressManager.getDifficultyName(replayRecord.difficultyMode)).append("[]");
                    table8.add((Table) new LabelButton(stringBuilder, this.f11161l, new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.8
                        @Override // java.lang.Runnable
                        public void run() {
                            StatisticsScreen.this.f11160k = replayRecord;
                            StatisticsScreen.this.m21089s();
                        }
                    })).padLeft(16.0f);
                    Label label5 = new Label(new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.US).format(new Date(replayRecord.startTimestamp)), this.f11161l);
                    label5.setAlignment(16);
                    table8.add((Table) label5).padRight(16.0f).expandX().fillX();
                    this.f11157h.add(table8).fillX().expandX().height(64.0f).padBottom(4.0f).row();
                }
                return;
            }
            Table table9 = new Table();
            this.f11157h.add(table9).left().padBottom(4.0f).row();
            table9.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("back_to_replays_list"), this.f11161l, new Runnable() { // from class: com.prineside.tdi2.screens.StatisticsScreen.9
                @Override // java.lang.Runnable
                public void run() {
                    StatisticsScreen.this.f11160k = null;
                    StatisticsScreen.this.m21089s();
                }
            })).width(256.0f).height(64.0f);
            Label label6 = new Label(this.f11160k.f10052id, Game.f8589i.assetManager.getLabelStyle(24));
            label6.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            table9.add((Table) label6).padLeft(15.0f);
            label6.setTouchable(Touchable.enabled);
            label6.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.StatisticsScreen.10
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Gdx.app.getClipboard().setContents(StatisticsScreen.this.f11160k.f10052id);
                    Game game = Game.f8589i;
                    game.uiManager.notifications.add(game.localeManager.i18n.get("copied_to_clipboard"), null, null, null);
                }
            });
            if (this.f11160k.hasState) {
                Runnable runnable = null;
                if (Game.f8589i.progressManager.isDeveloperModeEnabled()) {
                    runnable = new Runnable() { // from class: com.prineside.tdi2.screens.x0
                        @Override // java.lang.Runnable
                        public final void run() {
                            StatisticsScreen.this.m21093o();
                        }
                    };
                }
                ComplexButton complexButton3 = new ComplexButton("Replay", this.f11161l, new Runnable() { // from class: com.prineside.tdi2.screens.y0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StatisticsScreen.this.m21092p();
                    }
                }, runnable);
                complexButton3.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 200.0f, 64.0f);
                complexButton3.setLabel(0.0f, 0.0f, 200.0f, 64.0f, 1);
                table9.add((Table) complexButton3).width(200.0f).height(64.0f).padLeft(16.0f);
            }
            Table table10 = new Table();
            this.f11157h.add(table10).width(600.0f).padRight(40.0f);
            m21095m(table10, this.f11160k.statistics);
            Table table11 = new Table();
            this.f11157h.add(table11).top().fillX().expandX().minHeight(100.0f).row();
            m21096l(table11, this.f11160k.statistics);
            Table table12 = new Table();
            this.f11157h.add(table12).expandX().fillX().colspan(2).row();
            m21094n(table12, this.f11160k.statistics);
            return;
        }
        this.f11152c.setEnabled(false);
        Table table13 = new Table();
        this.f11157h.add(table13).width(600.0f).padRight(40.0f);
        IntFloatMap intFloatMap2 = new IntFloatMap();
        for (StatisticsType statisticsType2 : StatisticsType.values) {
            intFloatMap2.put(statisticsType2.ordinal(), (float) Game.f8589i.statisticsManager.getAllTime(statisticsType2));
        }
        m21095m(table13, intFloatMap2);
        Table table14 = new Table();
        this.f11157h.add(table14).top().fillX().expandX().minHeight(100.0f).row();
        m21096l(table14, intFloatMap2);
        Table table15 = new Table();
        this.f11157h.add(table15).expandX().fillX().colspan(2).row();
        m21094n(table15, intFloatMap2);
    }

    /* renamed from: i */
    public final void m21099i(Table table, StatisticsType statisticsType, IntFloatMap intFloatMap) {
        if (!intFloatMap.containsKey(statisticsType.ordinal())) {
            return;
        }
        m21098j(table, Game.f8589i.statisticsManager.getStatisticsTitle(statisticsType), StringFormatter.commaSeparatedNumber(intFloatMap.get(statisticsType.ordinal(), 0.0f)));
    }

    /* renamed from: k */
    public final void m21097k(Table table, StatisticsType statisticsType, IntFloatMap intFloatMap) {
        if (!intFloatMap.containsKey(statisticsType.ordinal())) {
            return;
        }
        m21098j(table, Game.f8589i.statisticsManager.getStatisticsTitle(statisticsType), StringFormatter.digestTime((int) intFloatMap.get(statisticsType.ordinal(), 0.0f)));
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        super.show();
        Game.f8589i.uiManager.stage.setScrollFocus(this.f11151b);
    }
}
