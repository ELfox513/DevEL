package com.prineside.tdi2.screens;

import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.screens.MainMenuScreen;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PerformanceSurvey;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
/* loaded from: classes2.dex */
public class MainMenuScreen extends Screen {

    /* renamed from: a */
    public final UiManager.UiLayer f10835a;

    /* renamed from: b */
    public final UiManager.UiLayer f10836b;

    /* renamed from: c */
    public ComplexButton f10837c;

    /* renamed from: d */
    public Group f10838d;

    /* renamed from: e */
    public Table f10839e;

    /* renamed from: f */
    public Label f10840f;

    /* renamed from: g */
    public Label f10841g;

    /* renamed from: h */
    public ComplexButton f10842h;

    /* renamed from: i */
    public ComplexButton f10843i;

    /* renamed from: j */
    public ComplexButton f10844j;

    /* renamed from: k */
    public Label f10845k;

    /* renamed from: l */
    public Label f10846l;

    /* renamed from: m */
    public float f10847m;

    /* renamed from: n */
    public DailyQuestManager.DailyQuestLevel f10848n;

    /* renamed from: o */
    public Table f10849o;

    /* renamed from: p */
    public int f10850p;

    /* renamed from: q */
    public final Vector2 f10851q;

    /* renamed from: r */
    public final Game.ScreenResizeListener f10852r;

    /* renamed from: com.prineside.tdi2.screens.MainMenuScreen$26 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C211526 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10876a;

        static {
            int[] iArr = new int[DifficultyMode.values().length];
            f10876a = iArr;
            try {
                iArr[DifficultyMode.EASY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10876a[DifficultyMode.ENDLESS_I.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.prineside.tdi2.screens.MainMenuScreen$3 */
    /* loaded from: classes2.dex */
    public class C21163 extends Timer.Task {
        public C21163() {
        }

        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
        public void run() {
            PerformanceSurvey.runIfSurveysAccepting(new Runnable() { // from class: com.prineside.tdi2.screens.a0
                @Override // java.lang.Runnable
                public final void run() {
                    MainMenuScreen.C21163.m21222f();
                }
            });
        }

        /* renamed from: d */
        public static /* synthetic */ void m21224d() {
            Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.DBG_PERFORMANCE_SURVEY_REQUESTED, 1.0d);
            Game.f8589i.settingsManager.save();
            Game.f8589i.screenManager.setScreen(new PerformanceReportScreen());
        }

        /* renamed from: e */
        public static /* synthetic */ void m21223e() {
            Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.DBG_PERFORMANCE_SURVEY_REQUESTED, 1.0d);
            Game.f8589i.settingsManager.save();
        }

        /* renamed from: f */
        public static /* synthetic */ void m21222f() {
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_PERFORMANCE_SURVEY_REQUESTED) == 0.0d) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("performance_report_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainMenuScreen.C21163.m21224d();
                    }
                }, new Runnable() { // from class: com.prineside.tdi2.screens.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainMenuScreen.C21163.m21223e();
                    }
                });
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class MenuButton extends ComplexButton {
        public static final float SIZE = 134.0f;

        public MenuButton(boolean z, Drawable drawable, CharSequence charSequence, Runnable runnable) {
            super("", Game.f8589i.assetManager.getLabelStyle(21), runnable);
            float[] fArr;
            if (z) {
                fArr = new float[]{0.0f, 4.0f, 4.0f, 124.0f, 124.0f, 128.0f, 128.0f, 0.0f};
            } else {
                fArr = new float[]{4.0f, 0.0f, 0.0f, 128.0f, 128.0f, 124.0f, 124.0f, 4.0f};
            }
            setBackground(new QuadDrawable(new QuadActor(Color.WHITE, fArr)), 3.0f, 3.0f, 128.0f, 128.0f);
            Color color = MaterialColor.LIGHT_BLUE.P800;
            setBackgroundColors(color.cpy().mul(1.0f, 1.0f, 1.0f, 0.56f), color.cpy().mul(1.0f, 1.0f, 1.0f, 0.4f), color.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f), new Color(741092556));
            setIcon(drawable, 35.0f, 46.0f, 64.0f, 64.0f);
            setLabel(0.0f, 16.0f, 134.0f, 18.0f, 1);
            setText(StringFormatter.fitToWidth(charSequence, 118.0f, Game.f8589i.assetManager.getFont(21), "."));
        }
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f10836b);
        Game.f8589i.uiManager.removeLayer(this.f10835a);
        Game.f8589i.removeScreenResizeListener(this.f10852r);
        Logger.log("MainMenuScreen", "disposed");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r3 <= 150.0f) goto L12;
     */
    @Override // com.prineside.tdi2.Screen
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(float r7) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.screens.MainMenuScreen.draw(float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0819  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x09d5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0c47  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0c54  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0cc3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0ce4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0d75  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0ea6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0f43  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0fd5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0fde  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0fff  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21231k() {
        /*
            Method dump skipped, instructions count: 4614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.screens.MainMenuScreen.m21231k():void");
    }

    /* renamed from: l */
    public final void m21230l() {
        this.f10835a.getTable().clearChildren();
        Game.f8589i.uiManager.mainMenuUiScene.rebuildIfNeeded();
        this.f10835a.getTable().clear();
        this.f10835a.getTable().add((Table) Game.f8589i.uiManager.mainMenuUiScene.getContents()).expand().fill().width(Game.f8589i.uiManager.stage.getWidth());
    }

    /* renamed from: m */
    public final void m21229m() {
        this.f10837c.setEnabled(false);
        this.f10839e.clear();
        this.f10838d.clear();
        this.f10839e.add().height(1.0f).expandX().fillX();
        Label label = new Label(Game.f8589i.localeManager.i18n.get("time_left") + ": ", Game.f8589i.assetManager.getLabelStyle(21));
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f10839e.add((Table) label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("loading..."), Game.f8589i.assetManager.getLabelStyle(21));
        this.f10841g = label2;
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f10839e.add((Table) this.f10841g);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f10840f = label3;
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f10839e.add((Table) this.f10840f);
        Game.f8589i.dailyQuestManager.getCurrentDayLevel(new ObjectRetriever() { // from class: com.prineside.tdi2.screens.z
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                MainMenuScreen.this.m21232j((DailyQuestManager.DailyQuestLevel) obj);
            }
        });
    }

    /* renamed from: n */
    public final void m21228n() {
        this.f10846l.setText("");
        this.f10842h.clearActions();
        this.f10842h.addAction(Actions.sequence(Actions.fadeIn(0.5f)));
        this.f10842h.setText(Game.f8589i.localeManager.i18n.get("loading..."));
        this.f10843i.setText(Game.f8589i.localeManager.i18n.get("loading..."));
        Game.f8589i.authManager.getNews(new ObjectRetriever<AuthManager.NewsResponse>() { // from class: com.prineside.tdi2.screens.MainMenuScreen.24
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(AuthManager.NewsResponse newsResponse) {
                if (newsResponse == null) {
                    MainMenuScreen.this.f10842h.clearActions();
                    MainMenuScreen.this.f10842h.addAction(Actions.fadeOut(0.5f));
                    MainMenuScreen.this.f10843i.clearActions();
                    MainMenuScreen.this.f10843i.addAction(Actions.fadeOut(0.5f));
                    return;
                }
                try {
                    Game game = Game.f8589i;
                    AuthManager authManager = game.authManager;
                    if (!authManager.gameUpdateNotificationShown) {
                        authManager.gameUpdateNotificationShown = true;
                        if (184 < newsResponse.networkRequiredVersion) {
                            game.uiManager.notifications.add(game.localeManager.i18n.get("update_game_for_leaderboards"), Game.f8589i.assetManager.getDrawable("icon-exclamation-triangle"), MaterialColor.ORANGE.P800, StaticSoundType.NOTIFICATION);
                        } else if (184 < newsResponse.lastVersion) {
                            game.uiManager.notifications.add(game.localeManager.i18n.get("game_update_available"), Game.f8589i.assetManager.getDrawable("icon-info-square"), MaterialColor.GREEN.P800, StaticSoundType.NOTIFICATION);
                        }
                    }
                    String str = newsResponse.title;
                    String str2 = newsResponse.body;
                    if (str.length() > 24) {
                        str = str.substring(0, 24) + "...";
                    }
                    MainMenuScreen.this.f10842h.setText(str);
                    StringBuilder stringBuilder = new StringBuilder(str2.trim().split("\n")[0]);
                    if (stringBuilder.length() > 48) {
                        String[] split = stringBuilder.toString().split(" ");
                        stringBuilder = new StringBuilder();
                        for (String str3 : split) {
                            if (stringBuilder.length() + str3.length() > 48) {
                                break;
                            }
                            if (stringBuilder.length() != 0) {
                                stringBuilder.append(' ');
                            }
                            stringBuilder.append(str3);
                        }
                        stringBuilder.append("...");
                    }
                    MainMenuScreen.this.f10846l.setText(stringBuilder.toString());
                    MainMenuScreen.this.f10843i.setText(Game.f8589i.localeManager.i18n.format("season_formatted", Integer.valueOf(newsResponse.seasonNumber)));
                    if (newsResponse.seasonPosition > 0 && newsResponse.seasonPlayerCount > 0) {
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append(StringFormatter.commaSeparatedNumber(newsResponse.seasonPosition));
                        stringBuilder2.append(" / ");
                        stringBuilder2.append(StringFormatter.commaSeparatedNumber(newsResponse.seasonPlayerCount));
                        stringBuilder2.append(" - ");
                        stringBuilder2.append(Game.f8589i.localeManager.i18n.format("top_percent", Integer.valueOf(MathUtils.ceil((newsResponse.seasonPosition / newsResponse.seasonPlayerCount) * 100.0f))));
                        MainMenuScreen.this.f10845k.setText(stringBuilder2);
                    } else if (Game.f8589i.authManager.isSignedIn()) {
                        MainMenuScreen.this.f10845k.setText(Game.f8589i.localeManager.i18n.get("not_ranked"));
                    } else {
                        MainMenuScreen.this.f10845k.setText(Game.f8589i.localeManager.i18n.get("sign_in_to_get_ranked"));
                    }
                    SettingsManager settingsManager = Game.f8589i.settingsManager;
                    SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.LAST_AUTO_SHOWN_NEWS_ID;
                    int customValue = (int) settingsManager.getCustomValue(customValueType);
                    int i = newsResponse.f9667id;
                    if (customValue < i) {
                        Game.f8589i.settingsManager.setCustomValue(customValueType, i);
                        Game.f8589i.uiManager.getWebBrowser().webView.loadUrl(Net.HttpMethods.GET, Config.XDX_VIEW_NEWS_URL + newsResponse.f9667id, null);
                        Game.f8589i.uiManager.getWebBrowser().setVisible(true);
                    }
                } catch (Exception e) {
                    Logger.error("MainMenuScreen", "failed to set last news", e);
                    MainMenuScreen.this.f10842h.clearActions();
                    MainMenuScreen.this.f10842h.addAction(Actions.fadeOut(0.5f));
                    MainMenuScreen.this.f10843i.clearActions();
                    MainMenuScreen.this.f10843i.addAction(Actions.fadeOut(0.5f));
                }
            }
        });
    }

    public MainMenuScreen() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        this.f10835a = uiManager.addLayer(mainUiLayer, 101, "MainMenuScreen trophies");
        this.f10836b = Game.f8589i.uiManager.addLayer(mainUiLayer, 102, "MainMenuScreen main");
        this.f10850p = 0;
        this.f10851q = new Vector2();
        Game.ScreenResizeListener screenResizeListener = new Game.ScreenResizeListener() { // from class: com.prineside.tdi2.screens.MainMenuScreen.1
            @Override // com.prineside.tdi2.Game.ScreenResizeListener
            public void visibleDisplayFrameChanged() {
            }

            @Override // com.prineside.tdi2.Game.ScreenResizeListener
            public void resize(int i, int i2) {
                Logger.log("MainMenuScreen", "resize " + i + " " + i2);
                if (i > 0 && i2 > 0) {
                    MainMenuScreen.this.m21231k();
                }
            }
        };
        this.f10852r = screenResizeListener;
        if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
            Logger.log("MainMenuScreen", "app is not modified");
        } else {
            Logger.log("MainMenuScreen", "app is modified");
        }
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game.f8589i.researchManager.updateAndValidateStarBranch();
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.uiManager.resourcesAndMoney.setVisible(true);
        Game.f8589i.uiManager.inventoryOverlay.hide(true);
        Game.f8589i.uiManager.profileSummary.setVisible(true, true);
        m21231k();
        Game.f8589i.progressManager.givePendingBonuses();
        Game.f8589i.progressManager.checkSpecialTrophiesGiven();
        Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
        Game.f8589i.addScreenResizeListener(screenResizeListener);
        int timestampSeconds = Game.getTimestampSeconds();
        AuthManager authManager = Game.f8589i.authManager;
        if (timestampSeconds - authManager.lastStateUpdateTimestamp > 30) {
            authManager.loadStateFromServer(null, null);
        }
        Game.f8589i.achievementManager.updateGlobal();
        Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.screens.MainMenuScreen.2
            @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
            public void run() {
                Game.f8589i.progressManager.giveDoubleGainIfNecessary();
            }
        }, 3.0f);
        if (Game.f8589i.statisticsManager.getAllTime(StatisticsType.PRT) > 600.0d) {
            Timer.schedule(new C21163(), 1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m21232j(DailyQuestManager.DailyQuestLevel dailyQuestLevel) {
        dailyQuestLevel.validate();
        this.f10848n = dailyQuestLevel;
        if (Game.f8589i.basicLevelManager.getLevel(dailyQuestLevel.getLevelName()) != null) {
            this.f10837c.setEnabled(true);
            if (dailyQuestLevel.wasCompleted()) {
                Image image = new Image(Game.f8589i.assetManager.getDrawable("main-menu-check-outline"));
                image.setSize(48.0f, 48.0f);
                image.setPosition(248.0f, 14.0f);
                this.f10838d.addActor(image);
            } else {
                Image image2 = new Image(Game.f8589i.assetManager.getDrawable("count-bubble"));
                image2.setSize(32.25f, 36.75f);
                image2.setPosition(273.0f, 63.0f);
                this.f10838d.addActor(image2);
                image2.addAction(Actions.forever(Actions.sequence(Actions.alpha(0.8f, 0.5f), Actions.alpha(1.0f, 0.5f))));
            }
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("ui-main-menu-dq-preview"));
            image3.setPosition(130.0f, 99.0f);
            image3.setSize(170.0f, 138.0f);
            this.f10838d.addActor(image3);
            Image image4 = new Image(Game.f8589i.basicLevelManager.getLevel(dailyQuestLevel.getLevelName()).getMap().getPreview().getTextureRegion());
            image4.setSize(155.0f, 115.0f);
            image4.setPosition(139.0f, 113.0f);
            this.f10838d.addActor(image4);
            DailyQuestManager dailyQuestManager = Game.f8589i.dailyQuestManager;
            dailyQuestManager.getLeaderboards(dailyQuestManager.getCurrentDayDate(), new ObjectRetriever<DailyQuestManager.DailyQuestLeaderboards>() { // from class: com.prineside.tdi2.screens.MainMenuScreen.25
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(DailyQuestManager.DailyQuestLeaderboards dailyQuestLeaderboards) {
                    DailyQuestManager.LeaderboardsRank leaderboardsRank;
                    String format;
                    if (dailyQuestLeaderboards.success && (leaderboardsRank = dailyQuestLeaderboards.player) != null) {
                        int i = leaderboardsRank.rank;
                        if (i == 1) {
                            format = Game.f8589i.localeManager.i18n.get("leader") + "!";
                        } else {
                            int ceil = MathUtils.ceil((i / leaderboardsRank.total) * 100.0f);
                            if (ceil < 0) {
                                ceil = 0;
                            }
                            if (ceil > 100) {
                                ceil = 100;
                            }
                            format = Game.f8589i.localeManager.i18n.format("top_percent", Integer.valueOf(ceil));
                        }
                        MainMenuScreen.this.f10840f.setText(" - " + format);
                        return;
                    }
                    MainMenuScreen.this.f10840f.setText("");
                }
            });
            return;
        }
        throw new IllegalStateException("Basic level " + dailyQuestLevel.getLevelName() + " not found");
    }
}
