package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.LeaderBoardManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.LimitedWidthLabel;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.WebView;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
import com.prineside.tdi2.utils.UiUtils;
import java.util.Locale;
import net.bytebuddy.description.type.TypeDescription;
/* renamed from: com.prineside.tdi2.ui.shared.LeaderboardsOverlay */
/* loaded from: classes2.dex */
public class LeaderboardsOverlay {

    /* renamed from: q */
    public static final StringBuilder f14532q = new StringBuilder();

    /* renamed from: a */
    public final UiManager.UiLayer f14533a;

    /* renamed from: b */
    public Group f14534b;

    /* renamed from: c */
    public Group f14535c;

    /* renamed from: d */
    public Image f14536d;

    /* renamed from: e */
    public Label f14537e;

    /* renamed from: f */
    public ComplexButton f14538f;

    /* renamed from: g */
    public ScrollPane f14539g;

    /* renamed from: h */
    public Table f14540h;

    /* renamed from: i */
    public Label f14541i;

    /* renamed from: j */
    public Label f14542j;

    /* renamed from: k */
    public Label f14543k;

    /* renamed from: l */
    public Label f14544l;

    /* renamed from: m */
    public Image f14545m;

    /* renamed from: n */
    public Label f14546n;

    /* renamed from: o */
    public BasicLevel f14547o;

    /* renamed from: p */
    public ReplayManager.LeaderboardsMode f14548p;

    public LeaderboardsOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 161, "LeaderboardsOverlay main");
        this.f14533a = addLayer;
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).size(710.0f, 959.0f);
        Group group2 = new Group();
        this.f14534b = group2;
        group2.setTransform(false);
        this.f14534b.setSize(710.0f, 959.0f);
        this.f14534b.setOrigin(355.0f, 479.5f);
        group.addActor(this.f14534b);
        QuadActor quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.21f), new float[]{0.0f, 0.0f, 0.0f, 920.0f, 692.0f, 950.0f, 700.0f, 27.0f});
        quadActor.setSize(700.0f, 950.0f);
        quadActor.setPosition(25.0f, -19.0f);
        this.f14534b.addActor(quadActor);
        QuadActor quadActor2 = new QuadActor(new Color(791621631), new float[]{0.0f, 0.0f, 0.0f, 958.0f, 710.0f, 946.0f, 710.0f, 21.0f});
        quadActor2.setSize(710.0f, 958.0f);
        this.f14534b.addActor(quadActor2);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
        this.f14536d = image;
        image.setSize(64.0f, 64.0f);
        this.f14536d.setPosition(40.0f, 863.0f);
        this.f14534b.addActor(this.f14536d);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14546n = label;
        label.setSize(100.0f, 40.0f);
        this.f14546n.setPosition(128.0f, 887.0f);
        this.f14534b.addActor(this.f14546n);
        Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14537e = label2;
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14537e.setSize(100.0f, 24.0f);
        this.f14537e.setPosition(128.0f, 863.0f);
        this.f14534b.addActor(this.f14537e);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.LeaderboardsOverlay.1
            @Override // java.lang.Runnable
            public void run() {
                LeaderboardsOverlay leaderboardsOverlay = LeaderboardsOverlay.this;
                BasicLevel basicLevel = leaderboardsOverlay.f14547o;
                ReplayManager.LeaderboardsMode leaderboardsMode = LeaderboardsOverlay.this.f14548p;
                ReplayManager.LeaderboardsMode leaderboardsMode2 = ReplayManager.LeaderboardsMode.score;
                if (leaderboardsMode == leaderboardsMode2) {
                    leaderboardsMode2 = ReplayManager.LeaderboardsMode.waves;
                }
                leaderboardsOverlay.show(basicLevel, leaderboardsMode2);
            }
        });
        this.f14538f = complexButton;
        complexButton.setPosition(533.0f, 844.0f);
        this.f14538f.setSize(194.0f, 82.0f);
        this.f14538f.setLabel(76.0f, 21.0f, 100.0f, 48.0f, 8);
        this.f14538f.setIcon(Game.f8589i.assetManager.getDrawable("icon-crown"), 21.0f, 20.0f, 48.0f, 48.0f);
        this.f14538f.setBackground(Game.f8589i.assetManager.getDrawable("ui-leaderboard-switch-button"), 0.0f, 0.0f, 194.0f, 82.0f);
        this.f14534b.addActor(this.f14538f);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setColor(new Color(724249599));
        image2.setSize(710.0f, 662.0f);
        image2.setPosition(0.0f, 173.0f);
        this.f14534b.addActor(image2);
        this.f14540h = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f14540h);
        this.f14539g = scrollPane;
        scrollPane.setScrollingDisabled(true, false);
        this.f14539g.setSize(710.0f, 662.0f);
        this.f14539g.setPosition(0.0f, 173.0f);
        this.f14534b.addActor(this.f14539g);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image3.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        image3.setSize(710.0f, 10.0f);
        image3.setPosition(0.0f, 825.0f);
        Touchable touchable = Touchable.disabled;
        image3.setTouchable(touchable);
        this.f14534b.addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image4.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        image4.setSize(710.0f, 10.0f);
        image4.setPosition(0.0f, 173.0f);
        image4.setTouchable(touchable);
        this.f14534b.addActor(image4);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        this.f14545m = image5;
        image5.setSize(64.0f, 64.0f);
        this.f14545m.setPosition(323.0f, 726.0f);
        this.f14545m.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        this.f14545m.setOrigin(1);
        this.f14545m.addAction(Actions.forever(Actions.rotateBy(90.0f, 1.0f)));
        this.f14534b.addActor(this.f14545m);
        Group group3 = new Group();
        this.f14535c = group3;
        group3.setTransform(false);
        this.f14535c.setSize(710.0f, 173.0f);
        this.f14534b.addActor(this.f14535c);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14544l = label3;
        label3.setPosition(40.0f, 108.0f);
        this.f14544l.setSize(100.0f, 64.0f);
        this.f14544l.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        this.f14535c.addActor(this.f14544l);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image6.setPosition(0.0f, 44.0f);
        image6.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        image6.setSize(710.0f, 64.0f);
        this.f14535c.addActor(image6);
        Label label4 = new Label(Config.SITE_API_VERSION, Game.f8589i.assetManager.getLabelStyle(24));
        this.f14541i = label4;
        label4.setPosition(0.0f, 44.0f);
        this.f14541i.setSize(128.0f, 64.0f);
        this.f14541i.setAlignment(1);
        this.f14541i.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14535c.addActor(this.f14541i);
        Label label5 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14542j = label5;
        label5.setPosition(128.0f, 44.0f);
        this.f14542j.setSize(100.0f, 64.0f);
        this.f14535c.addActor(this.f14542j);
        Label label6 = new Label("1,000", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14543k = label6;
        label6.setPosition(570.0f, 44.0f);
        this.f14543k.setAlignment(16);
        this.f14543k.setSize(100.0f, 64.0f);
        this.f14535c.addActor(this.f14543k);
        addLayer.getTable().setVisible(false);
    }

    public void hide() {
        Game.f8589i.settingsManager.isUiAnimationsEnabled();
        Game.f8589i.uiManager.darkOverlay.removeCaller("LeaderboardsOverlay");
        UiUtils.bouncyHideOverlay(null, this.f14533a.getTable(), this.f14534b);
    }

    public void show(final BasicLevel basicLevel, final ReplayManager.LeaderboardsMode leaderboardsMode) {
        DifficultyMode difficultyMode;
        if (DifficultyMode.isEndless(Game.f8589i.progressManager.getDifficultyMode())) {
            SettingsManager settingsManager = Game.f8589i.settingsManager;
            SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.ENDLESS_LEADERBOARD_HINT_SHOWN;
            if (settingsManager.getCustomValue(customValueType) == 0.0d) {
                Game.f8589i.uiManager.dialog.showAlert(Game.f8589i.localeManager.i18n.format("endless_leaderboard_description", StringFormatter.timePassed(MathUtils.round(3600.0f), false, false)));
                Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
                Game.f8589i.settingsManager.setCustomValue(customValueType, 1.0d);
            }
        }
        Game.f8589i.settingsManager.isUiAnimationsEnabled();
        this.f14546n.setText(Game.f8589i.localeManager.i18n.get("leaderboard"));
        this.f14547o = basicLevel;
        this.f14548p = leaderboardsMode;
        Game.f8589i.uiManager.darkOverlay.addCaller("LeaderboardsOverlay", this.f14533a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.o
            @Override // java.lang.Runnable
            public final void run() {
                LeaderboardsOverlay.this.hide();
            }
        });
        UiUtils.bouncyShowOverlay(null, this.f14533a.getTable(), this.f14534b);
        DifficultyMode difficultyMode2 = Game.f8589i.progressManager.getDifficultyMode();
        DifficultyMode difficultyMode3 = basicLevel.forcedDifficulty;
        if (difficultyMode3 != null) {
            difficultyMode = difficultyMode3;
        } else {
            difficultyMode = difficultyMode2;
        }
        if (leaderboardsMode == ReplayManager.LeaderboardsMode.score) {
            this.f14536d.setDrawable(Game.f8589i.assetManager.getDrawable("icon-crown"));
            Label label = this.f14537e;
            label.setText(basicLevel.name + " - " + Game.f8589i.localeManager.i18n.get("score").toLowerCase(Locale.ENGLISH) + " - " + Game.f8589i.progressManager.getDifficultyName(difficultyMode));
            this.f14538f.setText(Game.f8589i.localeManager.i18n.get("score"));
            this.f14538f.setIcon(Game.f8589i.assetManager.getDrawable("icon-crown"));
        } else if (leaderboardsMode == ReplayManager.LeaderboardsMode.waves) {
            this.f14536d.setDrawable(Game.f8589i.assetManager.getDrawable("icon-wave"));
            Label label2 = this.f14537e;
            label2.setText(basicLevel.name + " - " + Game.f8589i.localeManager.i18n.get("waves").toLowerCase(Locale.ENGLISH) + " - " + Game.f8589i.progressManager.getDifficultyName(difficultyMode));
            this.f14538f.setText(Game.f8589i.localeManager.i18n.get("waves"));
            this.f14538f.setIcon(Game.f8589i.assetManager.getDrawable("icon-wave"));
        }
        this.f14544l.setText(Game.f8589i.localeManager.i18n.get("your_rank"));
        this.f14540h.clearChildren();
        this.f14545m.setVisible(true);
        this.f14535c.setVisible(false);
        Game.f8589i.leaderBoardManager.getLeaderboards(GameStateSystem.GameMode.BASIC_LEVELS, difficultyMode, basicLevel.name, leaderboardsMode, new ObjectRetriever<LeaderBoardManager.LeaderboardsResult>() { // from class: com.prineside.tdi2.ui.shared.LeaderboardsOverlay.2
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(LeaderBoardManager.LeaderboardsResult leaderboardsResult) {
                int i;
                LeaderboardsOverlay.this.f14545m.setVisible(false);
                if (leaderboardsResult.success) {
                    int i2 = 1;
                    LeaderboardsOverlay.this.f14535c.setVisible(true);
                    float f = 0.14f;
                    Drawable tint = Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.14f));
                    int i3 = 0;
                    while (true) {
                        Array<LeaderBoardManager.LeaderboardsEntry> array = leaderboardsResult.entries;
                        i = array.size;
                        if (i3 >= i) {
                            break;
                        }
                        final LeaderBoardManager.LeaderboardsEntry leaderboardsEntry = array.get(i3);
                        Table table = new Table();
                        Label label3 = new Label(String.valueOf(leaderboardsEntry.rank), Game.f8589i.assetManager.getLabelStyle(24));
                        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        label3.setAlignment(i2);
                        table.add((Table) label3).size(79.0f, 64.0f).padLeft(10.0f);
                        Group group = new Group();
                        group.setTransform(false);
                        table.add((Table) group).size(64.0f);
                        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                        image.setSize(64.0f, 64.0f);
                        image.setColor(0.0f, 0.0f, 0.0f, f);
                        group.addActor(image);
                        Array<TextureRegionConfig> profileLevelTextures = Game.f8589i.authManager.getProfileLevelTextures(leaderboardsEntry.profileLevel);
                        for (int i4 = 0; i4 < profileLevelTextures.size; i4++) {
                            group.addActor(profileLevelTextures.items[i4].createImage(8.0f, 8.0f, 48.0f));
                        }
                        Image image2 = new Image();
                        if (leaderboardsEntry.hasProfilePicture) {
                            AssetManager assetManager = Game.f8589i.assetManager;
                            image2.setDrawable(new TextureRegionDrawable(assetManager.loadWebTexture(Config.AVATAR_WEB_TEXTURES_URL + leaderboardsEntry.playerId + "-32.png")));
                        } else {
                            image2.setDrawable(Game.f8589i.assetManager.getDrawable("icon-user"));
                            image2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                        }
                        image2.setSize(48.0f, 48.0f);
                        image2.setPosition(16.0f, 16.0f);
                        table.add((Table) image2).size(32.0f).padLeft(16.0f).padRight(16.0f);
                        Group group2 = new Group();
                        group2.setTransform(false);
                        table.add((Table) group2).size(100.0f, 64.0f);
                        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
                        image3.setColor(0.0f, 0.0f, 0.0f, 0.14f);
                        image3.setSize(128.0f, 64.0f);
                        group2.addActor(image3);
                        Table table2 = new Table();
                        table2.setSize(300.0f, 64.0f);
                        group2.addActor(table2);
                        LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel(leaderboardsEntry.nickname, 30, 24, 240.0f);
                        if (leaderboardsEntry.nickname.equals(Game.f8589i.authManager.getNickname())) {
                            limitedWidthLabel.setColor(MaterialColor.GREEN.P500);
                        } else {
                            int i5 = leaderboardsEntry.rank;
                            if (i5 == 1) {
                                limitedWidthLabel.setColor(MaterialColor.AMBER.P500);
                            } else if (i5 == 2) {
                                limitedWidthLabel.setColor(MaterialColor.AMBER.P300);
                            } else if (i5 == 3) {
                                limitedWidthLabel.setColor(MaterialColor.AMBER.P100);
                            }
                        }
                        limitedWidthLabel.setTouchable(Touchable.enabled);
                        limitedWidthLabel.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.LeaderboardsOverlay.2.1
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                            public void clicked(InputEvent inputEvent, float f2, float f3) {
                                WebView webView = Game.f8589i.uiManager.getWebBrowser().webView;
                                webView.loadUrl(Net.HttpMethods.GET, Config.XDX_VIEW_PLAYER_PROFILE_URL + leaderboardsEntry.playerId, null);
                                Game.f8589i.uiManager.getWebBrowser().setVisible(true);
                                Game.f8589i.uiManager.leaderboardsOverlay.hide();
                            }
                        });
                        table2.add((Table) limitedWidthLabel).padLeft(16.0f);
                        if (leaderboardsEntry.badgeIconTexture != null) {
                            Group group3 = new Group();
                            group3.setTransform(false);
                            table2.add((Table) group3).padLeft(16.0f).size(40.0f);
                            TextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion(leaderboardsEntry.badgeIconTexture, false);
                            if (textureRegion == null) {
                                AssetManager assetManager2 = Game.f8589i.assetManager;
                                textureRegion = assetManager2.loadWebTexture(Config.OPTIONAL_WEB_TEXTURES_URL + leaderboardsEntry.badgeIconTexture + ".png");
                            }
                            Image image4 = new Image(new TextureRegionDrawable(textureRegion));
                            Color color = leaderboardsEntry.badgeIconColor;
                            if (color == null) {
                                color = Color.WHITE;
                            }
                            image4.setColor(color);
                            image4.setSize(40.0f, 40.0f);
                            group3.addActor(image4);
                            String str = leaderboardsEntry.badgeOverlayTexture;
                            if (str != null) {
                                TextureRegion textureRegion2 = Game.f8589i.assetManager.getTextureRegion(str, false);
                                if (textureRegion2 == null) {
                                    AssetManager assetManager3 = Game.f8589i.assetManager;
                                    textureRegion2 = assetManager3.loadWebTexture(Config.OPTIONAL_WEB_TEXTURES_URL + leaderboardsEntry.badgeOverlayTexture + ".png");
                                }
                                Image image5 = new Image(new TextureRegionDrawable(textureRegion2));
                                Color color2 = leaderboardsEntry.badgeOverlayColor;
                                if (color2 == null) {
                                    color2 = Color.WHITE;
                                }
                                image5.setColor(color2);
                                image5.setSize(40.0f, 40.0f);
                                group3.addActor(image5);
                            }
                        }
                        table2.add().height(1.0f).expandX().fillX();
                        table.add().growX().height(1.0f);
                        Label label4 = new Label(StringFormatter.commaSeparatedNumber(leaderboardsEntry.score), Game.f8589i.assetManager.getLabelStyle(24));
                        label4.setAlignment(16);
                        table.add((Table) label4).size(100.0f, 64.0f).padRight(40.0f);
                        if (i3 % 2 == 0) {
                            table.setBackground(tint);
                        }
                        LeaderboardsOverlay.this.f14540h.add(table).size(710.0f, 64.0f).row();
                        i3++;
                        i2 = 1;
                        f = 0.14f;
                    }
                    if (i * 64.0f < LeaderboardsOverlay.this.f14539g.getHeight()) {
                        LeaderboardsOverlay.this.f14540h.add().size(1.0f, LeaderboardsOverlay.this.f14539g.getHeight() - (leaderboardsResult.entries.size * 64.0f)).row();
                    }
                    if (Game.f8589i.authManager.isSignedIn()) {
                        LeaderboardsOverlay.this.f14542j.setText(Game.f8589i.authManager.getNickname());
                        if (leaderboardsResult.player.rank == 0) {
                            LeaderboardsOverlay.this.f14541i.setText(TypeDescription.Generic.OfWildcardType.SYMBOL);
                            LeaderboardsOverlay.this.f14543k.setText(Game.f8589i.localeManager.i18n.get("not_ranked"));
                            return;
                        }
                        LeaderboardsOverlay.this.f14541i.setText(String.valueOf(leaderboardsResult.player.rank));
                        LeaderboardsOverlay.this.f14543k.setText(StringFormatter.commaSeparatedNumber(leaderboardsResult.player.score));
                        LeaderBoardManager.LeaderboardsRankResult leaderboardsRankResult = leaderboardsResult.player;
                        int i6 = leaderboardsRankResult.rank;
                        if (i6 == 1) {
                            Label label5 = LeaderboardsOverlay.this.f14544l;
                            label5.setText(Game.f8589i.localeManager.i18n.get("your_rank") + " - " + Game.f8589i.localeManager.i18n.get("leader") + "!");
                            return;
                        }
                        int ceil = MathUtils.ceil((i6 / leaderboardsRankResult.total) * 100.0f);
                        LeaderboardsOverlay.f14532q.setLength(0);
                        LeaderboardsOverlay.f14532q.append(Game.f8589i.localeManager.i18n.get("your_rank")).append(" - ").append(Game.f8589i.localeManager.i18n.format("top_percent", Integer.valueOf(ceil)));
                        LeaderboardsOverlay.this.f14544l.setText(LeaderboardsOverlay.f14532q);
                        return;
                    }
                    LeaderboardsOverlay.this.f14541i.setText("???");
                    LeaderboardsOverlay.this.f14542j.setText(Game.f8589i.localeManager.i18n.get("sign_in_to_get_ranked"));
                    LeaderboardsOverlay.this.f14543k.setText(StringFormatter.commaSeparatedNumber(leaderboardsMode == ReplayManager.LeaderboardsMode.score ? basicLevel.maxScore : basicLevel.maxReachedWave));
                    return;
                }
                Game game = Game.f8589i;
                game.uiManager.notifications.add(game.localeManager.i18n.get("failed_to_load_leaderboard"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
            }
        });
        Game.f8589i.uiManager.stage.setScrollFocus(this.f14539g);
    }
}
