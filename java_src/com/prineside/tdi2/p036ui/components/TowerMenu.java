package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.SpaceTileBonus;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.TowerStatManager;
import com.prineside.tdi2.p036ui.actors.AimStrategySelector;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.EffectTooltip;
import com.prineside.tdi2.p036ui.actors.ExpLine;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.components.TowerAbilityButton;
import com.prineside.tdi2.p036ui.components.UpgradeSubmenu;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: com.prineside.tdi2.ui.components.TowerMenu */
/* loaded from: classes2.dex */
public class TowerMenu implements Disposable {

    /* renamed from: g0 */
    public static final Rectangle f13734g0 = new Rectangle(40.0f, 209.0f, 520.0f, 66.0f);

    /* renamed from: h0 */
    public static final Rectangle f13735h0 = new Rectangle(40.0f, 319.0f, 520.0f, 151.0f);

    /* renamed from: i0 */
    public static final StringBuilder f13736i0 = new StringBuilder();

    /* renamed from: j0 */
    public static final Vector2 f13737j0 = new Vector2();

    /* renamed from: A */
    public final AimStrategySelector f13738A;

    /* renamed from: B */
    public final ComplexButton f13739B;

    /* renamed from: C */
    public final SellButton f13740C;

    /* renamed from: D */
    public final Group f13741D;

    /* renamed from: E */
    public final Group f13742E;

    /* renamed from: F */
    public Table f13743F;

    /* renamed from: G */
    public Label f13744G;

    /* renamed from: H */
    public Label f13745H;

    /* renamed from: I */
    public Image f13746I;

    /* renamed from: J */
    public Label f13747J;

    /* renamed from: K */
    public float f13748K;

    /* renamed from: L */
    public float f13749L;

    /* renamed from: M */
    public float f13750M;

    /* renamed from: N */
    public int f13751N;

    /* renamed from: O */
    public boolean f13752O;

    /* renamed from: P */
    public boolean f13753P;

    /* renamed from: Q */
    public boolean f13754Q;

    /* renamed from: T */
    public boolean f13757T;

    /* renamed from: V */
    public boolean f13759V;

    /* renamed from: Y */
    public Group f13762Y;

    /* renamed from: Z */
    public InputProcessor f13763Z;

    /* renamed from: a */
    public final SideMenu f13764a;

    /* renamed from: a0 */
    public Group f13765a0;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13766b;

    /* renamed from: b0 */
    public final GameSystemProvider f13767b0;

    /* renamed from: d */
    public final Label f13769d;

    /* renamed from: k */
    public final Label f13773k;

    /* renamed from: p */
    public final Label f13774p;

    /* renamed from: q */
    public final Label f13775q;

    /* renamed from: r */
    public final Label f13776r;

    /* renamed from: s */
    public final Label f13777s;

    /* renamed from: t */
    public final Table f13778t;

    /* renamed from: u */
    public final Label f13779u;

    /* renamed from: v */
    public final ExpLine f13780v;

    /* renamed from: w */
    public final Label f13781w;

    /* renamed from: z */
    public final UpgradeSubmenu f13784z;

    /* renamed from: x */
    public final CharacteristicCell[] f13782x = new CharacteristicCell[8];

    /* renamed from: y */
    public final TowerAbilityButton[] f13783y = new TowerAbilityButton[6];

    /* renamed from: R */
    public int f13755R = -1;

    /* renamed from: S */
    public float f13756S = 0.0f;

    /* renamed from: U */
    public int f13758U = -1;

    /* renamed from: W */
    public boolean f13760W = false;

    /* renamed from: X */
    public ObjectMap<String, Object> f13761X = new ObjectMap<>();

    /* renamed from: c0 */
    public final _SideMenuListener f13768c0 = new _SideMenuListener();

    /* renamed from: d0 */
    public final _Game_StateSystemListener f13770d0 = new _Game_StateSystemListener();

    /* renamed from: e0 */
    public final _MapSystemListener f13771e0 = new _MapSystemListener();

    /* renamed from: f0 */
    public final _TowerSystemListener f13772f0 = new _TowerSystemListener();

    /* renamed from: com.prineside.tdi2.ui.components.TowerMenu$CharacteristicCell */
    /* loaded from: classes2.dex */
    public class CharacteristicCell extends Group {

        /* renamed from: M */
        public final Image f13802M;

        /* renamed from: N */
        public final Image f13803N;

        /* renamed from: O */
        public final Image f13804O;

        /* renamed from: P */
        public final Label f13805P;

        /* renamed from: Q */
        public final Label f13806Q;

        /* renamed from: R */
        public final Label f13807R;

        /* renamed from: S */
        public final Label f13808S;

        /* renamed from: T */
        public TowerStatType f13809T;

        /* renamed from: U */
        public float f13810U;

        /* renamed from: V */
        public boolean f13811V;

        /* renamed from: W */
        public float f13812W;

        /* renamed from: X */
        public final GlyphLayout f13813X;

        /* renamed from: Y */
        public final ClickListener f13814Y = new ClickListener() { // from class: com.prineside.tdi2.ui.components.TowerMenu.CharacteristicCell.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.enter(inputEvent, f, f2, i, actor);
                if (!isOver() || CharacteristicCell.this.f13809T == null) {
                    return;
                }
                TowerMenu.this.f13764a.showSideTooltip(Game.f8589i.towerStatManager.getInstance(CharacteristicCell.this.f13809T).getName(), CharacteristicCell.this.getY() + (CharacteristicCell.this.getHeight() * 0.5f));
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.exit(inputEvent, f, f2, i, actor);
                TowerMenu.this.f13764a.hideSideTooltip();
            }
        };

        /* renamed from: q */
        public void m20318q() {
            this.f13811V = false;
            this.f13803N.clearActions();
            this.f13803N.addAction(Actions.sequence(Actions.alpha(0.0f, 0.3f), Actions.hide()));
            this.f13806Q.setY(0.0f);
            this.f13807R.setVisible(true);
            this.f13808S.setVisible(false);
        }

        public CharacteristicCell() {
            setSize(258.0f, 64.0f);
            setTransform(false);
            setTouchable(Touchable.enabled);
            Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setSize(258.0f, 64.0f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("tower-menu-stat-line"));
            this.f13802M = image2;
            image2.setHeight(64.0f);
            addActor(image2);
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("tower-menu-stat-line"));
            this.f13803N = image3;
            image3.setHeight(64.0f);
            image3.setVisible(false);
            Color color = Color.WHITE;
            image3.setColor(color);
            addActor(image3);
            Image image4 = new Image();
            this.f13804O = image4;
            image4.setSize(48.0f, 48.0f);
            image4.setPosition(8.0f, 8.0f);
            addActor(image4);
            this.f13813X = new GlyphLayout(Game.f8589i.assetManager.getFont(21), "", color, 120.0f, 8, true);
            Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
            this.f13805P = label;
            label.setPosition(64.0f, 0.0f);
            label.setSize(120.0f, 64.0f);
            label.setWrap(true);
            addActor(label);
            Label label2 = new Label("1.23", Game.f8589i.assetManager.getLabelStyle(24));
            this.f13806Q = label2;
            label2.setPosition(194.0f, 0.0f);
            label2.setSize(48.0f, 64.0f);
            label2.setAlignment(16);
            addActor(label2);
            Label label3 = new Label("tiles/s", Game.f8589i.assetManager.getLabelStyle(18));
            this.f13807R = label3;
            label3.setPosition(194.0f, 3.0f);
            label3.setSize(48.0f, 16.0f);
            label3.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            label3.setAlignment(16);
            addActor(label3);
            Label label4 = new Label("+1.12", Game.f8589i.assetManager.getLabelStyle(21));
            this.f13808S = label4;
            label4.setPosition(194.0f, 32.0f);
            label4.setSize(48.0f, 32.0f);
            label4.setAlignment(16);
            label4.setVisible(false);
            addActor(label4);
        }

        /* renamed from: r */
        public void m20317r(TowerType towerType, TowerStatType towerStatType, float f) {
            this.f13809T = towerStatType;
            this.f13810U = f;
            TowerStatManager.TowerStat towerStatManager = Game.f8589i.towerStatManager.getInstance(towerStatType);
            this.f13804O.setDrawable(Game.f8589i.assetManager.getDrawable(towerStatManager.getIconDrawableAlias()));
            String name = towerStatManager.getName();
            this.f13813X.setText(Game.f8589i.assetManager.getFont(21), name, Color.WHITE, 120.0f, 8, true);
            clearListeners();
            if (this.f13813X.height > 60.0f) {
                TowerMenu.f13736i0.setLength(0);
                TowerMenu.f13736i0.append(name).append("...");
                while (this.f13813X.height > 60.0f) {
                    TowerMenu.f13736i0.setLength(TowerMenu.f13736i0.length - 5);
                    TowerMenu.f13736i0.append("...");
                    this.f13813X.setText(Game.f8589i.assetManager.getFont(21), TowerMenu.f13736i0, Color.WHITE, 120.0f, 8, true);
                }
                this.f13805P.setText(TowerMenu.f13736i0);
                addListener(this.f13814Y);
            } else {
                this.f13805P.setText(name);
            }
            this.f13806Q.setText(StringFormatter.compactNumber(f, true));
            String str = towerStatManager.unitsAlias;
            if (str != null) {
                this.f13807R.setText(Game.f8589i.localeManager.i18n.get(str));
                this.f13807R.setVisible(true);
            } else {
                this.f13807R.setText("");
            }
            if (!Game.f8589i.towerManager.getStatConfig(towerType, towerStatType).unique) {
                this.f13804O.setColor(Color.WHITE);
                this.f13805P.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            } else {
                Image image = this.f13804O;
                Color color = MaterialColor.AMBER.P600;
                image.setColor(color);
                this.f13805P.setColor(color);
            }
            this.f13806Q.setColor(Color.WHITE);
            this.f13802M.setColor(towerStatManager.getColor());
            float f2 = 258.0f;
            float statBarCoeff = Game.f8589i.towerManager.getStatBarCoeff(towerStatType, f, TowerMenu.this.f13767b0.tower.getMaxPossibleStat(towerStatType)) * 258.0f;
            if (statBarCoeff <= 258.0f) {
                f2 = statBarCoeff;
            }
            this.f13802M.setWidth(f2);
        }

        /* renamed from: s */
        public void m20316s(float f) {
            float f2 = this.f13810U;
            if (f == f2) {
                m20318q();
                return;
            }
            this.f13811V = true;
            this.f13812W = f;
            float statBarCoeff = Game.f8589i.towerManager.getStatBarCoeff(this.f13809T, f2, TowerMenu.this.f13767b0.tower.getMaxPossibleStat(this.f13809T)) * 258.0f;
            float statBarCoeff2 = (Game.f8589i.towerManager.getStatBarCoeff(this.f13809T, f, TowerMenu.this.f13767b0.tower.getMaxPossibleStat(this.f13809T)) * 258.0f) - statBarCoeff;
            if (statBarCoeff < 258.0f) {
                if (statBarCoeff + statBarCoeff2 > 258.0f) {
                    statBarCoeff2 = 258.0f - statBarCoeff;
                }
                this.f13803N.clearActions();
                this.f13803N.setVisible(true);
                this.f13803N.addAction(Actions.alpha(1.0f, 0.3f));
                this.f13803N.setPosition(statBarCoeff, 0.0f);
                this.f13803N.setWidth(statBarCoeff2);
            } else {
                this.f13803N.clearActions();
                this.f13803N.setVisible(false);
            }
            this.f13806Q.setY(-8.0f);
            this.f13807R.setVisible(false);
            TowerMenu.f13736i0.setLength(0);
            if (this.f13812W > this.f13810U) {
                TowerMenu.f13736i0.append(SignatureVisitor.EXTENDS);
            }
            TowerMenu.f13736i0.append(StringFormatter.compactNumber(this.f13812W - this.f13810U, true));
            this.f13808S.setVisible(true);
            this.f13808S.setText(TowerMenu.f13736i0);
            if (this.f13812W < this.f13810U) {
                this.f13808S.setColor(MaterialColor.RED.P500);
            } else {
                this.f13808S.setColor(MaterialColor.GREEN.P500);
            }
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.TowerMenu$_Game_StateSystemListener */
    /* loaded from: classes2.dex */
    public class _Game_StateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _Game_StateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void moneyChanged(int i, boolean z) {
            TowerMenu.this.m20320v();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.TowerMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void buildingRemovedFromMap(Building building, PlatformTile platformTile) {
            if (platformTile == TowerMenu.this.f13767b0.map.getSelectedTile()) {
                TowerMenu.this.m20325q(false);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Building building;
            Tile selectedTile = TowerMenu.this.f13767b0.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.PLATFORM && (building = ((PlatformTile) selectedTile).building) != null && building.buildingType == BuildingType.TOWER) {
                TowerMenu.this.f13784z.setButtonSelected(false);
                TowerMenu.this.f13752O = true;
                TowerMenu.this.m20325q(true);
                return;
            }
            TowerMenu.this.m20325q(false);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void towerPlacedOnMap(Tower tower) {
            if (tower.getTile() == TowerMenu.this.f13767b0.map.getSelectedTile()) {
                TowerMenu.this.f13752O = true;
                TowerMenu.this.m20325q(true);
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.TowerMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void sideTooltipHidden() {
            TowerMenu.this.f13755R = -1;
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            if (TowerMenu.this.f13764a.isOffscreen()) {
                TowerMenu.this.m20326p(-1);
            }
            TowerMenu.this.f13752O = true;
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.TowerMenu$_TowerSystemListener */
    /* loaded from: classes2.dex */
    public class _TowerSystemListener extends TowerSystem.TowerSystemListener.TowerSystemListenerAdapter {
        public _TowerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void customButtonPressed(Tower tower) {
            TowerMenu.this.f13752O = true;
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerUpgraded(Tower tower, int i) {
            TowerMenu.this.f13752O = true;
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerAbilityChanged(Tower tower, int i, boolean z) {
            if (tower == TowerMenu.this.m20327o()) {
                TowerMenu.this.f13752O = true;
            }
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerAimStrategyChanged(Tower tower) {
            if (tower == TowerMenu.this.m20327o()) {
                TowerMenu.this.m20323s();
            }
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerExperienceChanged(Tower tower, float f) {
            if (tower == TowerMenu.this.m20327o()) {
                TowerMenu.this.f13753P = true;
            }
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerLeveledUp(Tower tower) {
            if (tower == TowerMenu.this.m20327o()) {
                TowerMenu.this.f13752O = true;
            }
        }
    }

    public static void main(String[] strArr) {
        System.out.println(StringFormatter.compactNumber(-0.1234d, true));
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public boolean isVisible() {
        return this.f13766b.isVisible();
    }

    public TowerMenu(SideMenu sideMenu, final GameSystemProvider gameSystemProvider) {
        this.f13767b0 = gameSystemProvider;
        this.f13764a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13766b = createContainer;
        Group group = new Group();
        group.setTransform(false);
        group.setSize(600.0f, 335.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        group.setPosition(0.0f, 745.0f + scaledViewportHeight);
        createContainer.addActor(group);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f13769d = label;
        label.setSize(520.0f, 26.0f);
        label.setPosition(40.0f, 249.0f);
        group.addActor(label);
        Group group2 = new Group();
        this.f13741D = group2;
        group2.setName("tower_menu_experience");
        group2.setTransform(false);
        Rectangle rectangle = f13734g0;
        group2.setPosition(rectangle.f5523x, rectangle.f5524y);
        group2.setSize(rectangle.width, rectangle.height);
        group2.setOrigin(rectangle.width / 2.0f, rectangle.height / 2.0f);
        group.addActor(group2);
        Label label2 = new Label("L10", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13773k = label2;
        label2.setSize(40.0f, 26.0f);
        label2.setPosition(480.0f, 40.0f);
        label2.setAlignment(16);
        group2.addActor(label2);
        ExpLine expLine = new ExpLine();
        this.f13780v = expLine;
        expLine.setPosition(0.0f, 0.0f);
        group2.addActor(expLine);
        Label label3 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13775q = label3;
        label3.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        label3.setSize(159.0f, 24.0f);
        label3.setPosition(10.0f, 0.0f);
        label3.setAlignment(8);
        group2.addActor(label3);
        Label label4 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13774p = label4;
        label4.setColor(color);
        label4.setSize(159.0f, 24.0f);
        label4.setPosition(8.0f, 0.0f);
        label4.setAlignment(8);
        group2.addActor(label4);
        Label label5 = new Label("53 / 90 XP", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13776r = label5;
        label5.setPosition(0.0f, 0.0f);
        label5.setSize(520.0f, 24.0f);
        label5.setAlignment(16);
        group2.addActor(label5);
        Label label6 = new Label("+0 XP/s", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13777s = label6;
        label6.setColor(MaterialColor.AMBER.P800);
        label6.setPosition(0.0f, -26.0f);
        label6.setSize(520.0f, 24.0f);
        label6.setAlignment(16);
        group2.addActor(label6);
        Table table = new Table();
        this.f13743F = table;
        table.setPosition(40.0f, 172.0f);
        this.f13743F.setSize(520.0f, 24.0f);
        group.addActor(this.f13743F);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-mdps"));
        Color color2 = MaterialColor.PURPLE.P300;
        image.setColor(color2);
        this.f13743F.add((Table) image).size(24.0f).padRight(8.0f);
        Label label7 = new Label("0", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13744G = label7;
        label7.setColor(color2);
        this.f13743F.add((Table) this.f13744G).height(24.0f).padRight(16.0f);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-skull-and-bones"));
        Color color3 = MaterialColor.RED.P300;
        image2.setColor(color3);
        this.f13743F.add((Table) image2).size(24.0f).padRight(8.0f);
        Label label8 = new Label("0", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13745H = label8;
        label8.setColor(color3);
        this.f13743F.add((Table) this.f13745H).height(24.0f).padRight(16.0f);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-coin"));
        this.f13746I = image3;
        Color color4 = MaterialColor.AMBER.P300;
        image3.setColor(color4);
        this.f13743F.add((Table) this.f13746I).size(24.0f).padRight(8.0f);
        Label label9 = new Label("0", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13747J = label9;
        label9.setColor(color4);
        this.f13743F.add((Table) this.f13747J).height(24.0f).padRight(16.0f);
        this.f13743F.add().height(1.0f).expandX().fillX();
        Table table2 = new Table();
        this.f13778t = table2;
        table2.setPosition(0.0f, 99.0f);
        table2.setSize(600.0f, 64.0f);
        group.addActor(table2);
        Label label10 = new Label(Game.f8589i.localeManager.i18n.get("no_tile_effects"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13779u = label10;
        label10.setPosition(0.0f, 115.0f);
        label10.setSize(600.0f, 64.0f);
        label10.setAlignment(1);
        group.addActor(label10);
        Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), new Color(1.0f, 1.0f, 1.0f, 0.28f));
        Label label11 = new Label(Game.f8589i.localeManager.i18n.get("characteristics").toUpperCase(), labelStyle);
        label11.setSize(150.0f, 15.0f);
        label11.setPosition(40.0f, 806.0f + scaledViewportHeight);
        createContainer.addActor(label11);
        Table table3 = new Table();
        table3.setSize(150.0f, 30.0f);
        table3.setPosition(410.0f, 800.0f + scaledViewportHeight);
        createContainer.addActor(table3);
        Table table4 = new Table();
        table3.add(table4).expand().bottom().right();
        Label label12 = new Label("PWR: ", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        label12.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label12.setAlignment(20);
        table4.add((Table) label12).height(30.0f).bottom().right();
        Label label13 = new Label("000", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13781w = label13;
        label13.setColor(MaterialColor.AMBER.P500);
        label13.setAlignment(20);
        table4.add((Table) label13).height(30.0f).bottom().right();
        for (int i = 0; i < 8; i++) {
            this.f13782x[i] = new CharacteristicCell();
            this.f13782x[i].setPosition(((i % 2) * 262.0f) + 40.0f, (725.0f - ((i / 2) * 68.0f)) + scaledViewportHeight);
            this.f13766b.addActor(this.f13782x[i]);
        }
        Group group3 = new Group();
        this.f13762Y = group3;
        group3.setTransform(false);
        this.f13762Y.setSize(600.0f, 132.0f);
        this.f13762Y.setPosition(0.0f, 521.0f);
        this.f13762Y.setTouchable(Touchable.childrenOnly);
        this.f13766b.addActor(this.f13762Y);
        Group group4 = new Group();
        this.f13742E = group4;
        group4.setTransform(false);
        Rectangle rectangle2 = f13735h0;
        group4.setPosition(rectangle2.f5523x, rectangle2.f5524y);
        group4.setSize(rectangle2.width, rectangle2.height);
        group4.setOrigin(rectangle2.width / 2.0f, rectangle2.height / 2.0f);
        group4.setName("tower_menu_abilities");
        this.f13766b.addActor(group4);
        Label label14 = new Label(Game.f8589i.localeManager.i18n.get("abilities").toUpperCase(), labelStyle);
        label14.setSize(150.0f, 15.0f);
        if (HotKeyHintLabel.isEnabled()) {
            label14.setPosition(0.0f, 150.0f);
        } else {
            label14.setPosition(0.0f, 136.0f);
        }
        group4.addActor(label14);
        for (final int i2 = 0; i2 < 6; i2++) {
            this.f13783y[i2] = new TowerAbilityButton(i2);
            this.f13783y[i2].setPosition(i2 * 88.0f, 38.0f);
            this.f13742E.addActor(this.f13783y[i2]);
            this.f13783y[i2].addListener(new TowerAbilityButton.AbilityButtonListener() { // from class: com.prineside.tdi2.ui.components.TowerMenu.1
                @Override // com.prineside.tdi2.p036ui.components.TowerAbilityButton.AbilityButtonListener
                public void abilityConfirmed() {
                    if (TowerMenu.this.m20327o() != null) {
                        gameSystemProvider.tower.selectTowerAbilityAction(TowerMenu.this.m20327o(), i2);
                        TowerMenu.this.m20326p(-1);
                    }
                }

                @Override // com.prineside.tdi2.p036ui.components.TowerAbilityButton.AbilityButtonListener
                public void globalAbilityConfirmed() {
                    if (TowerMenu.this.m20327o() != null) {
                        gameSystemProvider.tower.selectGlobalTowerAbilityAction(TowerMenu.this.m20327o(), i2);
                        TowerMenu.this.m20326p(-1);
                    }
                }
            });
            this.f13783y[i2].addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.TowerMenu.2
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                public void enter(InputEvent inputEvent, float f, float f2, int i3, Actor actor) {
                    if (i3 == -1) {
                        TowerMenu.this.m20326p(i2);
                    }
                    super.enter(inputEvent, f, f2, i3, actor);
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
                public void exit(InputEvent inputEvent, float f, float f2, int i3, Actor actor) {
                    if (i3 == -1) {
                        TowerMenu.this.m20326p(-1);
                    }
                    super.exit(inputEvent, f, f2, i3, actor);
                }

                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    TowerMenu.this.f13784z.setButtonSelected(false);
                    TowerMenu.this.m20326p(i2);
                }
            });
            if (HotKeyHintLabel.isEnabled()) {
                SettingsManager.HotkeyAction hotkeyAction = SettingsManager.HotkeyAction.TOWER_ABILITY_1;
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                if (i2 != 4) {
                                    if (i2 == 5) {
                                        hotkeyAction = SettingsManager.HotkeyAction.TOWER_ABILITY_6;
                                    }
                                } else {
                                    hotkeyAction = SettingsManager.HotkeyAction.TOWER_ABILITY_5;
                                }
                            } else {
                                hotkeyAction = SettingsManager.HotkeyAction.TOWER_ABILITY_4;
                            }
                        } else {
                            hotkeyAction = SettingsManager.HotkeyAction.TOWER_ABILITY_3;
                        }
                    } else {
                        hotkeyAction = SettingsManager.HotkeyAction.TOWER_ABILITY_2;
                    }
                }
                this.f13783y[i2].addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(hotkeyAction), 40.0f, 90.0f));
            }
        }
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image4.setSize(256.0f, 4.0f);
        image4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        image4.setPosition(0.0f, 26.0f);
        this.f13742E.addActor(image4);
        Label label15 = new Label("L4  /  L7", Game.f8589i.assetManager.getLabelStyle(24));
        label15.setSize(256.0f, 17.0f);
        label15.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label15.setAlignment(1);
        this.f13742E.addActor(label15);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image5.setSize(80.0f, 4.0f);
        image5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        image5.setPosition(264.0f, 26.0f);
        this.f13742E.addActor(image5);
        Label label16 = new Label("L10", Game.f8589i.assetManager.getLabelStyle(24));
        label16.setSize(80.0f, 17.0f);
        label16.setPosition(264.0f, 0.0f);
        label16.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label16.setAlignment(1);
        this.f13742E.addActor(label16);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image6.setSize(168.0f, 4.0f);
        image6.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        image6.setPosition(352.0f, 26.0f);
        this.f13742E.addActor(image6);
        Label label17 = new Label("L20", Game.f8589i.assetManager.getLabelStyle(24));
        label17.setSize(168.0f, 17.0f);
        label17.setPosition(352.0f, 0.0f);
        label17.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label17.setAlignment(1);
        this.f13742E.addActor(label17);
        Group group5 = new Group();
        group5.setName("tower_menu_upgrade");
        group5.setTransform(false);
        group5.setSize(600.0f, 300.0f);
        this.f13766b.addActor(group5);
        Label label18 = new Label(Game.f8589i.localeManager.i18n.get("upgrade_level").toUpperCase(), labelStyle);
        label18.setSize(150.0f, 15.0f);
        label18.setPosition(40.0f, 267.0f);
        group5.addActor(label18);
        UpgradeSubmenu upgradeSubmenu = new UpgradeSubmenu();
        this.f13784z = upgradeSubmenu;
        upgradeSubmenu.addListener(new UpgradeSubmenu.UpgradeSubmenuListener() { // from class: com.prineside.tdi2.ui.components.TowerMenu.3
            @Override // com.prineside.tdi2.p036ui.components.UpgradeSubmenu.UpgradeSubmenuListener
            public void globalUpgradeButtonConfirmed() {
                final Tower m20327o = TowerMenu.this.m20327o();
                if (m20327o != null) {
                    int globalUpgradePrice = gameSystemProvider.tower.getGlobalUpgradePrice(m20327o.type);
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showConfirm(game.assetManager.replaceRegionAliasesWithChars(Game.f8589i.localeManager.i18n.get("upgrade_all_towers_by_type_confirm") + " <@game-ui-coin-icon>[#FDD835]" + ((Object) StringFormatter.commaSeparatedNumber(globalUpgradePrice)) + "[]"), new Runnable() { // from class: com.prineside.tdi2.ui.components.TowerMenu.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            gameSystemProvider.tower.globalUpgradeTowerAction(m20327o.type);
                            TowerMenu.this.f13752O = true;
                        }
                    });
                }
            }

            @Override // com.prineside.tdi2.p036ui.components.UpgradeSubmenu.UpgradeSubmenuListener
            public void upgradeButtonConfirmed() {
                Tower m20327o = TowerMenu.this.m20327o();
                if (m20327o != null) {
                    gameSystemProvider.tower.upgradeTowerAction(m20327o);
                    TowerMenu.this.m20326p(-1);
                }
            }

            @Override // com.prineside.tdi2.p036ui.components.UpgradeSubmenu.UpgradeSubmenuListener
            public void upgradeButtonStateChanged(boolean z) {
                TowerMenu.this.m20326p(-1);
                TowerMenu.this.f13752O = true;
            }
        });
        upgradeSubmenu.setPosition(0.0f, 132.0f);
        upgradeSubmenu.upgradeButton.setName("tower_menu_upgrade_button");
        group5.addActor(upgradeSubmenu);
        AimStrategySelector aimStrategySelector = new AimStrategySelector();
        this.f13738A = aimStrategySelector;
        aimStrategySelector.setName("tower_menu_aim_strategy");
        aimStrategySelector.setPosition(40.0f, 40.0f);
        aimStrategySelector.addListener(new AimStrategySelector.AimStrategySelectorListener() { // from class: com.prineside.tdi2.ui.components.TowerMenu.4
            @Override // com.prineside.tdi2.p036ui.actors.AimStrategySelector.AimStrategySelectorListener
            public void strategyChanged(Tower.AimStrategy aimStrategy) {
                Tower m20327o = TowerMenu.this.m20327o();
                if (m20327o != null) {
                    gameSystemProvider.tower.setTowerAimStrategyAction(m20327o, aimStrategy);
                    gameSystemProvider._graphics.tooltip.show(Game.f8589i.towerManager.getAimStrategyName(aimStrategy));
                }
            }
        });
        this.f13766b.addActor(aimStrategySelector);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.TowerMenu.5
            @Override // java.lang.Runnable
            public void run() {
                if (TowerMenu.this.f13759V) {
                    TowerMenu.this.cancelUsingCustomButton();
                    return;
                }
                Tower m20327o = TowerMenu.this.m20327o();
                if (m20327o != null && m20327o.hasCustomButton()) {
                    if (m20327o.isCustomButtonNeedMapPoint()) {
                        TowerMenu.this.startUsingCustomButton();
                    } else {
                        gameSystemProvider.tower.customTowerButtonAction(m20327o, 0, 0);
                    }
                }
            }
        });
        this.f13739B = complexButton;
        complexButton.setLabel(80.0f, 20.0f, 200.0f, 40.0f, 8);
        complexButton.label.setWrap(true);
        complexButton.icon.setSize(40.0f, 40.0f);
        complexButton.icon.setPosition(20.0f, 20.0f);
        complexButton.setPosition(40.0f, 40.0f);
        complexButton.setSize(309.0f, 80.0f);
        complexButton.setBackground(new QuadDrawable(new QuadActor(Color.WHITE, new float[]{0.0f, 0.0f, 0.0f, 80.0f, 309.0f, 80.0f, 283.0f, 0.0f})), 0.0f, 0.0f, 309.0f, 80.0f);
        this.f13766b.addActor(complexButton);
        SellButton sellButton = new SellButton(new Runnable() { // from class: com.prineside.tdi2.ui.components.TowerMenu.6
            @Override // java.lang.Runnable
            public void run() {
                Tower m20327o = TowerMenu.this.m20327o();
                if (m20327o != null) {
                    if (m20327o.isOutOfOrder()) {
                        Game game = Game.f8589i;
                        game.uiManager.notifications.add(game.localeManager.i18n.get("not_possible_at_the_moment"), null, null, StaticSoundType.FAIL);
                        return;
                    }
                    gameSystemProvider.tower.sellTowerAction(m20327o);
                }
            }
        });
        this.f13740C = sellButton;
        sellButton.setName("tower_menu_sell_button");
        sellButton.setPosition(368.0f, 40.0f);
        this.f13766b.addActor(sellButton);
        sideMenu.addListener(this.f13768c0);
        gameSystemProvider.gameState.listeners.add(this.f13770d0);
        gameSystemProvider.map.listeners.add(this.f13771e0);
        gameSystemProvider.tower.listeners.add(this.f13772f0);
        this.f13766b.hide();
        this.f13763Z = new InputAdapter() { // from class: com.prineside.tdi2.ui.components.TowerMenu.7
            @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
            public boolean touchUp(int i3, int i4, int i5, int i6) {
                if (gameSystemProvider._input == null) {
                    return false;
                }
                if (TowerMenu.this.m20327o() != null && TowerMenu.this.f13759V) {
                    TowerMenu.f13737j0.set(i3, i4);
                    gameSystemProvider._input.getCameraController().screenToMap(TowerMenu.f13737j0);
                    if (TowerMenu.this.f13759V) {
                        gameSystemProvider.tower.customTowerButtonAction(TowerMenu.this.m20327o(), (int) TowerMenu.f13737j0.f5527x, (int) TowerMenu.f13737j0.f5528y);
                    }
                }
                TowerMenu.this.cancelUsingCustomButton();
                return false;
            }
        };
    }

    public void cancelUsingCustomButton() {
        this.f13767b0._input.enableAllInput();
        this.f13759V = false;
        m20323s();
    }

    public void hideTowerAbilities() {
        this.f13742E.clearActions();
        this.f13742E.setVisible(false);
    }

    public void hideTowerExperience() {
        this.f13741D.clearActions();
        this.f13741D.setVisible(false);
    }

    /* renamed from: o */
    public final Tower m20327o() {
        Building building;
        Tile selectedTile = this.f13767b0.map.getSelectedTile();
        if (selectedTile == null || selectedTile.type != TileType.PLATFORM || (building = ((PlatformTile) selectedTile).building) == null || building.buildingType != BuildingType.TOWER) {
            return null;
        }
        return (Tower) building;
    }

    /* renamed from: p */
    public final void m20326p(int i) {
        if (this.f13755R != i) {
            this.f13755R = i;
            this.f13752O = true;
        }
    }

    /* renamed from: q */
    public final void m20325q(boolean z) {
        if (this.f13757T != z) {
            this.f13757T = z;
            boolean z2 = false;
            if (z) {
                this.f13766b.show();
                this.f13752O = true;
                this.f13743F.setVisible((this.f13767b0.gameValue.getSnapshot().getBooleanValue(GameValueType.EXTENDED_STATISTICS) || this.f13767b0.gameState.dailyQuestLevel != null) ? true : true);
                return;
            }
            this.f13766b.hide();
            this.f13784z.setButtonSelected(false);
            this.f13764a.hideSideTooltip();
            m20326p(-1);
            this.f13767b0.map.hideTowerRangeHint();
            this.f13761X.clear();
            if (this.f13759V) {
                cancelUsingCustomButton();
            }
        }
    }

    /* renamed from: r */
    public final void m20324r() {
        boolean z;
        float f;
        float f2;
        CharacteristicCell[] characteristicCellArr;
        this.f13761X.clear();
        this.f13762Y.clearChildren();
        Tower m20327o = m20327o();
        if (m20327o != null) {
            this.f13766b.setLabelOverTitleTilePos(this.f13767b0.map.getSelectedTile());
            Tower.Factory<? extends Tower> factory = Game.f8589i.towerManager.getFactory(m20327o.type);
            PlatformTile tile = m20327o.getTile();
            TowerStatType[] statTypes = Game.f8589i.towerManager.getStatTypes(m20327o.type);
            float range = m20327o.getRange();
            float minRange = m20327o.getMinRange();
            float powerCombinedMultiplier = m20327o.getPowerCombinedMultiplier();
            float[] fArr = new float[statTypes.length];
            int length = statTypes.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                fArr[i2] = m20327o.getStatBuffed(statTypes[i]);
                i++;
                i2++;
            }
            this.f13769d.setText(StringFormatter.toUpperCase(factory.getTitle()));
            m20322t();
            this.f13778t.clearChildren();
            if (tile.bonusType != null && tile.bonusLevel > 0) {
                EffectTooltip effectTooltip = new EffectTooltip(Game.f8589i.assetManager.getDrawable(SpaceTileBonus.getIconName(tile.bonusType)), SpaceTileBonus.getDetailedName(tile.bonusType, tile.bonusLevel));
                effectTooltip.setHint(Game.f8589i.localeManager.i18n.get("tile_effect"));
                effectTooltip.setColor(SpaceTileBonus.getBrightColor(tile.bonusType));
                this.f13778t.add(effectTooltip);
                this.f13779u.setVisible(false);
            } else {
                this.f13779u.setVisible(true);
            }
            int i3 = 0;
            for (TowerStatType towerStatType : statTypes) {
                this.f13782x[i3].m20317r(m20327o.type, towerStatType, m20327o.getCachedStatBuffed(towerStatType));
                this.f13782x[i3].setVisible(true);
                i3++;
            }
            for (int length2 = statTypes.length; length2 < 8; length2++) {
                this.f13782x[length2].setVisible(false);
            }
            int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
            Group group = this.f13765a0;
            if (group != null) {
                group.remove();
                this.f13765a0 = null;
            }
            float f3 = 100.0f;
            if (scaledViewportHeight > 100) {
                Group group2 = new Group();
                this.f13765a0 = group2;
                group2.setTransform(false);
                this.f13765a0.setPosition(0.0f, (((725.0f - (((i3 + 1) / 2) * 68.0f)) + scaledViewportHeight) - 32.0f) - 20.0f);
                this.f13765a0.setSize(600.0f, 100.0f);
                this.f13766b.addActor(this.f13765a0);
                Table table = new Table();
                table.setSize(600.0f, 100.0f);
                this.f13765a0.addActor(table);
                EnemyType[] enemyTypeArr = EnemyType.mainEnemyTypes;
                int length3 = enemyTypeArr.length;
                int i4 = 0;
                while (i4 < length3) {
                    EnemyType enemyType = enemyTypeArr[i4];
                    Group group3 = new Group();
                    group3.setTransform(false);
                    float f4 = range;
                    table.add((Table) group3).size(42.0f, f3);
                    Image image = new Image(Game.f8589i.enemyManager.getFactory(enemyType).getTexture());
                    image.setPosition(5.0f, 47.0f);
                    image.setSize(32.0f, 32.0f);
                    group3.addActor(image);
                    int round = MathUtils.round(this.f13767b0.tower.towerEnemyDamageMultiplier[enemyType.ordinal()][m20327o.type.ordinal()] * 100.0f);
                    StringBuilder stringBuilder = f13736i0;
                    stringBuilder.setLength(0);
                    stringBuilder.append(round);
                    float f5 = minRange;
                    Label label = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(18));
                    label.setAlignment(1);
                    label.setSize(42.0f, 24.0f);
                    label.setPosition(0.0f, 12.0f);
                    group3.addActor(label);
                    if (round <= 0) {
                        label.setColor(MaterialColor.RED.P500);
                    } else if (round < 100) {
                        label.setColor(MaterialColor.ORANGE.P600);
                    } else if (round > 100) {
                        label.setColor(MaterialColor.GREEN.P500);
                    } else {
                        label.setColor(MaterialColor.YELLOW.P500);
                    }
                    i4++;
                    range = f4;
                    minRange = f5;
                    f3 = 100.0f;
                }
            }
            float f6 = range;
            float f7 = minRange;
            Tower.AbilityConfig[] abilityConfigs = factory.getAbilityConfigs(this.f13767b0, m20327o);
            for (int i5 = 0; i5 < 6; i5++) {
                TowerAbilityButton towerAbilityButton = this.f13783y[i5];
                towerAbilityButton.m20353F(m20327o.isAbilityInstalled(i5));
                towerAbilityButton.m20354E(factory.getShadowTextures(), factory.getBaseTextures(), factory.getAbilityTextures(i5));
                if (i5 != 3) {
                    towerAbilityButton.setEnabled(m20327o.canAbilityBeInstalled(i5));
                } else {
                    towerAbilityButton.setEnabled(false);
                }
            }
            for (int i6 = 0; i6 < 6; i6++) {
                this.f13783y[i6].setSelected(false);
            }
            if (this.f13755R != -1) {
                StringBuilder stringBuilder2 = f13736i0;
                stringBuilder2.setLength(0);
                stringBuilder2.append("[#FFC107]").append(abilityConfigs[this.f13755R].getName()).append("[]\n");
                stringBuilder2.append(abilityConfigs[this.f13755R].getDescription());
                if (this.f13755R == 3) {
                    stringBuilder2.append("\n").append("[#FFC107]").append(Game.f8589i.localeManager.i18n.format("unlocks_at_lvl", 10)).append("[]");
                }
                this.f13764a.showSideTooltip(stringBuilder2, this.f13742E.getY() + this.f13783y[this.f13755R].getY() + (this.f13783y[this.f13755R].getHeight() * 0.5f));
                z = true;
                this.f13783y[this.f13755R].setSelected(true);
            } else {
                z = true;
                this.f13764a.hideSideTooltip();
            }
            int i7 = this.f13755R;
            if (i7 != -1 && !m20327o.isAbilityInstalled(i7)) {
                m20327o.installedAbilities[this.f13755R] = z;
                m20327o.updateCache();
                f = m20327o.getRange();
                f2 = m20327o.getMinRange();
                powerCombinedMultiplier = m20327o.getPowerCombinedMultiplier();
                int length4 = statTypes.length;
                int i8 = 0;
                int i9 = 0;
                while (i8 < length4) {
                    fArr[i9] = m20327o.getStatBuffed(statTypes[i8]);
                    i8++;
                    i9++;
                }
                m20327o.installedAbilities[this.f13755R] = false;
                m20327o.updateCache();
            } else {
                f = f6;
                f2 = f7;
            }
            int maxUpgradeLevel = m20327o.getMaxUpgradeLevel();
            this.f13784z.m20304B(m20327o.getUpgradeLevel(), maxUpgradeLevel);
            if (m20327o.getUpgradeLevel() < maxUpgradeLevel) {
                this.f13784z.m20303C(this.f13767b0.tower.getUpgradePrice(m20327o));
            } else {
                this.f13784z.m20303C(-1);
            }
            if (this.f13784z.isButtonSelected()) {
                int upgradeLevel = m20327o.getUpgradeLevel();
                m20327o.upgrade(upgradeLevel + 1);
                f = m20327o.getRange();
                f2 = m20327o.getMinRange();
                powerCombinedMultiplier = m20327o.getPowerCombinedMultiplier();
                int length5 = statTypes.length;
                int i10 = 0;
                int i11 = 0;
                while (i10 < length5) {
                    fArr[i11] = m20327o.getStatBuffed(statTypes[i10]);
                    i10++;
                    i11++;
                }
                m20327o.upgrade(upgradeLevel);
            } else {
                for (CharacteristicCell characteristicCell : this.f13782x) {
                    characteristicCell.m20318q();
                }
            }
            m20320v();
            if (m20327o.getPowerCombinedMultiplier() != powerCombinedMultiplier) {
                StringBuilder stringBuilder3 = f13736i0;
                stringBuilder3.setLength(0);
                stringBuilder3.append("+").append(StringFormatter.compactNumber((m20327o.getPowerCombinedMultiplier() - 1.0f) * 100.0f, 1, false)).append("[#4CAF50] +").append(StringFormatter.compactNumber((powerCombinedMultiplier - m20327o.getPowerCombinedMultiplier()) * 100.0f, 1, false)).append("[]%");
                this.f13781w.setText(stringBuilder3);
            } else {
                StringBuilder stringBuilder4 = f13736i0;
                stringBuilder4.setLength(0);
                stringBuilder4.append("+").append(StringFormatter.compactNumber((m20327o.getPowerCombinedMultiplier() - 1.0f) * 100.0f, 1, false)).append("%");
                this.f13781w.setText(stringBuilder4);
            }
            int i12 = 0;
            for (TowerStatType towerStatType2 : statTypes) {
                for (CharacteristicCell characteristicCell2 : this.f13782x) {
                    if (characteristicCell2.f13809T == towerStatType2) {
                        if (fArr[i12] != m20327o.getStatBuffed(towerStatType2)) {
                            characteristicCell2.m20316s(fArr[i12]);
                        } else {
                            characteristicCell2.m20318q();
                        }
                    }
                }
                i12++;
            }
            if (f == m20327o.getRange() && f2 == m20327o.getMinRange()) {
                this.f13767b0.map.hideTowerRangeHint();
            } else {
                this.f13767b0.map.showTowerRangeHint(m20327o.getTile().center.f5527x, m20327o.getTile().center.f5528y, f2 * 128.0f, f * 128.0f);
            }
            m20323s();
            if (m20327o.isSellFullRefundStillActive()) {
                this.f13740C.setColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700);
            } else {
                this.f13740C.setColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700);
            }
            this.f13740C.setPrice(m20327o.getSellPrice());
            this.f13751N = m20327o.getSellPrice();
            m20321u();
        }
        this.f13752O = false;
    }

    public void showTowerAbilities(boolean z, Runnable runnable) {
        this.f13742E.clearActions();
        this.f13742E.setVisible(true);
        this.f13742E.setTransform(false);
        if (z) {
            this.f13767b0._graphics.uiElementsEmphasizer.show(this.f13742E, f13735h0, Game.f8589i.localeManager.i18n.get("tower_menu_ui_abilities_title"), Game.f8589i.localeManager.i18n.get("tower_menu_ui_abilities_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void showTowerExperience(boolean z, Runnable runnable) {
        this.f13741D.clearActions();
        this.f13741D.setVisible(true);
        this.f13741D.setTransform(false);
        if (z) {
            this.f13767b0._graphics.uiElementsEmphasizer.show(this.f13741D, f13734g0, Game.f8589i.localeManager.i18n.get("tower_menu_ui_experience_title"), Game.f8589i.localeManager.i18n.get("tower_menu_ui_experience_description"), runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void startUsingCustomButton() {
        if (this.f13759V) {
            Logger.error("TowerMenu", "been using custom button, canceling");
            cancelUsingCustomButton();
        }
        this.f13759V = true;
        this.f13767b0._input.setCustomMapInputProcessor(this.f13763Z);
        m20323s();
    }

    /* renamed from: u */
    public final void m20321u() {
        Tower m20327o;
        if (this.f13743F.isVisible() && (m20327o = m20327o()) != null) {
            float f = this.f13748K;
            float f2 = m20327o.mdps;
            if (f != f2 || this.f13749L != m20327o.enemiesKilled || this.f13750M != ((int) m20327o.bonusCoinsBrought)) {
                this.f13748K = f2;
                this.f13749L = m20327o.enemiesKilled;
                this.f13750M = (int) m20327o.bonusCoinsBrought;
                this.f13744G.setText(StringFormatter.compactNumber(f2, false));
                if (this.f13750M == 0.0f) {
                    this.f13747J.setVisible(false);
                    this.f13746I.setVisible(false);
                } else {
                    StringBuilder stringBuilder = f13736i0;
                    stringBuilder.setLength(0);
                    float f3 = m20327o.bonusCoinsBrought;
                    if (f3 > 0.0f) {
                        stringBuilder.append(SignatureVisitor.EXTENDS).append(StringFormatter.compactNumber((int) m20327o.bonusCoinsBrought, false));
                    } else {
                        stringBuilder.append(StringFormatter.compactNumber((int) f3, false));
                    }
                    this.f13747J.setText(stringBuilder);
                    this.f13747J.setVisible(true);
                    this.f13746I.setVisible(true);
                }
                this.f13745H.setText(StringFormatter.compactNumber(m20327o.enemiesKilled, false));
            }
        }
        this.f13754Q = false;
    }

    public void draw(float f) {
        if (!isVisible()) {
            return;
        }
        Tower m20327o = m20327o();
        if (m20327o != null) {
            if (this.f13751N != m20327o.getSellPrice()) {
                this.f13752O = true;
                if (Game.f8589i.uiManager.dialog.isVisible() && Game.f8589i.uiManager.dialog.getLastConfirmId().equals("sellButton")) {
                    Game.f8589i.uiManager.dialog.hide();
                }
            }
            float f2 = this.f13756S + f;
            this.f13756S = f2;
            if (f2 > 0.5f) {
                this.f13756S = 0.0f;
                this.f13754Q = true;
            }
            int statCacheState = m20327o.getStatCacheState();
            if (this.f13758U != statCacheState) {
                this.f13752O = true;
                this.f13758U = statCacheState;
            }
        }
        if (this.f13752O) {
            m20324r();
        }
        if (this.f13760W != this.f13767b0.gameState.isDoubleSpeedActive()) {
            this.f13760W = !this.f13760W;
            this.f13753P = true;
        }
        if (this.f13753P) {
            m20322t();
        }
        if (this.f13754Q) {
            m20321u();
        }
        if (m20327o != null) {
            m20327o.fillTowerMenu(this.f13762Y, this.f13761X);
        }
    }

    /* renamed from: s */
    public final void m20323s() {
        Tower m20327o = m20327o();
        this.f13739B.setVisible(false);
        if (m20327o != null) {
            if (!m20327o.canAim()) {
                this.f13738A.setVisible(false);
                if (m20327o.hasCustomButton()) {
                    this.f13739B.setVisible(true);
                    m20327o.updateCustomButton(this.f13739B, this.f13759V);
                    return;
                }
                return;
            }
            this.f13738A.setVisible(true);
            this.f13738A.setStrategy(m20327o.aimStrategy, true, false);
        }
    }

    /* renamed from: t */
    public final void m20322t() {
        Tower m20327o = m20327o();
        if (m20327o != null) {
            StringBuilder stringBuilder = f13736i0;
            stringBuilder.setLength(0);
            stringBuilder.append('L').append(m20327o.getLevel());
            this.f13773k.setText(stringBuilder);
            float f = m20327o.nextLevelExperience;
            if (f == 0.0f) {
                this.f13780v.setCoeff(1.0f);
            } else {
                this.f13780v.setCoeff(m20327o.currentLevelExperience / f);
            }
            stringBuilder.setLength(0);
            if (m20327o.nextLevelExperience != 0.0f) {
                stringBuilder.append((int) m20327o.currentLevelExperience).append(" / ").append((int) m20327o.nextLevelExperience).append(" XP");
                this.f13776r.setText(stringBuilder);
                this.f13774p.setVisible(false);
                this.f13775q.setVisible(false);
            } else {
                this.f13776r.setText("MAX XP");
                stringBuilder.setLength(0);
                stringBuilder.append("+");
                long j = ((int) m20327o.experience) - Tower.LEVEL_EXPERIENCE[m20327o.getLevel()];
                if (j > 1000000000) {
                    stringBuilder.append("bazillion");
                } else {
                    stringBuilder.append(StringFormatter.commaSeparatedNumber(j));
                }
                this.f13774p.setText(stringBuilder);
                this.f13775q.setText(stringBuilder);
                this.f13774p.setVisible(true);
                this.f13775q.setVisible(true);
            }
            if (m20327o.experienceGeneration == 0.0f) {
                this.f13777s.setVisible(false);
            } else {
                stringBuilder.setLength(0);
                stringBuilder.append(SignatureVisitor.EXTENDS);
                stringBuilder.append(StringFormatter.compactNumber(m20327o.experienceGeneration, true));
                if (this.f13767b0.gameState.isDoubleSpeedActive()) {
                    stringBuilder.append(" [#BBBBBB]x2[]");
                }
                stringBuilder.append(" XP/s");
                this.f13777s.setText(stringBuilder);
                this.f13777s.setVisible(true);
            }
        }
        this.f13753P = false;
    }

    /* renamed from: v */
    public final void m20320v() {
        Tower m20327o = m20327o();
        if (m20327o != null) {
            boolean z = false;
            if (m20327o.getUpgradeLevel() >= m20327o.getMaxUpgradeLevel()) {
                this.f13784z.m20305A(false);
                return;
            }
            UpgradeSubmenu upgradeSubmenu = this.f13784z;
            if (this.f13767b0.gameState.getMoney() >= this.f13767b0.tower.getUpgradePrice(m20327o)) {
                z = true;
            }
            upgradeSubmenu.m20305A(z);
        }
    }
}
