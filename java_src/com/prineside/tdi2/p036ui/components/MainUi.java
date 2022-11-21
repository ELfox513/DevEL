package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.MapPrestigeConfig;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ButtonHoldHint;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.ParticlesCanvas;
import com.prineside.tdi2.p036ui.actors.RunnableC2486b;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.GraphicsSystem;
import com.prineside.tdi2.systems.LootSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.StringFormatter;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: com.prineside.tdi2.ui.components.MainUi */
/* loaded from: classes2.dex */
public class MainUi implements Disposable {

    /* renamed from: l0 */
    public static final Rectangle f13112l0 = new Rectangle(160.0f, 16.0f, 128.0f, 144.0f);

    /* renamed from: m0 */
    public static final Rectangle f13113m0 = new Rectangle(480.0f, 79.0f, 160.0f, 48.0f);

    /* renamed from: n0 */
    public static final Rectangle f13114n0 = new Rectangle(640.0f, 79.0f, 160.0f, 48.0f);

    /* renamed from: o0 */
    public static final Rectangle f13115o0 = new Rectangle(324.0f, 35.0f, 156.0f, 40.0f);

    /* renamed from: p0 */
    public static final Rectangle f13116p0 = new Rectangle(324.0f, -6.0f, 156.0f, 40.0f);

    /* renamed from: q0 */
    public static final Rectangle f13117q0 = new Rectangle(0.0f, 0.0f, 192.0f, 192.0f);

    /* renamed from: r0 */
    public static final Rectangle f13118r0 = new Rectangle(360.0f, 0.0f, 112.0f, 112.0f);

    /* renamed from: s0 */
    public static final Rectangle f13119s0 = new Rectangle(320.0f, 79.0f, 160.0f, 48.0f);

    /* renamed from: t0 */
    public static final Rectangle f13120t0 = new Rectangle(192.0f, 0.0f, 128.0f, 128.0f);

    /* renamed from: u0 */
    public static final StringBuilder f13121u0 = new StringBuilder();

    /* renamed from: A */
    public final PaddedImageButton f13122A;

    /* renamed from: B */
    public boolean f13123B;

    /* renamed from: C */
    public final Image f13124C;

    /* renamed from: D */
    public final Image f13125D;

    /* renamed from: E */
    public final Label f13126E;

    /* renamed from: F */
    public final Label f13127F;

    /* renamed from: G */
    public final Image f13128G;

    /* renamed from: H */
    public final Image f13129H;

    /* renamed from: I */
    public final Image f13130I;

    /* renamed from: J */
    public final PaddedImageButton f13131J;

    /* renamed from: K */
    public final PaddedImageButton f13132K;

    /* renamed from: L */
    public int f13133L;

    /* renamed from: M */
    public int f13134M;

    /* renamed from: N */
    public PaddedImageButton f13135N;

    /* renamed from: O */
    public Group f13136O;

    /* renamed from: P */
    public Group f13137P;

    /* renamed from: Q */
    public Group f13138Q;

    /* renamed from: R */
    public Group f13139R;

    /* renamed from: S */
    public Group f13140S;

    /* renamed from: T */
    public Group f13141T;

    /* renamed from: U */
    public Group f13142U;

    /* renamed from: V */
    public PaddedImageButton f13143V;

    /* renamed from: W */
    public Image f13144W;

    /* renamed from: X */
    public Image f13145X;

    /* renamed from: Y */
    public ParticlesCanvas f13146Y;

    /* renamed from: Z */
    public ParticleEffect f13147Z;

    /* renamed from: a */
    public final UiManager.UiLayer f13148a;

    /* renamed from: a0 */
    public Drawable f13149a0;

    /* renamed from: b */
    public final UiManager.UiLayer f13150b;

    /* renamed from: b0 */
    public Drawable f13151b0;

    /* renamed from: c0 */
    public Drawable f13152c0;
    public Group customElementsContainer;

    /* renamed from: d */
    public final UiManager.UiLayer f13153d;

    /* renamed from: d0 */
    public Drawable f13154d0;

    /* renamed from: e0 */
    public boolean f13155e0;

    /* renamed from: f0 */
    public float f13156f0;

    /* renamed from: g0 */
    public final _Game_StateSystemListener f13157g0;

    /* renamed from: h0 */
    public final _WaveSystemListener f13158h0;

    /* renamed from: i0 */
    public final _EnemySystemListener f13159i0;

    /* renamed from: j0 */
    public final _LootSystemListener f13160j0;

    /* renamed from: k */
    public GameSystemProvider f13161k;

    /* renamed from: k0 */
    public final Game.ScreenResizeListener f13162k0;

    /* renamed from: p */
    public final Label f13163p;
    public ParticlesCanvas particlesCanvas;

    /* renamed from: q */
    public final Label f13164q;

    /* renamed from: r */
    public final Label f13165r;

    /* renamed from: s */
    public final Label f13166s;

    /* renamed from: t */
    public final Group f13167t;

    /* renamed from: u */
    public final Group f13168u;

    /* renamed from: v */
    public final Label f13169v;

    /* renamed from: w */
    public final Image f13170w;

    /* renamed from: x */
    public final Label f13171x;

    /* renamed from: y */
    public final Actor f13172y;

    /* renamed from: z */
    public int f13173z;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MainUi$_EnemySystemListener */
    /* loaded from: classes2.dex */
    public class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter {
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void mdpsUpdated(double d) {
            MainUi.this.updateMdps();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MainUi$_Game_StateSystemListener */
    /* loaded from: classes2.dex */
    public class _Game_StateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _Game_StateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gameSpeedChanged() {
            MainUi.this.updateGameSpeedButton();
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void healthChanged(int i) {
            MainUi.this.updateHealth();
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void moneyChanged(int i, boolean z) {
            MainUi.this.updateMoney();
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void scoreChanged(long j, boolean z, StatisticsType statisticsType) {
            MainUi.this.updateScore();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MainUi$_LootSystemListener */
    /* loaded from: classes2.dex */
    public class _LootSystemListener extends LootSystem.LootSystemListener.LootSystemListenerAdapter {
        public _LootSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener.LootSystemListenerAdapter, com.prineside.tdi2.systems.LootSystem.LootSystemListener
        public void rewardingAdBecameAvailable() {
            MainUi.this.m20505m();
        }

        @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener.LootSystemListenerAdapter, com.prineside.tdi2.systems.LootSystem.LootSystemListener
        public void rewardingAdRegistered() {
            MainUi.this.m20505m();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MainUi$_WaveSystemListener */
    /* loaded from: classes2.dex */
    public class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter {
        public _WaveSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void forceWaveAvailabilityChanged() {
            MainUi.this.m20504n();
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void statusChanged(WaveSystem.Status status) {
            MainUi.this.updateWave();
        }
    }

    /* renamed from: j */
    public static /* synthetic */ void m20508j(GameSystemProvider gameSystemProvider) {
        gameSystemProvider.gameState.requireUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m20507k() {
        this.f13167t.setTransform(false);
    }

    public void setUiScreenshotMode(GraphicsSystem.ScreenshotModeConfig screenshotModeConfig) {
    }

    public void updateMdps() {
        this.f13164q.setText(StringFormatter.compactNumber(this.f13161k.enemy.getTowersMaxDps(), false));
    }

    public void updateMoney() {
        this.f13169v.setText(StringFormatter.commaSeparatedNumber(this.f13161k.gameState.getMoney()));
    }

    public void updateScore() {
        this.f13163p.setText(StringFormatter.commaSeparatedNumber(this.f13161k.gameState.getScore()));
    }

    public MainUi(final GameSystemProvider gameSystemProvider) {
        _EnemySystemListener _enemysystemlistener;
        float f;
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 101, "MainUi particles");
        this.f13148a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "MainUi custom elements");
        this.f13150b = addLayer2;
        UiManager.UiLayer addLayer3 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "MainUi");
        this.f13153d = addLayer3;
        _Game_StateSystemListener _game_statesystemlistener = new _Game_StateSystemListener();
        this.f13157g0 = _game_statesystemlistener;
        _WaveSystemListener _wavesystemlistener = new _WaveSystemListener();
        this.f13158h0 = _wavesystemlistener;
        _EnemySystemListener _enemysystemlistener2 = new _EnemySystemListener();
        this.f13159i0 = _enemysystemlistener2;
        _LootSystemListener _lootsystemlistener = new _LootSystemListener();
        this.f13160j0 = _lootsystemlistener;
        this.f13161k = gameSystemProvider;
        this.particlesCanvas = new ParticlesCanvas();
        addLayer.getTable().add((Table) this.particlesCanvas).expand().fill();
        Table table = addLayer.getTable();
        Touchable touchable = Touchable.disabled;
        table.setTouchable(touchable);
        Group group = new Group();
        this.customElementsContainer = group;
        group.setTransform(false);
        addLayer2.getTable().add((Table) this.customElementsContainer).expand().fill();
        addLayer2.getTable().setTouchable(touchable);
        Game.ScreenResizeListener.ScreenResizeListenerAdapter screenResizeListenerAdapter = new Game.ScreenResizeListener.ScreenResizeListenerAdapter() { // from class: com.prineside.tdi2.ui.components.MainUi.1
            @Override // com.prineside.tdi2.Game.ScreenResizeListener.ScreenResizeListenerAdapter, com.prineside.tdi2.Game.ScreenResizeListener
            public void resize(int i, int i2) {
                if (i > 0 && i2 > 0) {
                    MainUi.this.particlesCanvas.setSize(Game.f8589i.uiManager.viewport.getWorldWidth(), Game.f8589i.uiManager.viewport.getWorldHeight());
                    MainUi.this.customElementsContainer.setSize(Game.f8589i.uiManager.viewport.getWorldWidth(), Game.f8589i.uiManager.viewport.getWorldHeight());
                }
            }
        };
        this.f13162k0 = screenResizeListenerAdapter;
        Game.f8589i.addScreenResizeListener(screenResizeListenerAdapter);
        Table table2 = addLayer3.getTable();
        table2.setName("main_game_ui");
        Group group2 = new Group();
        group2.setTransform(false);
        group2.setSize(840.0f, 160.0f);
        Touchable touchable2 = Touchable.childrenOnly;
        group2.setTouchable(touchable2);
        table2.add((Table) group2).expand().top().left().row();
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-pause");
        Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.components.MainUi.2
            @Override // java.lang.Runnable
            public void run() {
                gameSystemProvider.gameState.pauseGame();
            }
        };
        Color color = Color.WHITE;
        Color color2 = MaterialColor.LIGHT_BLUE.P500;
        Color color3 = MaterialColor.LIGHT_BLUE.P600;
        PaddedImageButton iconSize = new PaddedImageButton(drawable, runnable, color, color2, color3).setIconPosition(32.0f, 32.0f).setIconSize(96.0f, 96.0f);
        iconSize.setName("game_pause_button");
        iconSize.setSize(160.0f, 160.0f);
        group2.addActor(iconSize);
        ParticlesCanvas particlesCanvas = new ParticlesCanvas();
        this.f13146Y = particlesCanvas;
        particlesCanvas.setPosition(117.0f, 46.0f);
        this.f13146Y.setSize(1.0f, 1.0f);
        this.f13146Y.setVisible(false);
        iconSize.addActor(this.f13146Y);
        ParticleEffect particleEffect = new ParticleEffect();
        this.f13147Z = particleEffect;
        particleEffect.load(Gdx.files.external("particles/pause-menu-ad-icon.prt"), Game.f8589i.assetManager.getTextureRegion("particle-snowflake").getAtlas());
        this.f13147Z.setEmittersCleanUpBlendFunction(false);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-pause-button-video-ad-icon"));
        this.f13145X = image;
        image.setSize(48.0f, 48.0f);
        this.f13145X.setOrigin(24.0f, 24.0f);
        this.f13145X.setPosition(93.0f, 38.0f);
        this.f13145X.setTouchable(touchable);
        this.f13145X.setVisible(false);
        iconSize.addActor(this.f13145X);
        if (Game.f8589i.purchaseManager.rewardingAdsAvailable()) {
            gameSystemProvider.loot.listeners.add(_lootsystemlistener);
        }
        PaddedImageButton iconSize2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-easel"), new Runnable() { // from class: com.prineside.tdi2.ui.components.MainUi.3
            @Override // java.lang.Runnable
            public void run() {
                gameSystemProvider._mapRendering.switchMapDrawMode();
            }
        }, color, color2, color3).setIconPosition(16.0f, 16.0f).setIconSize(96.0f, 96.0f);
        this.f13135N = iconSize2;
        iconSize2.setName("map_draw_mode_button");
        PaddedImageButton paddedImageButton = this.f13135N;
        Rectangle rectangle = f13112l0;
        paddedImageButton.setOrigin(rectangle.width / 2.0f, rectangle.height / 2.0f);
        this.f13135N.setSize(rectangle.width, rectangle.height);
        this.f13135N.setPosition(rectangle.f5523x, rectangle.f5524y);
        if (HotKeyHintLabel.isEnabled()) {
            this.f13135N.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.SWITCH_DRAW_MODE), 64.0f, 112.0f));
        }
        group2.addActor(this.f13135N);
        Group group3 = new Group();
        this.f13139R = group3;
        group3.setTransform(false);
        Group group4 = this.f13139R;
        Rectangle rectangle2 = f13115o0;
        group4.setPosition(rectangle2.f5523x, rectangle2.f5524y);
        this.f13139R.setSize(rectangle2.width, rectangle2.height);
        this.f13139R.setOrigin(rectangle2.width / 2.0f, rectangle2.height / 2.0f);
        group2.addActor(this.f13139R);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-star-hollow"));
        this.f13144W = image2;
        image2.setPosition(0.0f, 0.0f);
        this.f13144W.setSize(40.0f, 40.0f);
        this.f13144W.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f13139R.addActor(this.f13144W);
        Table table3 = new Table();
        table3.setSize(400.0f, 40.0f);
        this.f13139R.addActor(table3);
        Label label = new Label("000", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13163p = label;
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table3.add((Table) label).top().left().padLeft(56.0f).height(40.0f);
        if (gameSystemProvider.gameState.gameMode == GameStateSystem.GameMode.USER_MAPS && Game.f8589i.gameValueManager.getSnapshot().getBooleanValue(GameValueType.PRESTIGE_MODE)) {
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
            Color color4 = MaterialColor.AMBER.P500;
            image3.setColor(color4);
            table3.add((Table) image3).size(40.0f).padLeft(32.0f);
            _enemysystemlistener = _enemysystemlistener2;
            Label label2 = new Label(StringFormatter.commaSeparatedNumber(MapPrestigeConfig.getMaxPrestigeScore(gameSystemProvider.gameState.averageDifficulty, gameSystemProvider.map.getMap().targetTile.isUseStockGameValues())), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
            label2.setColor(color4);
            f = 40.0f;
            table3.add((Table) label2).top().left().padLeft(16.0f).height(40.0f);
        } else {
            _enemysystemlistener = _enemysystemlistener2;
            f = 40.0f;
        }
        table3.add().height(f).expandX().fillX();
        Group group5 = new Group();
        this.f13140S = group5;
        group5.setTransform(false);
        Group group6 = this.f13140S;
        Rectangle rectangle3 = f13116p0;
        group6.setPosition(rectangle3.f5523x, rectangle3.f5524y);
        this.f13140S.setSize(rectangle3.width, rectangle3.height);
        this.f13140S.setOrigin(rectangle3.width / 2.0f, rectangle3.height / 2.0f);
        group2.addActor(this.f13140S);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-mdps"));
        image4.setPosition(0.0f, 0.0f);
        image4.setSize(40.0f, 40.0f);
        Color color5 = MaterialColor.PURPLE.P300;
        image4.setColor(color5);
        this.f13140S.addActor(image4);
        Label label3 = new Label("0", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13164q = label3;
        label3.setColor(color5);
        label3.setPosition(56.0f, 0.0f);
        label3.setSize(100.0f, 40.0f);
        this.f13140S.addActor(label3);
        Group group7 = new Group();
        this.f13141T = group7;
        group7.setTransform(false);
        Group group8 = this.f13141T;
        Rectangle rectangle4 = f13119s0;
        group8.setPosition(rectangle4.f5523x, rectangle4.f5524y);
        this.f13141T.setSize(rectangle4.width, rectangle4.height);
        this.f13141T.setOrigin(rectangle4.width / 2.0f, rectangle4.height / 2.0f);
        group2.addActor(this.f13141T);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("icon-wave"));
        image5.setPosition(0.0f, 0.0f);
        image5.setSize(48.0f, 48.0f);
        image5.setColor(color);
        this.f13141T.addActor(image5);
        Label label4 = new Label("123", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13165r = label4;
        label4.setPosition(60.0f, 0.0f);
        label4.setSize(100.0f, 48.0f);
        this.f13141T.addActor(label4);
        Group group9 = new Group();
        this.f13136O = group9;
        group9.setTransform(false);
        Group group10 = this.f13136O;
        Rectangle rectangle5 = f13113m0;
        group10.setPosition(rectangle5.f5523x, rectangle5.f5524y);
        this.f13136O.setSize(rectangle5.width, rectangle5.height);
        this.f13136O.setOrigin(rectangle5.width / 2.0f, rectangle5.height / 2.0f);
        group2.addActor(this.f13136O);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("game-ui-health-icon"));
        image6.setPosition(0.0f, 0.0f);
        image6.setSize(48.0f, 48.0f);
        this.f13136O.addActor(image6);
        Group group11 = new Group();
        this.f13167t = group11;
        group11.setTransform(false);
        group11.setPosition(60.0f, 0.0f);
        group11.setSize(100.0f, 48.0f);
        group11.setOrigin(0.0f, 24.0f);
        this.f13136O.addActor(group11);
        Group group12 = new Group();
        this.f13168u = group12;
        group12.setTransform(false);
        group12.setPosition(60.0f, 0.0f);
        group12.setSize(100.0f, 48.0f);
        this.f13136O.addActor(group12);
        Label label5 = new Label("456", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13166s = label5;
        label5.setSize(100.0f, 48.0f);
        group11.addActor(label5);
        Group group13 = new Group();
        this.f13137P = group13;
        group13.setTransform(false);
        Group group14 = this.f13137P;
        Rectangle rectangle6 = f13114n0;
        group14.setPosition(rectangle6.f5523x, rectangle6.f5524y);
        this.f13137P.setSize(rectangle6.width, rectangle6.height);
        this.f13137P.setOrigin(rectangle6.width / 2.0f, rectangle6.height / 2.0f);
        group2.addActor(this.f13137P);
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("game-ui-coin-icon"));
        image7.setPosition(0.0f, 0.0f);
        image7.setSize(48.0f, 48.0f);
        this.f13137P.addActor(image7);
        Label label6 = new Label("789", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13169v = label6;
        label6.setPosition(60.0f, 0.0f);
        label6.setSize(100.0f, 48.0f);
        this.f13137P.addActor(label6);
        Image image8 = new Image(Game.f8589i.assetManager.getDrawable("icon-x2"));
        this.f13170w = image8;
        image8.setSize(40.0f, 40.0f);
        Color color6 = MaterialColor.LIGHT_GREEN.P500;
        image8.setColor(color6);
        image8.setPosition(648.0f, 35.0f);
        image8.setVisible(false);
        group2.addActor(image8);
        Label label7 = new Label("789", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13171x = label7;
        label7.setPosition(700.0f, 35.0f);
        label7.setSize(100.0f, 40.0f);
        label7.setColor(color6.cpy().mul(1.0f, 1.0f, 1.0f, 0.56f));
        label7.setVisible(false);
        group2.addActor(label7);
        Actor actor = new Actor();
        this.f13172y = actor;
        actor.setTouchable(Touchable.enabled);
        actor.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.MainUi.4
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f2, float f3) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showAlert(game.localeManager.i18n.get("double_multiplier_timer_hint"));
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f2, float f3, int i, Actor actor2) {
                super.enter(inputEvent, f2, f3, i, actor2);
                MainUi.this.f13170w.setColor(MaterialColor.LIGHT_GREEN.P300);
                MainUi.this.f13171x.getColor().f3889a = 1.0f;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f2, float f3, int i, Actor actor2) {
                super.exit(inputEvent, f2, f3, i, actor2);
                MainUi.this.f13170w.setColor(MaterialColor.LIGHT_GREEN.P500);
                MainUi.this.f13171x.getColor().f3889a = 0.56f;
            }
        });
        actor.setSize(200.0f, 72.0f);
        actor.setPosition(624.0f, 19.0f);
        group2.addActor(actor);
        Group group15 = new Group();
        group15.setTransform(false);
        group15.setSize(320.0f, 621.0f);
        group15.setTouchable(touchable2);
        table2.add((Table) group15).expand().bottom().left();
        Group group16 = new Group();
        this.f13138Q = group16;
        group16.setTransform(false);
        Group group17 = this.f13138Q;
        Rectangle rectangle7 = f13117q0;
        group17.setPosition(rectangle7.f5523x, rectangle7.f5524y);
        this.f13138Q.setSize(rectangle7.width, rectangle7.height);
        this.f13138Q.setOrigin(rectangle7.width / 2.0f, rectangle7.height / 2.0f);
        group15.addActor(this.f13138Q);
        Image image9 = new Image(Game.f8589i.assetManager.getDrawable("icon-stopwatch"));
        this.f13124C = image9;
        image9.setPosition(32.0f, 32.0f);
        image9.setSize(128.0f, 128.0f);
        image9.setTouchable(touchable);
        this.f13138Q.addActor(image9);
        PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-stopwatch"), null, color, color, color);
        this.f13122A = paddedImageButton2;
        paddedImageButton2.setName("next_wave_call_button");
        paddedImageButton2.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.MainUi.5

            /* renamed from: b */
            public final Timer.Task f13180b = new Timer.Task() { // from class: com.prineside.tdi2.ui.components.MainUi.5.1
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    gameSystemProvider.wave.setAutoForceWaveEnabled(true);
                    if (!gameSystemProvider.gameState.isFastForwarding()) {
                        gameSystemProvider._sound.playStatic(StaticSoundType.AUTO_FORCE_WAVE);
                    }
                    if (C25315.this.f13181c != null) {
                        C25315.this.f13181c.disappearing = true;
                        C25315.this.f13181c = null;
                    }
                }
            };

            /* renamed from: c */
            public ButtonHoldHint f13181c;

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                if (i2 == 0) {
                    if (this.f13180b.isScheduled()) {
                        this.f13180b.cancel();
                    }
                    Timer.schedule(this.f13180b, 0.35f);
                    this.f13181c = new ButtonHoldHint(f2, f3, 0.35f);
                    MainUi.this.f13122A.addActor(this.f13181c);
                } else if (i2 == 1 && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.INSTANT_HOLD_BUTTON_ON_RMB) == 1.0d) {
                    if (this.f13180b.isScheduled()) {
                        this.f13180b.cancel();
                    }
                    this.f13180b.run();
                }
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                if (this.f13180b.isScheduled()) {
                    if (MainUi.this.f13123B && gameSystemProvider.wave.isForceWaveAvailable()) {
                        gameSystemProvider.wave.forceNextWaveAction();
                    }
                    gameSystemProvider.wave.setAutoForceWaveEnabled(false);
                }
                this.f13180b.cancel();
                ButtonHoldHint buttonHoldHint = this.f13181c;
                if (buttonHoldHint != null) {
                    Application application = Gdx.app;
                    buttonHoldHint.getClass();
                    application.postRunnable(new RunnableC2486b(buttonHoldHint));
                    this.f13181c = null;
                }
            }
        });
        paddedImageButton2.setSize(192.0f, 192.0f);
        paddedImageButton2.setIconSize(128.0f, 128.0f);
        paddedImageButton2.setIconPosition(32.0f, 32.0f);
        paddedImageButton2.setDisabledColor(new Color(1.0f, 1.0f, 1.0f, 0.28f));
        this.f13138Q.addActor(paddedImageButton2);
        if (HotKeyHintLabel.isEnabled()) {
            HotKeyHintLabel hotKeyHintLabel = new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.CALL_WAVE), 96.0f, 12.0f);
            hotKeyHintLabel.addVariant(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.TOGGLE_AUTO_WAVE_CALL));
            paddedImageButton2.addActor(hotKeyHintLabel);
        }
        Image image10 = new Image(Game.f8589i.assetManager.getDrawable("ui-stopwatch-timer-background"));
        this.f13125D = image10;
        image10.setPosition(119.0f, 32.0f);
        image10.setSize(42.0f, 42.0f);
        image10.setTouchable(touchable);
        this.f13138Q.addActor(image10);
        Label label8 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13126E = label8;
        label8.setSize(50.0f, 24.0f);
        label8.setPosition(128.0f, 42.0f);
        label8.setTouchable(touchable);
        this.f13138Q.addActor(label8);
        Image image11 = new Image(Game.f8589i.assetManager.getDrawable("ui-auto-force-wave-overlay"));
        this.f13129H = image11;
        image11.setTouchable(touchable);
        image11.setPosition(32.0f, 32.0f);
        image11.setSize(137.0f, 93.0f);
        this.f13138Q.addActor(image11);
        Label label9 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), MaterialColor.YELLOW.P500));
        this.f13127F = label9;
        label9.setPosition(0.0f, 166.0f);
        label9.setSize(113.0f, 32.0f);
        label9.setTouchable(touchable);
        label9.setAlignment(16);
        this.f13138Q.addActor(label9);
        Image image12 = new Image(Game.f8589i.assetManager.getDrawable("game-ui-coin-icon"));
        this.f13128G = image12;
        image12.setPosition(120.0f, 169.0f);
        image12.setSize(24.0f, 24.0f);
        image12.setTouchable(touchable);
        this.f13138Q.addActor(image12);
        this.f13149a0 = Game.f8589i.assetManager.getDrawable("icon-speed-pause");
        this.f13151b0 = Game.f8589i.assetManager.getDrawable("icon-speed-low");
        this.f13152c0 = Game.f8589i.assetManager.getDrawable("icon-speed-medium");
        this.f13154d0 = Game.f8589i.assetManager.getDrawable("icon-speed-high");
        Group group18 = new Group();
        this.f13142U = group18;
        group18.setName("game_speed_toggle_button");
        this.f13142U.setTransform(false);
        Group group19 = this.f13142U;
        Rectangle rectangle8 = f13120t0;
        group19.setPosition(rectangle8.f5523x, rectangle8.f5524y);
        this.f13142U.setSize(rectangle8.width, rectangle8.height);
        this.f13142U.setOrigin(rectangle8.width / 2.0f, rectangle8.height / 2.0f);
        group15.addActor(this.f13142U);
        Image image13 = new Image(Game.f8589i.assetManager.getDrawable("icon-speed-pause"));
        this.f13130I = image13;
        image13.setPosition(32.0f, 32.0f);
        image13.setSize(96.0f, 96.0f);
        image13.setTouchable(touchable);
        this.f13142U.addActor(image13);
        PaddedImageButton paddedImageButton3 = new PaddedImageButton(this.f13151b0, null, color, color2, color3);
        this.f13131J = paddedImageButton3;
        paddedImageButton3.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.MainUi.6

            /* renamed from: b */
            public Timer.Task f13185b = new Timer.Task() { // from class: com.prineside.tdi2.ui.components.MainUi.6.1
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    float f2;
                    if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SLOW_MOTION_PAUSE) == 0.0d) {
                        f2 = 0.0f;
                    } else {
                        f2 = 0.0667f;
                    }
                    gameSystemProvider.gameState.setGameSpeed(f2);
                    if (C25336.this.f13186c != null) {
                        C25336.this.f13186c.disappearing = true;
                        C25336.this.f13186c = null;
                    }
                }
            };

            /* renamed from: c */
            public ButtonHoldHint f13186c;

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                if (i2 == 0) {
                    if (this.f13185b.isScheduled()) {
                        this.f13185b.cancel();
                    }
                    Timer.schedule(this.f13185b, 0.25f);
                    this.f13186c = new ButtonHoldHint(f2, f3, 0.25f);
                    MainUi.this.f13131J.addActor(this.f13186c);
                } else if (i2 == 1 && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.INSTANT_HOLD_BUTTON_ON_RMB) == 1.0d) {
                    if (this.f13185b.isScheduled()) {
                        this.f13185b.cancel();
                    }
                    this.f13185b.run();
                }
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                if (this.f13185b.isScheduled()) {
                    gameSystemProvider.gameState.switchGameSpeed();
                }
                this.f13185b.cancel();
                ButtonHoldHint buttonHoldHint = this.f13186c;
                if (buttonHoldHint != null) {
                    Application application = Gdx.app;
                    buttonHoldHint.getClass();
                    application.postRunnable(new RunnableC2486b(buttonHoldHint));
                    this.f13186c = null;
                }
            }
        });
        paddedImageButton3.setSize(128.0f, 128.0f);
        paddedImageButton3.setIconSize(96.0f, 96.0f);
        paddedImageButton3.setIconPosition(32.0f, 32.0f);
        paddedImageButton3.setPosition(0.0f, 0.0f);
        this.f13142U.addActor(paddedImageButton3);
        if (HotKeyHintLabel.isEnabled()) {
            HotKeyHintLabel hotKeyHintLabel2 = new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.PAUSE_GAME), 80.0f, 12.0f);
            hotKeyHintLabel2.addVariant(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.SPEED_DOWN));
            hotKeyHintLabel2.addVariant(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.SPEED_UP));
            paddedImageButton3.addActor(hotKeyHintLabel2);
        }
        PaddedImageButton paddedImageButton4 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-step-forward"), new Runnable() { // from class: com.prineside.tdi2.ui.components.e
            @Override // java.lang.Runnable
            public final void run() {
                MainUi.m20508j(GameSystemProvider.this);
            }
        }, color, color2, color3);
        this.f13132K = paddedImageButton4;
        paddedImageButton4.setSize(128.0f, 128.0f);
        paddedImageButton4.setIconSize(64.0f, 64.0f);
        paddedImageButton4.setIconPosition(32.0f, 32.0f);
        paddedImageButton4.setPosition(144.0f, 0.0f);
        paddedImageButton4.setVisible(false);
        this.f13142U.addActor(paddedImageButton4);
        PaddedImageButton paddedImageButton5 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-letter"), new Runnable() { // from class: com.prineside.tdi2.ui.components.MainUi.7
            @Override // java.lang.Runnable
            public void run() {
                gameSystemProvider._graphics.storylineMessages.show();
            }
        }, color, color2, MaterialColor.LIGHT_BLUE.P700);
        this.f13143V = paddedImageButton5;
        paddedImageButton5.setName("story_line_messages_button");
        this.f13143V.setIconPosition(24.0f, 32.0f);
        this.f13143V.setIconSize(64.0f, 64.0f);
        PaddedImageButton paddedImageButton6 = this.f13143V;
        Rectangle rectangle9 = f13118r0;
        paddedImageButton6.setSize(rectangle9.width, rectangle9.height);
        this.f13143V.setPosition(rectangle9.f5523x, rectangle9.f5524y);
        this.f13143V.setOrigin(rectangle9.width / 2.0f, rectangle9.height / 2.0f);
        this.f13143V.setVisible(false);
        group15.addActor(this.f13143V);
        gameSystemProvider.gameState.listeners.add(_game_statesystemlistener);
        gameSystemProvider.wave.listeners.add(_wavesystemlistener);
        gameSystemProvider.enemy.listeners.add(_enemysystemlistener);
        m20506l(false);
        updateAll();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.removeScreenResizeListener(this.f13162k0);
        Game.f8589i.uiManager.removeLayer(this.f13153d);
        Game.f8589i.uiManager.removeLayer(this.f13148a);
        Game.f8589i.uiManager.removeLayer(this.f13150b);
        this.f13161k = null;
    }

    public void draw(float f) {
        WaveSystem waveSystem = this.f13161k.wave;
        if (waveSystem.status != WaveSystem.Status.NOT_STARTED) {
            int timeToNextWave = (int) waveSystem.getTimeToNextWave();
            if (timeToNextWave == 0) {
                this.f13125D.setVisible(false);
                this.f13126E.setVisible(false);
            } else if (timeToNextWave != this.f13133L) {
                StringBuilder stringBuilder = f13121u0;
                stringBuilder.setLength(0);
                stringBuilder.append(timeToNextWave);
                this.f13126E.setText(stringBuilder);
                this.f13126E.setVisible(true);
                this.f13125D.setVisible(true);
            }
            this.f13133L = timeToNextWave;
            int forceWaveBonus = this.f13161k.wave.getForceWaveBonus();
            if (forceWaveBonus == 0) {
                this.f13128G.setVisible(false);
                this.f13127F.setVisible(false);
            } else if (forceWaveBonus != this.f13134M) {
                StringBuilder stringBuilder2 = f13121u0;
                stringBuilder2.setLength(0);
                stringBuilder2.append(SignatureVisitor.EXTENDS);
                stringBuilder2.append(forceWaveBonus);
                this.f13127F.setText(stringBuilder2);
                this.f13128G.setVisible(true);
                this.f13127F.setVisible(true);
            }
            this.f13134M = forceWaveBonus;
        } else {
            this.f13125D.setVisible(false);
            this.f13126E.setVisible(false);
            this.f13128G.setVisible(false);
            this.f13127F.setVisible(false);
        }
        float f2 = this.f13156f0 + f;
        this.f13156f0 = f2;
        if (f2 > 1.0f) {
            m20505m();
            this.f13156f0 = 0.0f;
        }
        int doubleSpeedTimeLeft = (int) this.f13161k.gameState.getDoubleSpeedTimeLeft();
        if (doubleSpeedTimeLeft > 0) {
            if (!this.f13170w.isVisible()) {
                this.f13170w.setVisible(true);
                this.f13171x.setVisible(true);
                this.f13172y.setVisible(true);
            }
            if (doubleSpeedTimeLeft != this.f13173z) {
                this.f13173z = doubleSpeedTimeLeft;
                this.f13171x.setText(StringFormatter.digestTime(doubleSpeedTimeLeft));
                return;
            }
            return;
        }
        this.f13170w.setVisible(false);
        this.f13171x.setVisible(false);
        this.f13172y.setVisible(false);
    }

    public void finalFadeOut() {
        this.f13153d.getTable().setTouchable(Touchable.disabled);
        this.f13153d.getTable().clearActions();
        this.f13153d.getTable().addAction(Actions.alpha(0.0f, 1.0f));
        this.f13155e0 = true;
    }

    public boolean gameSpeedButtonVisible() {
        if (this.f13155e0) {
            return false;
        }
        return this.f13142U.isVisible();
    }

    public void hideCoins() {
        this.f13137P.clearActions();
        this.f13137P.setVisible(false);
    }

    public void hideDrawModeButton() {
        this.f13135N.clearActions();
        this.f13135N.setVisible(false);
    }

    public void hideGameSpeedButton() {
        this.f13142U.clearActions();
        this.f13142U.setVisible(false);
    }

    public void hideHealth() {
        this.f13136O.clearActions();
        this.f13136O.setVisible(false);
    }

    public void hideMdps() {
        this.f13140S.clearActions();
        this.f13140S.setVisible(false);
    }

    public void hideMessagesButton() {
        this.f13143V.clearActions();
        this.f13143V.setVisible(false);
    }

    public void hideNextWaveButton() {
        this.f13138Q.clearActions();
        this.f13138Q.setVisible(false);
        this.f13161k.wave.setAutoForceWaveEnabled(false);
    }

    public void hideScore() {
        this.f13139R.clearActions();
        this.f13139R.setVisible(false);
    }

    public void hideWaveNumber() {
        this.f13141T.clearActions();
        this.f13141T.setVisible(false);
    }

    /* renamed from: l */
    public final void m20506l(boolean z) {
        this.f13123B = z;
        if (z) {
            this.f13122A.setColors(Color.WHITE, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P600);
        } else if (this.f13161k.wave.isAutoForceWaveEnabled()) {
            this.f13122A.setColors(Color.WHITE, MaterialColor.GREY.P400, MaterialColor.GREY.P500);
        } else {
            Color disabledColor = this.f13122A.getDisabledColor();
            this.f13122A.setColors(disabledColor, disabledColor, disabledColor);
        }
    }

    /* renamed from: m */
    public final void m20505m() {
        if (this.f13161k.loot.isRewardingAdAvailableInReality() && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.ENABLE_PAUSE_AD_ICON) != 0.0d) {
            if (!this.f13145X.isVisible()) {
                this.f13145X.setVisible(true);
                this.f13145X.clearActions();
                this.f13145X.addAction(Actions.parallel(Actions.sequence(Actions.scaleTo(0.0f, 0.0f), Actions.scaleTo(1.0f, 1.0f, 0.2f, Interpolation.swingOut)), Actions.forever(Actions.sequence(Actions.color(MaterialColor.LIGHT_GREEN.P700, 0.7f), Actions.color(MaterialColor.LIGHT_GREEN.P400, 0.4f)))));
                this.f13146Y.setVisible(true);
                this.f13146Y.clearActions();
                this.f13146Y.addAction(Actions.sequence(Actions.delay(2.0f), Actions.fadeOut(1.0f)));
                this.f13146Y.clearParticles();
                this.f13146Y.addParticle(this.f13147Z, 0.0f, 0.0f);
                return;
            }
            return;
        }
        this.f13145X.clearActions();
        this.f13145X.setVisible(false);
        this.f13146Y.clearActions();
        this.f13146Y.setVisible(false);
    }

    /* renamed from: n */
    public final void m20504n() {
        if (this.f13161k.wave.isForceWaveAvailable()) {
            m20506l(true);
            this.f13124C.clearActions();
            this.f13124C.addAction(Actions.show());
            this.f13124C.addAction(Actions.forever(Actions.parallel(Actions.sequence(Actions.alpha(0.78f), Actions.alpha(0.0f, 1.0f)), Actions.sequence(Actions.moveTo(32.0f, 32.0f), Actions.moveTo(0.0f, 0.0f, 1.0f)), Actions.sequence(Actions.sizeTo(128.0f, 128.0f), Actions.sizeTo(192.0f, 192.0f, 1.0f)))));
        } else {
            m20506l(false);
            this.f13124C.clearActions();
            this.f13124C.addAction(Actions.sequence(Actions.alpha(0.0f, 0.2f), Actions.hide()));
        }
        if (this.f13161k.wave.isAutoForceWaveEnabled()) {
            this.f13129H.setVisible(true);
        } else {
            this.f13129H.setVisible(false);
        }
    }

    public boolean nextWaveButtonVisible() {
        if (this.f13155e0) {
            return false;
        }
        return this.f13138Q.isVisible();
    }

    public void postSetup() {
        if (!this.f13161k.gameValue.getBooleanValue(GameValueType.MDPS_COUNTER)) {
            this.f13140S.setVisible(false);
        }
    }

    public void setLevelStarsIcon(int i) {
        this.f13144W.addAction(Actions.sequence(Actions.parallel(Actions.moveTo(-8.0f, -8.0f, 0.25f), Actions.sizeTo(56.0f, 56.0f, 0.25f)), Actions.parallel(Actions.moveTo(0.0f, 0.0f, 0.25f), Actions.sizeTo(40.0f, 40.0f, 0.25f))));
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        this.f13144W.setDrawable(Game.f8589i.assetManager.getDrawable("icon-three-stars"));
                        return;
                    }
                    return;
                }
                this.f13144W.setDrawable(Game.f8589i.assetManager.getDrawable("icon-two-stars"));
                return;
            }
            this.f13144W.setDrawable(Game.f8589i.assetManager.getDrawable("icon-star"));
            return;
        }
        this.f13144W.setDrawable(Game.f8589i.assetManager.getDrawable("icon-star-hollow"));
    }

    public void showCoins(boolean z, Runnable runnable) {
        this.f13137P.clearActions();
        this.f13137P.setVisible(true);
        this.f13137P.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13137P, f13114n0, Game.f8589i.localeManager.i18n.get("coins"), Game.f8589i.localeManager.i18n.get("main_ui_coins_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void showDrawModeButton(boolean z, Runnable runnable) {
        this.f13135N.clearActions();
        this.f13135N.setVisible(true);
        this.f13135N.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13135N, f13112l0, Game.f8589i.localeManager.i18n.get("main_ui_drawing_mode_title"), Game.f8589i.localeManager.i18n.get("main_ui_drawing_mode_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void showGameSpeedButton(boolean z, final Runnable runnable) {
        this.f13142U.clearActions();
        this.f13142U.setVisible(true);
        this.f13142U.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13142U, f13120t0, Game.f8589i.localeManager.i18n.get("main_ui_game_speed_button_title"), Game.f8589i.localeManager.i18n.get("main_ui_game_speed_button_description"), new Runnable() { // from class: com.prineside.tdi2.ui.components.MainUi.8
                @Override // java.lang.Runnable
                public void run() {
                    MainUi.this.updateGameSpeedButton();
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
            return;
        }
        if (runnable != null) {
            runnable.run();
        }
        updateGameSpeedButton();
    }

    public void showHealth(boolean z, Runnable runnable) {
        this.f13136O.clearActions();
        this.f13136O.setVisible(true);
        this.f13136O.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13136O, f13113m0, Game.f8589i.localeManager.i18n.get("main_ui_health_title"), Game.f8589i.localeManager.i18n.get("main_ui_health_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void showHealthDelta(int i) {
        this.f13167t.clearActions();
        this.f13167t.setTransform(true);
        this.f13167t.addAction(Actions.sequence(Actions.scaleTo(1.3f, 1.3f), Actions.scaleTo(1.0f, 1.0f, 0.25f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.d
            @Override // java.lang.Runnable
            public final void run() {
                MainUi.this.m20507k();
            }
        })));
        Label label = new Label("0", Game.f8589i.assetManager.getLabelStyle(30));
        if (i <= 0) {
            label.setColor(MaterialColor.GREY.P500);
        } else {
            label.setText("-" + i);
            label.setColor(MaterialColor.RED.P300);
        }
        label.setPosition(0.0f, -18.0f);
        label.addAction(Actions.sequence(Actions.parallel(Actions.moveBy(0.0f, -32.0f, 0.35f), Actions.sequence(Actions.delay(0.1f), Actions.fadeOut(0.25f), Actions.removeActor()))));
        this.f13168u.addActor(label);
    }

    public void showMdps(boolean z, Runnable runnable) {
        this.f13140S.clearActions();
        this.f13140S.setVisible(true);
        this.f13140S.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13140S, f13116p0, Game.f8589i.localeManager.i18n.get("main_ui_mdps_title"), Game.f8589i.localeManager.i18n.get("main_ui_mdps_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void showMessagesButton(boolean z, Runnable runnable) {
        this.f13143V.clearActions();
        this.f13143V.setVisible(true);
        this.f13143V.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13143V, f13118r0, Game.f8589i.localeManager.i18n.get("messages"), Game.f8589i.localeManager.i18n.get("main_ui_messages_button_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
        this.f13132K.setVisible(false);
    }

    public void showNextWaveButton(boolean z, Runnable runnable) {
        this.f13138Q.clearActions();
        this.f13138Q.setVisible(true);
        this.f13138Q.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13138Q, f13117q0, Game.f8589i.localeManager.i18n.get("main_ui_wave_call_title"), Game.f8589i.localeManager.i18n.get("main_ui_wave_call_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void showScore(boolean z, Runnable runnable) {
        this.f13139R.clearActions();
        this.f13139R.setVisible(true);
        this.f13139R.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13139R, f13115o0, Game.f8589i.localeManager.i18n.get("score"), Game.f8589i.localeManager.i18n.get("main_ui_score_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void showWaveNumber(boolean z, Runnable runnable) {
        this.f13141T.clearActions();
        this.f13141T.setVisible(true);
        this.f13141T.setTransform(false);
        if (z) {
            this.f13161k._graphics.uiElementsEmphasizer.show(this.f13141T, f13119s0, Game.f8589i.localeManager.i18n.get("main_ui_wave_title"), Game.f8589i.localeManager.i18n.get("main_ui_wave_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void updateGameSpeedButton() {
        float gameSpeed = this.f13161k.gameState.getGameSpeed();
        boolean z = false;
        if (gameSpeed <= 0.0667f) {
            this.f13131J.setIcon(this.f13149a0);
            if (this.f13131J.isVisible()) {
                this.f13130I.clearActions();
                this.f13130I.addAction(Actions.show());
                this.f13130I.addAction(Actions.forever(Actions.parallel(Actions.sequence(Actions.alpha(0.78f), Actions.alpha(0.0f, 1.0f)), Actions.sequence(Actions.moveTo(32.0f, 32.0f), Actions.moveTo(8.0f, 8.0f, 1.0f)), Actions.sequence(Actions.sizeTo(96.0f, 96.0f), Actions.sizeTo(144.0f, 144.0f, 1.0f)))));
            } else {
                this.f13130I.setVisible(false);
            }
        } else {
            if (gameSpeed <= 1.0f) {
                this.f13131J.setIcon(this.f13151b0);
            } else if (gameSpeed <= 2.0f) {
                this.f13131J.setIcon(this.f13152c0);
            } else {
                this.f13131J.setIcon(this.f13154d0);
            }
            this.f13130I.clearActions();
            this.f13130I.addAction(Actions.sequence(Actions.alpha(0.0f, 0.2f), Actions.hide()));
        }
        PaddedImageButton paddedImageButton = this.f13132K;
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SLOW_MOTION_PAUSE) == 0.0d && this.f13161k.gameState.getGameSpeed() == 0.0f && !this.f13143V.isVisible()) {
            z = true;
        }
        paddedImageButton.setVisible(z);
    }

    public void updateHealth() {
        int health = this.f13161k.gameState.getHealth();
        if (health < 0) {
            health = 0;
        }
        StringBuilder stringBuilder = f13121u0;
        stringBuilder.setLength(0);
        stringBuilder.append(health);
        this.f13166s.setText(stringBuilder);
    }

    public void updateWave() {
        int i;
        StringBuilder stringBuilder = f13121u0;
        stringBuilder.setLength(0);
        Wave wave = this.f13161k.wave.wave;
        if (wave == null) {
            i = 1;
        } else {
            i = wave.waveNumber;
        }
        stringBuilder.append(i);
        this.f13165r.setText(stringBuilder);
    }

    public void updateAll() {
        updateScore();
        updateMoney();
        updateWave();
        updateHealth();
        updateMdps();
        m20504n();
        updateGameSpeedButton();
    }
}
