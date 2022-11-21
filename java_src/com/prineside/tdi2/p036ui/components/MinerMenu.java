package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.p036ui.actors.ExpLine;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.components.UpgradeSubmenu;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.LootSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.StringFormatter;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: com.prineside.tdi2.ui.components.MinerMenu */
/* loaded from: classes2.dex */
public class MinerMenu implements Disposable {

    /* renamed from: O */
    public static final StringBuilder f13379O = new StringBuilder();

    /* renamed from: A */
    public final Image[] f13380A;

    /* renamed from: B */
    public final Label[] f13381B;

    /* renamed from: C */
    public final Label[] f13382C;

    /* renamed from: D */
    public final Label[] f13383D;

    /* renamed from: E */
    public final Label[] f13384E;

    /* renamed from: F */
    public final Label[] f13385F;

    /* renamed from: G */
    public final UpgradeSubmenu f13386G;

    /* renamed from: H */
    public final SellButton f13387H;

    /* renamed from: I */
    public final GameSystemProvider f13388I;

    /* renamed from: J */
    public final _SideMenuListener f13389J;

    /* renamed from: K */
    public final _MapSystemListener f13390K;

    /* renamed from: L */
    public final _Game_StateSystemListener f13391L;

    /* renamed from: M */
    public final _MinerSystemListener f13392M;

    /* renamed from: N */
    public final _LootSystemListener f13393N;

    /* renamed from: a */
    public final SideMenu f13394a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13395b;

    /* renamed from: d */
    public boolean f13396d;

    /* renamed from: k */
    public final Label f13397k;

    /* renamed from: p */
    public final Label f13398p;

    /* renamed from: q */
    public final ExpLine f13399q;

    /* renamed from: r */
    public final TileResources f13400r;

    /* renamed from: s */
    public final Image f13401s;

    /* renamed from: t */
    public final Image f13402t;

    /* renamed from: u */
    public final Label f13403u;

    /* renamed from: v */
    public final Label f13404v;

    /* renamed from: w */
    public final Label f13405w;

    /* renamed from: x */
    public final Label f13406x;

    /* renamed from: y */
    public Table f13407y;

    /* renamed from: z */
    public final Group[] f13408z;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MinerMenu$_Game_StateSystemListener */
    /* loaded from: classes2.dex */
    public class _Game_StateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _Game_StateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void moneyChanged(int i, boolean z) {
            MinerMenu.this.m20453k();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MinerMenu$_LootSystemListener */
    /* loaded from: classes2.dex */
    public class _LootSystemListener extends LootSystem.LootSystemListener.LootSystemListenerAdapter {
        public _LootSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener.LootSystemListenerAdapter, com.prineside.tdi2.systems.LootSystem.LootSystemListener
        public void minerMinedItem(Miner miner, ItemStack itemStack) {
            if (MinerMenu.this.f13396d && MinerMenu.this.m20456h() == miner) {
                MinerMenu.this.m20454j();
            }
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MinerMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerRemovedFromMap(Miner miner, SourceTile sourceTile) {
            if (sourceTile == MinerMenu.this.f13388I.map.getSelectedTile()) {
                MinerMenu.this.m20455i(false);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = MinerMenu.this.f13388I.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.SOURCE && ((SourceTile) selectedTile).miner != null) {
                MinerMenu.this.f13386G.setButtonSelected(false);
                MinerMenu.this.m20454j();
                MinerMenu.this.m20455i(true);
                return;
            }
            MinerMenu.this.m20455i(false);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerPlacedOnMap(Miner miner) {
            if (miner.getTile() == MinerMenu.this.f13388I.map.getSelectedTile()) {
                MinerMenu.this.m20454j();
                MinerMenu.this.m20455i(true);
            }
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.MinerMenu$_MinerSystemListener */
    /* loaded from: classes2.dex */
    public class _MinerSystemListener extends MinerSystem.MinerSystemListener.MinerSystemListenerAdapter {
        public _MinerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerUpgraded(Miner miner, int i) {
            MinerMenu.this.m20454j();
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerResourcesChanged(Miner miner, ResourceType resourceType, int i, boolean z) {
            if (MinerMenu.this.m20456h() == miner) {
                MinerMenu.this.m20454j();
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.MinerMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            MinerMenu.this.m20454j();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public MinerMenu(SideMenu sideMenu, final GameSystemProvider gameSystemProvider) {
        ResourceType[] resourceTypeArr = ResourceType.values;
        this.f13408z = new Group[resourceTypeArr.length];
        this.f13380A = new Image[resourceTypeArr.length];
        this.f13381B = new Label[resourceTypeArr.length];
        this.f13382C = new Label[resourceTypeArr.length];
        this.f13383D = new Label[resourceTypeArr.length];
        this.f13384E = new Label[resourceTypeArr.length];
        this.f13385F = new Label[resourceTypeArr.length];
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13389J = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13390K = _mapsystemlistener;
        _Game_StateSystemListener _game_statesystemlistener = new _Game_StateSystemListener();
        this.f13391L = _game_statesystemlistener;
        _MinerSystemListener _minersystemlistener = new _MinerSystemListener();
        this.f13392M = _minersystemlistener;
        _LootSystemListener _lootsystemlistener = new _LootSystemListener();
        this.f13393N = _lootsystemlistener;
        this.f13388I = gameSystemProvider;
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        gameSystemProvider.miner.listeners.add(_minersystemlistener);
        gameSystemProvider.loot.listeners.add(_lootsystemlistener);
        gameSystemProvider.gameState.listeners.add(_game_statesystemlistener);
        this.f13394a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13395b = createContainer;
        createContainer.setName("miner_menu_container");
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("VCTR", new Label.LabelStyle(font, color));
        this.f13397k = label;
        label.setSize(520.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        label.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(label);
        ExpLine expLine = new ExpLine();
        this.f13399q = expLine;
        float f = 954.0f + scaledViewportHeight;
        expLine.setPosition(40.0f, f);
        createContainer.addActor(expLine);
        Actor image = new Image(Game.f8589i.assetManager.getDrawable("ui-exp-line-cap"));
        image.setSize(72.0f, 48.0f);
        image.setPosition(395.0f, f);
        image.setColor(new Color(623191551));
        createContainer.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-tools"));
        this.f13401s = image2;
        image2.setSize(32.0f, 32.0f);
        float f2 = 962.0f + scaledViewportHeight;
        image2.setPosition(415.0f, f2);
        createContainer.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("resource-vector"));
        this.f13402t = image3;
        image3.setSize(32.0f, 32.0f);
        image3.setPosition(415.0f, f2);
        createContainer.addActor(image3);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("miner_menu_status_installing").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13403u = label2;
        label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label2.setSize(159.0f, 16.0f);
        float f3 = 985.0f + scaledViewportHeight;
        label2.setPosition(233.0f, f3);
        label2.setAlignment(16);
        createContainer.addActor(label2);
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("miner_menu_status_mining").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13404v = label3;
        label3.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label3.setSize(159.0f, 16.0f);
        label3.setPosition(233.0f, f3);
        label3.setAlignment(16);
        createContainer.addActor(label3);
        Label label4 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13406x = label4;
        float f4 = 0.0f;
        label4.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        label4.setSize(159.0f, 24.0f);
        label4.setPosition(50.0f, f - 2.0f);
        label4.setAlignment(8);
        createContainer.addActor(label4);
        Label label5 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13405w = label5;
        label5.setColor(color);
        label5.setSize(159.0f, 24.0f);
        label5.setPosition(48.0f, f);
        label5.setAlignment(8);
        createContainer.addActor(label5);
        Label label6 = new Label("99%", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13398p = label6;
        label6.setAlignment(1);
        label6.setSize(71.0f, 48.0f);
        label6.setPosition(489.0f, f);
        createContainer.addActor(label6);
        float f5 = 600.0f;
        TileResources tileResources = new TileResources(600.0f);
        this.f13400r = tileResources;
        tileResources.setPosition(0.0f, 848.0f + scaledViewportHeight);
        createContainer.addActor(tileResources);
        Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), new Color(1.0f, 1.0f, 1.0f, 0.56f));
        Actor label7 = new Label(Game.f8589i.localeManager.i18n.get("resource_item").toUpperCase(), labelStyle);
        float f6 = 763.0f + scaledViewportHeight;
        label7.setPosition(40.0f, f6);
        label7.setSize(100.0f, 40.0f);
        createContainer.addActor(label7);
        Label label8 = new Label(Game.f8589i.localeManager.i18n.get("speed").toUpperCase(), labelStyle);
        float f7 = 322.0f;
        label8.setPosition(322.0f, f6);
        label8.setSize(96.0f, 40.0f);
        label8.setAlignment(1);
        createContainer.addActor(label8);
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("mined").toUpperCase(), labelStyle);
        label9.setPosition(438.0f, f6);
        label9.setSize(122.0f, 40.0f);
        label9.setAlignment(16);
        createContainer.addActor(label9);
        Color color2 = new Color(808464639);
        Label.LabelStyle labelStyle2 = new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color);
        Label.LabelStyle labelStyle3 = new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color);
        int i = 0;
        while (true) {
            ResourceType[] resourceTypeArr2 = ResourceType.values;
            if (i < resourceTypeArr2.length) {
                Group group = new Group();
                this.f13408z[i] = group;
                group.setTransform(false);
                group.setTouchable(Touchable.disabled);
                group.setSize(f5, 52.0f);
                group.setPosition(f4, (711.0f - (i * 56.0f)) + scaledViewportHeight);
                this.f13395b.addActor(group);
                Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image4.setSize(318.0f, 52.0f);
                image4.setColor(color2);
                group.addActor(image4);
                Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image5.setSize(96.0f, 52.0f);
                image5.setX(f7);
                image5.setColor(color2);
                group.addActor(image5);
                Image image6 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image6.setSize(178.0f, 52.0f);
                image6.setX(422.0f);
                image6.setColor(color2);
                group.addActor(image6);
                Image image7 = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[i]));
                this.f13380A[i] = image7;
                image7.setSize(32.0f, 32.0f);
                image7.setPosition(40.0f, 10.0f);
                group.addActor(image7);
                Label label10 = new Label(Game.f8589i.resourceManager.getName(resourceTypeArr2[i]), labelStyle2);
                this.f13381B[i] = label10;
                label10.setSize(100.0f, 52.0f);
                label10.setPosition(86.0f, 0.0f);
                group.addActor(label10);
                this.f13382C[i] = new Label("+0.00", labelStyle3);
                this.f13382C[i].setPosition(204.0f, 0.0f);
                this.f13382C[i].setSize(100.0f, 52.0f);
                this.f13382C[i].setAlignment(16);
                group.addActor(this.f13382C[i]);
                this.f13383D[i] = new Label("1.23", labelStyle3);
                this.f13383D[i].setPosition(f7, 0.0f);
                this.f13383D[i].setSize(96.0f, 52.0f);
                this.f13383D[i].setAlignment(1);
                group.addActor(this.f13383D[i]);
                this.f13384E[i] = new Label("123", labelStyle3);
                this.f13384E[i].setPosition(438.0f, 0.0f);
                this.f13384E[i].setSize(122.0f, 52.0f);
                this.f13384E[i].setAlignment(16);
                group.addActor(this.f13384E[i]);
                this.f13385F[i] = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
                this.f13385F[i].setColor(MaterialColor.AMBER.P500);
                this.f13385F[i].setPosition(435.0f, 0.0f);
                this.f13385F[i].setSize(70.0f, 52.0f);
                this.f13385F[i].setAlignment(1);
                group.addActor(this.f13385F[i]);
                i++;
                f5 = 600.0f;
                f4 = 0.0f;
                f7 = 322.0f;
            } else {
                Label label11 = new Label(Game.f8589i.localeManager.i18n.get("mined_items").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
                label11.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                label11.setAlignment(1);
                label11.setSize(600.0f, 18.0f);
                label11.setPosition(0.0f, 444.0f);
                this.f13395b.addActor(label11);
                Table table = new Table();
                this.f13407y = table;
                table.setSize(600.0f, 140.0f);
                this.f13407y.setPosition(0.0f, 296.0f);
                this.f13395b.addActor(this.f13407y);
                UpgradeSubmenu upgradeSubmenu = new UpgradeSubmenu();
                this.f13386G = upgradeSubmenu;
                upgradeSubmenu.addListener(new UpgradeSubmenu.UpgradeSubmenuListener() { // from class: com.prineside.tdi2.ui.components.MinerMenu.1
                    @Override // com.prineside.tdi2.p036ui.components.UpgradeSubmenu.UpgradeSubmenuListener
                    public void upgradeButtonStateChanged(boolean z) {
                        MinerMenu.this.m20454j();
                    }

                    @Override // com.prineside.tdi2.p036ui.components.UpgradeSubmenu.UpgradeSubmenuListener
                    public void globalUpgradeButtonConfirmed() {
                        final Miner m20456h = MinerMenu.this.m20456h();
                        if (m20456h != null) {
                            int globalUpgradePrice = gameSystemProvider.miner.getGlobalUpgradePrice(m20456h.type);
                            Game game = Game.f8589i;
                            game.uiManager.dialog.showConfirm(game.assetManager.replaceRegionAliasesWithChars(Game.f8589i.localeManager.i18n.get("upgrade_all_miners_by_type_confirm") + " <@game-ui-coin-icon>[#FDD835]" + ((Object) StringFormatter.commaSeparatedNumber(globalUpgradePrice)) + "[]"), new Runnable() { // from class: com.prineside.tdi2.ui.components.MinerMenu.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    gameSystemProvider.miner.globalUpgradeMinerAction(m20456h.type);
                                    MinerMenu.this.m20454j();
                                }
                            });
                        }
                    }

                    @Override // com.prineside.tdi2.p036ui.components.UpgradeSubmenu.UpgradeSubmenuListener
                    public void upgradeButtonConfirmed() {
                        Miner m20456h = MinerMenu.this.m20456h();
                        if (m20456h != null) {
                            gameSystemProvider.miner.upgradeMinerAction(m20456h);
                            MinerMenu.this.m20454j();
                        }
                    }
                });
                upgradeSubmenu.setPosition(0.0f, 132.0f);
                this.f13395b.addActor(upgradeSubmenu);
                SellButton sellButton = new SellButton(new Runnable() { // from class: com.prineside.tdi2.ui.components.MinerMenu.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Miner m20456h = MinerMenu.this.m20456h();
                        if (m20456h != null) {
                            gameSystemProvider.miner.sellMinerAction(m20456h);
                        }
                    }
                });
                this.f13387H = sellButton;
                sellButton.setPosition(368.0f, 40.0f);
                this.f13395b.addActor(sellButton);
                return;
            }
        }
    }

    public void draw(float f) {
        float preparationProgress;
        if (this.f13396d) {
            Miner m20456h = m20456h();
            if (m20456h != null) {
                if (m20456h.isPrepared()) {
                    if (m20456h.nextMinedResourceType != null) {
                        preparationProgress = m20456h.getVisualMiningProgress();
                        this.f13399q.setColor(Game.f8589i.resourceManager.getColor(m20456h.nextMinedResourceType));
                        this.f13402t.setColor(Game.f8589i.resourceManager.getColor(m20456h.nextMinedResourceType));
                        this.f13402t.setDrawable(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[m20456h.nextMinedResourceType.ordinal()]));
                    } else {
                        preparationProgress = 0.0f;
                    }
                    this.f13402t.setVisible(true);
                    this.f13401s.setVisible(false);
                    this.f13404v.setVisible(true);
                    this.f13403u.setVisible(false);
                    StringBuilder stringBuilder = f13379O;
                    stringBuilder.setLength(0);
                    stringBuilder.append((int) (100.0f * preparationProgress));
                    stringBuilder.append('%');
                    this.f13398p.setText(stringBuilder);
                } else {
                    preparationProgress = m20456h.getPreparationProgress();
                    if (preparationProgress >= 0.0f && preparationProgress <= 1.0f) {
                        this.f13399q.setColor(MaterialColor.GREY.P500);
                        this.f13402t.setVisible(false);
                        this.f13401s.setVisible(true);
                        this.f13404v.setVisible(false);
                        this.f13403u.setVisible(true);
                        this.f13398p.setText(StringFormatter.digestTime((int) m20456h.getInstallTimeLeft()));
                    } else {
                        throw new IllegalStateException("Preparation progress " + preparationProgress);
                    }
                }
                this.f13399q.setCoeff(preparationProgress);
                if (m20456h.doubleSpeedTimeLeft > 0.0f) {
                    StringBuilder stringBuilder2 = f13379O;
                    stringBuilder2.setLength(0);
                    stringBuilder2.append("x2: ");
                    stringBuilder2.append(StringFormatter.digestTime(StrictMath.round(m20456h.doubleSpeedTimeLeft)));
                    this.f13405w.setText(stringBuilder2);
                    this.f13406x.setText(stringBuilder2);
                    this.f13405w.setVisible(true);
                    this.f13406x.setVisible(true);
                    return;
                }
                this.f13405w.setVisible(false);
                this.f13406x.setVisible(false);
                return;
            }
            this.f13399q.setCoeff(0.0f);
        }
    }

    /* renamed from: h */
    public final Miner m20456h() {
        Tile selectedTile = this.f13388I.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.SOURCE) {
            return ((SourceTile) selectedTile).miner;
        }
        return null;
    }

    /* renamed from: i */
    public final void m20455i(boolean z) {
        if (this.f13396d != z) {
            this.f13396d = z;
            if (z) {
                this.f13395b.show();
                m20454j();
                return;
            }
            this.f13395b.hide();
        }
    }

    /* renamed from: j */
    public final void m20454j() {
        int i;
        Tile selectedTile = this.f13388I.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.SOURCE) {
            SourceTile sourceTile = (SourceTile) selectedTile;
            if (sourceTile.miner != null) {
                this.f13395b.setLabelOverTitleTilePos(selectedTile);
                Miner miner = sourceTile.miner;
                Miner.Factory<? extends Miner> factory = Game.f8589i.minerManager.getFactory(miner.type);
                this.f13397k.setText(factory.getTitle());
                this.f13400r.setTile(sourceTile);
                int i2 = 0;
                while (true) {
                    ResourceType[] resourceTypeArr = ResourceType.values;
                    if (i2 >= resourceTypeArr.length) {
                        break;
                    }
                    ResourceType resourceType = resourceTypeArr[i2];
                    if (factory.canMineResource(resourceType)) {
                        this.f13408z[i2].setVisible(true);
                        this.f13383D[i2].setText(StringFormatter.compactNumber(this.f13388I.miner.getMiningSpeed(miner, resourceType, miner.getUpgradeLevel()) * 60.0f, true));
                        int i3 = miner.getTile().minedResources[i2];
                        if (this.f13388I.gameState.gameMode == GameStateSystem.GameMode.USER_MAPS && (i = i3 - miner.getTile().getResourcesCount(resourceType)) >= 0) {
                            i3 -= i;
                        } else {
                            i = 0;
                        }
                        if (i > 0) {
                            this.f13385F[i2].setText(StringFormatter.compactNumber(i, false).append(" +"));
                            this.f13385F[i2].setVisible(true);
                        } else {
                            this.f13385F[i2].setVisible(false);
                        }
                        this.f13384E[i2].setText(StringFormatter.compactNumber(i3, false));
                        if (sourceTile.getResourcesCount(resourceType) <= 0 && miner.getTile().minedResources[i2] <= 0) {
                            this.f13383D[i2].setColor(0.14f, 0.14f, 0.14f, 1.0f);
                            this.f13384E[i2].setColor(0.14f, 0.14f, 0.14f, 1.0f);
                            this.f13380A[i2].setColor(0.14f, 0.14f, 0.14f, 1.0f);
                            this.f13381B[i2].setColor(0.14f, 0.14f, 0.14f, 1.0f);
                        } else {
                            Label label = this.f13383D[i2];
                            Color color = Color.WHITE;
                            label.setColor(color);
                            this.f13384E[i2].setColor(color);
                            this.f13380A[i2].setColor(Game.f8589i.resourceManager.getColor(resourceType));
                            this.f13381B[i2].setColor(Game.f8589i.resourceManager.getColor(resourceType));
                        }
                    } else {
                        this.f13408z[i2].setVisible(false);
                    }
                    i2++;
                }
                if (this.f13386G.isButtonSelected()) {
                    int i4 = 0;
                    while (true) {
                        ResourceType[] resourceTypeArr2 = ResourceType.values;
                        if (i4 >= resourceTypeArr2.length) {
                            break;
                        }
                        ResourceType resourceType2 = resourceTypeArr2[i4];
                        if (factory.canMineResource(resourceType2)) {
                            if (miner.getUpgradeLevel() < this.f13388I.miner.getMaxUpgradeLevel(miner.type)) {
                                float miningSpeed = this.f13388I.miner.getMiningSpeed(miner, resourceType2, miner.getUpgradeLevel() + 1) - this.f13388I.miner.getMiningSpeed(miner, resourceType2, miner.getUpgradeLevel());
                                if (miningSpeed >= 0.0f) {
                                    StringBuilder stringBuilder = f13379O;
                                    stringBuilder.setLength(0);
                                    stringBuilder.append(SignatureVisitor.EXTENDS);
                                    stringBuilder.append(StringFormatter.compactNumber(miningSpeed * 60.0f, true));
                                    this.f13382C[i4].setText(stringBuilder);
                                    this.f13382C[i4].setColor(MaterialColor.GREEN.P500);
                                } else {
                                    this.f13382C[i4].setText(StringFormatter.compactNumber(miningSpeed * 60.0f, true));
                                    this.f13382C[i4].setColor(MaterialColor.ORANGE.P500);
                                }
                                this.f13382C[i4].setVisible(true);
                            }
                        } else {
                            this.f13382C[i4].setVisible(false);
                        }
                        i4++;
                    }
                } else {
                    for (int i5 = 0; i5 < ResourceType.values.length; i5++) {
                        this.f13382C[i5].setVisible(false);
                    }
                }
                this.f13407y.clearChildren();
                int lootSlots = this.f13388I.loot.getLootSlots(miner.type);
                for (int i6 = 0; i6 < lootSlots; i6++) {
                    ItemCell itemCell = new ItemCell();
                    itemCell.setColRow(i6, 0);
                    itemCell.setCompact();
                    Array<ItemStack> array = miner.minedItems;
                    if (array.size > i6) {
                        itemCell.setItem(array.get(i6));
                    }
                    this.f13407y.add((Table) itemCell);
                }
                this.f13386G.m20304B(miner.getUpgradeLevel(), this.f13388I.miner.getMaxUpgradeLevel(miner.type));
                if (miner.getUpgradeLevel() < this.f13388I.miner.getMaxUpgradeLevel(miner.type)) {
                    this.f13386G.m20303C(this.f13388I.miner.getUpgradePrice(miner));
                } else {
                    this.f13386G.m20303C(-1);
                }
                m20453k();
                this.f13387H.setPrice(miner.getSellPrice());
            }
        }
    }

    /* renamed from: k */
    public final void m20453k() {
        boolean z;
        Miner m20456h = m20456h();
        if (m20456h != null) {
            UpgradeSubmenu upgradeSubmenu = this.f13386G;
            if (this.f13388I.gameState.getMoney() >= this.f13388I.miner.getUpgradePrice(m20456h) && m20456h.getUpgradeLevel() < this.f13388I.miner.getMaxUpgradeLevel(m20456h.type)) {
                z = true;
            } else {
                z = false;
            }
            upgradeSubmenu.m20305A(z);
        }
    }
}
