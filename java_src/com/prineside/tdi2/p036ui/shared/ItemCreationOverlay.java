package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.CheckBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.List;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.BossTileType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.gates.BarrierTypeGate;
import com.prineside.tdi2.gates.TeleportGate;
import com.prineside.tdi2.ibxm.Instrument;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.items.AbilityItem;
import com.prineside.tdi2.items.BlueprintItem;
import com.prineside.tdi2.items.CaseKeyItem;
import com.prineside.tdi2.items.GateItem;
import com.prineside.tdi2.items.RandomTileItem;
import com.prineside.tdi2.items.ResourceItem;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.tiles.BossTile;
import com.prineside.tdi2.tiles.GameValueTile;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.tiles.XmMusicTrackTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import java.io.StringWriter;
import p168r4.C6226s;
/* renamed from: com.prineside.tdi2.ui.shared.ItemCreationOverlay */
/* loaded from: classes2.dex */
public class ItemCreationOverlay {

    /* renamed from: f */
    public static final ItemType[] f14418f = new ItemType[0];

    /* renamed from: a */
    public final UiManager.UiLayer f14419a;

    /* renamed from: b */
    public final ObjectMap<ItemType, RectButton> f14420b;

    /* renamed from: c */
    public final CheckBox.CheckBoxStyle f14421c;
    public ObjectRetriever<Item> changeListener;
    public Item currentItem;
    public int customIntA;
    public int customIntB;
    public Object customObject;

    /* renamed from: d */
    public RectButton f14422d;

    /* renamed from: e */
    public Group f14423e;
    public final Table form;
    public boolean inPlaceItemTypeChangeAllowed;
    public Item originalItem;
    public final SelectBox.SelectBoxStyle selectBoxStyle;
    public final TextField.TextFieldStyle textFieldStyle;

    /* renamed from: com.prineside.tdi2.ui.shared.ItemCreationOverlay$2 */
    /* loaded from: classes2.dex */
    public class RunnableC28232 implements Runnable {
        public RunnableC28232() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            Game.f8589i.uiManager.getTextInput(new Input.TextInputListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.2.1
                @Override // com.badlogic.gdx.Input.TextInputListener
                public void canceled() {
                }

                @Override // com.badlogic.gdx.Input.TextInputListener
                public void input(final String str) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                JsonValue parse = new JsonReader().parse(str);
                                ItemCreationOverlay.this.currentItem = Item.fromJson(parse);
                                ItemCreationOverlay.this.updateForm();
                            } catch (Exception unused) {
                                Game.f8589i.uiManager.notifications.add("Failed to parse JSON", null, MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
                            }
                        }
                    });
                }
            }, "From json", "", "Enter JSON of item");
        }
    }

    public Label label(String str, boolean z) {
        Label label = new Label(str, Game.f8589i.assetManager.getLabelStyle(24));
        this.form.add((Table) label).top().left().pad(10.0f, 0.0f, 10.0f, 0.0f).top().left();
        if (z) {
            this.form.row();
        }
        return label;
    }

    public void selectBox(SelectBox selectBox) {
        this.form.add((Table) selectBox).size(400.0f, 48.0f).top().left().row();
    }

    public void show() {
        if (!Config.isModdingMode() && !Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            Game.f8589i.uiManager.dialog.showAlert("Developer mode research required");
            return;
        }
        Game.f8589i.uiManager.darkOverlay.addCaller("ItemCreationOverlay", this.f14419a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.l
            @Override // java.lang.Runnable
            public final void run() {
                ItemCreationOverlay.this.hide();
            }
        });
        this.f14419a.getTable().setVisible(true);
    }

    public TextFieldXPlatform textField(String str, float f, ObjectRetriever<String> objectRetriever) {
        return textField(str, f, objectRetriever, true);
    }

    public LabelToggleButton toggle(String str, boolean z, ObjectRetriever<Boolean> objectRetriever) {
        return toggle(true, str, z, objectRetriever);
    }

    /* renamed from: com.prineside.tdi2.ui.shared.ItemCreationOverlay$41 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C284941 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14511a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f14512b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f14513c;

        /* renamed from: d */
        public static final /* synthetic */ int[] f14514d;

        static {
            int[] iArr = new int[ItemType.values().length];
            f14514d = iArr;
            try {
                iArr[ItemType.TILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14514d[ItemType.BLUEPRINT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14514d[ItemType.CASE_KEY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14514d[ItemType.ABILITY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14514d[ItemType.GATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14514d[ItemType.RESOURCE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14514d[ItemType.RANDOM_TILE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[GateType.values().length];
            f14513c = iArr2;
            try {
                iArr2[GateType.BARRIER_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14513c[GateType.TELEPORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr3 = new int[TileType.values().length];
            f14512b = iArr3;
            try {
                iArr3[TileType.PLATFORM.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14512b[TileType.BOSS.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14512b[TileType.XM_MUSIC_TRACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14512b[TileType.TARGET.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14512b[TileType.GAME_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr4 = new int[GameValueManager.ValueUnits.values().length];
            f14511a = iArr4;
            try {
                iArr4[GameValueManager.ValueUnits.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14511a[GameValueManager.ValueUnits.SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14511a[GameValueManager.ValueUnits.PERCENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14511a[GameValueManager.ValueUnits.UNITS_PER_SECOND.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f14511a[GameValueManager.ValueUnits.PERCENTS_PER_SECOND.ordinal()] = 5;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public ItemCreationOverlay() {
        ItemType[] itemTypeArr;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 150, "ItemCreationOverlay main");
        this.f14419a = addLayer;
        this.f14420b = new ObjectMap<>();
        this.changeListener = null;
        this.customIntA = -1;
        this.customIntB = -1;
        this.customObject = null;
        Drawable tint = Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.RED.P500);
        Drawable tint2 = Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.GREEN.P500);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        CheckBox.CheckBoxStyle checkBoxStyle = new CheckBox.CheckBoxStyle(tint, tint2, font, color);
        this.f14421c = checkBoxStyle;
        checkBoxStyle.checkboxOff.setLeftWidth(24.0f);
        checkBoxStyle.checkboxOff.setBottomHeight(24.0f);
        List.ListStyle listStyle = new List.ListStyle(Game.f8589i.assetManager.getFont(24), color, color, Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.LIGHT_BLUE.P800));
        Drawable drawable = listStyle.selection;
        drawable.setLeftWidth(drawable.getLeftWidth() + 10.0f);
        Drawable drawable2 = listStyle.selection;
        drawable2.setRightWidth(drawable2.getRightWidth() + 10.0f);
        ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(24);
        TextureRegionDrawable drawable3 = Game.f8589i.assetManager.getDrawable("blank");
        Color color2 = MaterialColor.GREY.P900;
        SelectBox.SelectBoxStyle selectBoxStyle = new SelectBox.SelectBoxStyle(font2, color, drawable3.tint(color2), new ScrollPane.ScrollPaneStyle(Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.GREY.P800), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank"), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank")), listStyle);
        this.selectBoxStyle = selectBoxStyle;
        Drawable drawable4 = selectBoxStyle.background;
        drawable4.setLeftWidth(drawable4.getLeftWidth() + 10.0f);
        Drawable drawable5 = selectBoxStyle.background;
        drawable5.setRightWidth(drawable5.getRightWidth() + 10.0f);
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(24, false), color, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(color2));
        this.textFieldStyle = textFieldStyle;
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable6 = textFieldStyle.background;
        drawable6.setLeftWidth(drawable6.getLeftWidth() + 10.0f);
        Drawable drawable7 = textFieldStyle.background;
        drawable7.setRightWidth(drawable7.getRightWidth() + 10.0f);
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).size(1200.0f, 1000.0f);
        Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(1200.0f, 1000.0f);
        image.setColor(new Color(858993663));
        group.addActor(image);
        Table table = new Table();
        ScrollPane scrollPane = new ScrollPane(table, Game.f8589i.assetManager.getScrollPaneStyle(8.0f));
        scrollPane.setSize(240.0f, 1000.0f);
        scrollPane.setScrollingDisabled(true, false);
        group.addActor(scrollPane);
        for (final ItemType itemType : ItemType.values) {
            ItemType[] itemTypeArr2 = f14418f;
            int length = itemTypeArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    if (itemType == itemTypeArr2[i]) {
                        break;
                    }
                    i++;
                } else {
                    RectButton rectButton = new RectButton(itemType.name(), Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ItemCreationOverlay.this.currentItem = Game.f8589i.itemManager.getFactory(itemType).createDefault();
                            ItemCreationOverlay itemCreationOverlay = ItemCreationOverlay.this;
                            if (!itemCreationOverlay.inPlaceItemTypeChangeAllowed) {
                                itemCreationOverlay.setInPlaceEditingItem(null, null, false);
                            }
                            ItemCreationOverlay.this.updateForm();
                        }
                    });
                    Color color3 = Color.WHITE;
                    rectButton.setIconLabelColors(color3, color3, color3, color3);
                    table.add((Table) rectButton).size(240.0f, 48.0f).padBottom(2.0f).row();
                    this.f14420b.put(itemType, rectButton);
                    break;
                }
            }
        }
        table.add().width(1.0f).height(96.0f);
        Table table2 = new Table();
        this.form = table2;
        table2.setSize(940.0f, 906.0f);
        Actor scrollPane2 = new ScrollPane(table2, Game.f8589i.assetManager.getScrollPaneStyle(16.0f));
        scrollPane2.setSize(940.0f, 906.0f);
        scrollPane2.setPosition(250.0f, 84.0f);
        group.addActor(scrollPane2);
        final Group group2 = new Group();
        group2.setTransform(false);
        group2.setPosition(250.0f, 10.0f);
        group.addActor(group2);
        final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform("<", this.textFieldStyle);
        textFieldXPlatform.setSize(220.0f, 64.0f);
        textFieldXPlatform.setPosition(210.0f, 0.0f);
        group2.addActor(textFieldXPlatform);
        RectButton rectButton2 = new RectButton("From json", Game.f8589i.assetManager.getLabelStyle(24), new RunnableC28232());
        rectButton2.setSize(230.0f, 64.0f);
        rectButton2.setPosition(-240.0f, 0.0f);
        group2.addActor(rectButton2);
        RectButton rectButton3 = new RectButton("Get json", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.3
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                Json json = new Json(JsonWriter.OutputType.json);
                StringWriter stringWriter = new StringWriter();
                json.setWriter(stringWriter);
                json.writeObjectStart();
                ItemCreationOverlay.this.currentItem.toJson(json);
                json.writeObjectEnd();
                Logger.log("ItemCreationOverlay", stringWriter.toString());
                textFieldXPlatform.setText(stringWriter.toString());
                textFieldXPlatform.getStage().setKeyboardFocus(textFieldXPlatform);
                textFieldXPlatform.selectAll();
            }
        });
        rectButton3.setSize(200.0f, 64.0f);
        rectButton3.setPosition(0.0f, 0.0f);
        group2.addActor(rectButton3);
        Group group3 = new Group();
        this.f14423e = group3;
        group3.setPosition(456.0f, 0.0f);
        this.f14423e.setSize(64.0f, 64.0f);
        group2.addActor(this.f14423e);
        final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(Config.SITE_API_VERSION, this.textFieldStyle);
        textFieldXPlatform2.setSize(200.0f, 64.0f);
        textFieldXPlatform2.setPosition(530.0f, 0.0f);
        group2.addActor(textFieldXPlatform2);
        RectButton rectButton4 = new RectButton("Give", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.4
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                try {
                    i2 = Integer.valueOf(textFieldXPlatform2.getText()).intValue();
                } catch (Exception unused) {
                    Game.f8589i.uiManager.dialog.showAlert("Please enter correct items count");
                    i2 = 1;
                }
                Item item = ItemCreationOverlay.this.currentItem;
                if (item != null) {
                    Item cpy = item.cpy();
                    Game.f8589i.progressManager.addItems(cpy, i2);
                    Logger.log("ItemCreationOverlay", "item added: " + cpy.toString());
                    Label label = new Label("Done!", Game.f8589i.assetManager.getLabelStyle(24));
                    label.setColor(MaterialColor.GREEN.P500);
                    label.setPosition(740.0f, 0.0f);
                    label.setSize(200.0f, 64.0f);
                    label.setAlignment(1);
                    label.setTouchable(Touchable.disabled);
                    group2.addActor(label);
                    label.addAction(Actions.sequence(Actions.moveBy(0.0f, 64.0f, 0.3f, Interpolation.exp5Out), Actions.fadeOut(0.2f), Actions.removeActor()));
                }
            }
        });
        rectButton4.setSize(200.0f, 64.0f);
        rectButton4.setPosition(740.0f, 0.0f);
        group2.addActor(rectButton4);
        RectButton rectButton5 = new RectButton("Apply", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.5
            @Override // java.lang.Runnable
            public void run() {
                Item item;
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                ItemCreationOverlay itemCreationOverlay = ItemCreationOverlay.this;
                if (itemCreationOverlay.currentItem != null && (item = itemCreationOverlay.originalItem) != null) {
                    if (item.getType() == ItemCreationOverlay.this.currentItem.getType()) {
                        ItemCreationOverlay itemCreationOverlay2 = ItemCreationOverlay.this;
                        ItemCreationOverlay.this.changeListener.retrieved(itemCreationOverlay2.originalItem.from(itemCreationOverlay2.currentItem));
                    } else {
                        Logger.log("ItemCreationOverlay", "type changed, new item");
                        ItemCreationOverlay itemCreationOverlay3 = ItemCreationOverlay.this;
                        itemCreationOverlay3.changeListener.retrieved(itemCreationOverlay3.currentItem);
                    }
                    Label label = new Label("Done!", Game.f8589i.assetManager.getLabelStyle(24));
                    label.setColor(MaterialColor.GREEN.P500);
                    label.setPosition(740.0f, 0.0f);
                    label.setSize(200.0f, 64.0f);
                    label.setAlignment(1);
                    label.setTouchable(Touchable.disabled);
                    group2.addActor(label);
                    label.addAction(Actions.sequence(Actions.moveBy(0.0f, 64.0f, 0.3f, Interpolation.exp5Out), Actions.fadeOut(0.2f), Actions.removeActor()));
                    return;
                }
                Logger.error("ItemCreationOverlay", "current " + ItemCreationOverlay.this.currentItem + " original " + ItemCreationOverlay.this.originalItem);
            }
        });
        this.f14422d = rectButton5;
        rectButton5.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, Color.GRAY);
        this.f14422d.setSize(200.0f, 64.0f);
        this.f14422d.setPosition(960.0f, 0.0f);
        group2.addActor(this.f14422d);
        this.currentItem = Item.C1543D.GREEN_PAPER;
        updateForm();
        hide();
    }

    public void hide() {
        Game.f8589i.uiManager.darkOverlay.removeCaller("ItemCreationOverlay");
        this.f14419a.getTable().setVisible(false);
        setInPlaceEditingItem(null, null, false);
        Game.f8589i.uiManager.stage.unfocusAll();
    }

    public void setInPlaceEditingItem(Item item, ObjectRetriever<Item> objectRetriever, boolean z) {
        this.changeListener = objectRetriever;
        this.originalItem = item;
        this.inPlaceItemTypeChangeAllowed = z;
    }

    public TextFieldXPlatform textField(String str, float f, final ObjectRetriever<String> objectRetriever, boolean z) {
        final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(str, this.textFieldStyle);
        textFieldXPlatform.setSize(f, 64.0f);
        this.form.add((Table) textFieldXPlatform).top().left().size(f, 48.0f);
        if (z) {
            this.form.row();
        }
        textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.6
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                objectRetriever.retrieved(textFieldXPlatform.getText());
            }
        });
        return textFieldXPlatform;
    }

    public LabelToggleButton toggle(boolean z, String str, boolean z2, ObjectRetriever<Boolean> objectRetriever) {
        LabelToggleButton labelToggleButton = new LabelToggleButton(str, z2, 24, 32.0f, objectRetriever);
        if (z) {
            this.form.add(labelToggleButton).height(48.0f).top().left().row();
        }
        return labelToggleButton;
    }

    public void updateForm() {
        boolean z;
        String name;
        GameValueType[] gameValueTypeArr;
        GameValueType[] gameValueTypeArr2;
        boolean z2;
        updateItemIcon();
        ObjectMap.Values<RectButton> it = this.f14420b.values().iterator();
        while (it.hasNext()) {
            it.next().setEnabled(true);
        }
        this.f14420b.get(this.currentItem.getType()).setEnabled(false);
        this.form.clearChildren();
        this.currentItem.fillItemCreationForm(this);
        int i = 2;
        float f = 32.0f;
        switch (C284941.f14514d[this.currentItem.getType().ordinal()]) {
            case 1:
                TileItem tileItem = (TileItem) this.currentItem;
                int i2 = C284941.f14512b[tileItem.tile.type.ordinal()];
                if (i2 != 1) {
                    int i3 = 24;
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                if (i2 == 5) {
                                    final GameValueTile gameValueTile = (GameValueTile) tileItem.tile;
                                    label("Game value");
                                    Array array = new Array();
                                    for (GameValueType gameValueType : GameValueType.values) {
                                        array.add(gameValueType);
                                    }
                                    final SelectBox selectBox = new SelectBox(this.selectBoxStyle);
                                    selectBox.setItems(array);
                                    selectBox.setSelected(gameValueTile.getGameValueType());
                                    selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.30
                                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                            gameValueTile.setGameValueType((GameValueType) selectBox.getSelected());
                                            ItemCreationOverlay.this.updateForm();
                                        }
                                    });
                                    this.form.add((Table) selectBox).size(400.0f, 48.0f).top().left().row();
                                    toggle("Overwrite", gameValueTile.isOverwrite(), new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.31
                                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                                        public void retrieved(Boolean bool) {
                                            gameValueTile.setOverwrite(bool.booleanValue());
                                            ItemCreationOverlay.this.updateItemIcon();
                                        }
                                    });
                                    label("Delta");
                                    textField(String.valueOf(gameValueTile.getDelta()), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.32
                                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                                        public void retrieved(String str) {
                                            try {
                                                gameValueTile.setDelta(Double.valueOf(str).doubleValue());
                                                ItemCreationOverlay.this.updateItemIcon();
                                            } catch (Exception unused) {
                                                Logger.error("ItemCreationOverlay", "bad value: " + str);
                                            }
                                        }
                                    });
                                    break;
                                }
                            } else {
                                final TargetTile targetTile = (TargetTile) tileItem.tile;
                                toggle("Disable abilities", targetTile.isDisableAbilities(), new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.23
                                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                                    public void retrieved(Boolean bool) {
                                        targetTile.setDisableAbilities(bool.booleanValue());
                                        ItemCreationOverlay.this.updateForm();
                                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                    }
                                });
                                toggle("Ignore researches & trophies", targetTile.isUseStockGameValues(), new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.24
                                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                                    public void retrieved(Boolean bool) {
                                        targetTile.setUseStockGameValues(bool.booleanValue());
                                        ItemCreationOverlay.this.updateForm();
                                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                    }
                                });
                                label("Effects");
                                Array<GameValueConfig> gameValues = targetTile.getGameValues();
                                Table table = new Table();
                                this.form.add(table).top().left().row();
                                if (gameValues.size != 0) {
                                    table.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                    table.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                    table.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                    if (!targetTile.isUseStockGameValues()) {
                                        table.add((Table) new Label("Consider researches", Game.f8589i.assetManager.getLabelStyle(21))).top().right().padLeft(24.0f);
                                    }
                                    table.add((Table) new Label("Overwrite", Game.f8589i.assetManager.getLabelStyle(21))).top().right().padLeft(24.0f);
                                    table.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21))).padBottom(8.0f).row();
                                }
                                int i4 = 0;
                                while (i4 < gameValues.size) {
                                    final GameValueConfig gameValueConfig = gameValues.get(i4);
                                    Label label = new Label(gameValueConfig.type.name(), Game.f8589i.assetManager.getLabelStyle(i3));
                                    label.setColor(MaterialColor.AMBER.P300);
                                    table.add((Table) label).width(300.0f).padLeft(10.0f).padRight(10.0f).top().left().height(48.0f).padBottom(4.0f);
                                    final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(String.valueOf(gameValueConfig.value), this.textFieldStyle);
                                    table.add((Table) textFieldXPlatform).width(160.0f).top().left().height(48.0f);
                                    textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.25
                                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                            String text = textFieldXPlatform.getText();
                                            try {
                                                gameValueConfig.value = Double.valueOf(text).doubleValue();
                                                targetTile.updateAppearance();
                                            } catch (Exception unused) {
                                                Logger.error("ItemCreationOverlay", "bad value: " + text);
                                            }
                                            ItemCreationOverlay.this.updateItemIcon();
                                        }
                                    });
                                    Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(i3));
                                    table.add((Table) label2).width(60.0f).padLeft(10.0f).top().left().height(48.0f);
                                    int i5 = C284941.f14511a[Game.f8589i.gameValueManager.getStockValueConfig(gameValueConfig.type).units.ordinal()];
                                    if (i5 != 1) {
                                        if (i5 != 2) {
                                            if (i5 != 3) {
                                                if (i5 != 4) {
                                                    if (i5 == 5) {
                                                        label2.setText("%/s");
                                                    }
                                                } else {
                                                    label2.setText("/s");
                                                }
                                            } else {
                                                label2.setText("%");
                                            }
                                        } else {
                                            label2.setText(C6226s.f31189J);
                                        }
                                    } else {
                                        label2.setText("0/1");
                                    }
                                    if (!targetTile.isUseStockGameValues()) {
                                        z2 = false;
                                        table.add(toggle(false, "", gameValueConfig.allowBonuses, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.26
                                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                                            public void retrieved(Boolean bool) {
                                                gameValueConfig.allowBonuses = bool.booleanValue();
                                                targetTile.updateAppearance();
                                                ItemCreationOverlay.this.updateForm();
                                            }
                                        })).size(96.0f, 48.0f).top().right();
                                    } else {
                                        z2 = false;
                                    }
                                    table.add(toggle(z2, "", gameValueConfig.overwrite, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.27
                                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                                        public void retrieved(Boolean bool) {
                                            gameValueConfig.overwrite = bool.booleanValue();
                                            targetTile.updateAppearance();
                                            ItemCreationOverlay.this.updateForm();
                                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                        }
                                    })).size(96.0f, 48.0f).top().right();
                                    PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.28
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            targetTile.getGameValues().removeValue(gameValueConfig, true);
                                            targetTile.removeGameValue(gameValueConfig);
                                            ItemCreationOverlay.this.updateForm();
                                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                        }
                                    }, MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P900);
                                    paddedImageButton.setIconSize(32.0f, 32.0f);
                                    paddedImageButton.setIconPosition(8.0f, 8.0f);
                                    table.add((Table) paddedImageButton).padLeft(32.0f).size(48.0f).top().left().row();
                                    i4++;
                                    i3 = 24;
                                }
                                Table table2 = new Table();
                                this.form.add(table2).top().left().height(48.0f).padTop(10.0f).row();
                                Array array2 = new Array();
                                for (GameValueType gameValueType2 : GameValueType.values) {
                                    boolean z3 = false;
                                    for (int i6 = 0; i6 < targetTile.getGameValues().size; i6++) {
                                        if (targetTile.getGameValues().get(i6).type == gameValueType2) {
                                            z3 = true;
                                        }
                                    }
                                    if (!z3) {
                                        array2.add(gameValueType2);
                                    }
                                }
                                final SelectBox selectBox2 = new SelectBox(this.selectBoxStyle);
                                selectBox2.setItems(array2);
                                table2.add((Table) selectBox2).size(400.0f, 48.0f).padRight(10.0f);
                                table2.add((Table) new RectButton("Add", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.29
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        targetTile.addGameValue(new GameValueConfig((GameValueType) selectBox2.getSelected(), 0.0d, false, true));
                                        ItemCreationOverlay.this.updateForm();
                                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                    }
                                })).size(200.0f, 48.0f);
                                break;
                            }
                        } else {
                            final XmMusicTrackTile xmMusicTrackTile = (XmMusicTrackTile) tileItem.tile;
                            label("ID");
                            textField(String.valueOf(xmMusicTrackTile.getId()), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.21
                                @Override // com.prineside.tdi2.utils.ObjectRetriever
                                public void retrieved(String str) {
                                    try {
                                        xmMusicTrackTile.setId(Long.valueOf(str).longValue());
                                        ItemCreationOverlay.this.updateItemIcon();
                                    } catch (Exception unused) {
                                        Logger.error("ItemCreationOverlay", "bad value: " + str);
                                    }
                                }
                            });
                            label("Track");
                            textField(String.valueOf(xmMusicTrackTile.getTrackBase64()), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.22
                                @Override // com.prineside.tdi2.utils.ObjectRetriever
                                public void retrieved(String str) {
                                    try {
                                        xmMusicTrackTile.setTrack(str);
                                        xmMusicTrackTile.getModule();
                                        ItemCreationOverlay.this.updateItemIcon();
                                        ItemCreationOverlay.this.updateForm();
                                    } catch (Exception unused) {
                                        xmMusicTrackTile.setTrack(null);
                                    }
                                }
                            });
                            try {
                                Module module = xmMusicTrackTile.getModule();
                                label(module.songName).setColor(MaterialColor.AMBER.P500);
                                for (Instrument instrument : module.instruments) {
                                    String trim = instrument.name.trim();
                                    if (trim.length() != 0) {
                                        Label label3 = label(trim);
                                        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                                        label3.setStyle(Game.f8589i.assetManager.getLabelStyle(21));
                                    }
                                }
                                break;
                            } catch (Exception unused) {
                                label("Module can't be loaded");
                                break;
                            }
                        }
                    } else {
                        final BossTile bossTile = (BossTile) tileItem.tile;
                        label("Type");
                        final SelectBox selectBox3 = new SelectBox(this.selectBoxStyle);
                        Array array3 = new Array();
                        for (BossTileType bossTileType : BossTileType.values) {
                            array3.add(bossTileType);
                        }
                        selectBox3.setItems(array3);
                        selectBox3.setSelected(bossTile.getBossTileType());
                        selectBox3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.9
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                bossTile.setBossTileType((BossTileType) selectBox3.getSelected());
                                ItemCreationOverlay.this.updateForm();
                            }
                        });
                        selectBox(selectBox3);
                        if (bossTile.getBossTileType() == BossTileType.ONE) {
                            label("Boss type");
                            final SelectBox selectBox4 = new SelectBox(this.selectBoxStyle);
                            selectBox4.setItems(new Array(BossType.values));
                            selectBox4.setSelected(bossTile.oneBossType);
                            selectBox4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.10
                                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                    bossTile.oneBossType = (BossType) selectBox4.getSelected();
                                    ItemCreationOverlay.this.updateForm();
                                }
                            });
                            selectBox(selectBox4);
                            break;
                        } else if (bossTile.getBossTileType() == BossTileType.CUSTOM) {
                            label("Effects");
                            Array<GameValueConfig> array4 = bossTile.customEffects;
                            Table table3 = new Table();
                            this.form.add(table3).top().left().row();
                            if (array4.size != 0) {
                                table3.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                table3.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                table3.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                table3.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21))).padBottom(8.0f).row();
                            }
                            int i7 = 0;
                            while (i7 < array4.size) {
                                final GameValueConfig gameValueConfig2 = array4.get(i7);
                                Label label4 = new Label(gameValueConfig2.type.name(), Game.f8589i.assetManager.getLabelStyle(24));
                                label4.setColor(MaterialColor.AMBER.P300);
                                table3.add((Table) label4).width(300.0f).padLeft(10.0f).padRight(10.0f).top().left().height(48.0f).padBottom(4.0f);
                                final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(String.valueOf(gameValueConfig2.value), this.textFieldStyle);
                                table3.add((Table) textFieldXPlatform2).width(160.0f).top().left().height(48.0f);
                                textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.11
                                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                        String text = textFieldXPlatform2.getText();
                                        try {
                                            gameValueConfig2.value = Double.valueOf(text).doubleValue();
                                        } catch (Exception unused2) {
                                            Logger.error("ItemCreationOverlay", "bad value: " + text);
                                        }
                                        ItemCreationOverlay.this.updateItemIcon();
                                    }
                                });
                                Label label5 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
                                table3.add((Table) label5).width(60.0f).padLeft(10.0f).top().left().height(48.0f);
                                int i8 = C284941.f14511a[Game.f8589i.gameValueManager.getStockValueConfig(gameValueConfig2.type).units.ordinal()];
                                if (i8 != 1) {
                                    if (i8 != i) {
                                        if (i8 != 3) {
                                            if (i8 != 4) {
                                                if (i8 == 5) {
                                                    label5.setText("%/s");
                                                }
                                            } else {
                                                label5.setText("/s");
                                            }
                                        } else {
                                            label5.setText("%");
                                        }
                                    } else {
                                        label5.setText(C6226s.f31189J);
                                    }
                                } else {
                                    label5.setText("0/1");
                                }
                                PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.12
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        bossTile.customEffects.removeValue(gameValueConfig2, true);
                                        ItemCreationOverlay.this.updateForm();
                                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                    }
                                }, MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P900);
                                paddedImageButton2.setIconSize(32.0f, 32.0f);
                                paddedImageButton2.setIconPosition(8.0f, 8.0f);
                                table3.add((Table) paddedImageButton2).padLeft(32.0f).size(48.0f).top().left().row();
                                i7++;
                                i = 2;
                            }
                            Table table4 = new Table();
                            this.form.add(table4).top().left().height(48.0f).padTop(10.0f).row();
                            Array array5 = new Array();
                            for (GameValueType gameValueType3 : GameValueType.values) {
                                boolean z4 = false;
                                int i9 = 0;
                                while (true) {
                                    Array<GameValueConfig> array6 = bossTile.customEffects;
                                    if (i9 < array6.size) {
                                        if (array6.get(i9).type == gameValueType3) {
                                            z4 = true;
                                        }
                                        i9++;
                                    } else {
                                        if (!z4) {
                                            array5.add(gameValueType3);
                                        }
                                    }
                                }
                            }
                            final SelectBox selectBox5 = new SelectBox(this.selectBoxStyle);
                            selectBox5.setItems(array5);
                            table4.add((Table) selectBox5).size(400.0f, 48.0f).padRight(10.0f);
                            table4.add((Table) new RectButton("Add", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.13
                                @Override // java.lang.Runnable
                                public void run() {
                                    bossTile.customEffects.add(new GameValueConfig((GameValueType) selectBox5.getSelected(), 0.0d, false, true));
                                    ItemCreationOverlay.this.updateForm();
                                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                }
                            })).size(200.0f, 48.0f);
                            label("Waves");
                            final BossTile.BossWavesConfig bossWavesConfig = bossTile.customBossWaveConfig;
                            Table table5 = new Table();
                            this.form.add(table5).top().left().padTop(10.0f).row();
                            Label label6 = new Label("Start delay", Game.f8589i.assetManager.getLabelStyle(24));
                            label6.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                            table5.add((Table) label6).padRight(16.0f);
                            TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform(String.valueOf(bossWavesConfig.startDelay), this.textFieldStyle);
                            textFieldXPlatform3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.14
                                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                    String text = ((TextFieldXPlatform) actor).getText();
                                    try {
                                        bossWavesConfig.startDelay = Integer.valueOf(text).intValue();
                                        BossTile.BossWavesConfig bossWavesConfig2 = bossWavesConfig;
                                        if (bossWavesConfig2.startDelay < 0) {
                                            bossWavesConfig2.startDelay = 0;
                                        }
                                        ItemCreationOverlay.this.updateItemIcon();
                                    } catch (Exception unused2) {
                                        Logger.error("ItemCreationOverlay", "bad value: " + text);
                                    }
                                }
                            });
                            table5.add((Table) textFieldXPlatform3).size(200.0f, 48.0f).padBottom(4.0f).row();
                            Label label7 = new Label("Cycle length", Game.f8589i.assetManager.getLabelStyle(24));
                            label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                            table5.add((Table) label7).padRight(16.0f);
                            TextFieldXPlatform textFieldXPlatform4 = new TextFieldXPlatform(String.valueOf(bossWavesConfig.cycleLength), this.textFieldStyle);
                            textFieldXPlatform4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.15
                                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                    String text = ((TextFieldXPlatform) actor).getText();
                                    try {
                                        bossWavesConfig.cycleLength = Integer.valueOf(text).intValue();
                                        BossTile.BossWavesConfig bossWavesConfig2 = bossWavesConfig;
                                        if (bossWavesConfig2.cycleLength < 1) {
                                            bossWavesConfig2.cycleLength = 1;
                                        }
                                        ItemCreationOverlay.this.updateItemIcon();
                                    } catch (Exception unused2) {
                                        Logger.error("ItemCreationOverlay", "bad value: " + text);
                                    }
                                }
                            });
                            table5.add((Table) textFieldXPlatform4).size(200.0f, 48.0f).padBottom(4.0f).row();
                            Label label8 = new Label("Repeat count", Game.f8589i.assetManager.getLabelStyle(24));
                            label8.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                            table5.add((Table) label8).padRight(16.0f);
                            TextFieldXPlatform textFieldXPlatform5 = new TextFieldXPlatform(String.valueOf(bossWavesConfig.repeatCount), this.textFieldStyle);
                            textFieldXPlatform5.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.16
                                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                    String text = ((TextFieldXPlatform) actor).getText();
                                    try {
                                        bossWavesConfig.repeatCount = Integer.valueOf(text).intValue();
                                        ItemCreationOverlay.this.updateItemIcon();
                                    } catch (Exception unused2) {
                                        Logger.error("ItemCreationOverlay", "bad value: " + text);
                                    }
                                }
                            });
                            table5.add((Table) textFieldXPlatform5).size(200.0f, 48.0f).padBottom(4.0f).row();
                            Table table6 = new Table();
                            this.form.add(table6).top().left().row();
                            if (bossWavesConfig.bossWavePairs.size != 0) {
                                table6.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                table6.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21)));
                                table6.add((Table) new Label("", Game.f8589i.assetManager.getLabelStyle(21))).padBottom(8.0f).row();
                            }
                            int i10 = 0;
                            while (true) {
                                Array<BossTile.BossTypeWavePair> array7 = bossWavesConfig.bossWavePairs;
                                if (i10 < array7.size) {
                                    final BossTile.BossTypeWavePair bossTypeWavePair = array7.get(i10);
                                    final SelectBox selectBox6 = new SelectBox(this.selectBoxStyle);
                                    selectBox6.setItems(BossType.values);
                                    selectBox6.setSelected(bossTypeWavePair.bossType);
                                    selectBox6.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.17
                                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                            bossTypeWavePair.bossType = (BossType) selectBox6.getSelected();
                                            ItemCreationOverlay.this.updateForm();
                                        }
                                    });
                                    table6.add((Table) selectBox6).width(260.0f).top().left().height(48.0f).padBottom(4.0f);
                                    final TextFieldXPlatform textFieldXPlatform6 = new TextFieldXPlatform(String.valueOf(bossTypeWavePair.wave), this.textFieldStyle);
                                    table6.add((Table) textFieldXPlatform6).width(160.0f).top().left().padLeft(4.0f).height(48.0f);
                                    textFieldXPlatform6.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.18
                                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                            String text = textFieldXPlatform6.getText();
                                            try {
                                                bossTypeWavePair.wave = Integer.valueOf(text).intValue();
                                            } catch (Exception unused2) {
                                                Logger.error("ItemCreationOverlay", "bad value: " + text);
                                            }
                                            ItemCreationOverlay.this.updateItemIcon();
                                        }
                                    });
                                    PaddedImageButton paddedImageButton3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.19
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            bossWavesConfig.bossWavePairs.removeValue(bossTypeWavePair, true);
                                            ItemCreationOverlay.this.updateForm();
                                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                        }
                                    }, MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P900);
                                    paddedImageButton3.setIconSize(32.0f, 32.0f);
                                    paddedImageButton3.setIconPosition(8.0f, 8.0f);
                                    table6.add((Table) paddedImageButton3).padLeft(32.0f).size(48.0f).top().left().row();
                                    i10++;
                                } else {
                                    this.form.add((Table) new RectButton("Add", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.20
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            bossTile.customBossWaveConfig.bossWavePairs.add(new BossTile.BossTypeWavePair(1, BossType.BROOT));
                                            ItemCreationOverlay.this.updateForm();
                                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                        }
                                    })).top().left().padTop(16.0f).size(200.0f, 48.0f);
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    final PlatformTile platformTile = (PlatformTile) tileItem.tile;
                    label("Bonus type");
                    final SelectBox selectBox7 = new SelectBox(this.selectBoxStyle);
                    Array array8 = new Array();
                    array8.add("None");
                    for (SpaceTileBonusType spaceTileBonusType : SpaceTileBonusType.values) {
                        array8.add(spaceTileBonusType.name());
                    }
                    selectBox7.setItems(array8);
                    SpaceTileBonusType spaceTileBonusType2 = platformTile.bonusType;
                    if (spaceTileBonusType2 == null) {
                        name = "None";
                    } else {
                        name = spaceTileBonusType2.name();
                    }
                    selectBox7.setSelected(name);
                    selectBox7.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.7
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            if (((String) selectBox7.getSelected()).equals("None")) {
                                PlatformTile platformTile2 = platformTile;
                                platformTile2.bonusType = null;
                                platformTile2.bonusLevel = 0;
                            } else {
                                platformTile.bonusType = SpaceTileBonusType.valueOf((String) selectBox7.getSelected());
                            }
                            ItemCreationOverlay.this.updateForm();
                        }
                    });
                    selectBox(selectBox7);
                    if (platformTile.bonusType != null) {
                        label("Bonus level");
                        textField(String.valueOf(platformTile.bonusLevel), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.8
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(String str) {
                                try {
                                    platformTile.bonusLevel = Integer.valueOf(str).intValue();
                                    PlatformTile platformTile2 = platformTile;
                                    int i11 = platformTile2.bonusLevel;
                                    if (i11 < 0 || i11 > 5) {
                                        platformTile2.bonusLevel = 0;
                                    }
                                    ItemCreationOverlay.this.updateItemIcon();
                                } catch (Exception unused2) {
                                    Logger.error("ItemCreationOverlay", "bad value: " + str);
                                }
                            }
                        });
                        break;
                    }
                }
                break;
            case 2:
                label("Blueprint type");
                final SelectBox selectBox8 = new SelectBox(this.selectBoxStyle);
                selectBox8.setItems(BlueprintType.values);
                selectBox8.setSelected(((BlueprintItem) this.currentItem).getBlueprintType());
                selectBox8.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.33
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        ItemCreationOverlay.this.currentItem = Item.C1543D.F_BLUEPRINT.create((BlueprintType) selectBox8.getSelected());
                        ItemCreationOverlay.this.updateForm();
                    }
                });
                selectBox(selectBox8);
                break;
            case 3:
                label("Case type");
                final SelectBox selectBox9 = new SelectBox(this.selectBoxStyle);
                selectBox9.setItems(CaseType.values);
                selectBox9.setSelected(((CaseKeyItem) this.currentItem).caseType);
                selectBox9.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.34
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        ItemCreationOverlay.this.currentItem = Item.C1543D.F_CASE_KEY.create((CaseType) selectBox9.getSelected());
                        ItemCreationOverlay.this.updateForm();
                    }
                });
                selectBox(selectBox9);
                break;
            case 4:
                label("Ability type");
                final SelectBox selectBox10 = new SelectBox(this.selectBoxStyle);
                selectBox10.setItems(AbilityType.values);
                selectBox10.setSelected(((AbilityItem) this.currentItem).abilityType);
                selectBox10.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.35
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        ItemCreationOverlay.this.currentItem = Item.C1543D.F_ABILITY.create((AbilityType) selectBox10.getSelected());
                        ItemCreationOverlay.this.updateForm();
                    }
                });
                selectBox(selectBox10);
                break;
            case 5:
                GateItem gateItem = (GateItem) this.currentItem;
                label("Gate type");
                final SelectBox selectBox11 = new SelectBox(this.selectBoxStyle);
                selectBox11.setItems(GateType.values);
                selectBox11.setSelected(gateItem.gate.getType());
                selectBox11.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.36
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        ItemCreationOverlay.this.currentItem = Item.C1543D.F_GATE.create(Game.f8589i.gateManager.getFactory((GateType) selectBox11.getSelected()).create());
                        ItemCreationOverlay.this.updateForm();
                    }
                });
                selectBox(selectBox11);
                int i11 = C284941.f14513c[gateItem.gate.getType().ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        final TeleportGate teleportGate = (TeleportGate) gateItem.gate;
                        label("Index");
                        textField(String.valueOf(teleportGate.index), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.38
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(String str) {
                                try {
                                    int intValue = Integer.valueOf(str).intValue();
                                    if (intValue >= 0 && intValue <= TeleportGate.MAX_INDEX) {
                                        teleportGate.index = intValue;
                                        ItemCreationOverlay.this.updateItemIcon();
                                        return;
                                    }
                                    throw new RuntimeException("Index is out of range (0, " + TeleportGate.MAX_INDEX + ")");
                                } catch (Exception e) {
                                    Logger.error("ItemCreationOverlay", "bad value: " + str, e);
                                }
                            }
                        });
                        break;
                    }
                } else {
                    final BarrierTypeGate barrierTypeGate = (BarrierTypeGate) gateItem.gate;
                    label("Blocked enemies");
                    Table table7 = new Table();
                    this.form.add(table7).top().left().row();
                    EnemyType[] enemyTypeArr = EnemyType.values;
                    int length = enemyTypeArr.length;
                    int i12 = 0;
                    while (i12 < length) {
                        final EnemyType enemyType = enemyTypeArr[i12];
                        table7.add((Table) new Image(Game.f8589i.enemyManager.getFactory(enemyType).getTexture())).size(f).pad(8.0f).padRight(12.0f);
                        table7.add(toggle(false, Game.f8589i.enemyManager.getFactory(enemyType).getTitle(), barrierTypeGate.blockedEnemies.contains(enemyType), new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.37
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(Boolean bool) {
                                if (bool.booleanValue()) {
                                    barrierTypeGate.blockedEnemies.add(enemyType);
                                } else {
                                    barrierTypeGate.blockedEnemies.remove(enemyType);
                                }
                                ItemCreationOverlay.this.updateForm();
                                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                            }
                        })).height(48.0f).width(400.0f).padLeft(16.0f).padBottom(4.0f).row();
                        i12++;
                        f = 32.0f;
                    }
                    break;
                }
                break;
            case 6:
                label("Resource type");
                final SelectBox selectBox12 = new SelectBox(this.selectBoxStyle);
                selectBox12.setItems(ResourceType.values);
                selectBox12.setSelected(((ResourceItem) this.currentItem).resourceType);
                selectBox12.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.39
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        ItemCreationOverlay.this.currentItem = Item.C1543D.F_RESOURCE.create((ResourceType) selectBox12.getSelected());
                        ItemCreationOverlay.this.updateForm();
                    }
                });
                selectBox(selectBox12);
                break;
            case 7:
                label("Quality");
                textField(String.valueOf(((RandomTileItem) this.currentItem).quality), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.ui.shared.ItemCreationOverlay.40
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public void retrieved(String str) {
                        try {
                            ItemCreationOverlay.this.currentItem = Item.C1543D.F_RANDOM_TILE.create(Float.valueOf(str).floatValue());
                            ItemCreationOverlay.this.updateItemIcon();
                        } catch (Exception unused2) {
                            Logger.error("ItemCreationOverlay", "bad value: " + str);
                        }
                    }
                });
                break;
        }
        this.form.add().row();
        this.form.add().width(1.0f).height(80.0f).row();
        this.form.add().expand().fill().row();
        RectButton rectButton = this.f14422d;
        if (this.changeListener != null) {
            z = true;
        } else {
            z = false;
        }
        rectButton.setVisible(z);
    }

    public void updateItemIcon() {
        this.f14423e.clear();
        this.f14423e.addActor(this.currentItem.generateIcon(64.0f, true));
    }

    public Label label(String str) {
        return label(str, true);
    }

    public void show(Item item) {
        this.currentItem = item.cpy();
        setInPlaceEditingItem(null, null, false);
        updateForm();
        show();
    }

    public TextFieldXPlatform textField(String str, ObjectRetriever<String> objectRetriever) {
        return textField(str, 300.0f, objectRetriever);
    }

    public void show(Item item, ObjectRetriever<Item> objectRetriever, boolean z) {
        this.currentItem = item.cpy();
        setInPlaceEditingItem(item, objectRetriever, z);
        updateForm();
        show();
    }
}
