package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.ExpLine;
import com.prineside.tdi2.p036ui.actors.ParticlesCanvas;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
/* renamed from: com.prineside.tdi2.ui.components.CoreMenu */
/* loaded from: classes2.dex */
public class CoreMenu {

    /* renamed from: a */
    public final SideMenu f12929a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f12930b;

    /* renamed from: c */
    public boolean f12931c;

    /* renamed from: d */
    public QuadActor f12932d;

    /* renamed from: e */
    public Table f12933e;

    /* renamed from: f */
    public Group f12934f;

    /* renamed from: g */
    public Label f12935g;

    /* renamed from: h */
    public Label f12936h;

    /* renamed from: i */
    public Label f12937i;

    /* renamed from: j */
    public Label f12938j;

    /* renamed from: k */
    public Label f12939k;

    /* renamed from: l */
    public Label f12940l;

    /* renamed from: m */
    public Label f12941m;

    /* renamed from: n */
    public Group f12942n;

    /* renamed from: o */
    public ParticlesCanvas f12943o;

    /* renamed from: p */
    public ParticleEffect f12944p;

    /* renamed from: q */
    public ExpLine f12945q;

    /* renamed from: r */
    public int f12946r = -1;

    /* renamed from: s */
    public int f12947s = -1;

    /* renamed from: t */
    public int f12948t = -1;

    /* renamed from: u */
    public GameSystemProvider f12949u;

    /* renamed from: v */
    public final _SideMenuListener f12950v;

    /* renamed from: w */
    public final _MapSystemListener f12951w;

    /* renamed from: x */
    public static final Color f12926x = new Color(623191551);

    /* renamed from: y */
    public static final Color f12927y = new Color(724249599);

    /* renamed from: z */
    public static final Rectangle f12928z = new Rectangle(40.0f, 954.0f, 520.0f, 66.0f);

    /* renamed from: A */
    public static final StringBuilder f12922A = new StringBuilder();

    /* renamed from: B */
    public static final Color f12923B = new Color();

    /* renamed from: C */
    public static final Color f12924C = new Color();

    /* renamed from: D */
    public static final Color f12925D = new Color();

    /* renamed from: com.prineside.tdi2.ui.components.CoreMenu$2 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C25032 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12957a;

        static {
            int[] iArr = new int[CoreTile.LinkDirection.values().length];
            f12957a = iArr;
            try {
                iArr[CoreTile.LinkDirection.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12957a[CoreTile.LinkDirection.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12957a[CoreTile.LinkDirection.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12957a[CoreTile.LinkDirection.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12957a[CoreTile.LinkDirection.TOP_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12957a[CoreTile.LinkDirection.TOP_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12957a[CoreTile.LinkDirection.BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12957a[CoreTile.LinkDirection.BOTTOM_RIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.CoreMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void coreTileLeveledUp(CoreTile coreTile) {
            if (CoreMenu.this.f12931c && CoreMenu.this.f12949u.map.getSelectedTile() == coreTile && CoreMenu.this.f12948t != CoreMenu.this.m20596k()) {
                CoreMenu.this.m20594m();
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void coreTileUpgradeInstalled(int i, int i2) {
            if (CoreMenu.this.f12931c) {
                CoreMenu.this.m20594m();
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = CoreMenu.this.f12949u.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.CORE) {
                if (CoreMenu.this.f12948t != CoreMenu.this.m20596k()) {
                    CoreMenu.this.f12946r = -1;
                    CoreMenu.this.f12947s = -1;
                    CoreMenu.this.m20594m();
                }
                CoreMenu.this.m20595l(true);
                return;
            }
            CoreMenu.this.m20595l(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.CoreMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            CoreMenu.this.f12946r = -1;
            CoreMenu.this.f12947s = -1;
            CoreMenu.this.m20594m();
        }
    }

    public CoreMenu(SideMenu sideMenu, GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f12950v = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f12951w = _mapsystemlistener;
        this.f12949u = gameSystemProvider;
        this.f12929a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f12930b = createContainer;
        Color color = Color.WHITE;
        QuadActor quadActor = new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f}, color);
        this.f12932d = quadActor;
        quadActor.setSize(600.0f, 156.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        this.f12932d.setPosition(0.0f, 924.0f + scaledViewportHeight);
        createContainer.addActor(this.f12932d);
        Table table = new Table();
        this.f12933e = table;
        table.setPosition(40.0f, 994.0f + scaledViewportHeight);
        this.f12933e.setSize(520.0f, 26.0f);
        createContainer.addActor(this.f12933e);
        Group group = new Group();
        this.f12934f = group;
        group.setName("core_menu_experience");
        this.f12934f.setTransform(false);
        Group group2 = this.f12934f;
        Rectangle rectangle = f12928z;
        group2.setPosition(rectangle.f5523x, rectangle.f5524y + scaledViewportHeight);
        this.f12934f.setSize(rectangle.width, rectangle.height);
        this.f12934f.setOrigin(rectangle.width / 2.0f, rectangle.height / 2.0f);
        createContainer.addActor(this.f12934f);
        Label label = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f12938j = label;
        label.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        this.f12938j.setSize(159.0f, 24.0f);
        float f = scaledViewportHeight + 954.0f;
        this.f12938j.setPosition(50.0f, f - 2.0f);
        this.f12938j.setAlignment(8);
        createContainer.addActor(this.f12938j);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f12937i = label2;
        label2.setColor(color);
        this.f12937i.setSize(159.0f, 24.0f);
        this.f12937i.setPosition(48.0f, f);
        this.f12937i.setAlignment(8);
        createContainer.addActor(this.f12937i);
        Label label3 = new Label("L10", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f12935g = label3;
        label3.setSize(40.0f, 26.0f);
        this.f12935g.setPosition(480.0f, 40.0f);
        this.f12935g.setAlignment(16);
        this.f12934f.addActor(this.f12935g);
        ExpLine expLine = new ExpLine();
        this.f12945q = expLine;
        expLine.setPosition(0.0f, 0.0f);
        this.f12934f.addActor(this.f12945q);
        Label label4 = new Label("53 / 90 XP", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f12936h = label4;
        label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f12936h.setPosition(0.0f, 0.0f);
        this.f12936h.setSize(520.0f, 24.0f);
        this.f12936h.setAlignment(16);
        this.f12934f.addActor(this.f12936h);
        Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(600.0f, 52.0f);
        image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        float f2 = scaledViewportHeight + 872.0f;
        image.setPosition(0.0f, f2);
        createContainer.addActor(image);
        Actor label5 = new Label(Game.f8589i.localeManager.i18n.get("tower_stat_EXPERIENCE_GENERATION"), Game.f8589i.assetManager.getLabelStyle(24));
        label5.setPosition(40.0f, f2);
        label5.setSize(100.0f, 52.0f);
        createContainer.addActor(label5);
        Label label6 = new Label("/s", Game.f8589i.assetManager.getLabelStyle(24));
        label6.setPosition(0.0f, f2);
        label6.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label6.setAlignment(16);
        label6.setSize(560.0f, 52.0f);
        createContainer.addActor(label6);
        Label label7 = new Label("2.5", Game.f8589i.assetManager.getLabelStyle(30));
        this.f12939k = label7;
        label7.setPosition(0.0f, f2);
        this.f12939k.setAlignment(16);
        this.f12939k.setSize(528.0f, 52.0f);
        createContainer.addActor(this.f12939k);
        Group group3 = new Group();
        this.f12942n = group3;
        group3.setTransform(false);
        this.f12942n.setPosition(0.0f, 0.0f);
        this.f12942n.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 200.0f);
        createContainer.addActor(this.f12942n);
        Label label8 = new Label("", Game.f8589i.assetManager.getLabelStyle(60));
        this.f12941m = label8;
        label8.setPosition(0.0f, 142.0f);
        this.f12941m.setSize(600.0f, 44.0f);
        this.f12941m.setAlignment(1);
        createContainer.addActor(this.f12941m);
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("upgrade_points").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(24));
        this.f12940l = label9;
        label9.setPosition(0.0f, 104.0f);
        this.f12940l.setSize(600.0f, 20.0f);
        this.f12940l.setAlignment(1);
        createContainer.addActor(this.f12940l);
        ParticleEffect particleEffect = new ParticleEffect();
        this.f12944p = particleEffect;
        particleEffect.load(Gdx.files.external("particles/core-menu-upgrade-points-highlight.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
        this.f12944p.setEmittersCleanUpBlendFunction(false);
        ParticlesCanvas particlesCanvas = new ParticlesCanvas();
        this.f12943o = particlesCanvas;
        particlesCanvas.setSize(600.0f, 64.0f);
        this.f12943o.setPosition(0.0f, 132.0f);
        createContainer.addActor(this.f12943o);
        this.f12943o.addParticle(this.f12944p, 300.0f, 32.0f);
        this.f12943o.setVisible(false);
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        createContainer.hide();
    }

    public void draw(float f) {
        if (this.f12931c) {
            m20593n();
            if (this.f12948t != m20596k()) {
                m20594m();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
        if (r11.price <= r6) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0057, code lost:
        if (r11.price <= r4) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
        r10 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
        r10 = 0;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m20596k() {
        /*
            r14 = this;
            com.prineside.tdi2.GameSystemProvider r0 = r14.f12949u
            com.prineside.tdi2.systems.MapSystem r0 = r0.map
            com.prineside.tdi2.Tile r0 = r0.getSelectedTile()
            r1 = 1
            if (r0 == 0) goto L64
            com.prineside.tdi2.enums.TileType r2 = r0.type
            com.prineside.tdi2.enums.TileType r3 = com.prineside.tdi2.enums.TileType.CORE
            if (r2 != r3) goto L64
            com.prineside.tdi2.tiles.CoreTile r0 = (com.prineside.tdi2.tiles.CoreTile) r0
            int r2 = r0.getUpgradeCols()
            int r3 = r0.getUpgradeRows()
            int r4 = r0.getFreeUpgradePoints()
            r5 = 31
            int r5 = r5 + r4
            com.prineside.tdi2.GameSystemProvider r6 = r14.f12949u
            com.prineside.tdi2.systems.GameStateSystem r6 = r6.gameState
            int r6 = r6.getMoney()
            r7 = 0
            r8 = 0
        L2c:
            if (r8 >= r3) goto L63
            r9 = 0
        L2f:
            if (r9 >= r2) goto L60
            com.prineside.tdi2.tiles.CoreTile$Upgrade r10 = r0.getUpgrade(r9, r8)
            if (r10 != 0) goto L38
            goto L5d
        L38:
            int r11 = r0.getUpgradeInstallLevel(r9, r8)
            com.badlogic.gdx.utils.Array<com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel> r12 = r10.upgradeLevels
            int r13 = r12.size
            if (r11 >= r13) goto L5d
            T[] r12 = r12.items
            com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel[] r12 = (com.prineside.tdi2.tiles.CoreTile.Upgrade.UpgradeLevel[]) r12
            r11 = r12[r11]
            boolean r10 = r10.costsCoins
            if (r10 == 0) goto L53
            int r5 = r5 * 31
            int r10 = r11.price
            if (r10 > r6) goto L5b
            goto L59
        L53:
            int r5 = r5 * 31
            int r10 = r11.price
            if (r10 > r4) goto L5b
        L59:
            r10 = 1
            goto L5c
        L5b:
            r10 = 0
        L5c:
            int r5 = r5 + r10
        L5d:
            int r9 = r9 + 1
            goto L2f
        L60:
            int r8 = r8 + 1
            goto L2c
        L63:
            r1 = r5
        L64:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.components.CoreMenu.m20596k():int");
    }

    /* renamed from: l */
    public final void m20595l(boolean z) {
        Tile selectedTile;
        if (this.f12931c != z) {
            this.f12931c = z;
            if (z) {
                this.f12930b.show();
                m20594m();
                SettingsManager settingsManager = Game.f8589i.settingsManager;
                SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.CORE_HINT_SHOWN;
                if (settingsManager.getCustomValue(customValueType) == 0.0d && (selectedTile = this.f12949u.map.getSelectedTile()) != null && selectedTile.type == TileType.CORE) {
                    Group generateUiIcon = ((CoreTile) selectedTile).generateUiIcon(96.0f);
                    generateUiIcon.setOrigin(48.0f, 48.0f);
                    this.f12949u._graphics.uiElementsEmphasizer.show(generateUiIcon, new Rectangle(-48.0f, -48.0f, 96.0f, 96.0f), Game.f8589i.localeManager.i18n.get("tile_name_CORE"), Game.f8589i.localeManager.i18n.get("tile_description_CORE"), null);
                    Game.f8589i.settingsManager.setCustomValue(customValueType, 1.0d);
                    return;
                }
                return;
            }
            this.f12930b.hide();
            this.f12946r = -1;
            this.f12947s = -1;
            this.f12929a.hideSideTooltip();
        }
    }

    /* renamed from: m */
    public final void m20594m() {
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6;
        CoreTile.LinkDirection[] linkDirectionArr;
        Tile selectedTile = this.f12949u.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.CORE) {
            this.f12930b.setLabelOverTitleTilePos(selectedTile);
            final CoreTile coreTile = (CoreTile) selectedTile;
            Color color = f12923B;
            color.set(Game.f8589i.tileManager.f10161F.CORE.getTierColor(coreTile.getTier()));
            Color color2 = f12924C;
            color2.set(color);
            color.f3889a = 0.0f;
            color2.f3889a = 0.07f;
            this.f12932d.setVertexColors(color2, color, color, color2);
            this.f12933e.clearChildren();
            Label label = new Label(coreTile.getName(), Game.f8589i.assetManager.getLabelStyle(36));
            label.setColor(Game.f8589i.tileManager.f10161F.CORE.getTierColor(coreTile.getTier()));
            this.f12933e.add((Table) label).height(26.0f).bottom().left().padRight(16.0f);
            Label label2 = new Label(Game.f8589i.tileManager.f10161F.CORE.getTierDescription(coreTile.getTier()).toString().toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
            label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            this.f12933e.add((Table) label2).expandX().fillX().bottom().left();
            m20593n();
            color.f3889a = 1.0f;
            this.f12939k.setColor(color);
            this.f12939k.setText(StringFormatter.compactNumber(coreTile.getExperienceGeneration() * ((float) this.f12949u.gameValue.getPercentValueAsMultiplier(GameValueType.CORES_LEVEL_UP_SPEED)), true));
            int upgradeCols = coreTile.getUpgradeCols();
            int upgradeRows = coreTile.getUpgradeRows();
            int freeUpgradePoints = coreTile.getFreeUpgradePoints();
            this.f12942n.clearChildren();
            float f = (600.0f - (upgradeCols * 128.0f)) / 2.0f;
            float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 356.0f;
            boolean z2 = false;
            int i7 = 0;
            while (i7 < upgradeRows) {
                final int i8 = 0;
                while (i8 < upgradeCols) {
                    final CoreTile.Upgrade upgrade = coreTile.getUpgrade(i8, i7);
                    if (upgrade == null) {
                        i3 = i8;
                        i2 = i7;
                        i4 = upgradeCols;
                        i5 = upgradeRows;
                        i6 = freeUpgradePoints;
                    } else {
                        Group group = new Group();
                        group.setTransform(z2);
                        group.setPosition(f + (i8 * 128.0f), scaledViewportHeight - (i7 * 128.0f));
                        float f2 = 64.0f;
                        final int i9 = i7;
                        i2 = i7;
                        group.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.CoreMenu.1
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                            public void clicked(InputEvent inputEvent, float f3, float f4) {
                                if (CoreMenu.this.f12946r == i8 && CoreMenu.this.f12947s == i9) {
                                    int money = CoreMenu.this.f12949u.gameState.getMoney();
                                    int upgradeInstallLevel = coreTile.getUpgradeInstallLevel(i8, i9);
                                    CoreTile.Upgrade upgrade2 = upgrade;
                                    Array<CoreTile.Upgrade.UpgradeLevel> array = upgrade2.upgradeLevels;
                                    if (upgradeInstallLevel < array.size) {
                                        CoreTile.Upgrade.UpgradeLevel upgradeLevel = array.items[upgradeInstallLevel];
                                        boolean z3 = true;
                                        if (!upgrade2.costsCoins ? upgradeLevel.price > coreTile.getFreeUpgradePoints() : upgradeLevel.price > money) {
                                            z3 = false;
                                        }
                                        if (coreTile.canUpgradeBeInstalled(i8, i9) && z3) {
                                            CoreMenu.this.f12949u.map.upgradeCoreAction(coreTile.getX(), coreTile.getY(), CoreMenu.this.f12946r, CoreMenu.this.f12947s);
                                        }
                                    }
                                } else {
                                    CoreMenu.this.f12946r = i8;
                                    CoreMenu.this.f12947s = i9;
                                }
                                CoreMenu.this.m20594m();
                                CoreMenu.this.f12949u._sound.playStatic(StaticSoundType.BUTTON);
                            }
                        });
                        this.f12942n.addActor(group);
                        i3 = i8;
                        float f3 = 32.0f;
                        if (coreTile.getUpgradeInstallLevel(i3, i2) >= upgrade.upgradeLevels.size) {
                            if (upgrade.isAction) {
                                Group generateIcon = Game.f8589i.triggeredActionManager.generateIcon(upgrade.getActionType(), 64.0f, f12923B);
                                generateIcon.setPosition(32.0f, 32.0f);
                                group.addActor(generateIcon);
                            } else {
                                Array<TextureRegionConfig> icon = Game.f8589i.gameValueManager.getStockValueConfig(upgrade.getGameValueType()).getIcon();
                                int i10 = 0;
                                while (i10 < icon.size) {
                                    TextureRegionConfig textureRegionConfig = icon.items[i10];
                                    Image createImage = textureRegionConfig.createImage(f3, f3, f2);
                                    TextureRegion textureRegion = textureRegionConfig.textureRegion;
                                    if ((textureRegion instanceof ResourcePack.AtlasTextureRegion) && ((ResourcePack.AtlasTextureRegion) textureRegion).name.startsWith("icon-")) {
                                        createImage.setColor(f12923B);
                                    }
                                    if (textureRegionConfig.color.toFloatBits() == GameValueManager.ICON_BACKGROUND_COLOR.toFloatBits()) {
                                        createImage.setColor(f12927y);
                                    }
                                    group.addActor(createImage);
                                    i10++;
                                    f3 = 32.0f;
                                    f2 = 64.0f;
                                }
                            }
                            i4 = upgradeCols;
                            i5 = upgradeRows;
                            i6 = freeUpgradePoints;
                        } else {
                            Color color3 = new Color();
                            boolean canUpgradeBeInstalled = coreTile.canUpgradeBeInstalled(i3, i2);
                            int money = this.f12949u.gameState.getMoney();
                            CoreTile.Upgrade.UpgradeLevel upgradeLevel = upgrade.upgradeLevels.items[coreTile.getUpgradeInstallLevel(i3, i2)];
                            if (!upgrade.costsCoins ? upgradeLevel.price <= freeUpgradePoints : upgradeLevel.price <= money) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (canUpgradeBeInstalled && z) {
                                i6 = freeUpgradePoints;
                                Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-core-menu-upgrade-button"));
                                image.setSize(100.0f, 100.0f);
                                image.setPosition(16.0f, 12.0f);
                                Color color4 = f12923B;
                                image.setColor(color4);
                                i5 = upgradeRows;
                                color3.set(color4).mul(0.8f, 0.8f, 0.8f, 1.0f);
                                group.addActor(image);
                                if (upgrade.isAction) {
                                    Group generateIcon2 = Game.f8589i.triggeredActionManager.generateIcon(upgrade.getActionType(), 64.0f, Color.WHITE);
                                    generateIcon2.setPosition(32.0f, 32.0f);
                                    group.addActor(generateIcon2);
                                } else {
                                    Array<TextureRegionConfig> icon2 = Game.f8589i.gameValueManager.getStockValueConfig(upgrade.getGameValueType()).getIcon();
                                    int i11 = 0;
                                    while (i11 < icon2.size) {
                                        TextureRegionConfig textureRegionConfig2 = icon2.items[i11];
                                        Array<TextureRegionConfig> array = icon2;
                                        int i12 = upgradeCols;
                                        Image createImage2 = textureRegionConfig2.createImage(32.0f, 32.0f, 64.0f);
                                        if (textureRegionConfig2.color.toFloatBits() == GameValueManager.ICON_BACKGROUND_COLOR.toFloatBits()) {
                                            TextureRegion textureRegion2 = textureRegionConfig2.textureRegion;
                                            if ((textureRegion2 instanceof ResourcePack.AtlasTextureRegion) && ((ResourcePack.AtlasTextureRegion) textureRegion2).name.startsWith("icon-")) {
                                                createImage2.setColor(f12923B);
                                                createImage2.getColor().mul(0.8f, 0.8f, 0.8f, 1.0f);
                                            } else {
                                                createImage2.setVisible(false);
                                            }
                                        }
                                        group.addActor(createImage2);
                                        i11++;
                                        icon2 = array;
                                        upgradeCols = i12;
                                    }
                                }
                                i4 = upgradeCols;
                            } else {
                                i4 = upgradeCols;
                                i5 = upgradeRows;
                                i6 = freeUpgradePoints;
                                Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                                image2.setSize(96.0f, 96.0f);
                                image2.setPosition(16.0f, 16.0f);
                                image2.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                                color3.set(MaterialColor.GREY.P900);
                                group.addActor(image2);
                                if (upgrade.isAction) {
                                    Group generateIcon3 = Game.f8589i.triggeredActionManager.generateIcon(upgrade.getActionType(), 64.0f, new Color(0.56f, 0.56f, 0.56f, 1.0f));
                                    generateIcon3.setPosition(32.0f, 32.0f);
                                    group.addActor(generateIcon3);
                                } else {
                                    Array<TextureRegionConfig> icon3 = Game.f8589i.gameValueManager.getStockValueConfig(upgrade.getGameValueType()).getIcon();
                                    int i13 = 0;
                                    while (i13 < icon3.size) {
                                        TextureRegionConfig textureRegionConfig3 = icon3.items[i13];
                                        Array<TextureRegionConfig> array2 = icon3;
                                        Image createImage3 = textureRegionConfig3.createImage(32.0f, 32.0f, 64.0f);
                                        if (textureRegionConfig3.color.toFloatBits() == GameValueManager.ICON_BACKGROUND_COLOR.toFloatBits()) {
                                            TextureRegion textureRegion3 = textureRegionConfig3.textureRegion;
                                            if ((textureRegion3 instanceof ResourcePack.AtlasTextureRegion) && ((ResourcePack.AtlasTextureRegion) textureRegion3).name.startsWith("icon-")) {
                                                createImage3.setColor(f12927y);
                                            } else {
                                                createImage3.setColor(0.0f, 0.0f, 0.0f, 0.0f);
                                            }
                                        } else {
                                            createImage3.setColor(createImage3.getColor().mul(0.56f, 0.56f, 0.56f, 1.0f));
                                        }
                                        group.addActor(createImage3);
                                        i13++;
                                        icon3 = array2;
                                    }
                                }
                            }
                            float f4 = 103.0f;
                            if (upgrade.costsCoins) {
                                f4 = 95.0f;
                            }
                            Label label3 = new Label(String.valueOf(upgradeLevel.price), Game.f8589i.assetManager.getLabelStyle(24));
                            label3.setColor(color3);
                            label3.setPosition(f4 - 2.0f, 25.0f);
                            label3.setSize(1.0f, 18.0f);
                            label3.setAlignment(16);
                            group.addActor(label3);
                            Label label4 = new Label(String.valueOf(upgradeLevel.price), Game.f8589i.assetManager.getLabelStyle(24));
                            label4.setColor(color3);
                            label4.setPosition(f4, 25.0f);
                            label4.setSize(1.0f, 18.0f);
                            label4.setAlignment(16);
                            group.addActor(label4);
                            Label label5 = new Label(String.valueOf(upgradeLevel.price), Game.f8589i.assetManager.getLabelStyle(24));
                            label5.setPosition(f4, 23.0f);
                            label5.setSize(1.0f, 18.0f);
                            label5.setAlignment(16);
                            if (!canUpgradeBeInstalled || !z) {
                                label5.setColor(f12923B);
                            }
                            group.addActor(label5);
                            if (upgrade.costsCoins) {
                                Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-coin"));
                                image3.setPosition(f4 + 3.0f, 20.0f);
                                image3.setSize(24.0f, 24.0f);
                                Color color5 = MaterialColor.YELLOW.P500;
                                image3.setColor(color5);
                                group.addActor(image3);
                                label5.setColor(color5);
                            }
                        }
                        if (upgrade.upgradeLevels.size > 1) {
                            int upgradeInstallLevel = coreTile.getUpgradeInstallLevel(i3, i2);
                            for (int i14 = 0; i14 < upgrade.upgradeLevels.size; i14++) {
                                Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-top-hollow"));
                                image4.setSize(24.0f, 24.0f);
                                image4.setPosition(15.0f, (i14 * 11.0f) + 12.0f);
                                if (upgradeInstallLevel > i14) {
                                    image4.setColor(Color.WHITE);
                                } else {
                                    image4.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                                }
                                group.addActor(image4);
                            }
                        }
                        for (CoreTile.LinkDirection linkDirection : CoreTile.LinkDirection.values) {
                            if (upgrade.hasLink(linkDirection)) {
                                Image image5 = new Image();
                                image5.setSize(32.0f, 32.0f);
                                switch (C25032.f12957a[linkDirection.ordinal()]) {
                                    case 1:
                                        image5.setPosition(48.0f, 112.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-top"));
                                        break;
                                    case 2:
                                        image5.setPosition(48.0f, -16.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-bottom"));
                                        break;
                                    case 3:
                                        image5.setPosition(-16.0f, 48.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-left"));
                                        break;
                                    case 4:
                                        image5.setPosition(112.0f, 48.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-right"));
                                        break;
                                    case 5:
                                        image5.setPosition(-16.0f, 112.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-top-left"));
                                        break;
                                    case 6:
                                        image5.setPosition(112.0f, 112.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-top-right"));
                                        break;
                                    case 7:
                                        image5.setPosition(-16.0f, -16.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-bottom-left"));
                                        break;
                                    case 8:
                                        image5.setPosition(112.0f, -16.0f);
                                        image5.setDrawable(Game.f8589i.assetManager.getDrawable("tiny-arrow-bottom-right"));
                                        break;
                                }
                                if (coreTile.getUpgradeInstallLevel(i3, i2) > 0) {
                                    image5.setColor(f12923B);
                                } else {
                                    image5.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                                }
                                group.addActor(image5);
                            }
                        }
                        if (i3 == this.f12946r && i2 == this.f12947s) {
                            Image image6 = new Image(Game.f8589i.assetManager.getDrawable("ui-core-menu-upgrade-selection"));
                            image6.setSize(110.0f, 110.0f);
                            image6.setPosition(9.0f, 9.0f);
                            group.addActor(image6);
                        }
                    }
                    i8 = i3 + 1;
                    i7 = i2;
                    freeUpgradePoints = i6;
                    upgradeRows = i5;
                    upgradeCols = i4;
                    z2 = false;
                }
                i7++;
                z2 = false;
            }
            int i15 = upgradeCols;
            int i16 = upgradeRows;
            int i17 = freeUpgradePoints;
            if (this.f12930b.isVisible()) {
                int i18 = this.f12946r;
                if (i18 >= 0 && i18 < i15 && (i = this.f12947s) >= 0 && i < i16) {
                    CoreTile.Upgrade upgrade2 = coreTile.getUpgrade(i18, i);
                    if (upgrade2 != null) {
                        int upgradeInstallLevel2 = coreTile.getUpgradeInstallLevel(this.f12946r, this.f12947s);
                        Array<CoreTile.Upgrade.UpgradeLevel> array3 = upgrade2.upgradeLevels;
                        if (upgradeInstallLevel2 < array3.size) {
                            CoreTile.Upgrade.UpgradeLevel upgradeLevel2 = array3.items[upgradeInstallLevel2];
                            if (upgrade2.isAction) {
                                StringBuilder sb = f12922A;
                                sb.setLength(0);
                                if (upgrade2.isAction) {
                                    sb.append(Game.f8589i.localeManager.i18n.format(Game.f8589i.triggeredActionManager.getTitleAlias(upgrade2.getActionType()), "[#" + f12923B.toString() + "]" + ((Object) StringFormatter.compactNumber(upgradeLevel2.delta, 2, true)) + "[]"));
                                } else {
                                    sb.append((CharSequence) Game.f8589i.gameValueManager.getTitle(upgrade2.getGameValueType()));
                                    if (upgradeInstallLevel2 != 0) {
                                        sb.append("\n");
                                        CoreTile.Upgrade.UpgradeLevel upgradeLevel3 = upgrade2.upgradeLevels.items[upgradeInstallLevel2 - 1];
                                        GameValueManager gameValueManager = Game.f8589i.gameValueManager;
                                        sb.append((CharSequence) gameValueManager.formatEffectValue(upgradeLevel3.delta, gameValueManager.getStockValueConfig(upgrade2.getGameValueType()).units));
                                        sb.append(" >> [#");
                                        sb.append(f12923B.toString());
                                        sb.append("]");
                                        GameValueManager gameValueManager2 = Game.f8589i.gameValueManager;
                                        sb.append((CharSequence) gameValueManager2.formatEffectValue(upgradeLevel2.delta, gameValueManager2.getStockValueConfig(upgrade2.getGameValueType()).units));
                                    } else {
                                        sb.append(" [#");
                                        sb.append(f12923B.toString());
                                        sb.append("]");
                                        GameValueManager gameValueManager3 = Game.f8589i.gameValueManager;
                                        sb.append((CharSequence) gameValueManager3.formatEffectValue(upgradeLevel2.delta, gameValueManager3.getStockValueConfig(upgrade2.getGameValueType()).units));
                                    }
                                    sb.append("[]");
                                }
                            } else {
                                StringBuilder sb2 = f12922A;
                                sb2.setLength(0);
                                sb2.append((CharSequence) Game.f8589i.gameValueManager.getTitle(upgrade2.getGameValueType()));
                                if (upgradeInstallLevel2 != 0) {
                                    sb2.append("\n");
                                    CoreTile.Upgrade.UpgradeLevel upgradeLevel4 = upgrade2.upgradeLevels.items[upgradeInstallLevel2 - 1];
                                    GameValueManager gameValueManager4 = Game.f8589i.gameValueManager;
                                    sb2.append((CharSequence) gameValueManager4.formatEffectValue(upgradeLevel4.delta, gameValueManager4.getStockValueConfig(upgrade2.getGameValueType()).units));
                                    sb2.append(" >> [#");
                                    sb2.append(f12923B.toString());
                                    sb2.append("]");
                                    GameValueManager gameValueManager5 = Game.f8589i.gameValueManager;
                                    sb2.append((CharSequence) gameValueManager5.formatEffectValue(upgradeLevel2.delta, gameValueManager5.getStockValueConfig(upgrade2.getGameValueType()).units));
                                } else {
                                    sb2.append(" [#");
                                    sb2.append(f12923B.toString());
                                    sb2.append("]");
                                    GameValueManager gameValueManager6 = Game.f8589i.gameValueManager;
                                    sb2.append((CharSequence) gameValueManager6.formatEffectValue(upgradeLevel2.delta, gameValueManager6.getStockValueConfig(upgrade2.getGameValueType()).units));
                                }
                                sb2.append("[]");
                            }
                        } else {
                            CoreTile.Upgrade.UpgradeLevel upgradeLevel5 = array3.items[upgradeInstallLevel2 - 1];
                            if (upgrade2.isAction) {
                                StringBuilder sb3 = f12922A;
                                sb3.setLength(0);
                                if (upgrade2.isAction) {
                                    sb3.append(Game.f8589i.localeManager.i18n.format(Game.f8589i.triggeredActionManager.getTitleAlias(upgrade2.getActionType()), "[#" + f12923B.toString() + "]" + ((Object) StringFormatter.compactNumber(upgradeLevel5.delta, 2, true)) + "[]"));
                                } else {
                                    sb3.append((CharSequence) Game.f8589i.gameValueManager.getTitle(upgrade2.getGameValueType()));
                                    sb3.append(" [#");
                                    sb3.append(f12923B.toString());
                                    sb3.append("]");
                                    GameValueManager gameValueManager7 = Game.f8589i.gameValueManager;
                                    sb3.append((CharSequence) gameValueManager7.formatEffectValue(upgradeLevel5.delta, gameValueManager7.getStockValueConfig(upgrade2.getGameValueType()).units));
                                    sb3.append("[]");
                                }
                            } else {
                                StringBuilder sb4 = f12922A;
                                sb4.setLength(0);
                                sb4.append((CharSequence) Game.f8589i.gameValueManager.getTitle(upgrade2.getGameValueType()));
                                sb4.append(" [#");
                                sb4.append(f12923B.toString());
                                sb4.append("]");
                                GameValueManager gameValueManager8 = Game.f8589i.gameValueManager;
                                sb4.append((CharSequence) gameValueManager8.formatEffectValue(upgradeLevel5.delta, gameValueManager8.getStockValueConfig(upgrade2.getGameValueType()).units));
                                sb4.append("[]");
                            }
                        }
                        if (upgrade2.upgradeLevels.size > 1) {
                            f12922A.append("\n\n");
                            int i19 = 0;
                            while (i19 < upgrade2.upgradeLevels.size) {
                                StringBuilder sb5 = f12922A;
                                sb5.append("[#888888]L");
                                int i20 = i19 + 1;
                                sb5.append(i20);
                                sb5.append(":[] ");
                                if (i19 < upgradeInstallLevel2) {
                                    sb5.append(" [#");
                                    sb5.append(f12923B.toString());
                                    sb5.append("]");
                                }
                                if (upgrade2.isAction) {
                                    sb5.append((CharSequence) StringFormatter.compactNumber(upgrade2.upgradeLevels.items[i19].delta, 2, true));
                                } else {
                                    GameValueManager gameValueManager9 = Game.f8589i.gameValueManager;
                                    sb5.append((CharSequence) gameValueManager9.formatEffectValue(upgrade2.upgradeLevels.items[i19].delta, gameValueManager9.getStockValueConfig(upgrade2.getGameValueType()).units));
                                }
                                if (i19 < upgradeInstallLevel2) {
                                    sb5.append("[]");
                                }
                                if (i19 != upgrade2.upgradeLevels.size - 1) {
                                    sb5.append("\n");
                                }
                                i19 = i20;
                            }
                        }
                        this.f12929a.showSideTooltip(f12922A, (scaledViewportHeight - (this.f12947s * 128.0f)) + 64.0f);
                    } else {
                        this.f12929a.hideSideTooltip();
                    }
                } else {
                    this.f12929a.hideSideTooltip();
                }
            }
            this.f12941m.setText(i17);
            if (i17 > 0) {
                Label label6 = this.f12941m;
                Color color6 = f12923B;
                label6.setColor(color6);
                this.f12940l.setColor(color6);
                this.f12943o.setVisible(true);
                for (int i21 = 0; i21 < this.f12944p.getEmitters().size; i21++) {
                    ParticleEmitter.GradientColorValue tint = this.f12944p.getEmitters().get(i21).getTint();
                    Color color7 = f12923B;
                    tint.setColors(new float[]{color7.f3892r, color7.f3891g, color7.f3890b});
                }
            } else {
                this.f12941m.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                this.f12940l.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                this.f12943o.setVisible(false);
            }
        }
        this.f12948t = m20596k();
    }

    /* renamed from: n */
    public final void m20593n() {
        Tile selectedTile = this.f12949u.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.CORE) {
            CoreTile coreTile = (CoreTile) selectedTile;
            StringBuilder sb = f12922A;
            sb.setLength(0);
            sb.append("L");
            sb.append(coreTile.getLevel());
            this.f12935g.setText(sb);
            this.f12945q.setColor(Game.f8589i.tileManager.f10161F.CORE.getTierColor(coreTile.getTier()));
            this.f12945q.setCoeff(coreTile.getCurrentLevelExperience() / coreTile.getNextLevelExperience());
            Label label = this.f12936h;
            label.setText(StrictMath.round(coreTile.getCurrentLevelExperience()) + " / " + StrictMath.round(coreTile.getNextLevelExperience()) + " XP");
            if (coreTile.doubleSpeedTimeLeft > 0.0f) {
                sb.setLength(0);
                sb.append("x2: ");
                sb.append((CharSequence) StringFormatter.digestTime(StrictMath.round(coreTile.doubleSpeedTimeLeft)));
                this.f12937i.setText(sb);
                this.f12938j.setText(sb);
                this.f12937i.setVisible(true);
                this.f12938j.setVisible(true);
                return;
            }
            this.f12937i.setVisible(false);
            this.f12938j.setVisible(false);
        }
    }
}
