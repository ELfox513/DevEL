package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapEditorSystem;
import com.prineside.tdi2.utils.MaterialColor;
import java.util.Comparator;
/* renamed from: com.prineside.tdi2.ui.components.MapEditorInventoryMenu */
/* loaded from: classes2.dex */
public class MapEditorInventoryMenu implements Disposable {

    /* renamed from: y */
    public static final Vector2 f13204y = new Vector2();

    /* renamed from: z */
    public static final Array<ItemStack> f13205z = new Array<>();

    /* renamed from: d */
    public final SideMenu f13208d;

    /* renamed from: k */
    public final SideMenu.SideMenuContainer f13209k;

    /* renamed from: r */
    public Group f13212r;

    /* renamed from: s */
    public Label f13213s;
    public ScrollPane scrollPane;

    /* renamed from: t */
    public Table f13214t;

    /* renamed from: u */
    public ItemSubcategoryType f13215u;

    /* renamed from: w */
    public final CameraController f13217w;

    /* renamed from: x */
    public final GameSystemProvider f13218x;

    /* renamed from: a */
    public ItemSubcategoryType[] f13206a = {ItemSubcategoryType.ME_PLATFORMS, ItemSubcategoryType.ME_ROADS, ItemSubcategoryType.ME_SOURCES, ItemSubcategoryType.ME_SPAWNS, ItemSubcategoryType.ME_BASES, ItemSubcategoryType.ME_SPECIAL, ItemSubcategoryType.ME_SOUNDS};

    /* renamed from: b */
    public final DelayedRemovalArray<MapEditorInventoryMenuListener> f13207b = new DelayedRemovalArray<>();

    /* renamed from: p */
    public final ObjectMap<ItemSubcategoryType, ItemCategoryTab> f13210p = new ObjectMap<>();

    /* renamed from: q */
    public Array<ItemSlot> f13211q = new Array<>();
    public Array<ItemSlot> cells = new Array<>();

    /* renamed from: v */
    public ObjectMap<Item, ItemSlot> f13216v = new ObjectMap<>();

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorInventoryMenu$ItemCategoryTab */
    /* loaded from: classes2.dex */
    public class ItemCategoryTab extends Group {

        /* renamed from: M */
        public QuadActor f13224M;

        /* renamed from: N */
        public Image f13225N;

        /* renamed from: O */
        public Image f13226O;

        public ItemCategoryTab(ItemSubcategoryType itemSubcategoryType) {
            setTransform(false);
            setSize(128.0f, 116.0f);
            QuadActor quadActor = new QuadActor(Color.WHITE, new float[]{4.0f, 4.0f, 0.0f, 116.0f, 128.0f, 116.0f, 128.0f, 0.0f});
            this.f13224M = quadActor;
            addActor(quadActor);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-right"));
            this.f13225N = image;
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            this.f13225N.setSize(12.0f, 116.0f);
            this.f13225N.setPosition(116.0f, 0.0f);
            addActor(this.f13225N);
            Game game = Game.f8589i;
            Image image2 = new Image(game.assetManager.getDrawable(game.itemManager.getSubcategoryIconAlias(itemSubcategoryType)));
            this.f13226O = image2;
            image2.setSize(64.0f, 64.0f);
            this.f13226O.setPosition(32.0f, 26.0f);
            addActor(this.f13226O);
            setActive(false);
        }

        public void setActive(boolean z) {
            if (z) {
                this.f13224M.setVertexColors(new Color(724249599));
                this.f13226O.setColor(Color.WHITE);
                this.f13225N.setVisible(false);
                return;
            }
            this.f13224M.setVertexColors(new Color(555819519));
            this.f13226O.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            this.f13225N.setVisible(true);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorInventoryMenu$ItemSlot */
    /* loaded from: classes2.dex */
    public class ItemSlot extends Group {

        /* renamed from: M */
        public Image f13228M;

        /* renamed from: N */
        public Actor f13229N;

        /* renamed from: O */
        public Group f13230O;

        /* renamed from: P */
        public Image f13231P;

        /* renamed from: Q */
        public Label f13232Q;

        /* renamed from: R */
        public ItemStack f13233R;

        /* renamed from: S */
        public boolean f13234S;

        public ItemStack getItemStack() {
            return this.f13233R;
        }

        public ItemSlot(int i) {
            setTransform(false);
            setSize(152.0f, 152.0f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable(i % 2 == 0 ? "ui-tile-inventory-cell-1" : "ui-tile-inventory-cell-2"));
            this.f13228M = image;
            image.setSize(152.0f, 152.0f);
            addActor(this.f13228M);
            Group group = new Group();
            this.f13230O = group;
            group.setTransform(false);
            this.f13230O.setPosition(12.0f, 12.0f);
            addActor(this.f13230O);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-inventory-cell-count"));
            this.f13231P = image2;
            image2.setPosition(99.0f, 3.0f);
            this.f13231P.setSize(52.0f, 32.0f);
            this.f13231P.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            addActor(this.f13231P);
            Label label = new Label("122", Game.f8589i.assetManager.getLabelStyle(24));
            this.f13232Q = label;
            label.setSize(42.0f, 32.0f);
            this.f13232Q.setPosition(104.0f, 3.0f);
            this.f13232Q.setAlignment(1);
            addActor(this.f13232Q);
            addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.MapEditorInventoryMenu.ItemSlot.1

                /* renamed from: b */
                public final Vector2 f13236b = new Vector2();

                /* renamed from: c */
                public final Vector2 f13237c = new Vector2();

                /* renamed from: d */
                public final Vector2 f13238d = new Vector2();

                /* renamed from: e */
                public boolean f13239e = false;

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean touchDown(InputEvent inputEvent, float f, float f2, int i2, int i3) {
                    if (MapEditorInventoryMenu.this.f13218x._mapEditor.getMode() == MapEditorSystem.Mode.DRAG) {
                        Vector2 vector2 = this.f13236b;
                        vector2.f5527x = f;
                        vector2.f5528y = f2;
                        ItemSlot.this.localToStageCoordinates(vector2);
                        return true;
                    }
                    return true;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void touchDragged(InputEvent inputEvent, float f, float f2, int i2) {
                    this.f13237c.set(f, f2);
                    ItemSlot.this.localToStageCoordinates(this.f13237c);
                    this.f13238d.set(this.f13237c);
                    MapEditorInventoryMenu.this.f13217w.stageToScreen(this.f13238d);
                    if (MapEditorInventoryMenu.this.f13218x._mapEditor.getMode() == MapEditorSystem.Mode.DRAG && !this.f13239e && this.f13236b.dst2(this.f13237c) > 16.0f && MapEditorInventoryMenu.this.f13218x._mapEditor.startDraggingItem(ItemSlot.this.f13233R.getItem())) {
                        MapEditorSystem mapEditorSystem = MapEditorInventoryMenu.this.f13218x._mapEditor;
                        Vector2 vector2 = this.f13238d;
                        mapEditorSystem.setDraggingItemScreenPos(vector2.f5527x, vector2.f5528y);
                        MapEditorInventoryMenu.this.f13218x._inventory.remove(ItemSlot.this.f13233R.getItem());
                        this.f13239e = true;
                    }
                    if (MapEditorInventoryMenu.this.f13218x._mapEditor.getDraggingItem() != null) {
                        MapEditorSystem mapEditorSystem2 = MapEditorInventoryMenu.this.f13218x._mapEditor;
                        Vector2 vector22 = this.f13238d;
                        mapEditorSystem2.setDraggingItemScreenPos(vector22.f5527x, vector22.f5528y);
                    }
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void touchUp(InputEvent inputEvent, float f, float f2, int i2, int i3) {
                    if (this.f13239e) {
                        if (MapEditorInventoryMenu.this.f13218x._mapEditor.getDraggingItem() != null) {
                            MapEditorInventoryMenu.this.f13218x._mapEditor.finishDragging();
                        }
                        this.f13239e = false;
                        ItemSlot itemSlot = ItemSlot.this;
                        MapEditorInventoryMenu.this.rebuildSlot(itemSlot.f13233R, false);
                        return;
                    }
                    MapEditorInventoryMenu.this.f13207b.begin();
                    for (int i4 = 0; i4 < MapEditorInventoryMenu.this.f13207b.size; i4++) {
                        ((MapEditorInventoryMenuListener) MapEditorInventoryMenu.this.f13207b.get(i4)).itemSlotClicked(ItemSlot.this);
                    }
                    MapEditorInventoryMenu.this.f13207b.end();
                }
            });
            this.f13234S = true;
            setActive(false);
        }

        public void setActive(boolean z) {
            if (this.f13234S != z) {
                if (z) {
                    this.f13228M.setColor(MaterialColor.LIGHT_BLUE.P800);
                } else {
                    this.f13228M.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                }
                this.f13234S = z;
            }
        }

        public void setIconCountVisible(boolean z) {
            this.f13230O.setVisible(z);
            this.f13232Q.setVisible(z);
            this.f13231P.setVisible(z);
        }

        public void setItemStack(ItemStack itemStack, boolean z) {
            ItemStack itemStack2;
            if (itemStack == null) {
                return;
            }
            if (z || (itemStack2 = this.f13233R) == null || !itemStack2.getItem().sameAs(itemStack.getItem())) {
                this.f13230O.clearChildren();
                Actor generateIcon = itemStack.getItem().generateIcon(128.0f, false);
                this.f13229N = generateIcon;
                this.f13230O.addActor(generateIcon);
            }
            this.f13233R = itemStack;
            setIconCountVisible(true);
            this.f13232Q.setText(String.valueOf(itemStack.getCount()));
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorInventoryMenu$MapEditorInventoryMenuListener */
    /* loaded from: classes2.dex */
    public interface MapEditorInventoryMenuListener {
        void categoryTabChanged();

        void itemSlotClicked(ItemSlot itemSlot);
    }

    public void deselectAll() {
        int i = 0;
        while (true) {
            Array<ItemSlot> array = this.cells;
            if (i < array.size) {
                array.get(i).setActive(false);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public void draw(float f) {
    }

    public boolean isVisible() {
        return true;
    }

    public void addListener(MapEditorInventoryMenuListener mapEditorInventoryMenuListener) {
        if (mapEditorInventoryMenuListener != null) {
            if (!this.f13207b.contains(mapEditorInventoryMenuListener, true)) {
                this.f13207b.add(mapEditorInventoryMenuListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public boolean isStagePointOnInventory(float f, float f2) {
        Vector2 vector2 = f13204y;
        vector2.set(f, f2);
        this.f13209k.stageToLocalCoordinates(vector2);
        float f3 = vector2.f5527x;
        if (f3 >= 0.0f && f3 <= this.f13209k.getWidth()) {
            return true;
        }
        return false;
    }

    public void removeListener(MapEditorInventoryMenuListener mapEditorInventoryMenuListener) {
        if (mapEditorInventoryMenuListener != null) {
            this.f13207b.removeValue(mapEditorInventoryMenuListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void setActiveTab(ItemSubcategoryType itemSubcategoryType) {
        int i;
        this.f13215u = itemSubcategoryType;
        ObjectMap.Values<ItemCategoryTab> it = this.f13210p.values().iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            it.next().setActive(false);
        }
        this.f13210p.get(itemSubcategoryType).setActive(true);
        rebuildTilesList();
        this.f13207b.begin();
        while (true) {
            DelayedRemovalArray<MapEditorInventoryMenuListener> delayedRemovalArray = this.f13207b;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.get(i).categoryTabChanged();
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    public MapEditorInventoryMenu(SideMenu sideMenu, CameraController cameraController, final GameSystemProvider gameSystemProvider) {
        ItemSubcategoryType[] itemSubcategoryTypeArr;
        this.f13218x = gameSystemProvider;
        this.f13208d = sideMenu;
        this.f13217w = cameraController;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13209k = createContainer;
        createContainer.setName("tile_inventory_menu_container");
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 40.0f;
        for (final ItemSubcategoryType itemSubcategoryType : this.f13206a) {
            ItemCategoryTab itemCategoryTab = new ItemCategoryTab(itemSubcategoryType);
            itemCategoryTab.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.MapEditorInventoryMenu.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    MapEditorInventoryMenu.this.setActiveTab(itemSubcategoryType);
                }
            });
            this.f13210p.put(itemSubcategoryType, itemCategoryTab);
            scaledViewportHeight -= 120.0f;
            itemCategoryTab.setPosition(-116.0f, scaledViewportHeight);
            this.f13209k.addActor(itemCategoryTab);
        }
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(new Color(724249599));
        image.setTouchable(Touchable.enabled);
        image.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        this.f13209k.addActor(image);
        Table table = new Table();
        Drawable tint = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(new Color(0.0f, 0.0f, 0.0f, 0.0f));
        tint.setMinWidth(4.0f);
        Drawable tint2 = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.LIGHT_BLUE.P800);
        tint2.setMinWidth(4.0f);
        ScrollPane scrollPane = new ScrollPane(table, new ScrollPane.ScrollPaneStyle(null, null, null, tint, tint2));
        this.scrollPane = scrollPane;
        scrollPane.setScrollBarPositions(true, false);
        this.scrollPane.setScrollingDisabled(true, false);
        this.scrollPane.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        this.f13209k.addActor(this.scrollPane);
        Table table2 = new Table();
        this.f13214t = table2;
        table.add(table2).width(456.0f).padLeft(40.0f).top().left();
        table.add().size(104.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        this.f13214t.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.MapEditorInventoryMenu.2
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                if (gameSystemProvider._mapEditor.getMode() == MapEditorSystem.Mode.DRAG) {
                    MapEditorInventoryMenu.this.scrollPane.setFlickScroll(false);
                    return true;
                }
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                if (gameSystemProvider._mapEditor.getMode() == MapEditorSystem.Mode.DRAG) {
                    MapEditorInventoryMenu.this.scrollPane.setFlickScroll(true);
                }
            }
        });
        this.f13213s = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        Group group = new Group();
        this.f13212r = group;
        group.setTransform(false);
        Group group2 = new Group();
        group2.setTransform(false);
        group2.setPosition(496.0f, 0.0f);
        group2.setSize(104.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        group2.setTouchable(Touchable.disabled);
        this.f13209k.addActor(group2);
        for (int i = 0; i < 8; i++) {
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-top"));
            image2.setColor(new Color(555819519));
            image2.setSize(32.0f, 32.0f);
            float f = i * 48.0f;
            image2.setPosition(36.0f, (Game.f8589i.settingsManager.getScaledViewportHeight() / 2.0f) + 32.0f + f);
            group2.addActor(image2);
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
            image3.setColor(new Color(555819519));
            image3.setSize(32.0f, 32.0f);
            image3.setPosition(36.0f, (((Game.f8589i.settingsManager.getScaledViewportHeight() / 2.0f) - 32.0f) - 32.0f) - f);
            group2.addActor(image3);
        }
        this.f13209k.show();
        setActiveTab(this.f13206a[0]);
    }

    public void rebuildSlot(ItemStack itemStack, boolean z) {
        if (itemStack.getCount() <= 0) {
            if (this.f13218x._mapEditor.getDraggingItem() != null) {
                ItemSlot itemSlot = this.f13216v.get(itemStack.getItem());
                if (itemSlot != null) {
                    itemSlot.setIconCountVisible(false);
                    return;
                }
                return;
            }
            rebuildTilesList();
            return;
        }
        ItemSlot itemSlot2 = this.f13216v.get(itemStack.getItem());
        if (itemSlot2 != null) {
            itemSlot2.setItemStack(itemStack, z);
            itemSlot2.setIconCountVisible(true);
            return;
        }
        rebuildTilesList();
    }

    public void rebuildTilesList() {
        ItemSlot itemSlot;
        deselectAll();
        this.f13213s.setText(Game.f8589i.itemManager.getSubcategoryName(this.f13215u).toUpperCase());
        Array<ItemStack> array = f13205z;
        array.clear();
        this.f13218x._inventory.getItemsByCategory(this.f13215u, array);
        array.sort(new Comparator<ItemStack>() { // from class: com.prineside.tdi2.ui.components.MapEditorInventoryMenu.3
            @Override // java.util.Comparator
            public int compare(ItemStack itemStack, ItemStack itemStack2) {
                Item item = itemStack.getItem();
                ItemSortingType itemSortingType = ItemSortingType.KIND;
                int sortingScore = item.getSortingScore(itemSortingType);
                int sortingScore2 = itemStack2.getItem().getSortingScore(itemSortingType);
                if (sortingScore == sortingScore2) {
                    return 0;
                }
                return sortingScore < sortingScore2 ? 1 : -1;
            }
        });
        this.f13212r.clearChildren();
        float ceil = MathUtils.ceil(array.size / 3.0f) * 152.0f;
        this.cells.clear();
        this.f13216v.clear();
        float f = ceil;
        int i = 0;
        while (true) {
            Array<ItemStack> array2 = f13205z;
            if (i < array2.size) {
                ItemStack itemStack = array2.get(i);
                Array<ItemSlot> array3 = this.f13211q;
                if (i >= array3.size) {
                    itemSlot = new ItemSlot(i);
                    this.f13211q.add(itemSlot);
                } else {
                    itemSlot = array3.get(i);
                }
                int i2 = i % 3;
                float f2 = i2 * 152.0f;
                if (i2 == 0) {
                    f -= 152.0f;
                }
                itemSlot.setPosition(f2, f);
                this.f13212r.addActor(itemSlot);
                this.cells.add(itemSlot);
                this.f13216v.put(itemStack.getItem(), itemSlot);
                itemSlot.setItemStack(itemStack, false);
                itemSlot.setIconCountVisible(true);
                i++;
            } else {
                this.f13214t.clearChildren();
                this.f13214t.add((Table) this.f13213s).top().left().padTop(40.0f).padBottom(20.0f).row();
                this.f13214t.add((Table) this.f13212r).top().left().width(456.0f).height(ceil).padBottom(40.0f);
                return;
            }
        }
    }
}
