package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.shared.WavesTimelineOverlay;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.SpawnMenu */
/* loaded from: classes2.dex */
public class SpawnMenu implements Disposable {

    /* renamed from: a */
    public final SideMenu f13616a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13617b;

    /* renamed from: d */
    public boolean f13618d;

    /* renamed from: k */
    public Label f13619k;

    /* renamed from: p */
    public Group f13620p;

    /* renamed from: q */
    public Group f13621q;

    /* renamed from: r */
    public ComplexButton f13622r;

    /* renamed from: s */
    public float f13623s;

    /* renamed from: t */
    public ObjectMap<EnemyGroup, Label> f13624t = new ObjectMap<>();

    /* renamed from: u */
    public final GameSystemProvider f13625u;

    /* renamed from: v */
    public final _SideMenuListener f13626v;

    /* renamed from: w */
    public final _MapSystemListener f13627w;

    /* renamed from: x */
    public final _WaveSystemListener f13628x;

    /* renamed from: y */
    public static final Color f13614y = new Color(808464639);

    /* renamed from: z */
    public static final Color f13615z = new Color(623191551);

    /* renamed from: A */
    public static final StringBuilder f13613A = new StringBuilder();

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.SpawnMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            if (SpawnMenu.this.f13618d && enemy.spawnTile == SpawnMenu.this.f13625u.map.getSelectedTile()) {
                SpawnMenu.this.m20377g();
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = SpawnMenu.this.f13625u.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.SPAWN) {
                SpawnMenu.this.update();
                SpawnMenu.this.m20378f(true);
                return;
            }
            SpawnMenu.this.m20378f(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.SpawnMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            SpawnMenu.this.update();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.SpawnMenu$_WaveSystemListener */
    /* loaded from: classes2.dex */
    public class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter {
        public _WaveSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return false;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 0;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void statusChanged(WaveSystem.Status status) {
            if (SpawnMenu.this.f13618d) {
                SpawnMenu.this.update();
            }
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public SpawnMenu(SideMenu sideMenu, final GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13626v = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13627w = _mapsystemlistener;
        _WaveSystemListener _wavesystemlistener = new _WaveSystemListener();
        this.f13628x = _wavesystemlistener;
        this.f13625u = gameSystemProvider;
        this.f13616a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13617b = createContainer;
        String upperCase = Game.f8589i.localeManager.i18n.get("tile_name_SPAWN").toUpperCase();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Actor label = new Label(upperCase, new Label.LabelStyle(font, color));
        label.setSize(460.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        float f = 994.0f + scaledViewportHeight;
        label.setPosition(40.0f, f);
        createContainer.addActor(label);
        Label label2 = new Label("250%", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13619k = label2;
        label2.setSize(100.0f, 26.0f);
        this.f13619k.setAlignment(16);
        this.f13619k.setPosition(460.0f, f);
        createContainer.addActor(this.f13619k);
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("tile_description_SPAWN"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label3.setSize(420.0f, 100.0f);
        float f2 = 884.0f + scaledViewportHeight;
        label3.setPosition(40.0f, f2);
        label3.setAlignment(10);
        label3.setWrap(true);
        createContainer.addActor(label3);
        Label label4 = new Label(Game.f8589i.localeManager.i18n.get("difficulty").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label4.setSize(100.0f, 100.0f);
        label4.setPosition(460.0f, f2);
        label4.setAlignment(18);
        label4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        createContainer.addActor(label4);
        Group group = new Group();
        group.setTransform(false);
        group.setName("spawn_menu_details");
        createContainer.addActor(group);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("enemies_that_can_be_spawned"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        label5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label5.setPosition(40.0f, 906.0f + scaledViewportHeight);
        label5.setSize(100.0f, 17.0f);
        group.addActor(label5);
        Group group2 = new Group();
        this.f13620p = group2;
        group2.setTransform(false);
        this.f13620p.setPosition(0.0f, 840.0f + scaledViewportHeight);
        this.f13620p.setSize(600.0f, 64.0f);
        group.addActor(this.f13620p);
        Label label6 = new Label(Game.f8589i.localeManager.i18n.get("enemies_by_wave").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        label6.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label6.setPosition(40.0f, 820.0f + scaledViewportHeight);
        label6.setSize(100.0f, 17.0f);
        group.addActor(label6);
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("density"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        float f3 = 774.0f + scaledViewportHeight;
        label7.setPosition(270.0f, f3);
        label7.setSize(110.0f, 32.0f);
        label7.setAlignment(1);
        group.addActor(label7);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-heart"));
        image.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        image.setSize(32.0f, 32.0f);
        image.setPosition(419.0f, f3);
        group.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-count"));
        image2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        image2.setSize(32.0f, 32.0f);
        image2.setPosition(528.0f, f3);
        group.addActor(image2);
        Group group3 = new Group();
        this.f13621q = group3;
        group3.setTransform(false);
        this.f13621q.setPosition(0.0f, 0.0f);
        this.f13621q.setSize(600.0f, scaledViewportHeight + 766.0f);
        group.addActor(this.f13621q);
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("waves"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.SpawnMenu.1
            @Override // java.lang.Runnable
            public void run() {
                int i;
                int i2;
                GameStateSystem gameStateSystem = gameSystemProvider.gameState;
                String str = gameStateSystem.basicLevelName;
                if (str != null) {
                    Game game = Game.f8589i;
                    WavesTimelineOverlay wavesTimelineOverlay = game.uiManager.wavesTimelineOverlay;
                    WaveManager waveManager = game.waveManager;
                    BasicLevel level = game.basicLevelManager.getLevel(str);
                    Map map = gameSystemProvider.map.getMap();
                    Wave wave = gameSystemProvider.wave.wave;
                    if (wave == null) {
                        i2 = 1;
                    } else {
                        i2 = wave.waveNumber;
                    }
                    wavesTimelineOverlay.setConfiguration(waveManager.generateWavesTimelineConfiguration(level, map, i2));
                } else {
                    String str2 = gameStateSystem.userMapId;
                    if (str2 != null) {
                        Game game2 = Game.f8589i;
                        WavesTimelineOverlay wavesTimelineOverlay2 = game2.uiManager.wavesTimelineOverlay;
                        WaveManager waveManager2 = game2.waveManager;
                        UserMap userMap = game2.userMapManager.getUserMap(str2);
                        Map map2 = gameSystemProvider.map.getMap();
                        WaveSystem waveSystem = gameSystemProvider.wave;
                        Wave wave2 = waveSystem.wave;
                        if (wave2 == null) {
                            i = 1;
                        } else {
                            i = wave2.waveNumber;
                        }
                        wavesTimelineOverlay2.setConfiguration(waveManager2.generateWavesTimelineConfiguration(userMap, map2, i, waveSystem.bossWaves));
                    } else {
                        return;
                    }
                }
                SpawnMenu.this.f13623s = gameSystemProvider.gameState.getGameSpeed();
                Game.f8589i.uiManager.wavesTimelineOverlay.setVisible(true);
            }
        });
        this.f13622r = complexButton;
        complexButton.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 296.0f, 80.0f);
        this.f13622r.setSize(296.0f, 80.0f);
        this.f13622r.setIcon(Game.f8589i.assetManager.getDrawable("icon-wave"), 20.0f, 16.0f, 40.0f, 40.0f);
        this.f13622r.setLabel(76.0f, 20.0f, 100.0f, 40.0f, 8);
        this.f13622r.setPosition(304.0f, 40.0f);
        group.addActor(this.f13622r);
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        gameSystemProvider.wave.listeners.add(_wavesystemlistener);
        createContainer.hide();
    }

    /* renamed from: f */
    public final void m20378f(boolean z) {
        if (this.f13618d != z) {
            this.f13618d = z;
            if (z) {
                this.f13617b.show();
                update();
                return;
            }
            this.f13617b.hide();
        }
    }

    /* renamed from: g */
    public final void m20377g() {
        Tile selectedTile;
        GameSystemProvider gameSystemProvider = this.f13625u;
        if (gameSystemProvider.wave.wave != null && (selectedTile = gameSystemProvider.map.getSelectedTile()) != null && selectedTile.type == TileType.SPAWN) {
            Array<EnemyGroup.SpawnEnemyGroup> array = ((SpawnTile) selectedTile).enemySpawnQueues.get(0);
            for (int i = 0; i < array.size; i++) {
                EnemyGroup.SpawnEnemyGroup spawnEnemyGroup = array.get(i);
                Label label = this.f13624t.get(spawnEnemyGroup);
                if (label != null) {
                    label.setText(StringFormatter.compactNumber(spawnEnemyGroup.count - spawnEnemyGroup.getSpawnedCount(), false));
                }
            }
        }
    }

    public void update() {
        float f;
        float f2;
        int i;
        boolean z;
        boolean z2;
        SpawnTile spawnTile;
        Color color;
        String str;
        Color color2;
        Tile selectedTile = this.f13625u.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.SPAWN) {
            this.f13617b.setLabelOverTitleTilePos(selectedTile);
            SpawnTile spawnTile2 = (SpawnTile) selectedTile;
            int round = StrictMath.round(spawnTile2.difficulty);
            StringBuilder stringBuilder = f13613A;
            int i2 = 0;
            stringBuilder.setLength(0);
            stringBuilder.append(round).append('%');
            this.f13619k.setText(stringBuilder);
            if (round < 100) {
                this.f13619k.setColor(MaterialColor.GREEN.P500);
            } else if (round > 100) {
                this.f13619k.setColor(MaterialColor.RED.P500);
            } else {
                this.f13619k.setColor(MaterialColor.AMBER.P500);
            }
            this.f13620p.clearChildren();
            int i3 = spawnTile2.getAllowedEnemies().size;
            float f3 = 64.0f;
            float f4 = i3 * 64.0f;
            float f5 = 40.0f;
            int i4 = 1;
            if (f4 <= 520.0f) {
                f = ((520.0f - f4) / 2.0f) + 40.0f;
            } else {
                f3 = 456.0f / (i3 - 1);
                f = 40.0f;
            }
            Array.ArrayIterator<SpawnTile.AllowedEnemyConfig> it = spawnTile2.getAllowedEnemies().iterator();
            while (true) {
                f2 = 32.0f;
                if (!it.hasNext()) {
                    break;
                }
                final SpawnTile.AllowedEnemyConfig next = it.next();
                Image image = new Image(Game.f8589i.enemyManager.getFactory(next.enemyType).getTexture());
                image.setSize(32.0f, 32.0f);
                image.setPosition(f + 16.0f, 16.0f);
                image.setTouchable(Touchable.enabled);
                image.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.SpawnMenu.2
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f6, float f7) {
                        SpawnMenu.this.f13625u._graphics.newEnemyOverlay.show(next.enemyType);
                    }
                });
                this.f13620p.addActor(image);
                f += f3;
            }
            this.f13621q.clearChildren();
            this.f13624t.clear();
            Wave wave = this.f13625u.wave.wave;
            if (wave == null) {
                i = 0;
            } else {
                i = wave.waveNumber;
            }
            float height = this.f13621q.getHeight();
            int i5 = 0;
            while (i5 <= 10 && height >= 100.0f) {
                int i6 = i5 + i;
                if (i6 >= i4) {
                    if (i6 == i) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-wave"));
                    float f6 = height - 42.0f;
                    image2.setPosition(f5, f6);
                    image2.setSize(f2, f2);
                    this.f13621q.addActor(image2);
                    StringBuilder stringBuilder2 = f13613A;
                    stringBuilder2.setLength(i2);
                    stringBuilder2.append(i6);
                    ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(30);
                    Color color3 = Color.WHITE;
                    Label label = new Label(stringBuilder2, new Label.LabelStyle(font, color3));
                    label.setSize(100.0f, f2);
                    label.setPosition(80.0f, f6);
                    this.f13621q.addActor(label);
                    Label label2 = null;
                    if (i5 == 0) {
                        label2 = new Label(Game.f8589i.localeManager.i18n.get("current"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color3));
                    } else if (i5 == i4) {
                        label2 = new Label(Game.f8589i.localeManager.i18n.get("next"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color3));
                    }
                    if (label2 != null) {
                        label2.setSize(80.0f, f2);
                        label2.setPosition(f5, height - 76.0f);
                        this.f13621q.addActor(label2);
                    }
                    Array<EnemyGroup.SpawnEnemyGroup> array = spawnTile2.enemySpawnQueues.get(i5);
                    float f7 = 160.0f;
                    float f8 = 440.0f;
                    float f9 = 52.0f;
                    if (array.size == 0) {
                        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                        image3.setSize(440.0f, 52.0f);
                        float f10 = height - 52.0f;
                        image3.setPosition(160.0f, f10);
                        if (z2) {
                            color2 = f13614y;
                        } else {
                            color2 = f13615z;
                        }
                        image3.setColor(color2);
                        this.f13621q.addActor(image3);
                        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("no_enemies"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color3));
                        label3.setSize(100.0f, 52.0f);
                        label3.setPosition(176.0f, f10);
                        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        this.f13621q.addActor(label3);
                        height -= 108.0f;
                    } else {
                        int i7 = 0;
                        while (i7 < array.size) {
                            EnemyGroup.SpawnEnemyGroup spawnEnemyGroup = array.get(i7);
                            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                            image4.setSize(f8, f9);
                            float f11 = height - f9;
                            image4.setPosition(f7, f11);
                            if (z2) {
                                color = f13614y;
                            } else {
                                color = f13615z;
                            }
                            image4.setColor(color);
                            this.f13621q.addActor(image4);
                            Image image5 = new Image(Game.f8589i.enemyManager.getFactory(spawnEnemyGroup.type).getTexture());
                            image5.setSize(f5, f5);
                            image5.setPosition(183.0f, height - 46.0f);
                            this.f13621q.addActor(image5);
                            float f12 = spawnEnemyGroup.interval;
                            if (f12 <= 0.25f) {
                                str = "icon-density-high";
                            } else if (f12 >= 1.0f) {
                                str = "icon-density-low";
                            } else {
                                str = "icon-density-medium";
                            }
                            Image image6 = new Image(Game.f8589i.assetManager.getDrawable(str));
                            image6.setSize(32.0f, 32.0f);
                            image6.setPosition(309.0f, height - 42.0f);
                            this.f13621q.addActor(image6);
                            StringBuilder compactNumber = StringFormatter.compactNumber(spawnEnemyGroup.health, false);
                            ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(24);
                            Color color4 = Color.WHITE;
                            Label label4 = new Label(compactNumber, new Label.LabelStyle(font2, color4));
                            label4.setSize(110.0f, 52.0f);
                            label4.setAlignment(1);
                            label4.setPosition(380.0f, f11);
                            this.f13621q.addActor(label4);
                            SpawnTile spawnTile3 = spawnTile2;
                            Label label5 = new Label(StringFormatter.compactNumber(spawnEnemyGroup.count - spawnEnemyGroup.getSpawnedCount(), false), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color4));
                            f9 = 52.0f;
                            label5.setSize(100.0f, 52.0f);
                            label5.setAlignment(16);
                            label5.setPosition(460.0f, f11);
                            this.f13621q.addActor(label5);
                            if (z2) {
                                this.f13624t.put(spawnEnemyGroup, label5);
                            }
                            height -= 56.0f;
                            i7++;
                            spawnTile2 = spawnTile3;
                            f5 = 40.0f;
                            f7 = 160.0f;
                            f8 = 440.0f;
                        }
                        spawnTile = spawnTile2;
                        height -= 56.0f;
                        i5++;
                        spawnTile2 = spawnTile;
                        i2 = 0;
                        f5 = 40.0f;
                        i4 = 1;
                        f2 = 32.0f;
                    }
                }
                spawnTile = spawnTile2;
                i5++;
                spawnTile2 = spawnTile;
                i2 = 0;
                f5 = 40.0f;
                i4 = 1;
                f2 = 32.0f;
            }
            ComplexButton complexButton = this.f13622r;
            if (this.f13625u.wave.getWaveGenerator() == null) {
                z = true;
            } else {
                z = false;
            }
            complexButton.setVisible(z);
        }
    }
}
