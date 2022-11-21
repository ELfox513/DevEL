package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.LimitedWidthLabel;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: com.prineside.tdi2.ui.components.LiveLeaderboard */
/* loaded from: classes2.dex */
public class LiveLeaderboard implements Disposable {

    /* renamed from: J */
    public static final StringBuilder f13068J = new StringBuilder();

    /* renamed from: A */
    public Group f13069A;

    /* renamed from: B */
    public Pool<ListItem> f13070B;

    /* renamed from: C */
    public PlaceConfig f13071C;

    /* renamed from: D */
    public int f13072D;

    /* renamed from: E */
    public int f13073E;

    /* renamed from: F */
    public Array<PlaceConfig> f13074F;

    /* renamed from: G */
    public Array<ListItem> f13075G;

    /* renamed from: H */
    public GameSystemProvider f13076H;

    /* renamed from: I */
    public _GameStateSystemListener f13077I;

    /* renamed from: a */
    public final UiManager.UiLayer f13078a;

    /* renamed from: b */
    public boolean f13079b;

    /* renamed from: d */
    public int f13080d;

    /* renamed from: k */
    public Array<PlaceConfig> f13081k;

    /* renamed from: p */
    public Group f13082p;

    /* renamed from: q */
    public Label f13083q;

    /* renamed from: r */
    public Label f13084r;

    /* renamed from: s */
    public Label f13085s;

    /* renamed from: t */
    public Label f13086t;

    /* renamed from: u */
    public Label f13087u;

    /* renamed from: v */
    public Label f13088v;

    /* renamed from: w */
    public Image f13089w;

    /* renamed from: x */
    public Group f13090x;

    /* renamed from: y */
    public Group f13091y;

    /* renamed from: z */
    public Group f13092z;

    /* renamed from: com.prineside.tdi2.ui.components.LiveLeaderboard$ListItem */
    /* loaded from: classes2.dex */
    public class ListItem extends Group {

        /* renamed from: M */
        public Image f13103M;

        /* renamed from: N */
        public Label f13104N;

        /* renamed from: O */
        public Label f13105O;

        /* renamed from: P */
        public Label f13106P;

        /* renamed from: Q */
        public boolean f13107Q;

        /* renamed from: R */
        public PlaceConfig f13108R;

        public ListItem(boolean z) {
            this.f13107Q = z;
            setTransform(false);
            setTouchable(Touchable.disabled);
            setSize(320.0f, 30.0f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setPosition(128.0f, 0.0f);
            image.setSize(64.0f, 30.0f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("gradient-right"));
            image2.setSize(128.0f, 30.0f);
            image2.setPosition(-32.0f, 0.0f);
            Color color = MaterialColor.LIGHT_BLUE.P800;
            image2.setColor(color.f3892r, color.f3891g, color.f3890b, 0.4f);
            addActor(image2);
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
            image3.setSize(128.0f, 30.0f);
            image3.setPosition(192.0f, 0.0f);
            image3.setColor(color.f3892r, color.f3891g, color.f3890b, 0.4f);
            addActor(image3);
            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-user"));
            this.f13103M = image4;
            image4.setPosition(98.0f, 0.0f);
            this.f13103M.setSize(30.0f, 30.0f);
            this.f13103M.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            addActor(this.f13103M);
            LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel("", 24, 21, 200.0f);
            this.f13104N = limitedWidthLabel;
            limitedWidthLabel.setAlignment(16);
            this.f13104N.setSize(118.0f, 30.0f);
            this.f13104N.setPosition(-32.0f, 0.0f);
            addActor(this.f13104N);
            Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
            this.f13105O = label;
            label.setSize(118.0f, 30.0f);
            this.f13105O.setPosition(202.0f, 0.0f);
            addActor(this.f13105O);
            Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
            this.f13106P = label2;
            label2.setSize(64.0f, 30.0f);
            this.f13106P.setPosition(128.0f, 0.0f);
            this.f13106P.setAlignment(1);
            addActor(this.f13106P);
            if (z) {
                image2.setPosition(-64.0f, 0.0f);
                image2.setSize(160.0f, 30.0f);
                Color color2 = MaterialColor.GREEN.P800;
                image2.setColor(color2.f3892r, color2.f3891g, color2.f3890b, 0.78f);
                image3.setSize(160.0f, 30.0f);
                image3.setColor(color2.f3892r, color2.f3891g, color2.f3890b, 0.78f);
            }
        }

        public void setup(String str, long j, int i, Drawable drawable) {
            if (str != null) {
                this.f13104N.setText(str);
            }
            if (j >= 0) {
                this.f13105O.setText(StringFormatter.commaSeparatedNumber(j));
            }
            if (i >= 1000000) {
                Label label = this.f13106P;
                label.setText((i / 1000000) + "%");
            } else {
                this.f13106P.setText(i);
            }
            if (this.f13107Q) {
                this.f13106P.setColor(Color.WHITE);
            } else if (i <= 200) {
                this.f13106P.setColor(MaterialColor.AMBER.P300);
            } else {
                this.f13106P.setColor(MaterialColor.LIGHT_BLUE.P300);
            }
            if (drawable != null) {
                this.f13103M.setDrawable(drawable);
                this.f13103M.setColor(1.0f, 1.0f, 1.0f, 1.0f);
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.LiveLeaderboard$PlaceConfig */
    /* loaded from: classes2.dex */
    public class PlaceConfig {
        public boolean hasPfp;
        public ListItem listItem;
        public String nickname;
        public int place;
        public String playerId;
        public long score;

        public PlaceConfig() {
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.LiveLeaderboard$_GameStateSystemListener */
    /* loaded from: classes2.dex */
    public class _GameStateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _GameStateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void scoreChanged(long j, boolean z, StatisticsType statisticsType) {
            LiveLeaderboard.this.m20550G();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13078a);
    }

    /* renamed from: com.prineside.tdi2.ui.components.LiveLeaderboard$3 */
    /* loaded from: classes2.dex */
    public class C25223 implements Net.HttpResponseListener {

        /* renamed from: a */
        public final /* synthetic */ GameSystemProvider f13095a;

        public C25223(GameSystemProvider gameSystemProvider) {
            this.f13095a = gameSystemProvider;
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void cancelled() {
            Logger.error("LiveLeaderboard", "request canceled");
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void failed(Throwable th) {
            Logger.error("LiveLeaderboard", "request failed", th);
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void handleHttpResponse(Net.HttpResponse httpResponse) {
            try {
                final JsonValue parse = new JsonReader().parse(httpResponse.getResultAsString());
                if (parse.getString("status").equals("success")) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.components.LiveLeaderboard.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            boolean z;
                            C25223 c25223 = C25223.this;
                            GameSystemProvider gameSystemProvider = c25223.f13095a;
                            if (gameSystemProvider != null && gameSystemProvider.gameState != null) {
                                LiveLeaderboard.this.f13080d = parse.get("player").getInt("total");
                                if (LiveLeaderboard.this.f13080d == 0) {
                                    return;
                                }
                                long j = parse.get("player").getLong("score");
                                Logger.log("LiveLeaderboard", parse.get("player").toString());
                                Iterator<JsonValue> iterator2 = parse.get("leaderboards").iterator2();
                                while (true) {
                                    z = false;
                                    if (!iterator2.hasNext()) {
                                        break;
                                    }
                                    JsonValue next = iterator2.next();
                                    PlaceConfig placeConfig = new PlaceConfig();
                                    placeConfig.nickname = next.getString("nickname");
                                    placeConfig.score = next.getLong("score");
                                    placeConfig.place = next.getInt("position");
                                    placeConfig.hasPfp = next.getBoolean("hasPfp", false);
                                    placeConfig.playerId = next.getString("playerid");
                                    LiveLeaderboard.this.f13081k.add(placeConfig);
                                }
                                LiveLeaderboard liveLeaderboard = LiveLeaderboard.this;
                                liveLeaderboard.f13071C = new PlaceConfig();
                                LiveLeaderboard.this.f13071C.listItem = new ListItem(true);
                                LiveLeaderboard.this.f13071C.listItem.setup(Game.f8589i.authManager.getNickname(), 0L, 0, new TextureRegionDrawable(Game.f8589i.authManager.getAvatar(64)));
                                LiveLeaderboard liveLeaderboard2 = LiveLeaderboard.this;
                                liveLeaderboard2.f13083q = new Label(Game.f8589i.localeManager.i18n.get("live_leaderboard_previous_record") + ": " + ((Object) StringFormatter.commaSeparatedNumber(j)), Game.f8589i.assetManager.getLabelStyle(21));
                                LiveLeaderboard.this.f13083q.setAlignment(1);
                                LiveLeaderboard.this.f13083q.setPosition(0.0f, 280.0f);
                                LiveLeaderboard.this.f13083q.setSize(320.0f, 16.0f);
                                LiveLeaderboard.this.f13083q.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                                LiveLeaderboard.this.f13069A.addActor(LiveLeaderboard.this.f13083q);
                                LiveLeaderboard.this.f13090x = new Group();
                                LiveLeaderboard.this.f13090x.setTransform(false);
                                LiveLeaderboard.this.f13090x.setSize(30.0f, 6.0f);
                                LiveLeaderboard.this.f13090x.setPosition(145.0f, 221.0f);
                                for (int i = 0; i < 3; i++) {
                                    Image image = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
                                    image.setSize(6.0f, 6.0f);
                                    image.setPosition(i * 12.0f, 0.0f);
                                    image.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                                    LiveLeaderboard.this.f13090x.addActor(image);
                                }
                                LiveLeaderboard.this.f13069A.addActor(LiveLeaderboard.this.f13090x);
                                LiveLeaderboard.this.f13092z = new Group();
                                LiveLeaderboard.this.f13092z.setTransform(false);
                                LiveLeaderboard.this.f13092z.setSize(320.0f, 100.0f);
                                LiveLeaderboard.this.f13092z.setPosition(0.0f, 22.0f);
                                LiveLeaderboard.this.f13069A.addActor(LiveLeaderboard.this.f13092z);
                                LiveLeaderboard.this.f13091y = new Group();
                                LiveLeaderboard.this.f13091y.setTransform(false);
                                LiveLeaderboard.this.f13091y.setSize(30.0f, 6.0f);
                                LiveLeaderboard.this.f13091y.setPosition(145.0f, 49.0f);
                                for (int i2 = 0; i2 < 3; i2++) {
                                    Image image2 = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
                                    image2.setSize(6.0f, 6.0f);
                                    image2.setPosition(i2 * 12.0f, 0.0f);
                                    image2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                                    LiveLeaderboard.this.f13091y.addActor(image2);
                                }
                                LiveLeaderboard.this.f13092z.addActor(LiveLeaderboard.this.f13091y);
                                LiveLeaderboard.this.f13089w = new Image(Game.f8589i.assetManager.getDrawable("gradient-radial-top"));
                                LiveLeaderboard.this.f13089w.setSize(320.0f, 40.0f);
                                Image image3 = LiveLeaderboard.this.f13089w;
                                Color color = MaterialColor.LIGHT_BLUE.P800;
                                image3.setColor(color.f3892r, color.f3891g, color.f3890b, 0.4f);
                                LiveLeaderboard.this.f13092z.addActor(LiveLeaderboard.this.f13089w);
                                Table table = new Table();
                                table.setPosition(0.0f, 12.0f);
                                table.setSize(320.0f, 18.0f);
                                LiveLeaderboard.this.f13092z.addActor(table);
                                LiveLeaderboard.this.f13084r = new Label("~ 123,456 / 567,890", Game.f8589i.assetManager.getLabelStyle(24));
                                table.add((Table) LiveLeaderboard.this.f13084r);
                                LiveLeaderboard liveLeaderboard3 = LiveLeaderboard.this;
                                liveLeaderboard3.f13085s = new Label("/ " + ((Object) StringFormatter.commaSeparatedNumber(LiveLeaderboard.this.f13080d + 1)), Game.f8589i.assetManager.getLabelStyle(21));
                                LiveLeaderboard.this.f13085s.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                                table.add((Table) LiveLeaderboard.this.f13085s).padLeft(5.0f);
                                Table table2 = new Table();
                                table2.setPosition(0.0f, -22.0f);
                                table2.setSize(320.0f, 32.0f);
                                LiveLeaderboard.this.f13092z.addActor(table2);
                                if (HotKeyHintLabel.isEnabled()) {
                                    LiveLeaderboard.this.f13092z.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.TOGGLE_LEADERBOARD), 300.0f, 0.0f));
                                }
                                LiveLeaderboard.this.f13086t = new Label("Top 13%", Game.f8589i.assetManager.getLabelStyle(21));
                                LiveLeaderboard.this.f13086t.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                                table2.add((Table) LiveLeaderboard.this.f13086t);
                                Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
                                image4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                                table2.add((Table) image4).size(20.0f).padLeft(20.0f);
                                LiveLeaderboard.this.f13088v = new Label("14,551", Game.f8589i.assetManager.getLabelStyle(21));
                                LiveLeaderboard.this.f13088v.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                                table2.add((Table) LiveLeaderboard.this.f13088v).padLeft(5.0f);
                                Image image5 = new Image(Game.f8589i.assetManager.getDrawable("icon-double-arrow-up"));
                                image5.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                                table2.add((Table) image5).size(20.0f).padLeft(5.0f);
                                LiveLeaderboard liveLeaderboard4 = LiveLeaderboard.this;
                                liveLeaderboard4.f13087u = new Label(Game.f8589i.localeManager.i18n.get("time_limit_reached") + " (" + StringFormatter.timePassed(MathUtils.round(3600.0f), false, false) + ")", Game.f8589i.assetManager.getLabelStyle(21));
                                LiveLeaderboard.this.f13087u.setPosition(0.0f, -46.0f);
                                LiveLeaderboard.this.f13087u.setSize(320.0f, 32.0f);
                                LiveLeaderboard.this.f13087u.setAlignment(1);
                                LiveLeaderboard.this.f13087u.setColor(MaterialColor.AMBER.P500.cpy().mul(1.0f, 1.0f, 1.0f, 0.56f));
                                LiveLeaderboard.this.f13087u.setVisible(false);
                                LiveLeaderboard.this.f13092z.addActor(LiveLeaderboard.this.f13087u);
                                C25223 c252232 = C25223.this;
                                c252232.f13095a.gameState.listeners.add(LiveLeaderboard.this.f13077I);
                                C25223.this.f13095a._graphics.sideMenu.addListener(new SideMenu.SideMenuListener.SideMenuListenerAdapter() { // from class: com.prineside.tdi2.ui.components.LiveLeaderboard.3.1.1
                                    /* renamed from: a */
                                    public final void m20521a() {
                                        LiveLeaderboard.this.m20549H();
                                    }

                                    @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
                                    public void offscreenStartingToChange() {
                                        m20521a();
                                    }

                                    @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
                                    public void visibilityChanged() {
                                        m20521a();
                                    }
                                });
                                LiveLeaderboard liveLeaderboard5 = LiveLeaderboard.this;
                                if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UI_LIVE_LEADERBOARDS_VISIBLE) == 1.0d) {
                                    z = true;
                                }
                                liveLeaderboard5.f13079b = z;
                                LiveLeaderboard.this.m20550G();
                            }
                        }
                    });
                }
            } catch (Exception e) {
                Logger.error("LiveLeaderboard", "failed to load live leaderboards", e);
            }
        }
    }

    public LiveLeaderboard(GameSystemProvider gameSystemProvider) {
        DifficultyMode difficultyMode;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 101, "LiveLeaderboard");
        this.f13078a = addLayer;
        this.f13081k = new Array<>(PlaceConfig.class);
        this.f13070B = new Pool<ListItem>() { // from class: com.prineside.tdi2.ui.components.LiveLeaderboard.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public ListItem newObject() {
                return new ListItem(false);
            }
        };
        this.f13072D = -1;
        this.f13073E = -1;
        this.f13074F = new Array<>(PlaceConfig.class);
        this.f13075G = new Array<>(ListItem.class);
        this.f13077I = new _GameStateSystemListener();
        this.f13076H = gameSystemProvider;
        Group group = new Group();
        group.setTransform(false);
        group.setTouchable(Touchable.childrenOnly);
        addLayer.getTable().add((Table) group).expand().top().right().size(320.0f, 336.0f).padRight(40.0f);
        addLayer.getTable().add().expandY().fillY().row();
        Group group2 = new Group();
        this.f13069A = group2;
        group2.setTransform(false);
        this.f13069A.setSize(320.0f, 336.0f);
        this.f13069A.setPosition(0.0f, 336.0f);
        this.f13069A.setTouchable(Touchable.enabled);
        this.f13069A.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.LiveLeaderboard.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                LiveLeaderboard.this.toggleVisible();
            }
        });
        group.addActor(this.f13069A);
        Group group3 = new Group();
        this.f13082p = group3;
        group3.setTransform(false);
        this.f13082p.setPosition(0.0f, 86.0f);
        this.f13069A.addActor(this.f13082p);
        String playerId = Game.f8589i.authManager.getPlayerId();
        String str = gameSystemProvider.gameState.basicLevelName;
        if (str != null && Game.f8589i.basicLevelManager.getLevel(str).hasLeaderboards && playerId != null && Game.f8589i.authManager.isSignedIn() && (((difficultyMode = gameSystemProvider.gameState.difficultyMode) == DifficultyMode.NORMAL || DifficultyMode.isEndless(difficultyMode)) && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.LIVE_LEADERBOARDS) != 0.0d)) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.GET_RUNTIME_LEADERBOARDS_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("gamemode", gameSystemProvider.gameState.gameMode.name());
            hashMap.put("difficulty", gameSystemProvider.gameState.difficultyMode.name());
            hashMap.put("mapname", gameSystemProvider.gameState.basicLevelName);
            hashMap.put("playerid", playerId);
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            Gdx.f38302net.sendHttpRequest(httpRequest, new C25223(gameSystemProvider));
            return;
        }
        Logger.log("LiveLeaderboard", "cancel, level: " + gameSystemProvider.gameState.basicLevelName + ", is signed in: " + Game.f8589i.authManager.isSignedIn() + ", difficulty: " + gameSystemProvider.gameState.difficultyMode.name());
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0381  */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20550G() {
        /*
            Method dump skipped, instructions count: 1020
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.components.LiveLeaderboard.m20550G():void");
    }

    /* renamed from: H */
    public final void m20549H() {
        boolean z;
        float f;
        if (this.f13076H._graphics.sideMenu.isVisible() && !this.f13076H._graphics.sideMenu.isOffscreen()) {
            z = true;
        } else {
            z = false;
        }
        if ((Gdx.graphics.getWidth() / Gdx.graphics.getHeight()) * (Game.f8589i.settingsManager.getScaledViewportHeight() / 1080.0f) > 1.7d && z) {
            f = -580.0f;
        } else {
            f = 0.0f;
        }
        boolean z2 = this.f13079b;
        int i = ((((int) f) + 31) * 31) + (z2 ? 1 : 0);
        if (this.f13072D != i) {
            this.f13072D = i;
            if (z2) {
                this.f13082p.setVisible(true);
                this.f13069A.clearActions();
                this.f13069A.addAction(Actions.parallel(Actions.moveTo(f, 0.0f, 0.2f, Interpolation.exp5Out)));
                this.f13091y.clearActions();
                this.f13091y.addAction(Actions.fadeIn(0.1f));
                this.f13089w.clearActions();
                this.f13089w.addAction(Actions.alpha(0.4f, 0.1f));
                return;
            }
            this.f13069A.clearActions();
            this.f13069A.addAction(Actions.sequence(Actions.moveTo(f, 249.0f, 0.2f, Interpolation.exp5Out), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.LiveLeaderboard.4
                @Override // java.lang.Runnable
                public void run() {
                    LiveLeaderboard.this.f13082p.setVisible(false);
                }
            })));
            this.f13091y.clearActions();
            this.f13091y.addAction(Actions.fadeOut(0.1f));
            this.f13089w.clearActions();
            this.f13089w.addAction(Actions.fadeOut(0.1f));
        }
    }

    public void finalFadeOut() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.f13078a.getTable().setTouchable(Touchable.disabled);
        this.f13078a.getTable().clearActions();
        this.f13078a.getTable().addAction(Actions.alpha(0.0f, f * 1.0f));
    }

    public void toggleVisible() {
        double d;
        boolean z = !this.f13079b;
        this.f13079b = z;
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.UI_LIVE_LEADERBOARDS_VISIBLE;
        if (z) {
            d = 1.0d;
        } else {
            d = 0.0d;
        }
        settingsManager.setCustomValue(customValueType, d);
        m20550G();
    }
}
