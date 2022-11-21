package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntFloatMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.items.GameValueLevelItem;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Iterator;
import java.util.Locale;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: com.prineside.tdi2.ui.components.TargetMenu */
/* loaded from: classes2.dex */
public class TargetMenu {

    /* renamed from: l */
    public static final Color f13683l = new Color(623191551);

    /* renamed from: m */
    public static final StringBuilder f13684m = new StringBuilder();

    /* renamed from: n */
    public static final IntFloatMap f13685n = new IntFloatMap();

    /* renamed from: a */
    public final SideMenu f13686a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13687b;

    /* renamed from: c */
    public boolean f13688c;

    /* renamed from: d */
    public Table f13689d;

    /* renamed from: e */
    public Image f13690e;

    /* renamed from: f */
    public Image f13691f;

    /* renamed from: g */
    public Label f13692g;

    /* renamed from: h */
    public int f13693h = 0;

    /* renamed from: i */
    public GameSystemProvider f13694i;

    /* renamed from: j */
    public final _SideMenuListener f13695j;

    /* renamed from: k */
    public final _MapSystemListener f13696k;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.TargetMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = TargetMenu.this.f13694i.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.TARGET) {
                TargetMenu.this.m20360f();
                TargetMenu.this.m20361e(true);
                return;
            }
            TargetMenu.this.m20361e(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.TargetMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            TargetMenu.this.m20360f();
        }
    }

    /* renamed from: f */
    public final void m20360f() {
        Tile selectedTile = this.f13694i.map.getSelectedTile();
        this.f13687b.setLabelOverTitleTilePos(selectedTile);
        this.f13689d.clearChildren();
        if (selectedTile != null && selectedTile.type == TileType.TARGET) {
            TargetTile targetTile = (TargetTile) selectedTile;
            this.f13690e.setVisible(targetTile.isDisableAbilities());
            this.f13691f.setVisible(targetTile.isUseStockGameValues());
            Array<GameValueConfig> gameValues = targetTile.getGameValues();
            if (gameValues.size != 0) {
                for (int i = 0; i < gameValues.size; i++) {
                    GameValueConfig gameValueConfig = gameValues.get(i);
                    m20362d(gameValueConfig.type, gameValueConfig.value, gameValueConfig.allowBonuses, gameValueConfig.overwrite);
                }
            } else {
                Label label = new Label(Game.f8589i.localeManager.i18n.get("base_has_no_effects"), Game.f8589i.assetManager.getLabelStyle(24));
                label.setAlignment(1);
                this.f13689d.add((Table) label).size(600.0f, 52.0f).padBottom(4.0f).row();
            }
            if (this.f13694i.gameState.basicLevelName != null) {
                f13685n.clear();
                BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.f13694i.gameState.basicLevelName);
                int i2 = 0;
                while (true) {
                    Array<BasicLevelQuestConfig> array = level.quests;
                    if (i2 >= array.size) {
                        break;
                    }
                    BasicLevelQuestConfig basicLevelQuestConfig = array.items[i2];
                    if (basicLevelQuestConfig.wasEverCompleted()) {
                        int i3 = 0;
                        while (true) {
                            Array<ItemStack> array2 = basicLevelQuestConfig.prizes;
                            if (i3 < array2.size) {
                                ItemStack itemStack = array2.items[i3];
                                if (itemStack.getItem().getType() == ItemType.GAME_VALUE_LEVEL) {
                                    GameValueLevelItem gameValueLevelItem = (GameValueLevelItem) itemStack.getItem();
                                    IntFloatMap intFloatMap = f13685n;
                                    intFloatMap.put(gameValueLevelItem.gameValueType.ordinal(), intFloatMap.get(gameValueLevelItem.gameValueType.ordinal(), 0.0f) + ((float) gameValueLevelItem.delta));
                                }
                                i3++;
                            }
                        }
                    }
                    i2++;
                }
                IntFloatMap intFloatMap2 = f13685n;
                if (!intFloatMap2.isEmpty()) {
                    Label label2 = new Label(Game.f8589i.localeManager.i18n.get("quests"), Game.f8589i.assetManager.getLabelStyle(24));
                    label2.setAlignment(1);
                    label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                    this.f13689d.add((Table) label2).size(600.0f, 52.0f).padBottom(4.0f).row();
                    Iterator<IntFloatMap.Entry> it = intFloatMap2.iterator();
                    while (it.hasNext()) {
                        IntFloatMap.Entry next = it.next();
                        m20362d(GameValueType.values[next.key], next.value, true, false);
                    }
                }
            }
        }
        this.f13689d.add().expandX().fillX().height(40.0f).row();
        this.f13689d.add().expand().fill();
        m20359g();
    }

    public TargetMenu(SideMenu sideMenu, GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13695j = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13696k = _mapsystemlistener;
        this.f13694i = gameSystemProvider;
        this.f13686a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13687b = createContainer;
        Actor label = new Label(Game.f8589i.localeManager.i18n.get("tile_name_TARGET").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label.setSize(460.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        label.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(label);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-ability"));
        this.f13690e = image;
        Color color = MaterialColor.RED.P500;
        image.setColor(color);
        this.f13690e.setSize(48.0f, 48.0f);
        float f = 986.0f + scaledViewportHeight;
        this.f13690e.setPosition(450.0f, f);
        Image image2 = this.f13690e;
        Touchable touchable = Touchable.enabled;
        image2.setTouchable(touchable);
        this.f13690e.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.TargetMenu.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f2, float f3) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showAlert(game.localeManager.i18n.get("abilities_not_available_on_map"));
            }
        });
        createContainer.addActor(this.f13690e);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-research"));
        this.f13691f = image3;
        image3.setColor(color);
        this.f13691f.setSize(48.0f, 48.0f);
        this.f13691f.setPosition(514.0f, f);
        this.f13691f.setTouchable(touchable);
        this.f13691f.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.TargetMenu.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f2, float f3) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showAlert(game.localeManager.i18n.get("map_not_affected_by_researches"));
            }
        });
        createContainer.addActor(this.f13691f);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tile_description_TARGET"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setSize(420.0f, 100.0f);
        label2.setPosition(40.0f, 884.0f + scaledViewportHeight);
        label2.setAlignment(10);
        label2.setWrap(true);
        createContainer.addActor(label2);
        Table table = new Table();
        table.setSize(600.0f, 52.0f);
        table.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(f13683l));
        table.setPosition(0.0f, 886.0f + scaledViewportHeight);
        createContainer.addActor(table);
        table.add((Table) new Label(Game.f8589i.localeManager.i18n.get("base_menu_gained_green_papers"), Game.f8589i.assetManager.getLabelStyle(24))).expandX().fillX().height(52.0f).padLeft(40.0f);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-money"));
        Color color2 = MaterialColor.GREEN.P500;
        image4.setColor(color2);
        table.add((Table) image4).size(32.0f).padTop(10.0f).padBottom(10.0f).padRight(8.0f);
        Label label3 = new Label("0", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13692g = label3;
        label3.setColor(color2);
        table.add((Table) this.f13692g).height(52.0f).padRight(40.0f);
        Actor label4 = new Label(Game.f8589i.localeManager.i18n.get("effect").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
        label4.setSize(100.0f, 16.0f);
        float f2 = 846.0f + scaledViewportHeight;
        label4.setPosition(40.0f, f2);
        label4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        createContainer.addActor(label4);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("ignores_researches_short").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
        label5.setSize(100.0f, 16.0f);
        label5.setAlignment(16);
        label5.setPosition(340.0f, f2);
        label5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        createContainer.addActor(label5);
        Label label6 = new Label(Game.f8589i.localeManager.i18n.get("value_units").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
        label6.setSize(100.0f, 16.0f);
        label6.setPosition(460.0f, f2);
        label6.setAlignment(16);
        label6.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        createContainer.addActor(label6);
        this.f13689d = new Table();
        Actor scrollPane = new ScrollPane(this.f13689d);
        scrollPane.setSize(600.0f, scaledViewportHeight + 830.0f);
        createContainer.addActor(scrollPane);
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        createContainer.hide();
    }

    /* renamed from: d */
    public final void m20362d(final GameValueType gameValueType, double d, boolean z, boolean z2) {
        Group group = new Group();
        group.setTransform(false);
        Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(600.0f, 52.0f);
        image.setColor(f13683l);
        group.addActor(image);
        Array<TextureRegionConfig> icon = Game.f8589i.gameValueManager.getStockValueConfig(gameValueType).getIcon();
        for (int i = 0; i < icon.size; i++) {
            group.addActor(icon.items[i].createImage(40.0f, 6.0f, 40.0f));
        }
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        label.setSize(300.0f, 52.0f);
        label.setPosition(96.0f, 0.0f);
        StringBuilder stringBuilder = f13684m;
        stringBuilder.setLength(0);
        stringBuilder.append(Game.f8589i.gameValueManager.getTitle(gameValueType));
        if (stringBuilder.length() > 36) {
            stringBuilder.setLength(36);
            stringBuilder.append("...");
            label.setTouchable(Touchable.enabled);
            label.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.TargetMenu.3
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showAlert(game.gameValueManager.getTitle(gameValueType));
                }
            });
        }
        label.setText(stringBuilder);
        group.addActor(label);
        if (!z) {
            Actor image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-check"));
            image2.setSize(32.0f, 32.0f);
            image2.setPosition(414.0f, 10.0f);
            group.addActor(image2);
        }
        stringBuilder.setLength(0);
        GameValueManager.ValueUnits valueUnits = Game.f8589i.gameValueManager.getStockValueConfig(gameValueType).units;
        if (valueUnits == GameValueManager.ValueUnits.BOOLEAN) {
            if (d == 0.0d) {
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("disabled").toLowerCase(Locale.ENGLISH));
            }
        } else {
            stringBuilder.append(Game.f8589i.gameValueManager.formatEffectValue(d, valueUnits));
            if (z2) {
                stringBuilder.setCharAt(0, SignatureVisitor.INSTANCEOF);
            }
            if (stringBuilder.length == 1) {
                stringBuilder.append('0');
            }
        }
        Label label2 = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(24));
        label2.setPosition(460.0f, 0.0f);
        label2.setSize(100.0f, 52.0f);
        label2.setAlignment(16);
        group.addActor(label2);
        this.f13689d.add((Table) group).size(600.0f, 52.0f).padBottom(4.0f).row();
    }

    public void draw(float f) {
        if (this.f13688c) {
            m20359g();
        }
    }

    /* renamed from: e */
    public final void m20361e(boolean z) {
        if (this.f13688c != z) {
            this.f13688c = z;
            if (z) {
                this.f13687b.show();
            } else {
                this.f13687b.hide();
            }
        }
    }

    /* renamed from: g */
    public final void m20359g() {
        int calculatePrizeGreenPapers = this.f13694i.gameState.calculatePrizeGreenPapers();
        if (this.f13693h != calculatePrizeGreenPapers) {
            this.f13692g.setText(StringFormatter.commaSeparatedNumber(calculatePrizeGreenPapers));
            this.f13693h = calculatePrizeGreenPapers;
        }
    }
}
