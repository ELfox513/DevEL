package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.BossTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Locale;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: com.prineside.tdi2.ui.components.BossTileMenu */
/* loaded from: classes2.dex */
public class BossTileMenu {

    /* renamed from: i */
    public static final Color f12801i = new Color(623191551);

    /* renamed from: j */
    public static final StringBuilder f12802j = new StringBuilder();

    /* renamed from: a */
    public final SideMenu f12803a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f12804b;

    /* renamed from: c */
    public boolean f12805c;

    /* renamed from: d */
    public Table f12806d;

    /* renamed from: e */
    public Label f12807e;

    /* renamed from: f */
    public GameSystemProvider f12808f;

    /* renamed from: g */
    public final _SideMenuListener f12809g;

    /* renamed from: h */
    public final _MapSystemListener f12810h;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.BossTileMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = BossTileMenu.this.f12808f.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.BOSS) {
                BossTileMenu.this.m20644e();
                BossTileMenu.this.m20645d(true);
                return;
            }
            BossTileMenu.this.m20645d(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.BossTileMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            BossTileMenu.this.m20644e();
        }
    }

    public BossTileMenu(SideMenu sideMenu, GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f12809g = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f12810h = _mapsystemlistener;
        this.f12808f = gameSystemProvider;
        this.f12803a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f12804b = createContainer;
        Actor label = new Label(Game.f8589i.localeManager.i18n.get("tile_name_BOSS").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label.setSize(460.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        label.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tile_description_BOSS"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setSize(420.0f, 100.0f);
        label2.setPosition(40.0f, 884.0f + scaledViewportHeight);
        label2.setAlignment(10);
        label2.setWrap(true);
        createContainer.addActor(label2);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f12807e = label3;
        label3.setSize(600.0f, 26.0f);
        this.f12807e.setPosition(0.0f, 898.0f + scaledViewportHeight);
        this.f12807e.setAlignment(1);
        this.f12807e.setColor(MaterialColor.GREEN.P500);
        createContainer.addActor(this.f12807e);
        Actor label4 = new Label(Game.f8589i.localeManager.i18n.get("effect").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
        label4.setSize(100.0f, 16.0f);
        float f = 846.0f + scaledViewportHeight;
        label4.setPosition(40.0f, f);
        label4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        createContainer.addActor(label4);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("value_units").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
        label5.setSize(100.0f, 16.0f);
        label5.setPosition(460.0f, f);
        label5.setAlignment(16);
        label5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        createContainer.addActor(label5);
        this.f12806d = new Table();
        Actor scrollPane = new ScrollPane(this.f12806d);
        scrollPane.setSize(600.0f, scaledViewportHeight + 830.0f);
        createContainer.addActor(scrollPane);
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        createContainer.hide();
    }

    /* renamed from: d */
    public final void m20645d(boolean z) {
        String str;
        if (this.f12805c != z) {
            this.f12805c = z;
            if (z) {
                this.f12804b.show();
            } else {
                this.f12804b.hide();
            }
            if (z) {
                str = "shown";
            } else {
                str = "hidden";
            }
            Logger.log("TargetMenu", str);
        }
    }

    /* renamed from: e */
    public final void m20644e() {
        int i;
        this.f12806d.clearChildren();
        Tile selectedTile = this.f12808f.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.BOSS) {
            this.f12804b.setLabelOverTitleTilePos(selectedTile);
            BossTile bossTile = (BossTile) selectedTile;
            this.f12807e.setText(bossTile.getBossTileTypeName());
            Array<GameValueConfig> gameValues = bossTile.getGameValues();
            float f = 40.0f;
            int i2 = 24;
            float f2 = 600.0f;
            if (gameValues.size != 0) {
                int i3 = 0;
                while (i3 < gameValues.size) {
                    GameValueConfig gameValueConfig = gameValues.get(i3);
                    Group group = new Group();
                    group.setTransform(false);
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    image.setSize(f2, 52.0f);
                    image.setColor(f12801i);
                    group.addActor(image);
                    Array<TextureRegionConfig> icon = Game.f8589i.gameValueManager.getStockValueConfig(gameValueConfig.type).getIcon();
                    for (int i4 = 0; i4 < icon.size; i4++) {
                        group.addActor(icon.items[i4].createImage(f, 6.0f, f));
                    }
                    StringBuilder stringBuilder = f12802j;
                    stringBuilder.setLength(0);
                    stringBuilder.append(Game.f8589i.gameValueManager.getTitle(gameValueConfig.type));
                    if (stringBuilder.length() > 36) {
                        stringBuilder.setLength(36);
                        stringBuilder.append("...");
                    }
                    Label label = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(i2));
                    label.setSize(100.0f, 52.0f);
                    label.setPosition(96.0f, 0.0f);
                    group.addActor(label);
                    stringBuilder.setLength(0);
                    GameValueManager.ValueUnits valueUnits = Game.f8589i.gameValueManager.getStockValueConfig(gameValueConfig.type).units;
                    if (valueUnits == GameValueManager.ValueUnits.BOOLEAN) {
                        if (gameValueConfig.value == 0.0d) {
                            stringBuilder.append(Game.f8589i.localeManager.i18n.get("disabled").toLowerCase(Locale.ENGLISH));
                        }
                    } else {
                        stringBuilder.append(Game.f8589i.gameValueManager.formatEffectValue(gameValueConfig.value, valueUnits));
                        if (gameValueConfig.overwrite) {
                            stringBuilder.setCharAt(0, SignatureVisitor.INSTANCEOF);
                        }
                    }
                    Label label2 = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(24));
                    label2.setPosition(460.0f, 0.0f);
                    label2.setSize(100.0f, 52.0f);
                    label2.setAlignment(16);
                    group.addActor(label2);
                    this.f12806d.add((Table) group).size(600.0f, 52.0f).padBottom(4.0f).row();
                    i3++;
                    f = 40.0f;
                    i2 = 24;
                    f2 = 600.0f;
                }
            } else {
                Label label3 = new Label(Game.f8589i.localeManager.i18n.get("tile_has_no_effects"), Game.f8589i.assetManager.getLabelStyle(24));
                label3.setAlignment(1);
                this.f12806d.add((Table) label3).size(600.0f, 52.0f).padBottom(4.0f).row();
            }
            BossTile.BossWavesConfig bossWavesConfig = bossTile.getBossWavesConfig();
            if (bossWavesConfig.bossWavePairs.size > 0) {
                Group group2 = new Group();
                group2.setTransform(false);
                this.f12806d.add((Table) group2).size(600.0f, 16.0f).padTop(16.0f).padBottom(16.0f).row();
                Label label4 = new Label(Game.f8589i.localeManager.i18n.get("enemy_name_BOSS").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
                label4.setSize(100.0f, 16.0f);
                label4.setPosition(40.0f, 0.0f);
                label4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                group2.addActor(label4);
                Label label5 = new Label(Game.f8589i.localeManager.i18n.get("main_ui_wave_title").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
                label5.setSize(100.0f, 16.0f);
                label5.setPosition(460.0f, 0.0f);
                label5.setAlignment(16);
                label5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                group2.addActor(label5);
                int i5 = 0;
                while (true) {
                    Array<BossTile.BossTypeWavePair> array = bossWavesConfig.bossWavePairs;
                    if (i5 >= array.size) {
                        break;
                    }
                    BossTile.BossTypeWavePair bossTypeWavePair = array.items[i5];
                    Group group3 = new Group();
                    group3.setTransform(false);
                    Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    image2.setSize(600.0f, 52.0f);
                    image2.setColor(f12801i);
                    group3.addActor(image2);
                    EnemyType bossEnemyType = Game.f8589i.enemyManager.getBossEnemyType(bossTypeWavePair.bossType);
                    Image image3 = new Image(Game.f8589i.enemyManager.getFactory(bossEnemyType).getTexture());
                    image3.setSize(64.0f, 64.0f);
                    image3.setPosition(30.0f, -6.0f);
                    group3.addActor(image3);
                    Label label6 = new Label(Game.f8589i.enemyManager.getFactory(bossEnemyType).getTitle(), Game.f8589i.assetManager.getLabelStyle(21));
                    label6.setSize(64.0f, 52.0f);
                    label6.setPosition(112.0f, 0.0f);
                    group3.addActor(label6);
                    String valueOf = String.valueOf(bossTypeWavePair.wave + bossWavesConfig.startDelay);
                    if (bossWavesConfig.repeatCount <= 0) {
                        valueOf = valueOf + ", " + (i + bossWavesConfig.cycleLength) + "...";
                    }
                    Label label7 = new Label(valueOf, Game.f8589i.assetManager.getLabelStyle(24));
                    label7.setSize(100.0f, 52.0f);
                    label7.setPosition(460.0f, 0.0f);
                    label7.setAlignment(16);
                    group3.addActor(label7);
                    this.f12806d.add((Table) group3).size(600.0f, 52.0f).padBottom(4.0f).row();
                    i5++;
                }
            }
            this.f12806d.add().expandX().fillX().height(40.0f).row();
            this.f12806d.add().expand().fill();
        }
    }
}
