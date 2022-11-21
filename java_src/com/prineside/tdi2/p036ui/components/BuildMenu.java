package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.SpaceTileBonus;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.AimStrategySelector;
import com.prineside.tdi2.p036ui.actors.EffectTooltip;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.systems.ModifierSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.lang.reflect.Array;
/* renamed from: com.prineside.tdi2.ui.components.BuildMenu */
/* loaded from: classes2.dex */
public class BuildMenu implements Disposable {

    /* renamed from: f0 */
    public static final Color f12813f0 = new Color(1.0f, 1.0f, 1.0f, 0.07f);

    /* renamed from: g0 */
    public static final Color f12814g0 = Color.WHITE;

    /* renamed from: h0 */
    public static final Color f12815h0 = MaterialColor.RED.P400;

    /* renamed from: i0 */
    public static final Color f12816i0 = MaterialColor.LIGHT_BLUE.P800;

    /* renamed from: j0 */
    public static final Color f12817j0 = MaterialColor.LIGHT_BLUE.P700;

    /* renamed from: k0 */
    public static final Color f12818k0 = MaterialColor.LIGHT_BLUE.P900;

    /* renamed from: l0 */
    public static final Color f12819l0 = MaterialColor.RED.P800;

    /* renamed from: m0 */
    public static final StringBuilder f12820m0 = new StringBuilder();

    /* renamed from: n0 */
    public static final ObjectSet<SpaceTileBonusType> f12821n0 = new ObjectSet<>();

    /* renamed from: A */
    public final Label f12822A;

    /* renamed from: B */
    public final Group f12823B;

    /* renamed from: C */
    public final Group f12824C;

    /* renamed from: D */
    public final Group f12825D;

    /* renamed from: E */
    public Group f12826E;

    /* renamed from: F */
    public Group f12827F;

    /* renamed from: G */
    public BuildButton f12828G;

    /* renamed from: H */
    public boolean f12829H;

    /* renamed from: I */
    public boolean f12830I;

    /* renamed from: J */
    public Label f12831J;

    /* renamed from: K */
    public Label f12832K;

    /* renamed from: L */
    public Group f12833L;

    /* renamed from: M */
    public Group f12834M;

    /* renamed from: N */
    public Group f12835N;

    /* renamed from: O */
    public Group[] f12836O;

    /* renamed from: P */
    public Label[] f12837P;

    /* renamed from: Q */
    public Image[][] f12838Q;

    /* renamed from: R */
    public Label[] f12839R;

    /* renamed from: S */
    public Enemy[] f12840S;

    /* renamed from: T */
    public BuildButton f12841T;

    /* renamed from: U */
    public boolean f12842U;

    /* renamed from: V */
    public final ObjectMap<TowerType, BuildButton> f12843V;

    /* renamed from: W */
    public final ObjectMap<ModifierType, BuildButton> f12844W;

    /* renamed from: X */
    public final ObjectMap<MinerType, BuildButton> f12845X;

    /* renamed from: Y */
    public final GameSystemProvider f12846Y;

    /* renamed from: Z */
    public final _TowerSystemListener f12847Z;

    /* renamed from: a */
    public final SideMenu f12848a;

    /* renamed from: a0 */
    public final _MinerSystemListener f12849a0;

    /* renamed from: b */
    public TabType f12850b;

    /* renamed from: b0 */
    public final _ModifierSystemListener f12851b0;

    /* renamed from: c0 */
    public final _SideMenuListener f12852c0;

    /* renamed from: d */
    public boolean f12853d;

    /* renamed from: d0 */
    public final _Game_StateSystemListener f12854d0;

    /* renamed from: e0 */
    public final _MapSystemListener f12855e0;

    /* renamed from: k */
    public final Label f12856k;

    /* renamed from: p */
    public final Label f12857p;

    /* renamed from: q */
    public final Table f12858q;

    /* renamed from: r */
    public final SideMenu.SideMenuContainer f12859r;

    /* renamed from: s */
    public final Group f12860s;

    /* renamed from: t */
    public final Group f12861t;

    /* renamed from: u */
    public final Group f12862u;

    /* renamed from: v */
    public final Image f12863v;

    /* renamed from: w */
    public final Image f12864w;

    /* renamed from: x */
    public PaddedImageButton f12865x;

    /* renamed from: y */
    public final AimStrategySelector f12866y;

    /* renamed from: z */
    public final TileResources f12867z;

    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$BuildButton */
    /* loaded from: classes2.dex */
    public class BuildButton extends Group {

        /* renamed from: M */
        public boolean f12892M;

        /* renamed from: N */
        public boolean f12893N;

        /* renamed from: O */
        public boolean f12894O;

        /* renamed from: P */
        public boolean f12895P;

        /* renamed from: Q */
        public boolean f12896Q;

        /* renamed from: R */
        public int f12897R = -1;

        /* renamed from: S */
        public int f12898S = -1;

        /* renamed from: T */
        public TabType f12899T;

        /* renamed from: U */
        public TowerType f12900U;

        /* renamed from: V */
        public MinerType f12901V;

        /* renamed from: W */
        public ModifierType f12902W;

        /* renamed from: X */
        public final Image f12903X;

        /* renamed from: Y */
        public final Actor f12904Y;

        /* renamed from: Z */
        public final Image f12905Z;

        /* renamed from: a0 */
        public final Image f12906a0;

        /* renamed from: b0 */
        public final Image f12907b0;

        /* renamed from: c0 */
        public final Label f12908c0;

        /* renamed from: d0 */
        public final Label f12909d0;

        /* renamed from: e0 */
        public final Drawable f12910e0;

        /* renamed from: f0 */
        public final Drawable f12911f0;

        public BuildButton(Actor actor) {
            setTransform(false);
            setTouchable(Touchable.enabled);
            this.f12910e0 = Game.f8589i.assetManager.getDrawable("build-selection");
            this.f12911f0 = Game.f8589i.assetManager.getDrawable("build-selection-count");
            setSize(127.0f, 127.0f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            this.f12903X = image;
            image.setSize(127.0f, 127.0f);
            image.setVisible(false);
            image.setColor(BuildMenu.f12813f0);
            addActor(image);
            this.f12904Y = actor;
            actor.setSize(128.0f, 128.0f);
            Touchable touchable = Touchable.disabled;
            actor.setTouchable(touchable);
            addActor(actor);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("build-selection-count-overlay"));
            this.f12905Z = image2;
            image2.setSize(141.0f, 141.0f);
            image2.setVisible(false);
            addActor(image2);
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("build-selection-hover"));
            this.f12907b0 = image3;
            image3.setSize(127.0f, 127.0f);
            image3.setVisible(false);
            addActor(image3);
            Image image4 = new Image();
            this.f12906a0 = image4;
            image4.setSize(141.0f, 141.0f);
            image4.setVisible(false);
            image4.setPosition(-3.0f, -11.0f);
            addActor(image4);
            Label label = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), MaterialColor.YELLOW.P500));
            this.f12909d0 = label;
            label.setSize(120.0f, 32.0f);
            label.setAlignment(8);
            label.setTouchable(touchable);
            addActor(label);
            Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE));
            this.f12908c0 = label2;
            label2.setSize(120.0f, 32.0f);
            label2.setAlignment(16);
            label2.setTouchable(touchable);
            addActor(label2);
            addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.BuildButton.1
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor2) {
                    BuildButton.this.f12895P = true;
                    BuildButton.this.update();
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor2) {
                    BuildButton.this.f12895P = false;
                    BuildButton.this.update();
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    BuildButton.this.f12896Q = true;
                    BuildButton.this.update();
                    return true;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    BuildButton.this.f12896Q = false;
                    BuildButton.this.update();
                }
            });
            update();
        }

        public void setCount(int i) {
            this.f12898S = i;
            update();
        }

        public void setPrice(int i) {
            if (this.f12897R != i) {
                BuildMenu.f12820m0.setLength(0);
                BuildMenu.f12820m0.append(i);
                this.f12908c0.setText(BuildMenu.f12820m0);
                this.f12897R = i;
            }
        }

        public void setSelected(boolean z) {
            this.f12894O = z;
            update();
        }

        /* renamed from: t */
        public void m20609t(boolean z) {
            Touchable touchable;
            this.f12893N = z;
            if (z) {
                touchable = Touchable.enabled;
            } else {
                touchable = Touchable.disabled;
            }
            setTouchable(touchable);
            update();
        }

        /* renamed from: u */
        public void m20608u(boolean z) {
            this.f12892M = z;
            update();
        }

        public final void update() {
            if (this.f12898S < 0) {
                this.f12906a0.setDrawable(this.f12910e0);
                this.f12905Z.setVisible(false);
                this.f12909d0.setVisible(false);
                this.f12905Z.setVisible(false);
            } else {
                this.f12906a0.setDrawable(this.f12911f0);
                BuildMenu.f12820m0.setLength(0);
                BuildMenu.f12820m0.append('x').append(this.f12898S);
                this.f12909d0.setText(BuildMenu.f12820m0);
                if (this.f12898S == 0) {
                    this.f12909d0.setColor(MaterialColor.RED.P500);
                } else {
                    this.f12909d0.setColor(MaterialColor.YELLOW.P500);
                }
                this.f12909d0.setVisible(true);
                this.f12905Z.setVisible(true);
            }
            if (this.f12893N && this.f12892M) {
                if (this.f12896Q) {
                    this.f12906a0.setColor(BuildMenu.f12818k0);
                } else if (this.f12895P) {
                    this.f12906a0.setColor(BuildMenu.f12817j0);
                } else {
                    this.f12906a0.setColor(BuildMenu.f12816i0);
                }
            } else {
                this.f12906a0.setColor(BuildMenu.f12819l0);
            }
            if (this.f12893N) {
                this.f12908c0.setVisible(true);
                if (this.f12892M) {
                    this.f12903X.setVisible(true);
                    this.f12908c0.setColor(BuildMenu.f12814g0);
                } else {
                    this.f12903X.setVisible(false);
                    this.f12908c0.setColor(BuildMenu.f12815h0);
                }
            } else {
                this.f12903X.setVisible(false);
                this.f12908c0.setVisible(false);
            }
            if (this.f12893N && this.f12892M) {
                this.f12904Y.setColor(Color.WHITE);
            } else {
                this.f12904Y.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            }
            if (this.f12894O) {
                this.f12906a0.setVisible(true);
                setZIndex(99);
                this.f12908c0.setPosition(4.0f, -2.0f);
                this.f12909d0.setPosition(6.0f, 0.0f);
                this.f12907b0.setVisible(false);
                this.f12908c0.setColor(Color.WHITE);
                this.f12905Z.setPosition(-3.0f, -11.0f);
                return;
            }
            this.f12906a0.setVisible(false);
            this.f12908c0.setPosition(0.0f, 2.0f);
            this.f12909d0.setPosition(10.0f, 4.0f);
            this.f12907b0.setVisible(this.f12895P);
            this.f12905Z.setPosition(0.0f, -8.0f);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$TabType */
    /* loaded from: classes2.dex */
    public enum TabType {
        TOWERS,
        MODIFIERS,
        MINERS
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$_Game_StateSystemListener */
    /* loaded from: classes2.dex */
    public class _Game_StateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _Game_StateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void moneyChanged(int i, boolean z) {
            BuildMenu.this.m20642B();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void buildingRemovedFromMap(Building building, PlatformTile platformTile) {
            if (platformTile == BuildMenu.this.f12846Y.map.getSelectedTile()) {
                BuildMenu.this.m20615y(true);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerPlacedOnMap(Miner miner) {
            if (miner.getTile() == BuildMenu.this.f12846Y.map.getSelectedTile()) {
                BuildMenu.this.m20615y(false);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerRemovedFromMap(Miner miner, SourceTile sourceTile) {
            if (sourceTile == BuildMenu.this.f12846Y.map.getSelectedTile()) {
                BuildMenu.this.m20615y(true);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void modifierPlacedOnMap(Modifier modifier) {
            if (modifier.getTile() == BuildMenu.this.f12846Y.map.getSelectedTile()) {
                BuildMenu.this.m20615y(false);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            TileType tileType;
            Tile selectedTile = BuildMenu.this.f12846Y.map.getSelectedTile();
            BuildMenu.this.m20620t();
            if (selectedTile != null && (((tileType = selectedTile.type) == TileType.PLATFORM && ((PlatformTile) selectedTile).building == null) || (tileType == TileType.SOURCE && ((SourceTile) selectedTile).miner == null))) {
                BuildMenu.this.m20615y(true);
            } else {
                BuildMenu.this.m20615y(false);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void towerPlacedOnMap(Tower tower) {
            if (tower.getTile() == BuildMenu.this.f12846Y.map.getSelectedTile()) {
                BuildMenu.this.m20615y(false);
            }
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$_MinerSystemListener */
    /* loaded from: classes2.dex */
    public class _MinerSystemListener extends MinerSystem.MinerSystemListener.MinerSystemListenerAdapter {
        public _MinerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerSold(Miner miner, int i) {
            BuildMenu.this.m20642B();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$_ModifierSystemListener */
    /* loaded from: classes2.dex */
    public class _ModifierSystemListener extends ModifierSystem.ModifierSystemListener.ModifierSystemListenerAdapter {
        public _ModifierSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener.ModifierSystemListenerAdapter, com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener
        public void modifierSold(Modifier modifier, int i) {
            BuildMenu.this.m20642B();
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            BuildMenu.this.m20641C();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$_TowerSystemListener */
    /* loaded from: classes2.dex */
    public class _TowerSystemListener extends TowerSystem.TowerSystemListener.TowerSystemListenerAdapter {
        public _TowerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void defaultAimStrategyChanged() {
            BuildMenu.this.m20643A();
        }
    }

    public BuildMenu(SideMenu sideMenu, final GameSystemProvider gameSystemProvider) {
        int i;
        MinerType[] minerTypeArr;
        float f;
        ModifierType[] modifierTypeArr;
        int i2;
        float f2;
        float f3;
        ResourceType[] resourceTypeArr = ResourceType.values;
        this.f12836O = new Group[resourceTypeArr.length];
        this.f12837P = new Label[resourceTypeArr.length];
        this.f12838Q = (Image[][]) Array.newInstance(Image.class, GeneralizedTowerStatType.values.length, 5);
        EnemyType[] enemyTypeArr = EnemyType.mainEnemyTypes;
        this.f12839R = new Label[enemyTypeArr.length];
        this.f12840S = new Enemy[enemyTypeArr.length];
        this.f12843V = new ObjectMap<>();
        this.f12844W = new ObjectMap<>();
        this.f12845X = new ObjectMap<>();
        this.f12847Z = new _TowerSystemListener();
        this.f12849a0 = new _MinerSystemListener();
        this.f12851b0 = new _ModifierSystemListener();
        this.f12852c0 = new _SideMenuListener();
        this.f12854d0 = new _Game_StateSystemListener();
        this.f12855e0 = new _MapSystemListener();
        this.f12848a = sideMenu;
        this.f12846Y = gameSystemProvider;
        int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f12859r = createContainer;
        createContainer.setName("build_menu_container");
        Group group = new Group();
        group.setTransform(false);
        group.setSize(600.0f, 335.0f);
        group.setPosition(0.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 335.0f);
        createContainer.addActor(group);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f12863v = image;
        image.setColor(new Color(606348543));
        Touchable touchable = Touchable.disabled;
        image.setTouchable(touchable);
        image.setSize(600.0f, 335.0f);
        group.addActor(image);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f12856k = label;
        label.setSize(520.0f, 26.0f);
        float f4 = 40.0f;
        label.setPosition(40.0f, 249.0f);
        group.addActor(label);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f12857p = label2;
        label2.setSize(520.0f, 100.0f);
        label2.setPosition(40.0f, 139.0f);
        label2.setAlignment(10);
        label2.setWrap(true);
        group.addActor(label2);
        Table table = new Table();
        this.f12858q = table;
        table.setPosition(0.0f, 99.0f);
        table.setSize(600.0f, 64.0f);
        group.addActor(table);
        TileResources tileResources = new TileResources(600.0f);
        this.f12867z = tileResources;
        tileResources.setPosition(0.0f, 103.0f);
        group.addActor(tileResources);
        Group group2 = new Group();
        this.f12827F = group2;
        group2.setTouchable(Touchable.childrenOnly);
        this.f12827F.setTransform(false);
        this.f12827F.setPosition(-140.0f, 168.0f);
        sideMenu.getBackgroundContainer().addActor(this.f12827F);
        this.f12827F.addActor(new PaddedImageButton(Game.f8589i.assetManager.getDrawable("ui-tile-menu-details-toggle-button"), new Runnable() { // from class: com.prineside.tdi2.ui.components.BuildMenu.1
            @Override // java.lang.Runnable
            public void run() {
                BuildMenu.this.m20617w(true);
            }
        }, MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P900));
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-info"));
        image2.setColor(color);
        image2.setSize(64.0f, 64.0f);
        image2.setPosition(34.0f, 114.0f);
        image2.setTouchable(touchable);
        this.f12827F.addActor(image2);
        Group group3 = new Group();
        this.f12826E = group3;
        group3.setTransform(false);
        this.f12826E.setPosition(0.0f, 214.0f);
        this.f12826E.setSize(472.0f, 761.0f);
        this.f12826E.setTouchable(Touchable.enabled);
        sideMenu.getBackgroundContainer().addActor(this.f12826E);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-details-top"));
        image3.setSize(450.0f, 11.0f);
        image3.setPosition(0.0f, 750.0f);
        image3.setTouchable(touchable);
        this.f12826E.addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-details-center"));
        image4.setSize(450.0f, 719.0f);
        image4.setPosition(0.0f, 31.0f);
        image4.setTouchable(touchable);
        this.f12826E.addActor(image4);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-details-bottom"));
        image5.setSize(450.0f, 31.0f);
        image5.setTouchable(touchable);
        this.f12826E.addActor(image5);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-details-right"));
        image6.setSize(22.0f, 576.0f);
        image6.setTouchable(touchable);
        image6.setPosition(450.0f, 31.0f);
        this.f12826E.addActor(image6);
        Label label3 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f12831J = label3;
        label3.setPosition(40.0f, 677.0f);
        this.f12831J.setSize(300.0f, 40.0f);
        this.f12826E.addActor(this.f12831J);
        Label label4 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f12832K = label4;
        label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f12832K.setPosition(40.0f, 591.0f);
        this.f12832K.setSize(370.0f, 76.0f);
        this.f12832K.setAlignment(10);
        this.f12832K.setWrap(true);
        this.f12826E.addActor(this.f12832K);
        Group group4 = new Group();
        this.f12833L = group4;
        group4.setTransform(false);
        this.f12826E.addActor(this.f12833L);
        Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color);
        int i3 = 0;
        while (true) {
            GeneralizedTowerStatType[] generalizedTowerStatTypeArr = GeneralizedTowerStatType.values;
            if (i3 >= generalizedTowerStatTypeArr.length) {
                break;
            }
            float f5 = 552.0f - (i3 * 28.0f);
            Label label5 = new Label(Game.f8589i.towerManager.getGeneralizedTowerStatName(generalizedTowerStatTypeArr[i3]), labelStyle);
            label5.setPosition(f4, f5);
            label5.setSize(200.0f, 24.0f);
            this.f12833L.addActor(label5);
            Color generalizedTowerStatColor = Game.f8589i.towerManager.getGeneralizedTowerStatColor(generalizedTowerStatTypeArr[i3]);
            this.f12838Q[i3] = new Image[5];
            for (int i4 = 0; i4 < 5; i4++) {
                this.f12838Q[i3][i4] = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                this.f12838Q[i3][i4].setPosition(386.0f - (i4 * 28.0f), f5);
                this.f12838Q[i3][i4].setSize(24.0f, 24.0f);
                this.f12838Q[i3][i4].setColor(generalizedTowerStatColor);
                this.f12833L.addActor(this.f12838Q[i3][i4]);
            }
            i3++;
            f4 = 40.0f;
        }
        String str = Game.f8589i.localeManager.i18n.get("build_menu_effectiveness_against_enemies");
        ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(24);
        Color color2 = Color.WHITE;
        Label label6 = new Label(str, new Label.LabelStyle(font2, color2));
        label6.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label6.setPosition(40.0f, 335.0f);
        label6.setSize(370.0f, 76.0f);
        label6.setAlignment(10);
        label6.setWrap(true);
        this.f12833L.addActor(label6);
        Label.LabelStyle labelStyle2 = new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color2);
        int i5 = 0;
        while (true) {
            EnemyType[] enemyTypeArr2 = EnemyType.mainEnemyTypes;
            if (i5 >= enemyTypeArr2.length) {
                break;
            }
            Enemy obtain = Game.f8589i.enemyManager.getFactory(enemyTypeArr2[i5]).obtain();
            obtain.f8844S = gameSystemProvider;
            this.f12840S[i5] = obtain;
            Image[] imageArr = new Image[EnemyType.values.length];
            Image image7 = new Image(Game.f8589i.enemyManager.getFactory(obtain.type).getTexture());
            imageArr[i5] = image7;
            image7.setSize(40.0f, 40.0f);
            float f6 = (i5 % 3) * 128.0f;
            float f7 = 320.0f - ((i5 / 3) * 48.0f);
            imageArr[i5].setPosition(32.0f + f6 + 12.0f, 12.0f + f7);
            this.f12833L.addActor(imageArr[i5]);
            this.f12839R[i5] = new Label("100", labelStyle2);
            this.f12839R[i5].setSize(64.0f, 64.0f);
            this.f12839R[i5].setPosition(f6 + 104.0f, f7);
            this.f12833L.addActor(this.f12839R[i5]);
            i5++;
        }
        Group group5 = new Group();
        this.f12834M = group5;
        group5.setTransform(false);
        this.f12826E.addActor(this.f12834M);
        int i6 = 21;
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("resource_item"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), new Color(1.0f, 1.0f, 1.0f, 0.14f)));
        label7.setSize(131.0f, 32.0f);
        label7.setPosition(40.0f, 570.0f);
        this.f12834M.addActor(label7);
        Label label8 = new Label(Game.f8589i.localeManager.i18n.get("speed"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), new Color(1.0f, 1.0f, 1.0f, 0.14f)));
        label8.setSize(131.0f, 32.0f);
        label8.setPosition(279.0f, 570.0f);
        label8.setAlignment(16);
        this.f12834M.addActor(label8);
        Color color3 = new Color(808464639);
        int i7 = 0;
        while (true) {
            ResourceType[] resourceTypeArr2 = ResourceType.values;
            if (i7 >= resourceTypeArr2.length) {
                break;
            }
            ResourceType resourceType = resourceTypeArr2[i7];
            Group group6 = new Group();
            this.f12836O[i7] = group6;
            group6.setSize(450.0f, 52.0f);
            group6.setPosition(0.0f, 514.0f - (i7 * 56.0f));
            this.f12834M.addActor(group6);
            Image image8 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image8.setSize(324.0f, 52.0f);
            image8.setColor(color3);
            group6.addActor(image8);
            Image image9 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image9.setSize(122.0f, 52.0f);
            image9.setPosition(328.0f, 0.0f);
            image9.setColor(color3);
            group6.addActor(image9);
            Image image10 = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[i7]));
            image10.setSize(32.0f, 32.0f);
            image10.setPosition(40.0f, 10.0f);
            image10.setColor(Game.f8589i.resourceManager.getColor(resourceType));
            group6.addActor(image10);
            String name = Game.f8589i.resourceManager.getName(resourceType);
            ResourcePack.ResourcePackBitmapFont font3 = Game.f8589i.assetManager.getFont(i6);
            Color color4 = Color.WHITE;
            Label label9 = new Label(name, new Label.LabelStyle(font3, color4));
            label9.setSize(100.0f, 52.0f);
            label9.setPosition(82.0f, 0.0f);
            label9.setColor(Game.f8589i.resourceManager.getColor(resourceType));
            group6.addActor(label9);
            Label label10 = new Label("1.23", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color4));
            this.f12837P[i7] = label10;
            label10.setSize(82.0f, 52.0f);
            label10.setPosition(328.0f, 0.0f);
            label10.setAlignment(16);
            group6.addActor(label10);
            i7++;
            i6 = 21;
        }
        Group group7 = new Group();
        this.f12835N = group7;
        group7.setTransform(false);
        this.f12826E.addActor(this.f12835N);
        Table table2 = new Table();
        table2.setTransform(true);
        Touchable touchable2 = Touchable.disabled;
        table2.setTouchable(touchable2);
        table2.setPosition(0.0f, 57.0f);
        table2.setSize(450.0f, 40.0f);
        table2.setOrigin(250.0f, 20.0f);
        Interpolation.Pow pow = Interpolation.pow2;
        table2.addAction(Actions.forever(Actions.sequence(Actions.rotateTo(5.0f, 0.2f, pow), Actions.rotateTo(-5.0f, 0.2f, pow), Actions.rotateTo(0.0f, 0.2f, pow), Actions.delay(2.0f))));
        this.f12826E.addActor(table2);
        Image image11 = new Image(Game.f8589i.assetManager.getDrawable("icon-info-circle"));
        Color color5 = MaterialColor.AMBER.P500;
        image11.setColor(color5);
        table2.add((Table) image11).size(40.0f).padRight(10.0f);
        String str2 = Game.f8589i.localeManager.i18n.get("tap_again_to_build");
        ResourcePack.ResourcePackBitmapFont font4 = Game.f8589i.assetManager.getFont(21);
        Color color6 = Color.WHITE;
        Label label11 = new Label(str2, new Label.LabelStyle(font4, color6));
        label11.setColor(color5);
        table2.add((Table) label11);
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-times");
        Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.components.BuildMenu.2
            @Override // java.lang.Runnable
            public void run() {
                BuildMenu.this.m20617w(false);
            }
        };
        Color color7 = MaterialColor.LIGHT_BLUE.P800;
        Color color8 = MaterialColor.LIGHT_BLUE.P700;
        Color color9 = MaterialColor.LIGHT_BLUE.P900;
        PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnable, color7, color8, color9);
        paddedImageButton.setSize(96.0f, 120.0f);
        paddedImageButton.setPosition(354.0f, 0.0f);
        paddedImageButton.setIconSize(40.0f, 40.0f);
        paddedImageButton.setIconPosition(16.0f, 65.0f);
        this.f12826E.addActor(paddedImageButton);
        this.f12829H = true;
        m20618v(false);
        this.f12830I = true;
        m20617w(false);
        Group group8 = new Group();
        this.f12823B = group8;
        group8.setTransform(false);
        group8.setSize(600.0f, 80.0f);
        group.addActor(group8);
        PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("ui-tile-menu-tab-inactive-left"), new Runnable() { // from class: com.prineside.tdi2.ui.components.BuildMenu.3
            @Override // java.lang.Runnable
            public void run() {
                BuildMenu.this.m20619u(TabType.MODIFIERS);
            }
        }, color7, color8, color9);
        this.f12865x = paddedImageButton2;
        paddedImageButton2.setName("build_menu_modifiers_tab_button");
        this.f12865x.setPosition(42.0f, 4.0f);
        this.f12865x.setIconSize(228.0f, 72.0f);
        this.f12865x.setSize(228.0f, 72.0f);
        group8.addActor(this.f12865x);
        Image image12 = new Image(Game.f8589i.assetManager.getDrawable("icon-modifier"));
        image12.setSize(54.0f, 54.0f);
        image12.setPosition(87.0f, 9.0f);
        image12.setTouchable(touchable2);
        this.f12865x.addActor(image12);
        Table table3 = new Table();
        table3.setBackground(Game.f8589i.assetManager.getDrawable("ui-tile-menu-tab-active"));
        table3.setSize(312.0f, 80.0f);
        table3.setPosition(248.0f, 0.0f);
        group8.addActor(table3);
        table3.add((Table) new Image(Game.f8589i.assetManager.getDrawable("icon-tower-top"))).size(54.0f, 54.0f).padRight(16.0f);
        table3.add((Table) new Label(Game.f8589i.localeManager.i18n.get("towers").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color6))).padRight(4.0f);
        Group group9 = new Group();
        this.f12824C = group9;
        group9.setTransform(false);
        group9.setSize(600.0f, 80.0f);
        group.addActor(group9);
        Table table4 = new Table();
        table4.setBackground(Game.f8589i.assetManager.getDrawable("ui-tile-menu-tab-active"));
        table4.setSize(312.0f, 80.0f);
        table4.setPosition(40.0f, 0.0f);
        group9.addActor(table4);
        table4.add((Table) new Image(Game.f8589i.assetManager.getDrawable("icon-modifier"))).size(54.0f, 54.0f).padRight(16.0f);
        table4.add((Table) new Label(Game.f8589i.localeManager.i18n.get("modifiers").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color6))).padRight(4.0f);
        PaddedImageButton paddedImageButton3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("ui-tile-menu-tab-inactive-right"), new Runnable() { // from class: com.prineside.tdi2.ui.components.BuildMenu.4
            @Override // java.lang.Runnable
            public void run() {
                BuildMenu.this.m20619u(TabType.TOWERS);
            }
        }, color7, color8, color9);
        paddedImageButton3.setPosition(330.0f, 4.0f);
        paddedImageButton3.setSize(228.0f, 72.0f);
        paddedImageButton3.setIconSize(228.0f, 72.0f);
        group9.addActor(paddedImageButton3);
        Image image13 = new Image(Game.f8589i.assetManager.getDrawable("icon-tower-top"));
        image13.setSize(54.0f, 54.0f);
        image13.setPosition(87.0f, 9.0f);
        image13.setTouchable(touchable2);
        paddedImageButton3.addActor(image13);
        Group group10 = new Group();
        this.f12825D = group10;
        group10.setTransform(false);
        group10.setSize(600.0f, 80.0f);
        group.addActor(group10);
        Table table5 = new Table();
        table5.setBackground(Game.f8589i.assetManager.getDrawable("ui-tile-menu-tab-active"));
        table5.setSize(312.0f, 80.0f);
        table5.setPosition(248.0f, 0.0f);
        group10.addActor(table5);
        table5.add((Table) new Image(Game.f8589i.assetManager.getDrawable("icon-miner-top"))).size(54.0f, 54.0f).padRight(16.0f);
        table5.add((Table) new Label(Game.f8589i.localeManager.i18n.get("miners").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color6))).padRight(4.0f);
        Image image14 = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-tab-background"));
        this.f12864w = image14;
        image14.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 335.0f);
        image14.setTouchable(touchable2);
        this.f12859r.addActor(image14);
        Group group11 = new Group();
        this.f12860s = group11;
        group11.setTransform(false);
        group11.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 335.0f);
        this.f12859r.addActor(group11);
        Group group12 = new Group();
        group12.setTransform(false);
        group12.setName("build_menu_default_aim_strategy");
        float f8 = scaledViewportHeight;
        group12.setPosition(0.0f, 628.0f + f8);
        group12.setSize(600.0f, 70.0f);
        group11.addActor(group12);
        Label label12 = new Label(Game.f8589i.localeManager.i18n.get("default_target").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color6));
        label12.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label12.setPosition(40.0f, 52.0f);
        label12.setSize(210.0f, 18.0f);
        group12.addActor(label12);
        Label label13 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color6));
        this.f12822A = label13;
        label13.setPosition(40.0f, 18.0f);
        label13.setSize(210.0f, 23.0f);
        group12.addActor(label13);
        AimStrategySelector aimStrategySelector = new AimStrategySelector();
        this.f12866y = aimStrategySelector;
        aimStrategySelector.setPosition(250.0f, 0.0f);
        final GameSystemProvider gameSystemProvider2 = gameSystemProvider;
        aimStrategySelector.addListener(new AimStrategySelector.AimStrategySelectorListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.5
            @Override // com.prineside.tdi2.p036ui.actors.AimStrategySelector.AimStrategySelectorListener
            public void strategyChanged(Tower.AimStrategy aimStrategy) {
                gameSystemProvider2.tower.setDefaultAimStrategy(aimStrategy);
            }
        });
        group12.addActor(aimStrategySelector);
        Table table6 = new Table();
        table6.setName("build_menu_tower_build_buttons");
        TowerType[] towerTypeArr = TowerType.values;
        int length = ((towerTypeArr.length - 1) / 4) + 1;
        float f9 = ((length * 131.0f) + 40.0f) - 4.0f;
        float f10 = scaledViewportHeight + 600;
        boolean z = f9 > f10;
        float f11 = z ? 20.0f : 40.0f;
        Actor image15 = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        image15.setTouchable(touchable2);
        image15.setSize(600.0f, f10);
        image15.setColor(new Color(724249599));
        group11.addActor(image15);
        final ScrollPane scrollPane = new ScrollPane(table6, Game.f8589i.assetManager.getScrollPaneStyle(20.0f));
        scrollPane.setSize(600.0f, f10);
        scrollPane.setOverscroll(false, false);
        scrollPane.setSmoothScrolling(false);
        scrollPane.setFadeScrollBars(false);
        scrollPane.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.6
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f12, float f13, int i8, Actor actor) {
                try {
                    scrollPane.getStage().setScrollFocus(scrollPane);
                } catch (Exception unused) {
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f12, float f13, int i8, Actor actor) {
                try {
                    scrollPane.getStage().setScrollFocus(null);
                } catch (Exception unused) {
                }
            }
        });
        group11.addActor(scrollPane);
        Actor image16 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image16.setSize(z ? 580.0f : 600.0f, 10.0f);
        image16.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        image16.setPosition(0.0f, f10 - 10.0f);
        group11.addActor(image16);
        int length2 = towerTypeArr.length;
        int i8 = 0;
        int i9 = 0;
        while (i8 < length2) {
            TowerType towerType = towerTypeArr[i8];
            final BuildButton buildButton = new BuildButton(Game.f8589i.towerManager.getFactory(towerType).createIconActor(128.0f));
            buildButton.setName("build_menu_tower_build_button_" + towerType.name());
            buildButton.setPrice(0);
            buildButton.setCount(-1);
            buildButton.f12899T = TabType.TOWERS;
            buildButton.f12900U = towerType;
            Cell padRight = table6.add((Table) buildButton).size(127.0f, 127.0f).padBottom(4.0f).padRight(4.0f);
            i9++;
            if (i9 <= 4) {
                f3 = 40.0f;
                padRight.padTop(40.0f);
            } else {
                f3 = 40.0f;
            }
            int i10 = length2;
            int i11 = i9 % 4;
            TowerType[] towerTypeArr2 = towerTypeArr;
            if (i11 == 1) {
                padRight.padLeft(f3);
            }
            if (i11 == 0) {
                padRight.padRight(f11);
                table6.row();
            }
            if (((i9 - 1) / 4) + 1 == length) {
                padRight.padBottom(StrictMath.max(f10 - f9, 40.0f));
            }
            this.f12843V.put(towerType, buildButton);
            buildButton.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.7
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f12, float f13) {
                    BuildButton buildButton2 = BuildMenu.this.f12841T;
                    BuildButton buildButton3 = buildButton;
                    if (buildButton2 == buildButton3) {
                        gameSystemProvider2.tower.buildTowerAction(BuildMenu.this.f12841T.f12900U);
                    } else {
                        BuildMenu.this.m20616x(buildButton3);
                    }
                }
            });
            if (HotKeyHintLabel.isEnabled()) {
                SettingsManager.HotkeyAction hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_BASIC;
                switch (C249212.f12874a[towerType.ordinal()]) {
                    case 2:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_SNIPER;
                        break;
                    case 3:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_CANNON;
                        break;
                    case 4:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_FREEZING;
                        break;
                    case 5:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_AIR;
                        break;
                    case 6:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_SPLASH;
                        break;
                    case 7:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_BLAST;
                        break;
                    case 8:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_MULTISHOT;
                        break;
                    case 9:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_MINIGUN;
                        break;
                    case 10:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_VENOM;
                        break;
                    case 11:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_TESLA;
                        break;
                    case 12:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_MISSILE;
                        break;
                    case 13:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_LASER;
                        break;
                    case 14:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_GAUSS;
                        break;
                    case 15:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_CRUSHER;
                        break;
                    case 16:
                        hotkeyAction = SettingsManager.HotkeyAction.BUILD_TOWER_FLAMETHROWER;
                        break;
                }
                buildButton.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(hotkeyAction), 12.0f, 102.0f, 8));
            }
            i8++;
            length2 = i10;
            towerTypeArr = towerTypeArr2;
        }
        Group group13 = new Group();
        this.f12861t = group13;
        group13.setTransform(false);
        group13.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 335.0f);
        this.f12859r.addActor(group13);
        Table table7 = new Table();
        table7.setName("build_menu_modifier_build_buttons");
        int length3 = ((ModifierType.values.length - 1) / 4) + 1;
        float f12 = ((length3 * 131.0f) + 40.0f) - 4.0f;
        float f13 = f8 + 725.0f;
        boolean z2 = f12 > f13;
        float f14 = z2 ? 20.0f : 40.0f;
        Image image17 = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        image17.setTouchable(Touchable.disabled);
        image17.setSize(600.0f, f13);
        image17.setColor(new Color(724249599));
        group13.addActor(image17);
        final ScrollPane scrollPane2 = new ScrollPane(table7, Game.f8589i.assetManager.getScrollPaneStyle(20.0f));
        scrollPane2.setSize(600.0f, f13);
        scrollPane2.setOverscroll(false, false);
        scrollPane2.setSmoothScrolling(false);
        scrollPane2.setFadeScrollBars(false);
        scrollPane2.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.8
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f15, float f16, int i12, Actor actor) {
                try {
                    scrollPane2.getStage().setScrollFocus(scrollPane2);
                } catch (Exception unused) {
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f15, float f16, int i12, Actor actor) {
                try {
                    scrollPane2.getStage().setScrollFocus(null);
                } catch (Exception unused) {
                }
            }
        });
        group13.addActor(scrollPane2);
        Image image18 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image18.setSize(z2 ? 580.0f : 600.0f, 10.0f);
        image18.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        float f15 = f13 - 10.0f;
        image18.setPosition(0.0f, f15);
        group13.addActor(image18);
        ModifierType[] modifierTypeArr2 = ModifierType.values;
        int length4 = modifierTypeArr2.length;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length4) {
            ModifierType modifierType = modifierTypeArr2[i12];
            final BuildButton buildButton2 = new BuildButton(Game.f8589i.modifierManager.getFactory(modifierType).createIconActor(128.0f));
            buildButton2.setName("build_menu_modifier_build_button_" + modifierType.name());
            buildButton2.f12899T = TabType.MODIFIERS;
            buildButton2.f12902W = modifierType;
            this.f12844W.put(modifierType, buildButton2);
            buildButton2.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.9
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f16, float f17) {
                    BuildButton buildButton3 = BuildMenu.this.f12841T;
                    BuildButton buildButton4 = buildButton2;
                    if (buildButton3 == buildButton4) {
                        gameSystemProvider2.modifier.buildModifierAction(BuildMenu.this.f12841T.f12902W);
                    } else {
                        BuildMenu.this.m20616x(buildButton4);
                    }
                }
            });
            Cell padRight2 = table7.add((Table) buildButton2).size(127.0f, 127.0f).padBottom(4.0f).padRight(4.0f);
            if (HotKeyHintLabel.isEnabled()) {
                SettingsManager.HotkeyAction hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_BALANCE;
                switch (C249212.f12875b[modifierType.ordinal()]) {
                    case 2:
                        hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_SEARCH;
                        break;
                    case 3:
                        hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_POWER;
                        break;
                    case 4:
                        hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_DAMAGE;
                        break;
                    case 5:
                        hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_ATTACK_SPEED;
                        break;
                    case 6:
                        hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_MINING_SPEED;
                        break;
                    case 7:
                        hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_BOUNTY;
                        break;
                    case 8:
                        hotkeyAction2 = SettingsManager.HotkeyAction.BUILD_MODIFIER_EXPERIENCE;
                        break;
                }
                modifierTypeArr = modifierTypeArr2;
                i2 = length4;
                buildButton2.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(hotkeyAction2), 12.0f, 102.0f, 8));
            } else {
                modifierTypeArr = modifierTypeArr2;
                i2 = length4;
            }
            i13++;
            if (i13 <= 4) {
                f2 = 40.0f;
                padRight2.padTop(40.0f);
            } else {
                f2 = 40.0f;
            }
            int i14 = i13 % 4;
            if (i14 == 1) {
                padRight2.padLeft(f2);
            }
            if (i14 == 0) {
                padRight2.padRight(f14);
                table7.row();
            }
            if (((i13 - 1) / 4) + 1 == length3) {
                padRight2.padBottom(StrictMath.max(f13 - f12, 40.0f));
            }
            i12++;
            gameSystemProvider2 = gameSystemProvider;
            modifierTypeArr2 = modifierTypeArr;
            length4 = i2;
        }
        Group group14 = new Group();
        this.f12862u = group14;
        group14.setTransform(false);
        group14.setSize(600.0f, 745.0f);
        this.f12859r.addActor(group14);
        Table table8 = new Table();
        table8.setName("build_menu_miner_build_buttons");
        MinerType[] minerTypeArr2 = MinerType.values;
        int length5 = ((minerTypeArr2.length - 1) / 4) + 1;
        float f16 = ((length5 * 131.0f) + 40.0f) - 4.0f;
        boolean z3 = f16 > f13;
        float f17 = z3 ? 20.0f : 40.0f;
        Image image19 = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        image19.setTouchable(Touchable.disabled);
        image19.setSize(600.0f, f13);
        image19.setColor(new Color(724249599));
        group14.addActor(image19);
        final ScrollPane scrollPane3 = new ScrollPane(table8, Game.f8589i.assetManager.getScrollPaneStyle(20.0f));
        scrollPane3.setSize(600.0f, f13);
        int i15 = 0;
        scrollPane3.setOverscroll(false, false);
        scrollPane3.setSmoothScrolling(false);
        scrollPane3.setFadeScrollBars(false);
        scrollPane3.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.10
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f18, float f19, int i16, Actor actor) {
                try {
                    scrollPane3.getStage().setScrollFocus(scrollPane3);
                } catch (Exception unused) {
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f18, float f19, int i16, Actor actor) {
                try {
                    scrollPane3.getStage().setScrollFocus(null);
                } catch (Exception unused) {
                }
            }
        });
        group14.addActor(scrollPane3);
        Image image20 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image20.setSize(z3 ? 580.0f : 600.0f, 10.0f);
        image20.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        image20.setPosition(0.0f, f15);
        group14.addActor(image20);
        int length6 = minerTypeArr2.length;
        int i16 = 0;
        while (i15 < length6) {
            MinerType minerType = minerTypeArr2[i15];
            final BuildButton buildButton3 = new BuildButton(Game.f8589i.minerManager.getFactory(minerType).createIconActor(128.0f));
            buildButton3.setName("build_menu_miner_build_button_" + minerType.name());
            buildButton3.f12899T = TabType.MINERS;
            buildButton3.f12901V = minerType;
            this.f12845X.put(minerType, buildButton3);
            buildButton3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.BuildMenu.11
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f18, float f19) {
                    BuildButton buildButton4 = BuildMenu.this.f12841T;
                    BuildButton buildButton5 = buildButton3;
                    if (buildButton4 == buildButton5) {
                        gameSystemProvider.miner.buildMinerAction(BuildMenu.this.f12841T.f12901V);
                    } else {
                        BuildMenu.this.m20616x(buildButton5);
                    }
                }
            });
            Cell padRight3 = table8.add((Table) buildButton3).size(127.0f, 127.0f).padBottom(4.0f).padRight(4.0f);
            if (HotKeyHintLabel.isEnabled()) {
                SettingsManager.HotkeyAction hotkeyAction3 = SettingsManager.HotkeyAction.BUILD_MODIFIER_BALANCE;
                int i17 = C249212.f12876c[minerType.ordinal()];
                if (i17 == 1) {
                    hotkeyAction3 = SettingsManager.HotkeyAction.BUILD_MINER_SCALAR;
                } else if (i17 == 2) {
                    hotkeyAction3 = SettingsManager.HotkeyAction.BUILD_MINER_VECTOR;
                } else if (i17 == 3) {
                    hotkeyAction3 = SettingsManager.HotkeyAction.BUILD_MINER_MATRIX;
                } else if (i17 == 4) {
                    hotkeyAction3 = SettingsManager.HotkeyAction.BUILD_MINER_TENSOR;
                } else if (i17 == 5) {
                    hotkeyAction3 = SettingsManager.HotkeyAction.BUILD_MINER_INFIAR;
                }
                SettingsManager.HotkeyAction hotkeyAction4 = hotkeyAction3;
                i = length6;
                minerTypeArr = minerTypeArr2;
                buildButton3.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(hotkeyAction4), 12.0f, 102.0f, 8));
            } else {
                i = length6;
                minerTypeArr = minerTypeArr2;
            }
            i16++;
            if (i16 <= 4) {
                f = 40.0f;
                padRight3.padTop(40.0f);
            } else {
                f = 40.0f;
            }
            int i18 = i16 % 4;
            if (i18 == 1) {
                padRight3.padLeft(f);
            }
            if (i18 == 0) {
                padRight3.padRight(f17);
                table8.row();
            }
            if (((i16 - 1) / 4) + 1 == length5) {
                padRight3.padBottom(StrictMath.max(f13 - f16, 40.0f));
            }
            i15++;
            length6 = i;
            minerTypeArr2 = minerTypeArr;
        }
        sideMenu.addListener(this.f12852c0);
        gameSystemProvider.tower.listeners.add(this.f12847Z);
        gameSystemProvider.miner.listeners.add(this.f12849a0);
        gameSystemProvider.modifier.listeners.add(this.f12851b0);
        gameSystemProvider.gameState.listeners.add(this.f12854d0);
        gameSystemProvider.map.listeners.add(this.f12855e0);
        this.f12859r.hide();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    /* renamed from: com.prineside.tdi2.ui.components.BuildMenu$12 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C249212 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12874a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f12875b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f12876c;

        static {
            int[] iArr = new int[MinerType.values().length];
            f12876c = iArr;
            try {
                iArr[MinerType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12876c[MinerType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12876c[MinerType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12876c[MinerType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12876c[MinerType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ModifierType.values().length];
            f12875b = iArr2;
            try {
                iArr2[ModifierType.BALANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12875b[ModifierType.SEARCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12875b[ModifierType.POWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12875b[ModifierType.DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f12875b[ModifierType.ATTACK_SPEED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f12875b[ModifierType.MINING_SPEED.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f12875b[ModifierType.BOUNTY.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f12875b[ModifierType.EXPERIENCE.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr3 = new int[TowerType.values().length];
            f12874a = iArr3;
            try {
                iArr3[TowerType.BASIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f12874a[TowerType.SNIPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f12874a[TowerType.CANNON.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f12874a[TowerType.FREEZING.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f12874a[TowerType.AIR.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f12874a[TowerType.SPLASH.ordinal()] = 6;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f12874a[TowerType.BLAST.ordinal()] = 7;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f12874a[TowerType.MULTISHOT.ordinal()] = 8;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f12874a[TowerType.MINIGUN.ordinal()] = 9;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f12874a[TowerType.VENOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f12874a[TowerType.TESLA.ordinal()] = 11;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f12874a[TowerType.MISSILE.ordinal()] = 12;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f12874a[TowerType.LASER.ordinal()] = 13;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f12874a[TowerType.GAUSS.ordinal()] = 14;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f12874a[TowerType.CRUSHER.ordinal()] = 15;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f12874a[TowerType.FLAMETHROWER.ordinal()] = 16;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    /* renamed from: A */
    public final void m20643A() {
        this.f12822A.setText(Game.f8589i.towerManager.getAimStrategyName(this.f12846Y.tower.getDefaultAimStrategy()).toUpperCase());
        this.f12866y.setStrategy(this.f12846Y.tower.getDefaultAimStrategy(), true, false);
    }

    /* renamed from: B */
    public final void m20642B() {
        ModifierType[] modifierTypeArr;
        boolean z;
        MinerType[] minerTypeArr;
        boolean z2;
        TowerType[] towerTypeArr;
        int money = this.f12846Y.gameState.getMoney();
        TabType tabType = this.f12850b;
        if (tabType == TabType.TOWERS) {
            boolean areModifiersOpened = Game.f8589i.progressManager.areModifiersOpened();
            if (!areModifiersOpened) {
                ModifierType[] modifierTypeArr2 = ModifierType.values;
                int length = modifierTypeArr2.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if (this.f12846Y.gameValue.getIntValue(Game.f8589i.modifierManager.getCountGameValue(modifierTypeArr2[i])) > 0) {
                        areModifiersOpened = true;
                        break;
                    }
                    i++;
                }
            }
            if (areModifiersOpened) {
                this.f12865x.setVisible(true);
                this.f12865x.getIcon().clearActions();
                if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.MODIFIER_TAB_HINT_SHOWN) == 0.0d) {
                    this.f12865x.getIcon().addAction(Actions.forever(Actions.sequence(Actions.color(MaterialColor.LIGHT_BLUE.P800, 0.4f), Actions.color(MaterialColor.LIGHT_GREEN.P600, 0.4f))));
                } else {
                    this.f12865x.updateColors();
                }
            } else {
                this.f12865x.setVisible(false);
            }
            for (TowerType towerType : TowerType.values) {
                int buildPrice = Game.f8589i.towerManager.getFactory(towerType).getBuildPrice(this.f12846Y);
                BuildButton buildButton = this.f12843V.get(towerType);
                if (buildButton != null) {
                    buildButton.setPrice(buildPrice);
                    if (money < buildPrice) {
                        buildButton.m20608u(false);
                    } else {
                        buildButton.m20608u(true);
                    }
                    buildButton.m20609t(Game.f8589i.towerManager.getFactory(towerType).isAvailable(this.f12846Y.gameValue));
                }
            }
        } else if (tabType == TabType.MINERS) {
            for (MinerType minerType : MinerType.values) {
                int buildPrice2 = this.f12846Y.miner.getBuildPrice(minerType);
                BuildButton buildButton2 = this.f12845X.get(minerType);
                if (buildButton2 != null) {
                    buildButton2.setPrice(buildPrice2);
                    buildButton2.setCount(this.f12846Y.miner.getBuildableMinersCount(minerType));
                    if (this.f12846Y.miner.getMaxMinersCount(minerType) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    buildButton2.m20609t(z2);
                    if (money >= buildPrice2 && buildButton2.f12898S != 0) {
                        buildButton2.m20608u(true);
                    } else {
                        buildButton2.m20608u(false);
                    }
                    if (Game.f8589i.minerManager.isMinerOpened(minerType, this.f12846Y.gameValue)) {
                        buildButton2.setVisible(true);
                    } else {
                        buildButton2.setVisible(false);
                    }
                }
            }
        } else if (tabType == TabType.MODIFIERS) {
            for (ModifierType modifierType : ModifierType.values) {
                int buildPrice3 = this.f12846Y.modifier.getBuildPrice(modifierType);
                BuildButton buildButton3 = this.f12844W.get(modifierType);
                if (buildButton3 != null) {
                    buildButton3.setPrice(buildPrice3);
                    buildButton3.setCount(this.f12846Y.modifier.getBuildableModifiersCount(modifierType));
                    if (this.f12846Y.modifier.getMaxModifiersCount(modifierType) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    buildButton3.m20609t(z);
                    if (money >= buildPrice3 && buildButton3.f12898S != 0) {
                        buildButton3.m20608u(true);
                    } else {
                        buildButton3.m20608u(false);
                    }
                    buildButton3.m20609t(Game.f8589i.modifierManager.getFactory(modifierType).isAvailable(this.f12846Y.gameValue));
                }
            }
        }
    }

    /* renamed from: C */
    public final void m20641C() {
        boolean z;
        if (!this.f12848a.isOffscreen() && this.f12853d) {
            z = true;
        } else {
            z = false;
        }
        this.f12842U = z;
        m20640D();
    }

    /* renamed from: D */
    public final void m20640D() {
        BuildButton buildButton;
        SpaceTileBonusType[] spaceTileBonusTypeArr;
        this.f12846Y.map.hideTowerRangeHint();
        f12821n0.clear();
        if (this.f12842U && (buildButton = this.f12841T) != null && buildButton.f12899T == TabType.TOWERS) {
            Tile selectedTile = this.f12846Y.map.getSelectedTile();
            Tower create = Game.f8589i.towerManager.getFactory(this.f12841T.f12900U).create();
            create.setRegistered(this.f12846Y);
            if (selectedTile.type == TileType.PLATFORM) {
                PlatformTile platformTile = (PlatformTile) selectedTile;
                if (platformTile.building == null && create.rangeInPixels != 0.0f) {
                    create.setTile(platformTile);
                    MapSystem mapSystem = this.f12846Y.map;
                    Vector2 vector2 = selectedTile.center;
                    mapSystem.showTowerRangeHint(vector2.f5527x, vector2.f5528y, create.minRangeInPixels, create.rangeInPixels);
                    create.setTile(null);
                }
            }
            for (SpaceTileBonusType spaceTileBonusType : SpaceTileBonusType.values) {
                if (Game.f8589i.towerManager.getFactory(create.type).receivesSpaceTileBonus(spaceTileBonusType)) {
                    f12821n0.add(spaceTileBonusType);
                }
            }
            create.setUnregistered();
        }
        ObjectSet.ObjectSetIterator<SpaceTileBonusType> it = f12821n0.iterator();
        boolean z = false;
        while (it.hasNext()) {
            SpaceTileBonusType next = it.next();
            if (!this.f12846Y._mapRendering.spaceTileBonusesToDrawColoredOnFreeTiles.contains(next)) {
                this.f12846Y._mapRendering.spaceTileBonusesToDrawColoredOnFreeTiles.add(next);
                z = true;
            }
        }
        ObjectSet.ObjectSetIterator<SpaceTileBonusType> it2 = this.f12846Y._mapRendering.spaceTileBonusesToDrawColoredOnFreeTiles.iterator();
        ObjectSet.ObjectSetIterator<SpaceTileBonusType> it3 = it2.iterator();
        while (it3.hasNext()) {
            if (!f12821n0.contains(it3.next())) {
                it2.remove();
                z = true;
            }
        }
        if (z) {
            this.f12846Y._mapRendering.forceTilesRedraw(false);
        }
        m20621s();
    }

    /* renamed from: s */
    public final void m20621s() {
        boolean z;
        this.f12827F.clearActions();
        this.f12826E.clearActions();
        if (this.f12829H && this.f12842U) {
            z = true;
        } else {
            z = false;
        }
        if (z && !this.f12830I) {
            this.f12827F.setTouchable(Touchable.childrenOnly);
            this.f12827F.setVisible(true);
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                this.f12827F.addAction(Actions.moveTo(-140.0f, 168.0f, 0.1f));
            } else {
                this.f12827F.setPosition(-140.0f, 168.0f);
            }
        } else {
            this.f12827F.setTouchable(Touchable.disabled);
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                this.f12827F.addAction(Actions.sequence(Actions.moveTo(0.0f, 150.0f, 0.1f), Actions.hide()));
            } else {
                this.f12827F.setPosition(0.0f, 150.0f);
                this.f12827F.setVisible(false);
            }
        }
        if (z && this.f12830I) {
            this.f12826E.setTouchable(Touchable.enabled);
            this.f12826E.setVisible(true);
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                this.f12826E.addAction(Actions.moveTo(-472.0f, 214.0f, 0.15f));
                return;
            } else {
                this.f12826E.setPosition(-472.0f, 214.0f);
                return;
            }
        }
        this.f12826E.setTouchable(Touchable.disabled);
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            this.f12826E.addAction(Actions.sequence(Actions.moveTo(0.0f, 214.0f, 0.15f), Actions.hide()));
            return;
        }
        this.f12826E.setPosition(0.0f, 214.0f);
        this.f12826E.setVisible(false);
    }

    /* renamed from: t */
    public final void m20620t() {
        Tile selectedTile = this.f12846Y.map.getSelectedTile();
        if (selectedTile != null) {
            Game.f8589i.minerManager.minersAndEnergyAvailable();
            boolean z = (this.f12846Y.gameValue.getIntValue(GameValueType.MINER_COUNT_SCALAR) == 0 && this.f12846Y.gameValue.getIntValue(GameValueType.MINER_COUNT_VECTOR) == 0 && this.f12846Y.gameValue.getIntValue(GameValueType.MINER_COUNT_MATRIX) == 0 && this.f12846Y.gameValue.getIntValue(GameValueType.MINER_COUNT_TENSOR) == 0 && this.f12846Y.gameValue.getIntValue(GameValueType.MINER_COUNT_INFIAR) == 0) ? true : true;
            TileType tileType = selectedTile.type;
            TileType tileType2 = TileType.SOURCE;
            if (tileType == tileType2 && !z) {
                this.f12856k.setText(Game.f8589i.localeManager.i18n.get("unknown").toUpperCase());
                this.f12857p.setText(Game.f8589i.localeManager.i18n.get("description_not_available"));
                m20619u(null);
                this.f12858q.setVisible(false);
                return;
            }
            this.f12856k.setText(StringFormatter.toUpperCase(selectedTile.getTitle()));
            this.f12857p.setText(selectedTile.getDescription());
            TileType tileType3 = selectedTile.type;
            if (tileType3 == TileType.PLATFORM) {
                PlatformTile platformTile = (PlatformTile) selectedTile;
                TabType tabType = this.f12850b;
                TabType tabType2 = TabType.TOWERS;
                if (tabType != tabType2 && tabType != TabType.MODIFIERS) {
                    m20619u(tabType2);
                }
                this.f12867z.setVisible(false);
                this.f12858q.setVisible(true);
                this.f12858q.clearChildren();
                if (platformTile.bonusType != null && platformTile.bonusLevel > 0) {
                    EffectTooltip effectTooltip = new EffectTooltip(Game.f8589i.assetManager.getDrawable(SpaceTileBonus.getIconName(platformTile.bonusType)), SpaceTileBonus.getDetailedName(platformTile.bonusType, platformTile.bonusLevel));
                    effectTooltip.setHint(Game.f8589i.localeManager.i18n.get("tile_effect"));
                    effectTooltip.setColor(SpaceTileBonus.getBrightColor(platformTile.bonusType));
                    this.f12858q.add(effectTooltip);
                }
                m20640D();
            } else if (tileType3 == tileType2) {
                SourceTile sourceTile = (SourceTile) selectedTile;
                TabType tabType3 = this.f12850b;
                TabType tabType4 = TabType.MINERS;
                if (tabType3 != tabType4) {
                    m20619u(tabType4);
                }
                this.f12858q.setVisible(false);
                this.f12867z.setVisible(true);
                this.f12867z.setTile(sourceTile);
                m20640D();
            }
        }
    }

    /* renamed from: u */
    public final void m20619u(TabType tabType) {
        boolean z;
        boolean z2 = false;
        this.f12860s.setVisible(false);
        this.f12861t.setVisible(false);
        this.f12862u.setVisible(false);
        this.f12823B.setVisible(false);
        this.f12824C.setVisible(false);
        this.f12825D.setVisible(false);
        if (tabType == TabType.TOWERS) {
            this.f12860s.setVisible(true);
            this.f12823B.setVisible(true);
        } else if (tabType == TabType.MODIFIERS) {
            this.f12861t.setVisible(true);
            this.f12824C.setVisible(true);
            SettingsManager settingsManager = Game.f8589i.settingsManager;
            SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.MODIFIER_TAB_HINT_SHOWN;
            if (settingsManager.getCustomValue(customValueType) == 0.0d) {
                Game.f8589i.settingsManager.setCustomValue(customValueType, 1.0d);
            }
        } else if (tabType == TabType.MINERS) {
            this.f12862u.setVisible(true);
            this.f12825D.setVisible(true);
        }
        Image image = this.f12863v;
        if (tabType != null) {
            z = true;
        } else {
            z = false;
        }
        image.setVisible(z);
        Image image2 = this.f12864w;
        if (tabType != null) {
            z2 = true;
        }
        image2.setVisible(z2);
        this.f12850b = tabType;
        m20616x(null);
        m20642B();
    }

    /* renamed from: v */
    public final void m20618v(boolean z) {
        if (this.f12829H != z) {
            this.f12829H = z;
            m20621s();
        }
    }

    /* renamed from: w */
    public final void m20617w(boolean z) {
        if (this.f12830I != z) {
            this.f12830I = z;
            m20621s();
        }
    }

    /* renamed from: x */
    public final void m20616x(BuildButton buildButton) {
        BuildButton buildButton2 = this.f12841T;
        if (buildButton2 != null) {
            buildButton2.setSelected(false);
        }
        this.f12841T = buildButton;
        if (buildButton != null) {
            buildButton.setSelected(true);
        }
        m20640D();
        if (buildButton != null) {
            m20614z(this.f12841T);
            m20618v(true);
            return;
        }
        m20618v(false);
    }

    /* renamed from: y */
    public final void m20615y(boolean z) {
        if (this.f12853d != z) {
            this.f12853d = z;
            if (z) {
                m20642B();
                this.f12859r.show();
            } else {
                this.f12859r.hide();
            }
            m20641C();
        }
        this.f12859r.setLabelOverTitleTilePos(this.f12846Y.map.getSelectedTile());
    }

    /* renamed from: z */
    public final void m20614z(BuildButton buildButton) {
        ResourceType[] resourceTypeArr;
        GeneralizedTowerStatType[] generalizedTowerStatTypeArr;
        EnemyType[] enemyTypeArr;
        boolean z;
        if (buildButton != null && this.f12828G != buildButton) {
            this.f12833L.setVisible(false);
            this.f12834M.setVisible(false);
            this.f12835N.setVisible(false);
            TabType tabType = buildButton.f12899T;
            if (tabType == TabType.TOWERS) {
                this.f12833L.setVisible(true);
                Tower.Factory<? extends Tower> factory = Game.f8589i.towerManager.getFactory(buildButton.f12900U);
                this.f12831J.setText(factory.getTitle());
                this.f12832K.setText(factory.getDescription());
                this.f12833L.setVisible(true);
                for (GeneralizedTowerStatType generalizedTowerStatType : GeneralizedTowerStatType.values) {
                    int generalizedStat = factory.getGeneralizedStat(generalizedTowerStatType);
                    int i = 0;
                    while (i < 5) {
                        Image image = this.f12838Q[generalizedTowerStatType.ordinal()][i];
                        i++;
                        if (i <= generalizedStat) {
                            z = true;
                        } else {
                            z = false;
                        }
                        image.setVisible(z);
                    }
                }
                int i2 = 0;
                for (EnemyType enemyType : EnemyType.mainEnemyTypes) {
                    int towerDamageMultiplier = (int) (this.f12840S[i2].getTowerDamageMultiplier(buildButton.f12900U) * 100.0f);
                    StringBuilder stringBuilder = f12820m0;
                    stringBuilder.setLength(0);
                    stringBuilder.append(towerDamageMultiplier);
                    this.f12839R[i2].setText(stringBuilder);
                    if (towerDamageMultiplier <= 0) {
                        this.f12839R[i2].setColor(MaterialColor.RED.P500);
                    } else if (towerDamageMultiplier < 100) {
                        this.f12839R[i2].setColor(MaterialColor.ORANGE.P600);
                    } else if (towerDamageMultiplier > 100) {
                        this.f12839R[i2].setColor(MaterialColor.GREEN.P500);
                    } else {
                        this.f12839R[i2].setColor(MaterialColor.YELLOW.P500);
                    }
                    i2++;
                }
            } else if (tabType == TabType.MINERS) {
                Miner.Factory<? extends Miner> factory2 = Game.f8589i.minerManager.getFactory(buildButton.f12901V);
                this.f12831J.setText(factory2.getTitle());
                this.f12832K.setText(factory2.getDescription());
                this.f12834M.setVisible(true);
                for (ResourceType resourceType : ResourceType.values) {
                    if (factory2.canMineResource(resourceType)) {
                        this.f12836O[resourceType.ordinal()].setVisible(true);
                        this.f12837P[resourceType.ordinal()].setText(StringFormatter.compactNumber(factory2.getBaseMiningSpeed(resourceType, this.f12846Y.gameValue), true));
                    } else {
                        this.f12836O[resourceType.ordinal()].setVisible(false);
                    }
                }
            } else if (tabType == TabType.MODIFIERS) {
                Modifier.Factory<? extends Modifier> factory3 = Game.f8589i.modifierManager.getFactory(buildButton.f12902W);
                this.f12831J.setText(factory3.getTitle());
                this.f12832K.setText(factory3.getDescription(this.f12846Y.gameValue));
                this.f12835N.setVisible(true);
            }
            this.f12828G = buildButton;
        }
    }

    public void postSetup() {
        m20642B();
        m20619u(TabType.TOWERS);
        m20643A();
    }
}
