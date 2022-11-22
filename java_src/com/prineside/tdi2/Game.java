package com.prineside.tdi2;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.CharArray;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.TimeUtils;
import com.prineside.luaj.LuaDouble;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.AbilityManager;
import com.prineside.tdi2.managers.AchievementManager;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.BasicLevelManager;
import com.prineside.tdi2.managers.BuffManager;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.DebugManager;
import com.prineside.tdi2.managers.EnemyManager;
import com.prineside.tdi2.managers.ExplosionManager;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.GateManager;
import com.prineside.tdi2.managers.ItemManager;
import com.prineside.tdi2.managers.LeaderBoardManager;
import com.prineside.tdi2.managers.LocaleManager;
import com.prineside.tdi2.managers.MapManager;
import com.prineside.tdi2.managers.MinerManager;
import com.prineside.tdi2.managers.ModifierManager;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.managers.NetworkManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.ProjectileManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.RatingManager;
import com.prineside.tdi2.managers.RenderingManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.ResearchManager;
import com.prineside.tdi2.managers.ResourceManager;
import com.prineside.tdi2.managers.ScreenManager;
import com.prineside.tdi2.managers.ScriptManager;
import com.prineside.tdi2.managers.SecretCodeManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.ShapeManager;
import com.prineside.tdi2.managers.SoundManager;
import com.prineside.tdi2.managers.StatisticsManager;
import com.prineside.tdi2.managers.TileManager;
import com.prineside.tdi2.managers.TowerManager;
import com.prineside.tdi2.managers.TowerStatManager;
import com.prineside.tdi2.managers.TriggeredActionManager;
import com.prineside.tdi2.managers.TrophyManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.managers.UnitManager;
import com.prineside.tdi2.managers.UserMapManager;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.utils.GameResourcesJsonGenerator;
import com.prineside.tdi2.utils.GameSyncLoader;
import com.prineside.tdi2.utils.I18nGenerator;
import com.prineside.tdi2.utils.PMath;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Properties;
import p168r4.C6226s;
/* loaded from: classes2.dex */
public abstract class Game extends com.badlogic.gdx.Game {

    /* renamed from: i */
    public static Game f8589i;

    /* renamed from: k */
    public static final long f8590k = TimeUtils.nanoTime() / 1000;

    /* renamed from: r */
    public static Registry f8591r;
    public AbilityManager abilityManager;
    public AchievementManager achievementManager;
    public final ActionResolver actionResolver;
    public AssetManager assetManager;
    public AuthManager authManager;

    /* renamed from: b */
    public boolean f8592b;
    public BasicLevelManager basicLevelManager;
    public BuffManager buffManager;
    public DailyQuestManager dailyQuestManager;
    public DebugManager debugManager;
    public BitmapFont defaultSmallFuturaFont;
    public EnemyManager enemyManager;
    public ExplosionManager explosionManager;

    /* renamed from: f */
    public long f8596f;
    public GameSyncLoader gameSyncLoader;
    public GameValueManager gameValueManager;
    public GateManager gateManager;
    public ItemManager itemManager;

    /* renamed from: j */
    public Thread f8599j;
    public LeaderBoardManager leaderBoardManager;
    public LocaleManager localeManager;
    public MapManager mapManager;
    public MinerManager minerManager;
    public ModifierManager modifierManager;
    public MusicManager musicManager;
    public NetworkManager networkManager;
    public PreferencesManager preferencesManager;
    public ProgressManager progressManager;
    public ProjectileManager projectileManager;
    public PurchaseManager purchaseManager;
    public RatingManager ratingManager;
    public RenderingManager renderingManager;
    public ReplayManager replayManager;
    public ResearchManager researchManager;
    public ResourceManager resourceManager;
    public ScreenManager screenManager;
    public ScriptManager scriptManager;
    public SecretCodeManager secretCodeManager;
    public SettingsManager settingsManager;
    public ShapeManager shapeManager;
    public SoundManager soundManager;
    public StatisticsManager statisticsManager;
    public TileManager tileManager;
    public TowerManager towerManager;
    public TowerStatManager towerStatManager;
    public TriggeredActionManager triggeredActionManager;
    public TrophyManager trophyManager;
    public UiManager uiManager;
    public UnitManager unitManager;
    public UserMapManager userMapManager;
    public WaveManager waveManager;
    public final Array<Manager> managers = new Array<>(true, 1);

    /* renamed from: c */
    public boolean f8593c = false;

    /* renamed from: d */
    public final Rectangle f8594d = new Rectangle();

    /* renamed from: e */
    public boolean f8595e = false;

    /* renamed from: g */
    public final DelayedRemovalArray<GameListener> f8597g = new DelayedRemovalArray<>(false, 1, GameListener.class);

    /* renamed from: h */
    public final DelayedRemovalArray<ScreenResizeListener> f8598h = new DelayedRemovalArray<>(false, 1, ScreenResizeListener.class);

    /* renamed from: com.prineside.tdi2.Game$1 */
    /* loaded from: classes2.dex */
    public class C14861 implements GameListener {

        /* renamed from: a */
        public final /* synthetic */ Game f8600a;

        @Override // com.prineside.tdi2.Game.GameListener
        public void gameStartedLoading() {
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void render() {
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void gameLoaded() {
            new I18nGenerator().run();
            CharArray allLocalesChars = this.f8600a.localeManager.getAllLocalesChars();
            String readString = Gdx.files.external("i18n/extra-chars.txt").readString("UTF-8");
            for (int i = 0; i < readString.length(); i++) {
                char charAt = readString.charAt(i);
                if (charAt != '\n' && charAt != '\r' && !allLocalesChars.contains(charAt)) {
                    allLocalesChars.add(charAt);
                }
            }
            allLocalesChars.sort();
            Gdx.files.external("i18n/all-chars.txt").writeString(new String(allLocalesChars.toArray()), false, "UTF-8");
            new GameResourcesJsonGenerator().run();
        }
    }

    /* loaded from: classes2.dex */
    public interface GameListener {
        void gameLoaded();

        void gameStartedLoading();

        void render();
    }

    /* loaded from: classes2.dex */
    public interface ScreenResizeListener {

        /* loaded from: classes2.dex */
        public static abstract class ScreenResizeListenerAdapter implements ScreenResizeListener {
            @Override // com.prineside.tdi2.Game.ScreenResizeListener
            public void resize(int i, int i2) {
            }

            @Override // com.prineside.tdi2.Game.ScreenResizeListener
            public void visibleDisplayFrameChanged() {
            }
        }

        void resize(int i, int i2);

        void visibleDisplayFrameChanged();
    }

    public static long getFreeHeapSpaceSize() {
        return Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory());
    }

    public static long getRealTickCount() {
        return (TimeUtils.nanoTime() / 1000) - f8590k;
    }

    public static long getTimestampMillis() {
        return TimeUtils.millis();
    }

    public static int getTimestampSeconds() {
        return (int) (TimeUtils.millis() / 1000);
    }

    public long getMillisTillGameStart() {
        return getTimestampMillis() - this.f8596f;
    }

    public boolean isDisposed() {
        return this.f8592b;
    }

    public boolean isLoaded() {
        return this.f8595e;
    }

    public void notifyVisibleDisplayFrameChanged(int i, int i2, int i3, int i4) {
        this.f8593c = true;
        this.f8594d.set(i, i2, i3, i4);
        this.f8598h.begin();
        Array.ArrayIterator<ScreenResizeListener> it = this.f8598h.iterator();
        while (it.hasNext()) {
            it.next().visibleDisplayFrameChanged();
        }
        this.f8598h.end();
    }

    public void removeScreenResizeListener(ScreenResizeListener screenResizeListener) {
        this.f8598h.removeValue(screenResizeListener, true);
    }

    @Override // com.badlogic.gdx.Game, com.badlogic.gdx.ApplicationListener
    public void render() {
        ScriptManager.ScriptEnvironment scriptEnvironment;
        ScriptManager scriptManager;
        ScriptManager.ScriptEnvironment scriptEnvironment2;
        ScriptManager.ScriptEnvironment scriptEnvironment3;
        UiManager uiManager;
        int i = 0;
        while (true) {
            DelayedRemovalArray<GameListener> delayedRemovalArray = this.f8597g;
            if (i >= delayedRemovalArray.size) {
                break;
            }
            delayedRemovalArray.items[i].render();
            i++;
        }
        if (f8589i.settingsManager != null && Gdx.input.isKeyJustPressed(141)) {
            if (!Gdx.graphics.isFullscreen()) {
                Graphics.DisplayMode bestFullscreenMode = SettingsManager.getBestFullscreenMode(f8589i.actionResolver.getInitConfigManager().get(SettingsManager.InitConfig.GRAPHICS_FS_WIDTH), f8589i.actionResolver.getInitConfigManager().get(SettingsManager.InitConfig.GRAPHICS_FS_HEIGHT));
                if (bestFullscreenMode != null) {
                    Gdx.graphics.setFullscreenMode(bestFullscreenMode);
                }
            } else {
                Gdx.graphics.setWindowedMode(1280, Config.DISPLAY_HEIGHT);
            }
        }
        if (f8589i.isLoaded() && (uiManager = f8589i.uiManager) != null && uiManager.developerConsole != null && Gdx.input.isKeyJustPressed(68)) {
            f8589i.uiManager.developerConsole.toggleVisible();
        }
        float deltaTime = Gdx.graphics.getDeltaTime();
        LuaDouble cachedLuaDouble1 = PMath.cachedLuaDouble1(deltaTime);
        if (this.f8595e) {
            ScriptManager scriptManager2 = this.scriptManager;
            if (scriptManager2 != null && (scriptEnvironment3 = scriptManager2.global) != null) {
                scriptEnvironment3.triggerEvent("PreRender", cachedLuaDouble1);
            }
            Array.ArrayIterator<Manager> it = this.managers.iterator();
            while (it.hasNext()) {
                it.next().preRender(deltaTime);
            }
        }
        super.render();
        if (this.f8595e && (scriptManager = this.scriptManager) != null && (scriptEnvironment2 = scriptManager.global) != null) {
            scriptEnvironment2.triggerEvent("Render", cachedLuaDouble1);
        }
        if (this.f8595e) {
            Array.ArrayIterator<Manager> it2 = this.managers.iterator();
            while (it2.hasNext()) {
                it2.next().postRender(deltaTime);
            }
            ScriptManager scriptManager3 = this.scriptManager;
            if (scriptManager3 != null && (scriptEnvironment = scriptManager3.global) != null) {
                scriptEnvironment.triggerEvent("PostRender", cachedLuaDouble1);
            }
        }
    }

    public static void checkConfiguredForProduction() {
        new StringBuilder().append("                  Production checklist:\n");
    }

    public static void exit() {
        Application application = Gdx.app;
        if (application != null) {
            application.exit();
        } else {
            System.exit(0);
        }
    }

    public void addListener(GameListener gameListener) {
        if (gameListener != null) {
            if (!this.f8597g.contains(gameListener, true)) {
                this.f8597g.add(gameListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void addScreenResizeListener(ScreenResizeListener screenResizeListener) {
        if (!this.f8598h.contains(screenResizeListener, true)) {
            this.f8598h.add(screenResizeListener);
        }
    }

    @Override // com.badlogic.gdx.Game, com.badlogic.gdx.ApplicationListener
    public void dispose() {
        ActionResolver actionResolver;
        Logger.log("Game", "Dispose");
        Game game = f8589i;
        if (game != null && (actionResolver = game.actionResolver) != null) {
            actionResolver.onExit();
        }
        this.f8592b = true;
        super.dispose();
        if (isLoaded()) {
            Array.ArrayIterator<Manager> it = this.managers.iterator();
            while (it.hasNext()) {
                it.next().dispose();
            }
        }
        Logger.dispose();
    }

    public Rectangle getVisibleDisplayFrame() {
        if (this.f8593c) {
            return this.f8594d;
        }
        this.f8594d.set(0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        return this.f8594d;
    }

    public boolean isInMainThread() {
        if (this.f8599j == Thread.currentThread()) {
            return true;
        }
        if (this.f8599j == null) {
            Logger.addToLog(Logger.EntryType.ERROR, "Game", "isInMainThread - libgdxThread is null");
            System.err.println("isInMainThread - libgdxThread is null");
            return true;
        } else if ("LibGDX rendering thread".equals(Thread.currentThread().getName())) {
            String str = "isInMainThread - current thread has correct name but libgdxThread not equals current thread (libgdxThread name:" + this.f8599j.getName() + "). Overwriting libgdxThread with current";
            Logger.addToLog(Logger.EntryType.ERROR, "Game", str);
            System.err.println(str);
            this.f8599j = Thread.currentThread();
            return true;
        } else {
            return false;
        }
    }

    public void removeListener(GameListener gameListener) {
        if (gameListener != null) {
            this.f8597g.removeValue(gameListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    @Override // com.badlogic.gdx.Game, com.badlogic.gdx.ApplicationListener
    public void resize(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f8598h.begin();
            int i3 = this.f8598h.size;
            for (int i4 = 0; i4 < i3; i4++) {
                this.f8598h.items[i4].resize(i, i2);
            }
            this.f8598h.end();
        }
        super.resize(i, i2);
    }

    public Game(ActionResolver actionResolver) {
        f8589i = this;
        f8591r = new Registry();
        this.actionResolver = actionResolver;
    }

    public void assertInMainThread() {
        if (isInMainThread()) {
            return;
        }
        throw new IllegalStateException("Must be called in a main thread, called from " + Thread.currentThread().getName() + " instead");
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void create() {
        checkConfiguredForProduction();
        this.f8596f = getTimestampMillis();
        f8591r.reload();
        final long timestampMillis = getTimestampMillis();
        Gdx.app.getType();
        Application.ApplicationType applicationType = Application.ApplicationType.Android;
        Thread currentThread = Thread.currentThread();
        this.f8599j = currentThread;
        currentThread.setName("LibGDX rendering thread");
        Logger.handleThreadExceptions(this.f8599j, this.actionResolver);
        final int i = 0;
        if (!Config.isHeadless()) {
            BitmapFont bitmapFont = new BitmapFont(Gdx.files.external("resourcepacks/default/futura.fnt"), new TextureRegion(new Texture(Gdx.files.external("resourcepacks/default/futura.png"), Pixmap.Format.RGBA4444, false)));
            this.defaultSmallFuturaFont = bitmapFont;
            Texture texture = bitmapFont.getRegion().getTexture();
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
            texture.setFilter(textureFilter, textureFilter);
            this.defaultSmallFuturaFont.getData().setScale(0.75f);
        }
        int i2 = 4;
        Gdx.input.setCatchKey(4, true);
        PreferencesManager preferencesManager = new PreferencesManager(this.actionResolver.getDeviceInfo().get("id"));
        this.preferencesManager = preferencesManager;
        this.managers.add(preferencesManager);
        AuthManager authManager = new AuthManager();
        this.authManager = authManager;
        this.managers.add(authManager);
        ScreenManager screenManager = new ScreenManager();
        this.screenManager = screenManager;
        this.managers.add(screenManager);
        if (!Config.isHeadless()) {
            RenderingManager renderingManager = new RenderingManager();
            this.renderingManager = renderingManager;
            this.managers.add(renderingManager);
        } else {
            i2 = 3;
        }
        for (int i3 : Config.NOTIFICATION_IDS) {
            this.actionResolver.clearNotification(i3);
        }
        GameSyncLoader gameSyncLoader = new GameSyncLoader();
        this.gameSyncLoader = gameSyncLoader;
        gameSyncLoader.addTask(new GameSyncLoader.Task("Initialization", new Runnable() { // from class: com.prineside.tdi2.Game.2
            @Override // java.lang.Runnable
            public void run() {
                String str;
                Logger.log("Game", "======== INFO ========");
                Logger.log("Game", "|- Configuration");
                Logger.log("Game", "|  |- version: R.1.8.7");
                Logger.log("Game", "|  |- build: 184");
                Logger.log("Game", "|  |- protocol: 184");
                Logger.log("Game", "|  |- debug mode: disabled");
                Logger.log("Game", "|  |- GDX app version: " + Gdx.app.getVersion());
                Logger.log("Game", "|  |- GDX version: 1.11.1");
                Logger.log("Game", "`- Device");
                Logger.log("Game", "   |- charset: " + Charset.defaultCharset());
                ObjectMap<String, String> deviceInfo = Game.this.actionResolver.getDeviceInfo();
                ObjectMap.Keys<String> it = deviceInfo.keys().iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    Logger.log("Game", "   |- " + next + ": " + deviceInfo.get(next));
                }
                Runtime runtime = Runtime.getRuntime();
                Logger.log("Game", "   |- system");
                Properties properties = System.getProperties();
                Enumeration<?> propertyNames = properties.propertyNames();
                while (propertyNames.hasMoreElements()) {
                    Object nextElement = propertyNames.nextElement();
                    Object obj = properties.get(nextElement);
                    if (obj != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("   |  ");
                        if (propertyNames.hasMoreElements()) {
                            str = "|";
                        } else {
                            str = "`";
                        }
                        sb.append(str);
                        sb.append("- ");
                        sb.append(nextElement);
                        sb.append(": ");
                        sb.append(((String) obj).trim());
                        Logger.log("Game", sb.toString());
                    }
                }
                Logger.log("Game", "   |- runtime");
                Logger.log("Game", "   |  |- available processors: " + runtime.availableProcessors());
                Logger.log("Game", "   |  |- free memory: " + runtime.freeMemory());
                Logger.log("Game", "   |  |- max memory: " + runtime.maxMemory());
                Logger.log("Game", "   |  `- total memory: " + runtime.totalMemory());
                Logger.log("Game", "   `- graphics");
                Logger.log("Game", "      |- type: " + Gdx.graphics.getGLVersion().getType());
                Logger.log("Game", "      |- version: " + Gdx.graphics.getGLVersion().getMajorVersion() + "." + Gdx.graphics.getGLVersion().getMinorVersion() + "." + Gdx.graphics.getGLVersion().getReleaseVersion());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("      |- renderer: ");
                sb2.append(Gdx.graphics.getGLVersion().getRendererString());
                Logger.log("Game", sb2.toString());
                Logger.log("Game", "      |- vendor: " + Gdx.graphics.getGLVersion().getVendorString());
                Logger.log("Game", "      |- back buffer size: " + Gdx.graphics.getBackBufferWidth() + "x" + Gdx.graphics.getBackBufferHeight());
                StringBuilder sb3 = new StringBuilder();
                sb3.append("      |- density: ");
                sb3.append(Gdx.graphics.getDensity());
                Logger.log("Game", sb3.toString());
                Logger.log("Game", "      `- max texture size: " + Config.getMaxTextureSize());
                Logger.log("Game", "======================");
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Settings", new Runnable() { // from class: com.prineside.tdi2.Game.3
            @Override // java.lang.Runnable
            public void run() {
                Game.this.settingsManager = new SettingsManager();
                Game game = Game.this;
                game.managers.add(game.settingsManager);
            }
        }));
        int i4 = i2 + 1;
        if (!Config.isHeadless()) {
            this.gameSyncLoader.addTask(new GameSyncLoader.Task("Assets", new Runnable() { // from class: com.prineside.tdi2.Game.4
                @Override // java.lang.Runnable
                public void run() {
                    Game.this.assetManager = new AssetManager();
                    Game game = Game.this;
                    game.managers.add(game.assetManager);
                }
            }));
            i4++;
        }
        if (!Config.isHeadless()) {
            this.gameSyncLoader.addTask(new GameSyncLoader.Task("XM music", new Runnable() { // from class: com.prineside.tdi2.Game.5
                @Override // java.lang.Runnable
                public void run() {
                    Game.this.musicManager = MusicManager.createSelfSetuppingDummy();
                    Game game = Game.this;
                    game.managers.add(game.musicManager);
                }
            }));
            i4++;
        }
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Game values", new Runnable() { // from class: com.prineside.tdi2.Game.6
            @Override // java.lang.Runnable
            public void run() {
                Game.this.gameValueManager = new GameValueManager();
                Game game = Game.this;
                game.managers.add(game.gameValueManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Achievements", new Runnable() { // from class: com.prineside.tdi2.Game.7
            @Override // java.lang.Runnable
            public void run() {
                Game.this.achievementManager = new AchievementManager();
                Game game = Game.this;
                game.managers.add(game.achievementManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Abilities", new Runnable() { // from class: com.prineside.tdi2.Game.8
            @Override // java.lang.Runnable
            public void run() {
                Game.this.abilityManager = new AbilityManager();
                Game game = Game.this;
                game.managers.add(game.abilityManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Statistics", new Runnable() { // from class: com.prineside.tdi2.Game.9
            @Override // java.lang.Runnable
            public void run() {
                Game.this.statisticsManager = new StatisticsManager();
                Game game = Game.this;
                game.managers.add(game.statisticsManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Progress", new Runnable() { // from class: com.prineside.tdi2.Game.10
            @Override // java.lang.Runnable
            public void run() {
                Game.this.progressManager = new ProgressManager();
                Game game = Game.this;
                game.managers.add(game.progressManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Replays", new Runnable() { // from class: com.prineside.tdi2.Game.11
            @Override // java.lang.Runnable
            public void run() {
                Game.this.replayManager = new ReplayManager();
                Game game = Game.this;
                game.managers.add(game.replayManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Leader boards", new Runnable() { // from class: com.prineside.tdi2.Game.12
            @Override // java.lang.Runnable
            public void run() {
                Game.this.leaderBoardManager = new LeaderBoardManager();
                Game game = Game.this;
                game.managers.add(game.leaderBoardManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Maps", new Runnable() { // from class: com.prineside.tdi2.Game.13
            @Override // java.lang.Runnable
            public void run() {
                Game.this.mapManager = new MapManager();
                Game game = Game.this;
                game.managers.add(game.mapManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Projectiles", new Runnable() { // from class: com.prineside.tdi2.Game.14
            @Override // java.lang.Runnable
            public void run() {
                Game.this.projectileManager = new ProjectileManager();
                Game game = Game.this;
                game.managers.add(game.projectileManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Enemies", new Runnable() { // from class: com.prineside.tdi2.Game.15
            @Override // java.lang.Runnable
            public void run() {
                Game.this.enemyManager = new EnemyManager();
                Game game = Game.this;
                game.managers.add(game.enemyManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Units", new Runnable() { // from class: com.prineside.tdi2.Game.16
            @Override // java.lang.Runnable
            public void run() {
                Game.this.unitManager = new UnitManager();
                Game game = Game.this;
                game.managers.add(game.unitManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Explosions", new Runnable() { // from class: com.prineside.tdi2.Game.17
            @Override // java.lang.Runnable
            public void run() {
                Game.this.explosionManager = new ExplosionManager();
                Game game = Game.this;
                game.managers.add(game.explosionManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Sounds", new Runnable() { // from class: com.prineside.tdi2.Game.18
            @Override // java.lang.Runnable
            public void run() {
                Game.this.soundManager = new SoundManager();
                Game game = Game.this;
                game.managers.add(game.soundManager);
            }
        }));
        int i5 = i4 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
        if (!Config.isHeadless()) {
            this.gameSyncLoader.addTask(new GameSyncLoader.Task("Shapes", new Runnable() { // from class: com.prineside.tdi2.Game.19
                @Override // java.lang.Runnable
                public void run() {
                    Game.this.shapeManager = new ShapeManager();
                    Game game = Game.this;
                    game.managers.add(game.shapeManager);
                }
            }));
            i5++;
        }
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Towers", new Runnable() { // from class: com.prineside.tdi2.Game.20
            @Override // java.lang.Runnable
            public void run() {
                Game.this.towerManager = new TowerManager();
                Game game = Game.this;
                game.managers.add(game.towerManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Miners", new Runnable() { // from class: com.prineside.tdi2.Game.21
            @Override // java.lang.Runnable
            public void run() {
                Game.this.minerManager = new MinerManager();
                Game game = Game.this;
                game.managers.add(game.minerManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Modifiers", new Runnable() { // from class: com.prineside.tdi2.Game.22
            @Override // java.lang.Runnable
            public void run() {
                Game.this.modifierManager = new ModifierManager();
                Game game = Game.this;
                game.managers.add(game.modifierManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Network", new Runnable() { // from class: com.prineside.tdi2.Game.23
            @Override // java.lang.Runnable
            public void run() {
                Game.this.networkManager = new NetworkManager();
                Game game = Game.this;
                game.managers.add(game.networkManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Tiles", new Runnable() { // from class: com.prineside.tdi2.Game.24
            @Override // java.lang.Runnable
            public void run() {
                Game.this.tileManager = new TileManager();
                Game game = Game.this;
                game.managers.add(game.tileManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Gates", new Runnable() { // from class: com.prineside.tdi2.Game.25
            @Override // java.lang.Runnable
            public void run() {
                Game.this.gateManager = new GateManager();
                Game game = Game.this;
                game.managers.add(game.gateManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Locales", new Runnable() { // from class: com.prineside.tdi2.Game.26
            @Override // java.lang.Runnable
            public void run() {
                Game.this.localeManager = new LocaleManager();
                Game game = Game.this;
                game.managers.add(game.localeManager);
            }
        }));
        int i6 = i5 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
        if (!Config.isHeadless()) {
            this.gameSyncLoader.addTask(new GameSyncLoader.Task("Payments", new Runnable() { // from class: com.prineside.tdi2.Game.27
                @Override // java.lang.Runnable
                public void run() {
                    Game.this.purchaseManager = new PurchaseManager();
                    Game game = Game.this;
                    game.managers.add(game.purchaseManager);
                }
            }));
            i6++;
        }
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Items", new Runnable() { // from class: com.prineside.tdi2.Game.28
            @Override // java.lang.Runnable
            public void run() {
                Game.this.itemManager = new ItemManager();
                Game game = Game.this;
                game.managers.add(game.itemManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Basic levels", new Runnable() { // from class: com.prineside.tdi2.Game.29
            @Override // java.lang.Runnable
            public void run() {
                Game.this.basicLevelManager = new BasicLevelManager();
                Game game = Game.this;
                game.managers.add(game.basicLevelManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Buffs", new Runnable() { // from class: com.prineside.tdi2.Game.30
            @Override // java.lang.Runnable
            public void run() {
                Game.this.buffManager = new BuffManager();
                Game game = Game.this;
                game.managers.add(game.buffManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Custom maps", new Runnable() { // from class: com.prineside.tdi2.Game.31
            @Override // java.lang.Runnable
            public void run() {
                Game.this.userMapManager = new UserMapManager();
                Game game = Game.this;
                game.managers.add(game.userMapManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Researches", new Runnable() { // from class: com.prineside.tdi2.Game.32
            @Override // java.lang.Runnable
            public void run() {
                Game.this.researchManager = new ResearchManager();
                Game game = Game.this;
                game.managers.add(game.researchManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Triggered actions", new Runnable() { // from class: com.prineside.tdi2.Game.33
            @Override // java.lang.Runnable
            public void run() {
                Game.this.triggeredActionManager = new TriggeredActionManager();
                Game game = Game.this;
                game.managers.add(game.triggeredActionManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Trophies", new Runnable() { // from class: com.prineside.tdi2.Game.34
            @Override // java.lang.Runnable
            public void run() {
                Game.this.trophyManager = new TrophyManager();
                Game game = Game.this;
                game.managers.add(game.trophyManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Daily quests", new Runnable() { // from class: com.prineside.tdi2.Game.35
            @Override // java.lang.Runnable
            public void run() {
                Game.this.dailyQuestManager = new DailyQuestManager();
                Game game = Game.this;
                game.managers.add(game.dailyQuestManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Resources", new Runnable() { // from class: com.prineside.tdi2.Game.36
            @Override // java.lang.Runnable
            public void run() {
                Game.this.resourceManager = new ResourceManager();
                Game game = Game.this;
                game.managers.add(game.resourceManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Secrets", new Runnable() { // from class: com.prineside.tdi2.Game.37
            @Override // java.lang.Runnable
            public void run() {
                Game.this.secretCodeManager = new SecretCodeManager();
                Game game = Game.this;
                game.managers.add(game.secretCodeManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Waves", new Runnable() { // from class: com.prineside.tdi2.Game.38
            @Override // java.lang.Runnable
            public void run() {
                Game.this.waveManager = new WaveManager();
                Game game = Game.this;
                game.managers.add(game.waveManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Ratings", new Runnable() { // from class: com.prineside.tdi2.Game.39
            @Override // java.lang.Runnable
            public void run() {
                Game.this.ratingManager = new RatingManager();
                Game game = Game.this;
                game.managers.add(game.ratingManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Tower stats", new Runnable() { // from class: com.prineside.tdi2.Game.40
            @Override // java.lang.Runnable
            public void run() {
                Game.this.towerStatManager = new TowerStatManager();
                Game game = Game.this;
                game.managers.add(game.towerStatManager);
            }
        }));
        int i7 = i6 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
        if (!Config.isHeadless()) {
            this.gameSyncLoader.addTask(new GameSyncLoader.Task("UI", new Runnable() { // from class: com.prineside.tdi2.Game.41
                @Override // java.lang.Runnable
                public void run() {
                    Game.this.uiManager = new UiManager();
                    Game game = Game.this;
                    game.managers.add(game.uiManager);
                }
            }));
            i7++;
        }
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Debug", new Runnable() { // from class: com.prineside.tdi2.Game.42
            @Override // java.lang.Runnable
            public void run() {
                Game.this.debugManager = new DebugManager();
                Game game = Game.this;
                game.managers.add(game.debugManager);
            }
        }));
        this.gameSyncLoader.addTask(new GameSyncLoader.Task("Scripts", new Runnable() { // from class: com.prineside.tdi2.Game.43
            @Override // java.lang.Runnable
            public void run() {
                Game.this.scriptManager = new ScriptManager();
                Game game = Game.this;
                game.managers.add(game.scriptManager);
            }
        }));
        int i8 = i7 + 1 + 1;
        while (i < i8) {
            GameSyncLoader gameSyncLoader2 = this.gameSyncLoader;
            StringBuilder sb = new StringBuilder();
            sb.append("Setting up managers (");
            int i9 = i + 1;
            sb.append(i9);
            sb.append("/");
            sb.append(i8);
            sb.append(")");
            gameSyncLoader2.addTask(new GameSyncLoader.Task(sb.toString(), new Runnable() { // from class: com.prineside.tdi2.Game.44
                @Override // java.lang.Runnable
                public void run() {
                    Logger.log("Game", "setting up manager " + (i + 1) + "/" + Game.this.managers.size + " (" + Game.this.managers.get(i).getClass().getSimpleName() + ")");
                    Game.this.managers.get(i).setup();
                }
            }));
            i = i9;
        }
        this.gameSyncLoader.addListener(new GameSyncLoader.SyncExecutionListener() { // from class: com.prineside.tdi2.Game.47
            @Override // com.prineside.tdi2.utils.GameSyncLoader.SyncExecutionListener
            public void startedTask(GameSyncLoader.Task task, GameSyncLoader.Task task2) {
                Logger.log("Game", "loading: " + task.title);
            }

            @Override // com.prineside.tdi2.utils.GameSyncLoader.SyncExecutionListener
            public void done() {
                Game.this.f8595e = true;
                Game.this.f8597g.begin();
                Iterator it = Game.this.f8597g.iterator();
                while (it.hasNext()) {
                    ((GameListener) it.next()).gameLoaded();
                }
                Game.this.f8597g.end();
                Game.this.scriptManager.global.triggerEvent("GameLoaded");
                Logger.log("Game", "game loaded in " + (((float) (Game.getTimestampMillis() - timestampMillis)) * 0.001f) + C6226s.f31189J);
            }
        });
        this.f8597g.begin();
        Array.ArrayIterator<GameListener> it = this.f8597g.iterator();
        while (it.hasNext()) {
            it.next().gameStartedLoading();
        }
        this.f8597g.end();
    }

    @Override // com.badlogic.gdx.Game, com.badlogic.gdx.ApplicationListener
    public void pause() {
        super.pause();
        Logger.log("Game", "Paused");
    }

    @Override // com.badlogic.gdx.Game, com.badlogic.gdx.ApplicationListener
    public void resume() {
        super.resume();
        Logger.log("Game", "Resumed");
    }
}
