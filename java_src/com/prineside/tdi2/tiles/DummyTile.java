package com.prineside.tdi2.tiles;

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
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Iterator;
import java.util.Locale;
import p168r4.C6226s;
@REGS
/* loaded from: classes2.dex */
public class DummyTile extends Tile {
    public static float DEFAULT_SCALE = 0.75f;
    public Color color;
    public ObjectMap<String, Object> data;
    public String description;
    public String icon;
    public float iconScale;
    @NAGS

    /* renamed from: r */
    public long f11951r;
    public boolean selectable;
    public boolean visible;

    /* loaded from: classes2.dex */
    public static class DummyTileFactory extends Tile.Factory.AbstractFactory<DummyTile> {
        public DummyTileFactory() {
            super(TileType.DUMMY);
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            return 0;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public DummyTile create() {
            return new DummyTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public DummyTile fromJson(JsonValue jsonValue) {
            DummyTile dummyTile = (DummyTile) super.fromJson(jsonValue);
            JsonValue jsonValue2 = jsonValue.get("d");
            if (jsonValue2 != null) {
                dummyTile.setId(jsonValue2.getLong("id", PMath.generateNewId()));
                JsonValue jsonValue3 = jsonValue2.get("d");
                if (jsonValue3 != null) {
                    Iterator<JsonValue> iterator2 = jsonValue3.iterator2();
                    while (iterator2.hasNext()) {
                        JsonValue next = iterator2.next();
                        char charAt = next.name.charAt(0);
                        if (charAt != 'S') {
                            if (charAt == 'i') {
                                dummyTile.data.put(next.name, Integer.valueOf(next.asInt()));
                            } else if (charAt != 's') {
                                switch (charAt) {
                                    case 'b':
                                        dummyTile.data.put(next.name, Boolean.valueOf(next.asBoolean()));
                                        continue;
                                    case 'c':
                                        try {
                                            dummyTile.data.put(next.name, Color.valueOf(next.asString()));
                                            continue;
                                        } catch (Exception unused) {
                                            break;
                                        }
                                    case 'd':
                                        dummyTile.data.put(next.name, Double.valueOf(next.asDouble()));
                                        continue;
                                }
                            }
                        }
                        dummyTile.data.put(next.name, next.asString());
                    }
                }
                dummyTile.visible = jsonValue2.getBoolean("v", false);
                dummyTile.selectable = jsonValue2.getBoolean(C6226s.f31189J, false);
                dummyTile.icon = jsonValue2.getString("i", null);
                dummyTile.iconScale = jsonValue2.getFloat("is", DummyTile.DEFAULT_SCALE);
                dummyTile.description = jsonValue2.getString("dsc", null);
                try {
                    dummyTile.color.set(Color.valueOf(jsonValue2.getString("c", Color.WHITE.toString())));
                } catch (Exception unused2) {
                }
            }
            return dummyTile;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m20815o(Boolean bool) {
        this.selectable = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m20814p(Boolean bool) {
        this.visible = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m20812r(String str) {
        if (str.equals("")) {
            str = null;
        }
        this.description = str;
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, 1));
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeSelected() {
        return this.selectable;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return false;
    }

    public Object getData(String str) {
        return this.data.get(str, null);
    }

    @Override // com.prineside.tdi2.Tile
    public CharSequence getDescription() {
        String str = this.description;
        return str == null ? "" : str;
    }

    public long getId() {
        return this.f11951r;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SPECIAL;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        return 0.0d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        return RarityType.COMMON;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        return 1;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    public void removeData(String str) {
        this.data.remove(str);
    }

    public void setData(String str, Object obj) {
        char charAt = str.charAt(0);
        if (charAt != 'S') {
            if (charAt != 'i') {
                if (charAt != 's') {
                    switch (charAt) {
                        case 'b':
                            if (obj == null) {
                                obj = Boolean.FALSE;
                            }
                            if (obj instanceof Boolean) {
                                this.data.put(str, obj);
                                return;
                            }
                            Logger.error("DummyTile", "key " + str + " is for Boolean, " + obj.getClass().getSimpleName() + " given");
                            return;
                        case 'c':
                            if (obj == null) {
                                obj = Color.WHITE.cpy();
                            }
                            if (obj instanceof Color) {
                                this.data.put(str, obj);
                                return;
                            }
                            Logger.error("DummyTile", "key " + str + " is for Color, " + obj.getClass().getSimpleName() + " given");
                            return;
                        case 'd':
                            if (obj == null) {
                                obj = Double.valueOf(0.0d);
                            }
                            if (obj instanceof Double) {
                                this.data.put(str, obj);
                                return;
                            }
                            Logger.error("DummyTile", "key " + str + " is for Double, " + obj.getClass().getSimpleName() + " given");
                            return;
                        default:
                            Logger.error("DummyTile", "key \"" + str + "\" is invalid and should start with data type (idbscS)");
                            return;
                    }
                }
            } else {
                if (obj == null) {
                    obj = 0;
                }
                if (obj instanceof Integer) {
                    this.data.put(str, obj);
                    return;
                }
                Logger.error("DummyTile", "key " + str + " is for Integer, " + obj.getClass().getSimpleName() + " given");
                return;
            }
        }
        if (obj == null) {
            obj = "";
        }
        if (obj instanceof String) {
            this.data.put(str, obj);
            return;
        }
        Logger.error("DummyTile", "key " + str + " is for String, " + obj.getClass().getSimpleName() + " given");
    }

    public void setId(long j) {
        this.f11951r = j;
    }

    public DummyTile() {
        super(TileType.DUMMY);
        this.data = new ObjectMap<>();
        this.selectable = false;
        this.visible = false;
        this.iconScale = DEFAULT_SCALE;
        this.color = Color.WHITE.cpy();
        setId(PMath.generateNewId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m20811s(ItemCreationOverlay itemCreationOverlay, String str) {
        if (str.equals("")) {
            str = null;
        }
        this.icon = str;
        itemCreationOverlay.updateItemIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m20810t(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            this.color.set(Color.valueOf(str));
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        Label label;
        Label label2;
        if (this.selectable) {
            label = new Label("Can be selected", Game.f8589i.assetManager.getLabelStyle(21));
            label.setColor(MaterialColor.GREEN.P500);
        } else {
            label = new Label("Can not be selected", Game.f8589i.assetManager.getLabelStyle(21));
            label.setColor(MaterialColor.YELLOW.P500);
        }
        table.add((Table) label).row();
        if (this.visible) {
            label2 = new Label("Visible", Game.f8589i.assetManager.getLabelStyle(21));
            label2.setColor(MaterialColor.GREEN.P500);
        } else {
            label2 = new Label("Invisible", Game.f8589i.assetManager.getLabelStyle(21));
            label2.setColor(MaterialColor.YELLOW.P500);
        }
        table.add((Table) label2).row();
    }

    @Override // com.prineside.tdi2.Tile
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("ID");
        itemCreationOverlay.textField(String.valueOf(getId()), 300.0f, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.j
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                DummyTile.this.m20817m(itemCreationOverlay, (String) obj);
            }
        }, false);
        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-restart"), new Runnable() { // from class: com.prineside.tdi2.tiles.k
            @Override // java.lang.Runnable
            public final void run() {
                DummyTile.this.m20816n(itemCreationOverlay);
            }
        }, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P300, MaterialColor.LIGHT_BLUE.P700);
        paddedImageButton.setIconSize(40.0f, 40.0f);
        paddedImageButton.setIconPosition(12.0f, 12.0f);
        float f = 10.0f;
        itemCreationOverlay.form.add((Table) paddedImageButton).top().left().padLeft(10.0f).size(64.0f).row();
        itemCreationOverlay.toggle("Can be selected", this.selectable, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.l
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                DummyTile.this.m20815o((Boolean) obj);
            }
        });
        itemCreationOverlay.toggle("Visible", this.visible, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.m
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                DummyTile.this.m20814p((Boolean) obj);
            }
        });
        itemCreationOverlay.label("Icon scale");
        itemCreationOverlay.textField(this.iconScale + "", 300.0f, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.n
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                DummyTile.this.m20813q(itemCreationOverlay, (String) obj);
            }
        });
        itemCreationOverlay.label("Description");
        String str = this.description;
        if (str == null) {
            str = "";
        }
        itemCreationOverlay.textField(str, 800.0f, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.o
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                DummyTile.this.m20812r((String) obj);
            }
        });
        itemCreationOverlay.label("Icon");
        String str2 = this.icon;
        if (str2 == null) {
            str2 = "";
        }
        itemCreationOverlay.textField(str2, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.p
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                DummyTile.this.m20811s(itemCreationOverlay, (String) obj);
            }
        });
        itemCreationOverlay.label("Color");
        itemCreationOverlay.textField(this.color.toString().toUpperCase(Locale.US), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.q
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                DummyTile.this.m20810t(itemCreationOverlay, (String) obj);
            }
        });
        itemCreationOverlay.label("Data");
        Table table = new Table();
        itemCreationOverlay.form.add(table).width(800.0f).top().left().row();
        ObjectMap.Entries<String, Object> it = this.data.iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            final String str3 = (String) next.key;
            Table table2 = new Table();
            table.add(table2).expandX().fillX().row();
            Table table3 = new Table();
            table2.add(table3).top().left().width(200.0f).padRight(f).minHeight(48.0f);
            Label label = new Label((CharSequence) next.key, Game.f8589i.assetManager.getLabelStyle(24));
            label.setAlignment(8);
            label.setColor(MaterialColor.AMBER.P500);
            table3.add((Table) label).top().left().width(200.0f).row();
            Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
            label2.setAlignment(8);
            label2.setColor(MaterialColor.GREY.P500);
            table3.add((Table) label2).top().left().row();
            char charAt = ((String) next.key).charAt(0);
            if (charAt != 'S') {
                if (charAt != 'i') {
                    if (charAt != 's') {
                        switch (charAt) {
                            case 'b':
                                label2.setText("boolean");
                                break;
                            case 'c':
                                label2.setText("color");
                                break;
                            case 'd':
                                label2.setText("double");
                                break;
                        }
                    } else {
                        label2.setText("string");
                    }
                } else {
                    label2.setText("int");
                }
            } else {
                label2.setText("multiline string");
            }
            Table table4 = new Table();
            table2.add(table4).top().left().width(532.0f).padBottom(10.0f).padRight(10.0f).minHeight(48.0f);
            char charAt2 = ((String) next.key).charAt(0);
            if (charAt2 != 'S') {
                if (charAt2 != 'i') {
                    if (charAt2 != 's') {
                        if (charAt2 != 'c') {
                            if (charAt2 == 'd') {
                                final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(String.valueOf(next.value), itemCreationOverlay.textFieldStyle);
                                textFieldXPlatform.setSize(200.0f, 48.0f);
                                textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.DummyTile.2
                                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                        try {
                                            DummyTile.this.setData(str3, Double.valueOf(Double.parseDouble(textFieldXPlatform.getText())));
                                        } catch (Exception e) {
                                            Logger.error("DummyTile", "invalid value", e);
                                        }
                                    }
                                });
                                table4.add((Table) textFieldXPlatform).size(200.0f, 48.0f).top().left();
                                table4.add().expandX().fillX();
                            }
                        } else {
                            final Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                            final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(next.value.toString().toUpperCase(), itemCreationOverlay.textFieldStyle);
                            textFieldXPlatform2.setSize(200.0f, 48.0f);
                            textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.DummyTile.3
                                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                    try {
                                        Color valueOf = Color.valueOf(textFieldXPlatform2.getText());
                                        DummyTile.this.setData(str3, valueOf);
                                        image.setColor(valueOf);
                                    } catch (Exception e) {
                                        Logger.error("DummyTile", "invalid value", e);
                                    }
                                }
                            });
                            table4.add((Table) textFieldXPlatform2).size(200.0f, 48.0f).top().left();
                            image.setColor((Color) next.value);
                            table4.add((Table) image).size(48.0f).padLeft(10.0f).top().left();
                            table4.add().expandX().fillX();
                        }
                    } else {
                        final TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform((String) next.value, itemCreationOverlay.textFieldStyle);
                        textFieldXPlatform3.setSize(590.0f, 48.0f);
                        textFieldXPlatform3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.DummyTile.4
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                try {
                                    DummyTile.this.setData(str3, textFieldXPlatform3.getText());
                                } catch (Exception e) {
                                    Logger.error("DummyTile", "invalid value", e);
                                }
                            }
                        });
                        table4.add((Table) textFieldXPlatform3).height(48.0f).top().left().expandX().fillX();
                    }
                } else {
                    final TextFieldXPlatform textFieldXPlatform4 = new TextFieldXPlatform(String.valueOf(next.value), itemCreationOverlay.textFieldStyle);
                    textFieldXPlatform4.setSize(200.0f, 48.0f);
                    textFieldXPlatform4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.DummyTile.1
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                DummyTile.this.setData(str3, Integer.valueOf(Integer.parseInt(textFieldXPlatform4.getText())));
                            } catch (Exception e) {
                                Logger.error("DummyTile", "invalid value", e);
                            }
                        }
                    });
                    table4.add((Table) textFieldXPlatform4).size(200.0f, 48.0f).top().left();
                    table4.add().expandX().fillX();
                }
            } else {
                TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getDebugFont(false), Color.WHITE, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
                textFieldStyle.cursor.setMinWidth(2.0f);
                Drawable drawable = textFieldStyle.background;
                drawable.setLeftWidth(drawable.getLeftWidth() + 10.0f);
                Drawable drawable2 = textFieldStyle.background;
                drawable2.setRightWidth(drawable2.getRightWidth() + 10.0f);
                Drawable drawable3 = textFieldStyle.background;
                drawable3.setBottomHeight(drawable3.getBottomHeight() + 5.0f);
                Drawable drawable4 = textFieldStyle.background;
                drawable4.setTopHeight(drawable4.getTopHeight() + 10.0f);
                final TextArea textArea = new TextArea((String) next.value, textFieldStyle);
                ScrollPane scrollPane = new ScrollPane(textArea, Game.f8589i.assetManager.getScrollPaneStyle(12.0f));
                textArea.setOnlyFontChars(false);
                textArea.setProgrammaticChangeEvents(true);
                textArea.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.DummyTile.5
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        try {
                            DummyTile.this.setData(str3, textArea.getText());
                        } catch (Exception e) {
                            Logger.error("DummyTile", "invalid value", e);
                        }
                    }
                });
                table4.add((Table) scrollPane).height(144.0f).top().left().expandX().fillX();
            }
            RectButton rectButton = new RectButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.tiles.r
                @Override // java.lang.Runnable
                public final void run() {
                    DummyTile.this.m20809u(str3, itemCreationOverlay);
                }
            });
            rectButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 8.0f, 8.0f, 32.0f, 32.0f);
            rectButton.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 48.0f, 48.0f);
            Color color = MaterialColor.RED.P800;
            Color color2 = MaterialColor.RED.P900;
            rectButton.setBackgroundColors(color, color2, MaterialColor.RED.P700, color2);
            table2.add((Table) rectButton).top().left().size(48.0f).row();
            f = 10.0f;
        }
        Table table5 = new Table();
        table.add(table5).expandX().fillX().row();
        final TextFieldXPlatform textFieldXPlatform5 = new TextFieldXPlatform("", itemCreationOverlay.textFieldStyle);
        textFieldXPlatform5.setMessageText("idbscS");
        table5.add((Table) textFieldXPlatform5).size(200.0f, 48.0f).padRight(10.0f);
        RectButton rectButton2 = new RectButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.tiles.s
            @Override // java.lang.Runnable
            public final void run() {
                DummyTile.this.m20808v(textFieldXPlatform5, itemCreationOverlay);
            }
        });
        rectButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-plus"), 32.0f, 8.0f, 32.0f, 32.0f);
        rectButton2.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 48.0f, 48.0f);
        Color color3 = MaterialColor.LIGHT_BLUE.P800;
        Color color4 = MaterialColor.LIGHT_BLUE.P900;
        rectButton2.setBackgroundColors(color3, color4, MaterialColor.LIGHT_BLUE.P700, color4);
        table5.add((Table) rectButton2).top().left().size(96.0f, 48.0f);
        table5.add().expandX().fillX();
    }

    @Override // com.prineside.tdi2.Tile
    public void fillMapEditorMenu(Group group, MapEditorItemInfoMenu mapEditorItemInfoMenu) {
        String str;
        String str2;
        Label label = new Label(Long.toHexString(getId()), Game.f8589i.assetManager.getLabelStyle(21));
        label.setPosition(40.0f, 800.0f);
        label.setSize(440.0f, 18.0f);
        label.setAlignment(16);
        label.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        group.addActor(label);
        Table table = new Table();
        Actor scrollPane = new ScrollPane(table);
        scrollPane.setPosition(40.0f, 340.0f);
        scrollPane.setSize(440.0f, 480.0f);
        group.addActor(scrollPane);
        if (this.selectable) {
            str = "Can be selected";
        } else {
            str = "Can not be selected";
        }
        Label label2 = new Label(str, Game.f8589i.assetManager.getLabelStyle(24));
        if (this.selectable) {
            label2.setColor(MaterialColor.GREEN.P500);
        } else {
            label2.setColor(MaterialColor.YELLOW.P500);
        }
        table.add((Table) label2).top().left().row();
        if (this.visible) {
            str2 = "Visible";
        } else {
            str2 = "Not visible";
        }
        Label label3 = new Label(str2, Game.f8589i.assetManager.getLabelStyle(24));
        if (this.visible) {
            label3.setColor(MaterialColor.GREEN.P500);
        } else {
            label3.setColor(MaterialColor.YELLOW.P500);
        }
        table.add((Table) label3).top().left().row();
        Label label4 = new Label(getDescription(), Game.f8589i.assetManager.getLabelStyle(24));
        label4.setAlignment(10);
        label4.setWrap(true);
        table.add((Table) label4).expandX().fillX().row();
        table.add().width(1.0f).expandY().fillY().row();
        Table table2 = new Table();
        table.add(table2).fillX().expandX();
        ObjectMap.Entries<String, Object> it = this.data.iterator();
        int i = 0;
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            Table table3 = new Table();
            if (i % 2 == 1) {
                table3.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.14f)));
            }
            table2.add(table3).expandX().fillX().row();
            Label label5 = new Label((CharSequence) next.key, Game.f8589i.assetManager.getSmallDebugLabelStyle());
            label5.setAlignment(8);
            label5.setColor(MaterialColor.AMBER.P500);
            table3.add((Table) label5).top().left().width(120.0f);
            String valueOf = String.valueOf(next.value);
            if (valueOf.length() > 250) {
                valueOf = valueOf.substring(0, 250) + "...";
            }
            Label label6 = new Label(valueOf, Game.f8589i.assetManager.getSmallDebugLabelStyle());
            label6.setWrap(true);
            table3.add((Table) label6).top().left().expandX().fillX().padBottom(5.0f).row();
            i++;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        DummyTile dummyTile = (DummyTile) tile;
        setId(dummyTile.getId());
        this.selectable = dummyTile.selectable;
        this.visible = dummyTile.visible;
        this.iconScale = dummyTile.iconScale;
        this.description = dummyTile.description;
        this.icon = dummyTile.icon;
        this.data.clear();
        this.data.putAll(dummyTile.data);
        this.color.set(dummyTile.color);
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        Image image = new Image(getTexture());
        image.setColor(this.color);
        float f2 = this.iconScale;
        image.setSize(f * f2, f2 * f);
        float f3 = this.iconScale;
        image.setPosition((1.0f - f3) * f * 0.5f, f * (1.0f - f3) * 0.5f);
        group.addActor(image);
        return group;
    }

    public TextureRegion getTexture() {
        String str = this.icon;
        if (str == null) {
            return Game.f8589i.assetManager.getTextureRegion("icon-question");
        }
        ResourcePack.AtlasTextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion(str, false);
        if (textureRegion == null) {
            return Game.f8589i.assetManager.getTextureRegion("icon-question");
        }
        return textureRegion;
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11951r = input.readLong();
        this.selectable = input.readBoolean();
        this.visible = input.readBoolean();
        this.iconScale = input.readFloat();
        this.data = (ObjectMap) kryo.readObject(input, ObjectMap.class);
        this.icon = (String) kryo.readObjectOrNull(input, String.class);
        this.description = (String) kryo.readObjectOrNull(input, String.class);
        this.color = (Color) kryo.readObject(input, Color.class);
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeLong(this.f11951r);
        output.writeBoolean(this.selectable);
        output.writeBoolean(this.visible);
        output.writeFloat(this.iconScale);
        kryo.writeObject(output, this.data);
        kryo.writeObjectOrNull(output, this.icon, String.class);
        kryo.writeObjectOrNull(output, this.description, String.class);
        kryo.writeObject(output, this.color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m20817m(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            setId(Long.parseLong(str));
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("DummyTile", "bad value: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m20816n(ItemCreationOverlay itemCreationOverlay) {
        setId(PMath.generateNewId());
        itemCreationOverlay.updateForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m20813q(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            this.iconScale = Float.parseFloat(str);
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ void m20809u(String str, ItemCreationOverlay itemCreationOverlay) {
        removeData(str);
        itemCreationOverlay.updateForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m20808v(TextFieldXPlatform textFieldXPlatform, ItemCreationOverlay itemCreationOverlay) {
        if (textFieldXPlatform.getText().length() > 1) {
            setData(textFieldXPlatform.getText(), null);
            itemCreationOverlay.updateForm();
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        if (this.visible || drawMode == MapRenderingSystem.DrawMode.MAP_EDITOR) {
            spriteCache.setColor(this.color);
            TextureRegion texture = getTexture();
            float f5 = this.iconScale;
            spriteCache.add(texture, ((1.0f - f5) * f3 * 0.5f) + f, f2 + ((1.0f - f5) * f4 * 0.5f), f3 * f5, f4 * f5);
            spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (!super.sameAs(tile) || getId() != ((DummyTile) tile).getId()) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("id", Long.valueOf(getId()));
        json.writeObjectStart("d");
        ObjectMap.Entries<String, Object> it = this.data.iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            if (((String) next.key).charAt(0) == 'c') {
                json.writeValue((String) next.key, ((Color) next.value).toString());
            } else {
                json.writeValue((String) next.key, next.value);
            }
        }
        json.writeObjectEnd();
        boolean z = this.selectable;
        if (z) {
            json.writeValue(C6226s.f31189J, Boolean.valueOf(z));
        }
        boolean z2 = this.visible;
        if (z2) {
            json.writeValue("v", Boolean.valueOf(z2));
        }
        String str = this.icon;
        if (str != null) {
            json.writeValue("i", str);
        }
        json.writeValue("is", Float.valueOf(this.iconScale));
        String str2 = this.description;
        if (str2 != null) {
            json.writeValue("dsc", str2);
        }
        Color color = this.color;
        if (color != null) {
            json.writeValue("c", color.toString());
        }
        json.writeObjectEnd();
    }
}
