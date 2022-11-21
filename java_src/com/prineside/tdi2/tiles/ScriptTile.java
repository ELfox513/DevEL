package com.prineside.tdi2.tiles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextArea;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ScriptTile extends Tile {

    /* renamed from: t */
    public static final StringBuilder f11977t = new StringBuilder();
    @NAGS

    /* renamed from: r */
    public long f11978r;
    @NAGS

    /* renamed from: s */
    public String f11979s;

    /* loaded from: classes2.dex */
    public static class ScriptTileFactory extends Tile.Factory.AbstractFactory<ScriptTile> {

        /* renamed from: d */
        public TextureRegion f11983d;

        public ScriptTileFactory() {
            super(TileType.SCRIPT);
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            return 0;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f11983d = Game.f8589i.assetManager.getTextureRegion("tile-type-script");
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public ScriptTile create() {
            return new ScriptTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public ScriptTile fromJson(JsonValue jsonValue) {
            ScriptTile scriptTile = (ScriptTile) super.fromJson(jsonValue);
            if (jsonValue.has("d")) {
                scriptTile.setId(jsonValue.get("d").getLong("id", PMath.generateNewId()));
                scriptTile.f11979s = jsonValue.get("d").getString("script", null);
            }
            return scriptTile;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, CoreTile.FIXED_LEVEL_XP_REQUIREMENT));
    }

    @Override // com.prineside.tdi2.Tile
    public void drawExtras(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        String str = this.f11979s;
        if (str != null && str.length() != 0 && m20799j(drawMode)) {
            float f5 = f4 / 128.0f;
            float f6 = 16.0f * f5;
            DrawUtils.drawFontToCache(spriteCache, m20800i(), Game.f8589i.assetManager.getSmallDebugFont(), Config.WHITE_SEMITRANSPARENT_COLOR_FLOAT_BITS, f + f6, (f2 + f4) - f6, f3, 8, false, f5);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
    }

    public long getId() {
        return this.f11978r;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SPECIAL;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        return 0.1d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        return RarityType.LEGENDARY;
    }

    public String getScript() {
        return this.f11979s;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    /* renamed from: j */
    public final boolean m20799j(MapRenderingSystem.DrawMode drawMode) {
        return drawMode == MapRenderingSystem.DrawMode.MAP_EDITOR;
    }

    public void setId(long j) {
        this.f11978r = j;
    }

    public void setScript(String str) {
        this.f11979s = str;
    }

    @Override // com.prineside.tdi2.Tile
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(" (id: ");
        sb.append(getId());
        sb.append(", has script: ");
        sb.append(this.f11979s == null ? "false" : "true");
        sb.append(")");
        return sb.toString();
    }

    public ScriptTile() {
        super(TileType.SCRIPT);
        setId(PMath.generateNewId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m20794o(MapEditorItemInfoMenu mapEditorItemInfoMenu) {
        String contents = Gdx.app.getClipboard().getContents();
        if (contents != null && contents.length() > 0) {
            setScript(contents);
            DelayedRemovalArray<ItemStack> itemsByType = Game.f8589i.progressManager.getItemsByType(ItemType.TILE);
            int i = 0;
            while (true) {
                if (i >= itemsByType.size) {
                    break;
                }
                Tile tile = ((TileItem) itemsByType.items[i].getItem()).tile;
                if (tile.type == TileType.SCRIPT) {
                    ScriptTile scriptTile = (ScriptTile) tile;
                    if (scriptTile.getId() == getId()) {
                        scriptTile.setScript(contents);
                        Game.f8589i.progressManager.requireDelayedSave();
                        break;
                    }
                }
                i++;
            }
            mapEditorItemInfoMenu.setItem(mapEditorItemInfoMenu.currentItem);
            mapEditorItemInfoMenu.notifySelectedTileChanged();
            Game.f8589i.soundManager.playStatic(StaticSoundType.SUCCESS);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("ID");
        itemCreationOverlay.textField(String.valueOf(getId()), 300.0f, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.t
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                ScriptTile.this.m20798k(itemCreationOverlay, (String) obj);
            }
        }, false);
        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-restart"), new Runnable() { // from class: com.prineside.tdi2.tiles.u
            @Override // java.lang.Runnable
            public final void run() {
                ScriptTile.this.m20797l(itemCreationOverlay);
            }
        }, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P300, MaterialColor.LIGHT_BLUE.P700);
        paddedImageButton.setIconSize(40.0f, 40.0f);
        paddedImageButton.setIconPosition(12.0f, 12.0f);
        itemCreationOverlay.form.add((Table) paddedImageButton).top().left().padLeft(10.0f).size(64.0f).row();
    }

    @Override // com.prineside.tdi2.Tile
    public void fillMapEditorMenu(Group group, final MapEditorItemInfoMenu mapEditorItemInfoMenu) {
        float f;
        String str;
        Actor label = new Label("Source code", Game.f8589i.assetManager.getLabelStyle(21));
        label.setPosition(40.0f, 800.0f);
        label.setSize(200.0f, 16.0f);
        group.addActor(label);
        Label label2 = new Label(Long.toHexString(getId()), Game.f8589i.assetManager.getLabelStyle(21));
        label2.setPosition(40.0f, 800.0f);
        label2.setSize(440.0f, 16.0f);
        label2.setAlignment(16);
        label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        group.addActor(label2);
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getDebugFont(false), Color.WHITE, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
        textFieldStyle.cursor.setMinWidth(2.0f);
        textFieldStyle.background.setLeftWidth(mapEditorItemInfoMenu.textFieldStyle.background.getLeftWidth() + 10.0f);
        textFieldStyle.background.setRightWidth(mapEditorItemInfoMenu.textFieldStyle.background.getRightWidth() + 10.0f);
        textFieldStyle.background.setBottomHeight(mapEditorItemInfoMenu.textFieldStyle.background.getBottomHeight() + 5.0f);
        textFieldStyle.background.setTopHeight(mapEditorItemInfoMenu.textFieldStyle.background.getTopHeight() + 10.0f);
        final TextArea textArea = new TextArea(getScript(), textFieldStyle);
        final ScrollPane scrollPane = new ScrollPane(textArea, Game.f8589i.assetManager.getScrollPaneStyle(12.0f));
        textArea.setOnlyFontChars(false);
        textArea.setProgrammaticChangeEvents(true);
        if (mapEditorItemInfoMenu.expandCodeEditor) {
            f = 720.0f;
        } else {
            f = 0.0f;
        }
        scrollPane.setSize(f + 440.0f, 364.0f);
        scrollPane.setPosition(40.0f, 420.0f);
        group.addActor(scrollPane);
        AssetManager assetManager = Game.f8589i.assetManager;
        if (mapEditorItemInfoMenu.expandCodeEditor) {
            str = "icon-triangle-left";
        } else {
            str = "icon-triangle-right";
        }
        PaddedImageButton paddedImageButton = new PaddedImageButton(assetManager.getDrawable(str), new Runnable() { // from class: com.prineside.tdi2.tiles.ScriptTile.1
            @Override // java.lang.Runnable
            public void run() {
                MapEditorItemInfoMenu mapEditorItemInfoMenu2 = mapEditorItemInfoMenu;
                boolean z = !mapEditorItemInfoMenu2.expandCodeEditor;
                mapEditorItemInfoMenu2.expandCodeEditor = z;
                if (z) {
                    scrollPane.setWidth(1160.0f);
                } else {
                    scrollPane.setWidth(440.0f);
                }
            }
        }, MaterialColor.GREY.P500, MaterialColor.GREY.P300, MaterialColor.GREY.P700);
        paddedImageButton.setPosition(0.0f, 420.0f);
        paddedImageButton.setSize(32.0f, 364.0f);
        paddedImageButton.setIconSize(24.0f, 24.0f);
        paddedImageButton.setIconPosition(8.0f, 170.0f);
        group.addActor(paddedImageButton);
        RectButton rectButton = new RectButton(Game.f8589i.localeManager.i18n.get("do_save"), Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.tiles.v
            @Override // java.lang.Runnable
            public final void run() {
                ScriptTile.this.m20796m(textArea, mapEditorItemInfoMenu);
            }
        });
        rectButton.setPosition(40.0f, 340.0f);
        rectButton.setSize(180.0f, 64.0f);
        Color color = MaterialColor.GREEN.P800;
        Color color2 = MaterialColor.GREEN.P900;
        Color color3 = MaterialColor.GREEN.P700;
        Color color4 = MaterialColor.GREY.P800;
        rectButton.setBackgroundColors(color, color2, color3, color4);
        group.addActor(rectButton);
        RectButton rectButton2 = new RectButton("Copy", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.tiles.w
            @Override // java.lang.Runnable
            public final void run() {
                ScriptTile.this.m20795n();
            }
        });
        rectButton2.setPosition(248.0f, 340.0f);
        rectButton2.setSize(110.0f, 64.0f);
        Color color5 = MaterialColor.LIGHT_BLUE.P800;
        Color color6 = MaterialColor.LIGHT_BLUE.P900;
        Color color7 = MaterialColor.LIGHT_BLUE.P700;
        rectButton2.setBackgroundColors(color5, color6, color7, color4);
        group.addActor(rectButton2);
        RectButton rectButton3 = new RectButton("Paste", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.tiles.x
            @Override // java.lang.Runnable
            public final void run() {
                ScriptTile.this.m20794o(mapEditorItemInfoMenu);
            }
        });
        rectButton3.setPosition(366.0f, 340.0f);
        rectButton3.setSize(110.0f, 64.0f);
        rectButton3.setBackgroundColors(color5, color6, color7, color4);
        group.addActor(rectButton3);
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        ScriptTile scriptTile = (ScriptTile) tile;
        setId(scriptTile.getId());
        this.f11979s = scriptTile.f11979s;
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        float f2 = f / 128.0f;
        Group group = new Group();
        if (f2 != 1.0f) {
            group.setTransform(true);
            group.setScale(f2);
        } else {
            group.setTransform(false);
        }
        Image image = new Image(Game.f8589i.tileManager.f10161F.SCRIPT.f11983d);
        image.setSize(128.0f, 128.0f);
        group.addActor(image);
        Label label = new Label(m20800i(), Game.f8589i.assetManager.getSmallDebugLabelStyle());
        label.setPosition(16.0f, 16.0f);
        label.setSize(96.0f, 96.0f);
        label.setAlignment(10);
        group.addActor(label);
        return group;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.KIND) {
            return 30000;
        }
        return getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    }

    /* renamed from: i */
    public final StringBuilder m20800i() {
        StringBuilder stringBuilder = f11977t;
        stringBuilder.setLength(0);
        String str = this.f11979s;
        if (str == null) {
            return stringBuilder;
        }
        int length = str.length();
        boolean z = true;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = this.f11979s.charAt(i3);
            if (i < 13 && charAt != '\n') {
                f11977t.append(charAt);
                if (charAt != '-' && charAt != '[') {
                    z = false;
                }
                i++;
            }
            if (charAt == '\n') {
                if (z && i != 0) {
                    f11977t.setLength(0);
                } else {
                    f11977t.append('\n');
                    i2++;
                    if (i2 == 6) {
                        break;
                    }
                }
                i = 0;
            }
        }
        return f11977t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m20798k(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            setId(Long.parseLong(str));
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("ScriptTile", "bad value: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m20797l(ItemCreationOverlay itemCreationOverlay) {
        setId(PMath.generateNewId());
        itemCreationOverlay.updateForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m20796m(TextArea textArea, MapEditorItemInfoMenu mapEditorItemInfoMenu) {
        String text = textArea.getText();
        int i = 0;
        if (text.length() == 0) {
            Logger.log("ScriptTile", "removed code");
            if (getScript() != null) {
                setScript(null);
                DelayedRemovalArray<ItemStack> itemsByType = Game.f8589i.progressManager.getItemsByType(ItemType.TILE);
                while (true) {
                    if (i >= itemsByType.size) {
                        break;
                    }
                    Tile tile = ((TileItem) itemsByType.items[i].getItem()).tile;
                    if (tile.type == TileType.SCRIPT) {
                        ScriptTile scriptTile = (ScriptTile) tile;
                        if (scriptTile.getId() == getId()) {
                            scriptTile.setScript(null);
                            Game.f8589i.progressManager.requireDelayedSave();
                            Logger.log("ScriptTile", "updated real item");
                            break;
                        }
                    }
                    i++;
                }
                mapEditorItemInfoMenu.setItem(mapEditorItemInfoMenu.currentItem);
                mapEditorItemInfoMenu.notifySelectedTileChanged();
                Game.f8589i.soundManager.playStatic(StaticSoundType.SUCCESS);
            }
        } else if (text.length() > 100000) {
            Game.f8589i.uiManager.notifications.add("Script is too long - max 100k characters per tile", null, null, StaticSoundType.FAIL);
            textArea.setText("");
        } else {
            setScript(text);
            DelayedRemovalArray<ItemStack> itemsByType2 = Game.f8589i.progressManager.getItemsByType(ItemType.TILE);
            while (true) {
                if (i >= itemsByType2.size) {
                    break;
                }
                Tile tile2 = ((TileItem) itemsByType2.items[i].getItem()).tile;
                if (tile2.type == TileType.SCRIPT) {
                    ScriptTile scriptTile2 = (ScriptTile) tile2;
                    if (scriptTile2.getId() == getId()) {
                        scriptTile2.setScript(text);
                        Game.f8589i.progressManager.requireDelayedSave();
                        break;
                    }
                }
                i++;
            }
            mapEditorItemInfoMenu.setItem(mapEditorItemInfoMenu.currentItem);
            mapEditorItemInfoMenu.notifySelectedTileChanged();
            Game.f8589i.soundManager.playStatic(StaticSoundType.SUCCESS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m20795n() {
        if (getScript() != null) {
            Gdx.app.getClipboard().setContents(getScript());
            Game game = Game.f8589i;
            game.uiManager.notifications.add(game.localeManager.i18n.get("copied_to_clipboard"), Game.f8589i.assetManager.getDrawable("icon-check"), MaterialColor.BLUE_GREY.P800, StaticSoundType.SUCCESS);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        if (m20799j(drawMode)) {
            spriteCache.add(Game.f8589i.tileManager.f10161F.SCRIPT.f11983d, f, f2, f3, f4);
        }
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11978r = input.readLong();
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (!super.sameAs(tile) || getId() != ((ScriptTile) tile).getId()) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("id", Long.valueOf(getId()));
        String str = this.f11979s;
        if (str != null) {
            json.writeValue("script", str);
        }
        json.writeObjectEnd();
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeLong(this.f11978r);
    }
}
