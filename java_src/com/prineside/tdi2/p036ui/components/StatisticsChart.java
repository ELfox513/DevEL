package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.StatisticsSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: com.prineside.tdi2.ui.components.StatisticsChart */
/* loaded from: classes2.dex */
public class StatisticsChart implements Disposable {

    /* renamed from: y */
    public static final StringBuilder f13636y = new StringBuilder();

    /* renamed from: a */
    public final UiManager.UiLayer f13637a;

    /* renamed from: b */
    public TabType f13638b;

    /* renamed from: d */
    public Group f13639d;

    /* renamed from: k */
    public Group f13640k;

    /* renamed from: p */
    public Label f13641p;

    /* renamed from: q */
    public Group f13642q;

    /* renamed from: r */
    public boolean f13643r;

    /* renamed from: s */
    public boolean f13644s;

    /* renamed from: t */
    public Label[] f13645t;

    /* renamed from: u */
    public Label[] f13646u;

    /* renamed from: v */
    public Label[] f13647v;

    /* renamed from: w */
    public Image[] f13648w;

    /* renamed from: x */
    public GameSystemProvider f13649x;

    /* renamed from: com.prineside.tdi2.ui.components.StatisticsChart$6 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C26296 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13660a;

        static {
            int[] iArr = new int[TabType.values().length];
            f13660a = iArr;
            try {
                iArr[TabType.SCORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13660a[TabType.COINS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13660a[TabType.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.StatisticsChart$TabType */
    /* loaded from: classes2.dex */
    public enum TabType {
        SCORE,
        COINS,
        INFO;
        
        public static final TabType[] values = values();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13637a);
    }

    public void draw(float f) {
        update();
    }

    /* renamed from: g */
    public final boolean m20370g() {
        return (((float) Game.f8589i.settingsManager.getScaledViewportHeight()) / 1080.0f) * (((float) Gdx.graphics.getWidth()) / (((float) Gdx.graphics.getHeight()) + 1.0f)) >= 2.25f;
    }

    public boolean isVisible() {
        return this.f13643r;
    }

    public StatisticsChart(final GameSystemProvider gameSystemProvider) {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 104, "StatisticsChart");
        this.f13637a = addLayer;
        int i = 5;
        this.f13645t = new Label[5];
        this.f13646u = new Label[5];
        this.f13647v = new Label[5];
        this.f13648w = new Image[5];
        this.f13649x = gameSystemProvider;
        Group group = new Group();
        group.setTransform(false);
        Touchable touchable = Touchable.childrenOnly;
        group.setTouchable(touchable);
        Group group2 = new Group();
        this.f13639d = group2;
        group2.setTransform(false);
        this.f13639d.setSize(87.0f, 96.0f);
        this.f13639d.setPosition(64.0f, 178.0f);
        group.addActor(this.f13639d);
        QuadActor quadActor = new QuadActor(new Color(522133503), new float[]{0.0f, 0.0f, 3.0f, 22.0f, 45.0f, 22.0f, 48.0f, 0.0f});
        quadActor.setPosition(17.0f, 74.0f);
        this.f13639d.addActor(quadActor);
        this.f13639d.addActor(new QuadActor(new Color(724249599), new float[]{6.0f, 3.0f, 0.0f, 78.0f, 87.0f, 80.0f, 80.0f, 0.0f}));
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-statistics"));
        image.setPosition(18.0f, 16.0f);
        image.setSize(48.0f, 48.0f);
        this.f13639d.addActor(image);
        this.f13639d.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.StatisticsChart.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                StatisticsChart.this.setVisible(true);
                StatisticsChart.this.f13644s = false;
            }
        });
        if (HotKeyHintLabel.isEnabled()) {
            this.f13639d.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.TOGGLE_STATS_PANE), 18.0f, 54.0f));
        }
        Group group3 = new Group();
        this.f13640k = group3;
        group3.setTransform(false);
        this.f13640k.setTouchable(touchable);
        group.addActor(this.f13640k);
        addLayer.getTable().add((Table) group).padLeft(824.0f).size(584.0f, 274.0f).expand().top().left();
        QuadActor quadActor2 = new QuadActor(new Color(505290495), new float[]{0.0f, 0.0f, 6.0f, 24.0f, 378.0f, 24.0f, 385.0f, 0.0f});
        quadActor2.setPosition(62.0f, 250.0f);
        this.f13640k.addActor(quadActor2);
        QuadActor quadActor3 = new QuadActor(new Color(724249599), new float[]{9.0f, 0.0f, 0.0f, 205.0f, 514.0f, 201.0f, 505.0f, 5.0f});
        float f = 0.0f;
        quadActor3.setPosition(0.0f, 48.0f);
        this.f13640k.addActor(quadActor3);
        QuadActor quadActor4 = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.14f), new float[]{2.0f, 0.0f, 0.0f, 36.0f, 480.0f, 36.0f, 480.0f, 0.0f});
        quadActor4.setTextureRegion(Game.f8589i.assetManager.getTextureRegion("gradient-left"));
        quadActor4.setPosition(2.0f, 168.0f);
        this.f13640k.addActor(quadActor4);
        QuadActor quadActor5 = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.14f), new float[]{2.0f, 0.0f, 0.0f, 36.0f, 480.0f, 36.0f, 480.0f, 0.0f});
        quadActor5.setTextureRegion(Game.f8589i.assetManager.getTextureRegion("gradient-left"));
        quadActor5.setPosition(5.0f, 96.0f);
        this.f13640k.addActor(quadActor5);
        Table table = new Table();
        table.setPosition(286.0f, 8.0f);
        table.setSize(108.0f, 32.0f);
        this.f13640k.addActor(table);
        table.add().expandX().fillX();
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-clock"));
        image2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        table.add((Table) image2).size(32.0f);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13641p = label;
        label.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        table.add((Table) this.f13641p).height(32.0f).padLeft(6.0f);
        Group group4 = new Group();
        group4.setPosition(36.0f, 60.0f);
        group4.setTransform(false);
        this.f13640k.addActor(group4);
        int i2 = 0;
        while (i2 < i) {
            Table table2 = new Table();
            table2.setSize(445.0f, 36.0f);
            table2.setPosition(f, 144.0f - (i2 * 36.0f));
            group4.addActor(table2);
            this.f13645t[i2] = new Label("Title", Game.f8589i.assetManager.getLabelStyle(21));
            table2.add((Table) this.f13645t[i2]).height(36.0f);
            table2.add().expandX().fillX();
            this.f13647v[i2] = new Label("1,23K", Game.f8589i.assetManager.getLabelStyle(21));
            table2.add((Table) this.f13647v[i2]).height(36.0f);
            this.f13648w[i2] = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-top"));
            table2.add((Table) this.f13648w[i2]).size(21.0f).padLeft(3.0f);
            this.f13646u[i2] = new Label("999K", Game.f8589i.assetManager.getLabelStyle(24));
            this.f13646u[i2].setAlignment(16);
            table2.add((Table) this.f13646u[i2]).height(36.0f).minWidth(75.0f).padLeft(16.0f);
            i2++;
            i = 5;
            f = 0.0f;
        }
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.components.StatisticsChart.2
            @Override // java.lang.Runnable
            public void run() {
                StatisticsChart.this.setVisible(false);
                StatisticsChart.this.f13644s = false;
            }
        });
        Color color = Color.WHITE;
        complexButton.setBackground(new QuadDrawable(new QuadActor(color, new float[]{5.0f, 4.0f, 0.0f, 43.0f, 88.0f, 44.0f, 86.0f, 0.0f})), 23.0f, 13.0f, 88.0f, 44.0f);
        complexButton.setBackgroundColors(new Color(508719359), new Color(406936063), new Color(627345663), color);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-triangle-top"), 53.0f, 20.0f, 32.0f, 32.0f);
        complexButton.setSize(120.0f, 60.0f);
        complexButton.setPosition(394.0f, -13.0f);
        this.f13640k.addActor(complexButton);
        if (HotKeyHintLabel.isEnabled()) {
            complexButton.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.TOGGLE_STATS_PANE), 132.0f, 29.0f));
        }
        Group group5 = new Group();
        this.f13642q = group5;
        group5.setTransform(false);
        this.f13642q.setSize(74.0f, 206.0f);
        this.f13642q.setPosition(510.0f, 47.0f);
        this.f13640k.addActor(this.f13642q);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UI_STATISTICS_CHART_VISIBLE) == 0.0d) {
            this.f13640k.setPosition(0.0f, 276.0f);
            this.f13640k.setVisible(false);
        } else {
            this.f13643r = true;
        }
        setTabType(TabType.SCORE);
        update();
        gameSystemProvider._graphics.sideMenu.addListener(new SideMenu.SideMenuListener.SideMenuListenerAdapter() { // from class: com.prineside.tdi2.ui.components.StatisticsChart.3

            /* renamed from: a */
            public Timer.Task f13652a = new Timer.Task() { // from class: com.prineside.tdi2.ui.components.StatisticsChart.3.1
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    if (!StatisticsChart.this.m20370g()) {
                        if (!gameSystemProvider._graphics.sideMenu.isOffscreen() && gameSystemProvider._graphics.sideMenu.isVisible()) {
                            if (StatisticsChart.this.isVisible()) {
                                StatisticsChart.this.setVisible(false);
                                StatisticsChart.this.f13644s = true;
                            }
                        } else if (StatisticsChart.this.f13644s) {
                            StatisticsChart.this.setVisible(true);
                        }
                    }
                }
            };

            @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
            public void offscreenStartingToChange() {
                if (this.f13652a.isScheduled()) {
                    return;
                }
                Timer.schedule(this.f13652a, 0.05f);
            }

            @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
            public void visibilityChanged() {
                if (this.f13652a.isScheduled()) {
                    return;
                }
                Timer.schedule(this.f13652a, 0.05f);
            }
        });
        gameSystemProvider.statistics.listeners.add(new StatisticsSystem.StatisticsSystemListener() { // from class: com.prineside.tdi2.ui.components.StatisticsChart.4
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.StatisticsSystem.StatisticsSystemListener
            public void bestReplayLoadedFromServer() {
                StatisticsChart.this.f13638b = null;
                if (gameSystemProvider.statistics != null) {
                    StatisticsChart.this.setTabType(TabType.SCORE);
                }
            }
        });
    }

    /* renamed from: e */
    public final void m20372e(int i, long j) {
        if (j != 0) {
            this.f13647v[i].setVisible(true);
            this.f13648w[i].setVisible(true);
            if (j > 0) {
                Label label = this.f13647v[i];
                Color color = MaterialColor.LIGHT_GREEN.P500;
                label.setColor(color);
                this.f13648w[i].setColor(color);
                this.f13648w[i].setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-top"));
            } else {
                Label label2 = this.f13647v[i];
                Color color2 = MaterialColor.ORANGE.P500;
                label2.setColor(color2);
                this.f13648w[i].setColor(color2);
                this.f13648w[i].setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
            }
            this.f13647v[i].setText(StringFormatter.compactNumber(j, false));
        }
    }

    /* renamed from: f */
    public final void m20371f(int i, CharSequence charSequence, boolean z) {
        this.f13647v[i].setVisible(true);
        this.f13648w[i].setVisible(true);
        if (z) {
            Label label = this.f13647v[i];
            Color color = MaterialColor.LIGHT_GREEN.P500;
            label.setColor(color);
            this.f13648w[i].setColor(color);
            this.f13648w[i].setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-top"));
        } else {
            Label label2 = this.f13647v[i];
            Color color2 = MaterialColor.ORANGE.P500;
            label2.setColor(color2);
            this.f13648w[i].setColor(color2);
            this.f13648w[i].setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
        }
        this.f13647v[i].setText(charSequence);
    }

    public void finalFadeOut() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.f13637a.getTable().setTouchable(Touchable.disabled);
        this.f13637a.getTable().clearActions();
        this.f13637a.getTable().addAction(Actions.alpha(0.0f, f * 1.0f));
    }

    public void setTabType(TabType tabType) {
        QuadActor quadActor;
        Image image;
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            this.f13645t[i2].setColor(Color.WHITE);
        }
        if (this.f13638b != tabType) {
            int i3 = C26296.f13660a[tabType.ordinal()];
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        ReplayManager.ReplayRecord bestReplay = this.f13649x.statistics.getBestReplay();
                        this.f13645t[0].setText(Game.f8589i.localeManager.i18n.get("stats_chart_comparison_hint"));
                        this.f13645t[0].setStyle(Game.f8589i.assetManager.getLabelStyle(21));
                        if (bestReplay != null) {
                            this.f13645t[1].setText(new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.US).format(new Date(bestReplay.startTimestamp)));
                            this.f13645t[1].setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        }
                        this.f13645t[2].setText(Game.f8589i.localeManager.i18n.get("stats_chart_waves"));
                        this.f13645t[3].setText(Game.f8589i.localeManager.i18n.get("stats_chart_score"));
                        this.f13645t[4].setText(Game.f8589i.localeManager.i18n.get("stats_chart_playing_time"));
                    }
                } else {
                    this.f13645t[0].setText(Game.f8589i.localeManager.i18n.get("stats_chart_coins"));
                    this.f13645t[0].setStyle(Game.f8589i.assetManager.getLabelStyle(24));
                    this.f13645t[1].setText(Game.f8589i.localeManager.i18n.get("stats_chart_killed_enemies"));
                    this.f13645t[2].setText(Game.f8589i.localeManager.i18n.get("stats_chart_bounties"));
                    this.f13645t[3].setText(Game.f8589i.localeManager.i18n.get("stats_chart_wave_calls"));
                    this.f13645t[4].setText(Game.f8589i.localeManager.i18n.get("stats_chart_other"));
                }
            } else {
                this.f13645t[0].setText(Game.f8589i.localeManager.i18n.get("stats_chart_score"));
                this.f13645t[0].setStyle(Game.f8589i.assetManager.getLabelStyle(24));
                this.f13645t[1].setText(Game.f8589i.localeManager.i18n.get("stats_chart_killed_enemies"));
                this.f13645t[2].setText(Game.f8589i.localeManager.i18n.get("stats_chart_mining"));
                this.f13645t[3].setText(Game.f8589i.localeManager.i18n.get("stats_chart_wave_calls"));
                this.f13645t[4].setText(Game.f8589i.localeManager.i18n.get("stats_chart_waves_cleared"));
            }
            this.f13642q.clear();
            ReplayManager.ReplayRecord bestReplay2 = this.f13649x.statistics.getBestReplay();
            for (int i4 = 3; i < i4; i4 = 3) {
                final TabType tabType2 = TabType.values[i];
                if (bestReplay2 != null || tabType2 != TabType.INFO) {
                    if (tabType == tabType2) {
                        quadActor = new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 60.0f, 74.0f, 60.0f, 72.0f, 0.0f});
                        quadActor.setPosition(((-i) * 2.0f) - 8.0f, 142.0f - (i * 68.0f));
                    } else {
                        quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.21f), new float[]{0.0f, 0.0f, 2.0f, 60.0f, 64.0f, 60.0f, 62.0f, 0.0f});
                        float f = i;
                        quadActor.setPosition(10.0f - (f * 2.0f), 142.0f - (f * 68.0f));
                    }
                    this.f13642q.addActor(quadActor);
                    quadActor.setTouchable(Touchable.enabled);
                    quadActor.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.StatisticsChart.5
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                        public void clicked(InputEvent inputEvent, float f2, float f3) {
                            StatisticsChart.this.setTabType(tabType2);
                        }
                    });
                    int i5 = C26296.f13660a[tabType2.ordinal()];
                    if (i5 != 1) {
                        if (i5 != 2) {
                            if (i5 != 3) {
                                image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                            } else {
                                image = new Image(Game.f8589i.assetManager.getDrawable("icon-info"));
                            }
                        } else {
                            image = new Image(Game.f8589i.assetManager.getDrawable("icon-coin"));
                        }
                    } else {
                        image = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
                    }
                    image.setSize(48.0f, 48.0f);
                    if (tabType == tabType2) {
                        float f2 = i;
                        image.setPosition((18.0f - (2.0f * f2)) - 10.0f, 148.0f - (f2 * 68.0f));
                    } else {
                        float f3 = i;
                        image.setPosition(18.0f - (2.0f * f3), 148.0f - (f3 * 68.0f));
                        image.setColor(new Color(508719359));
                    }
                    image.setTouchable(Touchable.disabled);
                    this.f13642q.addActor(image);
                }
                i++;
            }
            this.f13638b = tabType;
        }
        update();
    }

    public void setVisible(boolean z) {
        double d;
        float f;
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.UI_STATISTICS_CHART_VISIBLE;
        if (z) {
            d = 1.0d;
        } else {
            d = 0.0d;
        }
        settingsManager.setCustomValue(customValueType, d);
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        if (z) {
            this.f13640k.setVisible(true);
            this.f13640k.clearActions();
            float f2 = f * 0.15f;
            this.f13640k.addAction(Actions.moveTo(0.0f, 0.0f, f2));
            this.f13639d.clearActions();
            this.f13639d.addAction(Actions.moveTo(64.0f, 274.0f, f2));
            if (!m20370g()) {
                this.f13649x._graphics.sideMenu.setOffscreen(true);
            }
        } else {
            this.f13640k.clearActions();
            float f3 = f * 0.15f;
            this.f13640k.addAction(Actions.sequence(Actions.moveTo(0.0f, 276.0f, f3), Actions.hide()));
            this.f13639d.clearActions();
            this.f13639d.addAction(Actions.moveTo(64.0f, 178.0f, f3));
        }
        this.f13643r = z;
    }

    public void update() {
        ReplayManager.ReplayRecord bestReplay;
        ReplayManager.ReplayRecord.ChartFrames.FrameValues frameValues;
        ReplayManager.ReplayRecord.ChartFrames.FrameValues frameValues2;
        if (!this.f13640k.isVisible()) {
            return;
        }
        ReplayManager.ReplayRecord.ChartFrames currentReplayChart = this.f13649x.statistics.getCurrentReplayChart();
        for (int i = 0; i < 5; i++) {
            this.f13647v[i].setVisible(false);
            this.f13648w[i].setVisible(false);
        }
        TabType tabType = this.f13638b;
        if (tabType == TabType.SCORE) {
            ReplayManager.ReplayRecord.ChartFrames.FrameValues currentReplayChartValues = this.f13649x.statistics.getCurrentReplayChartValues();
            long j = currentReplayChartValues.sKilledEnemies + currentReplayChartValues.sMining + currentReplayChartValues.sWaveCalls + currentReplayChartValues.sWavesCleared;
            for (int i2 = 0; i2 < 5; i2++) {
                this.f13646u[i2].setVisible(true);
            }
            this.f13646u[0].setText(StringFormatter.compactNumber(j, false));
            this.f13646u[1].setText(StringFormatter.compactNumber(currentReplayChartValues.sKilledEnemies, false));
            this.f13646u[2].setText(StringFormatter.compactNumber(currentReplayChartValues.sMining, false));
            this.f13646u[3].setText(StringFormatter.compactNumber(currentReplayChartValues.sWaveCalls, false));
            this.f13646u[4].setText(StringFormatter.compactNumber(currentReplayChartValues.sWavesCleared, false));
            ReplayManager.ReplayRecord bestReplay2 = this.f13649x.statistics.getBestReplay();
            if (bestReplay2 != null) {
                Array<ReplayManager.ReplayRecord.ChartFrames.FrameValues> array = currentReplayChart.frames;
                int i3 = array.size - 1;
                if (i3 >= 0) {
                    ReplayManager.ReplayRecord.ChartFrames chartFrames = bestReplay2.chartFrames;
                    ReplayManager.ReplayRecord.ChartFrames.FrameValues frameValues3 = array.items[i3];
                    Array<ReplayManager.ReplayRecord.ChartFrames.FrameValues> array2 = chartFrames.frames;
                    int i4 = array2.size;
                    ReplayManager.ReplayRecord.ChartFrames.FrameValues[] frameValuesArr = array2.items;
                    if (i4 > i3) {
                        frameValues2 = frameValuesArr[i3];
                    } else {
                        frameValues2 = frameValuesArr[i4 - 1];
                    }
                    m20372e(0, (((frameValues3.sKilledEnemies + frameValues3.sMining) + frameValues3.sWaveCalls) + frameValues3.sWavesCleared) - (((frameValues2.sKilledEnemies + frameValues2.sMining) + frameValues2.sWaveCalls) + frameValues2.sWavesCleared));
                    m20372e(1, frameValues3.sKilledEnemies - frameValues2.sKilledEnemies);
                    m20372e(2, frameValues3.sMining - frameValues2.sMining);
                    m20372e(3, frameValues3.sWaveCalls - frameValues2.sWaveCalls);
                    m20372e(4, frameValues3.sWavesCleared - frameValues2.sWavesCleared);
                }
            }
        } else if (tabType == TabType.COINS) {
            ReplayManager.ReplayRecord.ChartFrames.FrameValues currentReplayChartValues2 = this.f13649x.statistics.getCurrentReplayChartValues();
            int i5 = currentReplayChartValues2.cBounties + currentReplayChartValues2.cKilledEnemies + currentReplayChartValues2.cOther + currentReplayChartValues2.cWaveCalls;
            for (int i6 = 0; i6 < 5; i6++) {
                this.f13646u[i6].setVisible(true);
            }
            this.f13646u[0].setText(StringFormatter.compactNumber(i5, false));
            this.f13646u[1].setText(StringFormatter.compactNumber(currentReplayChartValues2.cKilledEnemies, false));
            this.f13646u[2].setText(StringFormatter.compactNumber(currentReplayChartValues2.cBounties, false));
            this.f13646u[3].setText(StringFormatter.compactNumber(currentReplayChartValues2.cWaveCalls, false));
            this.f13646u[4].setText(StringFormatter.compactNumber(currentReplayChartValues2.cOther, false));
            ReplayManager.ReplayRecord bestReplay3 = this.f13649x.statistics.getBestReplay();
            if (bestReplay3 != null) {
                Array<ReplayManager.ReplayRecord.ChartFrames.FrameValues> array3 = currentReplayChart.frames;
                int i7 = array3.size - 1;
                if (i7 >= 0) {
                    ReplayManager.ReplayRecord.ChartFrames chartFrames2 = bestReplay3.chartFrames;
                    ReplayManager.ReplayRecord.ChartFrames.FrameValues frameValues4 = array3.items[i7];
                    Array<ReplayManager.ReplayRecord.ChartFrames.FrameValues> array4 = chartFrames2.frames;
                    int i8 = array4.size;
                    ReplayManager.ReplayRecord.ChartFrames.FrameValues[] frameValuesArr2 = array4.items;
                    if (i8 > i7) {
                        frameValues = frameValuesArr2[i7];
                    } else {
                        frameValues = frameValuesArr2[i8 - 1];
                    }
                    m20372e(0, (((frameValues4.cKilledEnemies + frameValues4.cWaveCalls) + frameValues4.cBounties) + frameValues4.cOther) - (((frameValues.cKilledEnemies + frameValues.cWaveCalls) + frameValues.cBounties) + frameValues.cOther));
                    m20372e(1, frameValues4.cKilledEnemies - frameValues.cKilledEnemies);
                    m20372e(2, frameValues4.cBounties - frameValues.cBounties);
                    m20372e(3, frameValues4.cWaveCalls - frameValues.cWaveCalls);
                    m20372e(4, frameValues4.cOther - frameValues.cOther);
                }
            }
        } else if (tabType == TabType.INFO && (bestReplay = this.f13649x.statistics.getBestReplay()) != null) {
            this.f13645t[2].setText(Game.f8589i.localeManager.i18n.get("stats_chart_waves"));
            this.f13645t[3].setText(Game.f8589i.localeManager.i18n.get("stats_chart_score"));
            this.f13645t[4].setText(Game.f8589i.localeManager.i18n.get("stats_chart_playing_time"));
            int tickRate = (int) ((bestReplay.chartFrames.frames.size * Config.REPLAY_CHARTS_INTERVAL) / this.f13649x.gameValue.getTickRate());
            this.f13646u[2].setText(bestReplay.defeatedWaves);
            this.f13646u[3].setText(StringFormatter.commaSeparatedNumber(bestReplay.score));
            this.f13646u[4].setText(StringFormatter.digestTime(tickRate));
            this.f13646u[0].setVisible(false);
            this.f13646u[1].setVisible(false);
            m20372e(2, this.f13649x.wave.getCompletedWavesCount() - bestReplay.defeatedWaves);
            m20372e(3, this.f13649x.gameState.getScore() - bestReplay.score);
            StringBuilder stringBuilder = f13636y;
            stringBuilder.setLength(0);
            GameSystemProvider gameSystemProvider = this.f13649x;
            int tickRate2 = ((int) (gameSystemProvider.statistics.replayChartFrameCounter / gameSystemProvider.gameValue.getTickRate())) - tickRate;
            if (tickRate2 < 0) {
                stringBuilder.append(SignatureVisitor.SUPER).append(StringFormatter.digestTime(-tickRate2));
                m20371f(4, stringBuilder, false);
            } else {
                stringBuilder.append(StringFormatter.digestTime(tickRate2));
                m20371f(4, stringBuilder, true);
            }
        }
        Label label = this.f13641p;
        GameSystemProvider gameSystemProvider2 = this.f13649x;
        label.setText(StringFormatter.digestTime(gameSystemProvider2.statistics.replayChartFrameCounter / gameSystemProvider2.gameValue.getTickRate(), false));
    }
}
