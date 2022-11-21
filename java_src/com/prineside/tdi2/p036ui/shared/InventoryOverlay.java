package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.CraftRecipe;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.items.CaseItem;
import com.prineside.tdi2.items.GateItem;
import com.prineside.tdi2.items.RandomBarrierItem;
import com.prineside.tdi2.items.RandomTileItem;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ButtonHoldHint;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.ParticlesCanvas;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.InventoryOverlay */
/* loaded from: classes2.dex */
public class InventoryOverlay implements Disposable {

    /* renamed from: A0 */
    public static final Array<ItemStack> f14236A0;

    /* renamed from: y0 */
    public static final TabConfig[] f14237y0;

    /* renamed from: z0 */
    public static final StringBuilder f14238z0;

    /* renamed from: A */
    public float f14239A;

    /* renamed from: B */
    public Image f14240B;

    /* renamed from: C */
    public Image f14241C;

    /* renamed from: D */
    public Label f14242D;

    /* renamed from: E */
    public Image f14243E;

    /* renamed from: F */
    public Label f14244F;

    /* renamed from: G */
    public Group f14245G;

    /* renamed from: H */
    public Label f14246H;

    /* renamed from: I */
    public Label f14247I;

    /* renamed from: J */
    public Image f14248J;

    /* renamed from: K */
    public Image f14249K;

    /* renamed from: L */
    public ObjectMap<ItemStack, ItemCell> f14250L;

    /* renamed from: M */
    public Table f14251M;

    /* renamed from: N */
    public Label f14252N;

    /* renamed from: O */
    public boolean f14253O;

    /* renamed from: P */
    public int f14254P;

    /* renamed from: Q */
    public CraftRecipe f14255Q;

    /* renamed from: R */
    public int[] f14256R;

    /* renamed from: S */
    public int f14257S;

    /* renamed from: T */
    public ParticleEffectPool f14258T;

    /* renamed from: U */
    public Item f14259U;

    /* renamed from: V */
    public int f14260V;

    /* renamed from: W */
    public float f14261W;

    /* renamed from: X */
    public ItemCell f14262X;

    /* renamed from: Y */
    public Group f14263Y;

    /* renamed from: Z */
    public Group f14264Z;

    /* renamed from: a */
    public final UiManager.UiLayer f14265a;

    /* renamed from: a0 */
    public Image f14266a0;

    /* renamed from: b */
    public final UiManager.UiLayer f14267b;

    /* renamed from: b0 */
    public Label f14268b0;

    /* renamed from: c0 */
    public Label f14269c0;

    /* renamed from: d */
    public ComplexButton f14270d;

    /* renamed from: d0 */
    public Table f14271d0;

    /* renamed from: e0 */
    public ParticlesCanvas f14272e0;

    /* renamed from: f0 */
    public ParticleEffectPool.PooledEffect f14273f0;

    /* renamed from: g0 */
    public boolean f14274g0;

    /* renamed from: h0 */
    public Array<SubcategoryButtonConfig> f14275h0;

    /* renamed from: i0 */
    public boolean f14276i0;

    /* renamed from: j0 */
    public TabType f14277j0;

    /* renamed from: k */
    public Group f14278k;

    /* renamed from: k0 */
    public float[] f14279k0;

    /* renamed from: l0 */
    public ItemSortingType f14280l0;

    /* renamed from: m0 */
    public ItemStack f14281m0;

    /* renamed from: n0 */
    public Array<ItemStack> f14282n0;

    /* renamed from: o0 */
    public Array<ItemStack> f14283o0;

    /* renamed from: p */
    public Group f14284p;

    /* renamed from: p0 */
    public int f14285p0;

    /* renamed from: q */
    public Group f14286q;

    /* renamed from: q0 */
    public int f14287q0;

    /* renamed from: r */
    public Group f14288r;

    /* renamed from: r0 */
    public float f14289r0;

    /* renamed from: s */
    public Group f14290s;

    /* renamed from: s0 */
    public boolean f14291s0;

    /* renamed from: t */
    public QuadActor f14292t;

    /* renamed from: t0 */
    public boolean f14293t0;

    /* renamed from: u */
    public ScrollPane f14294u;

    /* renamed from: u0 */
    public final ItemCountSelectionOverlay.ItemCountSelectionListener f14295u0;

    /* renamed from: v */
    public ComplexButton f14296v;

    /* renamed from: v0 */
    public final Array<Label> f14297v0;

    /* renamed from: w */
    public ComplexButton f14298w;

    /* renamed from: w0 */
    public final _ProgressManagerListener f14299w0;

    /* renamed from: x */
    public ComplexButton f14300x;

    /* renamed from: x0 */
    public ButtonHoldHint f14301x0;

    /* renamed from: y */
    public ComplexButton f14302y;

    /* renamed from: z */
    public Label f14303z;

    /* renamed from: com.prineside.tdi2.ui.shared.InventoryOverlay$42 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C279442 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14368a;

        static {
            int[] iArr = new int[TabType.values().length];
            f14368a = iArr;
            try {
                iArr[TabType.CRAFTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14368a[TabType.PACKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.InventoryOverlay$SubcategoryButtonConfig */
    /* loaded from: classes2.dex */
    public class SubcategoryButtonConfig {
        public PaddedImageButton button;
        public float distanceY;

        public SubcategoryButtonConfig() {
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.InventoryOverlay$SubcategoryItems */
    /* loaded from: classes2.dex */
    public class SubcategoryItems {
        public Array<ItemStack> items;
        public RarityType rarityType;
        public ItemSubcategoryType subcategoryType;

        public SubcategoryItems() {
            this.items = new Array<>(ItemStack.class);
        }

        public Color getColor() {
            ItemSubcategoryType itemSubcategoryType = this.subcategoryType;
            if (itemSubcategoryType != null) {
                return Game.f8589i.itemManager.getSubcategoryColor(itemSubcategoryType);
            }
            return Game.f8589i.progressManager.getRarityBrightColor(this.rarityType);
        }

        public String getIconAlias() {
            ItemSubcategoryType itemSubcategoryType = this.subcategoryType;
            if (itemSubcategoryType != null) {
                return Game.f8589i.itemManager.getSubcategoryIconAlias(itemSubcategoryType);
            }
            return Game.f8589i.progressManager.getRarityIcon(this.rarityType);
        }

        public String getTitle() {
            ItemSubcategoryType itemSubcategoryType = this.subcategoryType;
            if (itemSubcategoryType != null) {
                return Game.f8589i.itemManager.getSubcategoryName(itemSubcategoryType);
            }
            return Game.f8589i.progressManager.getRarityName(this.rarityType);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.InventoryOverlay$TabConfig */
    /* loaded from: classes2.dex */
    public static class TabConfig {

        /* renamed from: a */
        public String f14378a;
        public float buttonShiftX;
        public Color colorBright;
        public Color colorDark;
        public String iconAlias;
        public ItemSubcategoryType[] subcategories;
        public TabType tabType;

        public String getName() {
            return Game.f8589i.localeManager.i18n.get(this.f14378a);
        }

        public TabConfig(TabType tabType, float f, String str, Color color, Color color2, ItemSubcategoryType[] itemSubcategoryTypeArr) {
            this.buttonShiftX = f;
            this.iconAlias = str;
            this.tabType = tabType;
            this.colorDark = color;
            this.colorBright = color2;
            this.subcategories = itemSubcategoryTypeArr;
            this.f14378a = "inventory_tab_name_" + tabType.name();
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.InventoryOverlay$TabType */
    /* loaded from: classes2.dex */
    public enum TabType {
        ITEMS_MATERIALS,
        ITEMS_MAP_EDITOR,
        ITEMS_OTHER,
        CRAFTING,
        PACKS;
        
        public static final TabType[] values = values();
    }

    /* renamed from: com.prineside.tdi2.ui.shared.InventoryOverlay$_ProgressManagerListener */
    /* loaded from: classes2.dex */
    public class _ProgressManagerListener extends ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter {
        public _ProgressManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
        public void itemsChanged(Item item, int i, int i2) {
            if (InventoryOverlay.this.f14276i0) {
                for (ItemSubcategoryType itemSubcategoryType : InventoryOverlay.f14237y0[InventoryOverlay.this.f14277j0.ordinal()].subcategories) {
                    if (itemSubcategoryType == item.getSubcategory()) {
                        InventoryOverlay.this.f14291s0 = true;
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public /* synthetic */ void m20153G() {
        hide(true);
    }

    /* renamed from: D */
    public final void m20156D() {
        int i = 0;
        while (true) {
            Array<ItemStack> array = this.f14282n0;
            if (i < array.size) {
                ItemCell itemCell = this.f14250L.get(array.items[i], null);
                if (itemCell != null) {
                    itemCell.setSelected(false);
                }
                i++;
            } else {
                array.clear();
                m20142R();
                return;
            }
        }
    }

    /* renamed from: I */
    public final boolean m20151I() {
        return this.f14282n0.size > 0;
    }

    public void requireLayoutRebuild() {
        this.f14293t0 = false;
    }

    public void show() {
        this.f14276i0 = true;
        rebuildLayoutIfRequired();
        m20146N(false);
        Game.f8589i.uiManager.darkOverlay.addCaller("InventoryOverlay", this.f14267b.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.h
            @Override // java.lang.Runnable
            public final void run() {
                InventoryOverlay.this.m20153G();
            }
        });
        UiUtils.bouncyShowOverlay(null, this.f14267b.getTable(), this.f14278k);
        update();
    }

    public void update() {
        ScrollPane scrollPane = this.f14294u;
        update(scrollPane == null ? -1.0f : scrollPane.getScrollY());
    }

    static {
        TabConfig[] tabConfigArr = new TabConfig[TabType.values.length];
        f14237y0 = tabConfigArr;
        TabType tabType = TabType.ITEMS_MATERIALS;
        int ordinal = tabType.ordinal();
        Color color = MaterialColor.CYAN.P800;
        Color color2 = MaterialColor.CYAN.P500;
        ItemSubcategoryType itemSubcategoryType = ItemSubcategoryType.M_RESOURCE;
        ItemSubcategoryType itemSubcategoryType2 = ItemSubcategoryType.M_BLUEPRINT;
        ItemSubcategoryType itemSubcategoryType3 = ItemSubcategoryType.M_DUST;
        ItemSubcategoryType itemSubcategoryType4 = ItemSubcategoryType.M_TOKENS;
        ItemSubcategoryType itemSubcategoryType5 = ItemSubcategoryType.M_CURRENCY;
        tabConfigArr[ordinal] = new TabConfig(tabType, 92.0f, "icon-backpack", color, color2, new ItemSubcategoryType[]{itemSubcategoryType, itemSubcategoryType2, itemSubcategoryType3, itemSubcategoryType4, itemSubcategoryType5});
        TabType tabType2 = TabType.ITEMS_MAP_EDITOR;
        int ordinal2 = tabType2.ordinal();
        Color color3 = MaterialColor.GREEN.P800;
        Color color4 = MaterialColor.GREEN.P500;
        ItemSubcategoryType itemSubcategoryType6 = ItemSubcategoryType.ME_PLATFORMS;
        ItemSubcategoryType itemSubcategoryType7 = ItemSubcategoryType.ME_ROADS;
        ItemSubcategoryType itemSubcategoryType8 = ItemSubcategoryType.ME_SOURCES;
        ItemSubcategoryType itemSubcategoryType9 = ItemSubcategoryType.ME_SPAWNS;
        ItemSubcategoryType itemSubcategoryType10 = ItemSubcategoryType.ME_BASES;
        ItemSubcategoryType itemSubcategoryType11 = ItemSubcategoryType.ME_SOUNDS;
        ItemSubcategoryType itemSubcategoryType12 = ItemSubcategoryType.ME_SPECIAL;
        tabConfigArr[ordinal2] = new TabConfig(tabType2, 216.0f, "icon-edit", color3, color4, new ItemSubcategoryType[]{itemSubcategoryType6, itemSubcategoryType7, itemSubcategoryType8, itemSubcategoryType9, itemSubcategoryType10, itemSubcategoryType11, itemSubcategoryType12});
        TabType tabType3 = TabType.ITEMS_OTHER;
        tabConfigArr[tabType3.ordinal()] = new TabConfig(tabType3, 340.0f, "icon-question", MaterialColor.BLUE_GREY.P800, MaterialColor.BLUE_GREY.P500, new ItemSubcategoryType[]{ItemSubcategoryType.O_OTHER});
        TabType tabType4 = TabType.CRAFTING;
        int ordinal3 = tabType4.ordinal();
        Color color5 = MaterialColor.LIGHT_BLUE.P800;
        Color color6 = MaterialColor.LIGHT_BLUE.P500;
        ItemSubcategoryType itemSubcategoryType13 = ItemSubcategoryType.P_DECRYPTED;
        ItemSubcategoryType itemSubcategoryType14 = ItemSubcategoryType.P_ENCRYPTED;
        tabConfigArr[ordinal3] = new TabConfig(tabType4, 647.0f, "icon-tools", color5, color6, new ItemSubcategoryType[]{itemSubcategoryType, itemSubcategoryType2, itemSubcategoryType3, itemSubcategoryType4, itemSubcategoryType5, itemSubcategoryType6, itemSubcategoryType7, itemSubcategoryType8, itemSubcategoryType9, itemSubcategoryType10, itemSubcategoryType11, itemSubcategoryType12, itemSubcategoryType13, itemSubcategoryType14});
        TabType tabType5 = TabType.PACKS;
        tabConfigArr[tabType5.ordinal()] = new TabConfig(tabType5, 771.0f, "icon-chest", MaterialColor.PINK.P800, MaterialColor.PINK.P500, new ItemSubcategoryType[]{itemSubcategoryType13, itemSubcategoryType14});
        f14238z0 = new StringBuilder();
        f14236A0 = new Array<>(ItemStack.class);
    }

    public InventoryOverlay() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.OVERLAY;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 190, "InventoryOverlay toggle button");
        this.f14265a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 192, "InventoryOverlay main");
        this.f14267b = addLayer2;
        this.f14239A = -1.0f;
        this.f14250L = new ObjectMap<>();
        this.f14253O = false;
        this.f14254P = -1;
        this.f14257S = -1;
        this.f14260V = -1;
        this.f14275h0 = new Array<>(SubcategoryButtonConfig.class);
        this.f14277j0 = TabType.ITEMS_MATERIALS;
        this.f14279k0 = new float[TabType.values.length];
        this.f14280l0 = ItemSortingType.KIND;
        this.f14281m0 = null;
        this.f14282n0 = new Array<>(ItemStack.class);
        this.f14283o0 = new Array<>(ItemStack.class);
        this.f14285p0 = -1;
        this.f14287q0 = -1;
        this.f14289r0 = 0.0f;
        this.f14295u0 = new ItemCountSelectionOverlay.ItemCountSelectionListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.1
            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
            public void countChanged(int i) {
                InventoryOverlay.this.m20141S();
            }

            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
            public void selectionCanceled() {
            }

            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
            public void selectionConfirmed(int i) {
                Game.f8589i.progressManager.sellItems(InventoryOverlay.this.f14281m0.getItem(), i);
                InventoryOverlay.this.update();
                InventoryOverlay.this.m20149K();
            }
        };
        this.f14297v0 = new Array<>(Label.class);
        _ProgressManagerListener _progressmanagerlistener = new _ProgressManagerListener();
        this.f14299w0 = _progressmanagerlistener;
        Game.f8589i.progressManager.addListener(_progressmanagerlistener);
        Group group = new Group();
        group.setTouchable(Touchable.childrenOnly);
        group.setTransform(false);
        addLayer.getTable().add((Table) group).bottom().left().size(112.0f, 105.0f).padBottom(723.0f);
        addLayer.getTable().add().height(1.0f).expand().fill();
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.2
            @Override // java.lang.Runnable
            public void run() {
                InventoryOverlay.this.show();
            }
        });
        this.f14270d = complexButton;
        complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-inventory-toggle-button"), -100.0f, 0.0f, 212.0f, 105.0f);
        this.f14270d.setBackgroundColors(MaterialColor.CYAN.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f), MaterialColor.CYAN.P900, MaterialColor.CYAN.P700, MaterialColor.GREY.P800);
        ComplexButton complexButton2 = this.f14270d;
        Color color = Color.WHITE;
        complexButton2.setIconLabelColors(color, color, color, color);
        this.f14270d.setIcon(Game.f8589i.assetManager.getDrawable("icon-backpack"), 28.0f, 25.0f, 64.0f, 64.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("count-bubble"));
        this.f14240B = image;
        image.setPosition(86.0f, 72.0f);
        this.f14240B.setSize(32.25f, 36.75f);
        this.f14240B.setVisible(false);
        this.f14270d.addActor(this.f14240B);
        group.addActor(this.f14270d);
        Table table = new Table();
        table.setPosition(24.0f, -75.0f);
        table.setSize(190.0f, 75.0f);
        table.setTouchable(Touchable.disabled);
        this.f14270d.addActor(table);
        Table table2 = new Table();
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-chest"));
        this.f14241C = image2;
        table2.add((Table) image2).size(32.0f, 32.0f);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14242D = label;
        table2.add((Table) label).padLeft(8.0f).expandX().fillX();
        table.add(table2).expandX().fillX().row();
        Table table3 = new Table();
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-tools"));
        this.f14243E = image3;
        table3.add((Table) image3).size(32.0f, 32.0f);
        Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14244F = label2;
        table3.add((Table) label2).padLeft(8.0f).expandX().fillX();
        table.add(table3).expandX().fillX().row();
        rebuildLayoutIfRequired();
        addLayer2.getTable().setVisible(false);
        ParticleEffect particleEffect = new ParticleEffect();
        particleEffect.load(Gdx.files.internal("particles/decrypting-progress-line.prt"), Game.f8589i.assetManager.getTextureRegion("particle-one").getAtlas());
        particleEffect.setEmittersCleanUpBlendFunction(false);
        this.f14258T = new ParticleEffectPool(particleEffect, 1, 8);
        this.f14276i0 = false;
        this.f14270d.setPosition(-212.0f, 723.0f);
        this.f14270d.setVisible(false);
        addLayer2.getTable().setVisible(false);
    }

    /* renamed from: C */
    public final void m20157C(String str, Drawable drawable, Color[] colorArr, Runnable runnable, Runnable runnable2, Table table, Table table2) {
        ComplexButton complexButton = new ComplexButton(str, Game.f8589i.assetManager.getLabelStyle(24), runnable, runnable2);
        Color color = Color.WHITE;
        complexButton.setBackground(new QuadDrawable(new QuadActor(color, new float[]{5.0f, 0.0f, 0.0f, 80.0f, 328.0f, 77.0f, 323.0f, 3.0f})), 0.0f, 10.0f, 328.0f, 80.0f);
        complexButton.backgroundShadow.setVisible(true);
        complexButton.backgroundShadow.setSize(327.0f, 87.0f);
        complexButton.backgroundShadow.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        complexButton.backgroundShadow.setDrawable(new QuadDrawable(new QuadActor(color, new float[]{14.0f, 0.0f, 6.0f, 87.0f, 327.0f, 85.0f, 320.0f, 11.0f})));
        MaterialColor.Variants variants = MaterialColor.Variants.P800;
        complexButton.setBackgroundColors(colorArr[variants.ordinal()], colorArr[MaterialColor.Variants.P900.ordinal()], colorArr[MaterialColor.Variants.P700.ordinal()], MaterialColor.GREY.P700);
        complexButton.setIcon(drawable, 21.0f, 25.0f, 48.0f, 48.0f);
        complexButton.setLabel(77.0f, 25.0f, 240.0f, 48.0f, 8);
        complexButton.label.setWrap(true);
        table.add((Table) complexButton).size(328.0f, 90.0f).padTop(8.0f).padLeft(23.0f).left().row();
        Image image = new Image(new QuadDrawable(new QuadActor(color, new float[]{0.0f, 0.0f, 0.0f, 13.0f, 19.0f, 13.0f, 19.0f, 13.0f})));
        image.setColor(colorArr[variants.ordinal()]);
        image.getColor().lerp(Color.BLACK, 0.5f);
        table2.add((Table) image).size(19.0f, 13.0f).padLeft(326.0f).padTop(85.0f).left().row();
    }

    /* renamed from: E */
    public final void m20155E() {
        this.f14286q.clearChildren();
        this.f14275h0.clear();
        this.f14290s.clearChildren();
        this.f14250L.clear();
        this.f14288r.clearChildren();
        this.f14245G.clearChildren();
        if (this.f14294u != null) {
            if (Game.f8589i.uiManager.stage.getScrollFocus() == this.f14294u) {
                Game.f8589i.uiManager.stage.setScrollFocus(null);
            }
            this.f14294u.remove();
        }
        this.f14294u = null;
    }

    /* renamed from: F */
    public final Array<SubcategoryItems> m20154F() {
        ItemSubcategoryType[] itemSubcategoryTypeArr;
        boolean z;
        Array<SubcategoryItems> array = new Array<>(SubcategoryItems.class);
        TabConfig tabConfig = f14237y0[this.f14277j0.ordinal()];
        int i = 0;
        if (this.f14277j0 == TabType.CRAFTING) {
            this.f14283o0.clear();
            int i2 = 0;
            while (true) {
                Array<CraftRecipe> array2 = Game.f8589i.itemManager.craftRecipes;
                if (i2 >= array2.size) {
                    break;
                }
                CraftRecipe craftRecipe = array2.items[i2];
                if (craftRecipe.isAvailable()) {
                    boolean hasEnoughItemsToRun = craftRecipe.hasEnoughItemsToRun();
                    Item item = craftRecipe.result.getItem();
                    int i3 = 0;
                    while (true) {
                        Array<ItemStack> array3 = this.f14283o0;
                        if (i3 < array3.size) {
                            ItemStack itemStack = array3.items[i3];
                            if (itemStack.getItem().sameAs(item)) {
                                itemStack.setCount(this.f14283o0.items[i3].getCount() + 1);
                                if (hasEnoughItemsToRun && itemStack.covered) {
                                    itemStack.covered = false;
                                }
                                z = true;
                            } else {
                                i3++;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (!z) {
                        ItemStack itemStack2 = new ItemStack(item, 1);
                        itemStack2.covered = !hasEnoughItemsToRun;
                        this.f14283o0.add(itemStack2);
                    }
                }
                i2++;
            }
            if (this.f14280l0 == ItemSortingType.RARITY) {
                this.f14283o0.sort(ItemStack.SORT_COMPARATOR_RARITY_DESC);
                RarityType rarityType = null;
                SubcategoryItems subcategoryItems = null;
                int i4 = 0;
                while (true) {
                    Array<ItemStack> array4 = this.f14283o0;
                    if (i4 >= array4.size) {
                        break;
                    }
                    ItemStack itemStack3 = array4.items[i4];
                    RarityType rarity = itemStack3.getItem().getRarity();
                    if (rarity != rarityType) {
                        subcategoryItems = new SubcategoryItems();
                        subcategoryItems.rarityType = rarity;
                        array.add(subcategoryItems);
                        rarityType = rarity;
                    }
                    subcategoryItems.items.add(itemStack3);
                    i4++;
                }
                while (i < array.size) {
                    array.items[i].items.sort(ItemStack.SORT_COMPARATOR_KIND);
                    i++;
                }
            } else {
                for (ItemSubcategoryType itemSubcategoryType : tabConfig.subcategories) {
                    SubcategoryItems subcategoryItems2 = new SubcategoryItems();
                    subcategoryItems2.subcategoryType = itemSubcategoryType;
                    int i5 = 0;
                    while (true) {
                        Array<ItemStack> array5 = this.f14283o0;
                        if (i5 >= array5.size) {
                            break;
                        }
                        ItemStack itemStack4 = array5.items[i5];
                        if (itemStack4.getItem().getSubcategory() == itemSubcategoryType) {
                            subcategoryItems2.items.add(itemStack4);
                        }
                        i5++;
                    }
                    Array<ItemStack> array6 = subcategoryItems2.items;
                    if (array6.size != 0) {
                        array6.sort(ItemStack.SORT_COMPARATOR_RARITY_DESC);
                        array.add(subcategoryItems2);
                    }
                }
            }
        } else {
            ItemSortingType itemSortingType = this.f14280l0;
            if (itemSortingType == ItemSortingType.KIND) {
                ItemSubcategoryType[] itemSubcategoryTypeArr2 = tabConfig.subcategories;
                int length = itemSubcategoryTypeArr2.length;
                while (i < length) {
                    ItemSubcategoryType itemSubcategoryType2 = itemSubcategoryTypeArr2[i];
                    SubcategoryItems subcategoryItems3 = new SubcategoryItems();
                    subcategoryItems3.subcategoryType = itemSubcategoryType2;
                    subcategoryItems3.items.addAll(Game.f8589i.progressManager.getItemsBySubcategory(itemSubcategoryType2));
                    subcategoryItems3.items.sort(ItemStack.SORT_COMPARATOR_RARITY_DESC);
                    array.add(subcategoryItems3);
                    i++;
                }
            } else if (itemSortingType == ItemSortingType.RARITY) {
                this.f14283o0.clear();
                for (ItemSubcategoryType itemSubcategoryType3 : tabConfig.subcategories) {
                    this.f14283o0.addAll(Game.f8589i.progressManager.getItemsBySubcategory(itemSubcategoryType3));
                }
                this.f14283o0.sort(ItemStack.SORT_COMPARATOR_RARITY_DESC);
                RarityType rarityType2 = null;
                SubcategoryItems subcategoryItems4 = null;
                int i6 = 0;
                while (true) {
                    Array<ItemStack> array7 = this.f14283o0;
                    if (i6 >= array7.size) {
                        break;
                    }
                    ItemStack itemStack5 = array7.items[i6];
                    RarityType rarity2 = itemStack5.getItem().getRarity();
                    if (rarity2 != rarityType2) {
                        subcategoryItems4 = new SubcategoryItems();
                        subcategoryItems4.rarityType = rarity2;
                        array.add(subcategoryItems4);
                        rarityType2 = rarity2;
                    }
                    subcategoryItems4.items.add(itemStack5);
                    i6++;
                }
                while (i < array.size) {
                    array.items[i].items.sort(ItemStack.SORT_COMPARATOR_KIND);
                    i++;
                }
            }
        }
        return array;
    }

    /* renamed from: H */
    public final void m20152H(ItemStack itemStack) {
        if (this.f14281m0 != null) {
            setSelectedItem(null);
        }
        if (this.f14282n0.contains(itemStack, true)) {
            ItemCell itemCell = this.f14250L.get(itemStack, null);
            if (itemCell != null) {
                itemCell.setSelected(false);
            }
            this.f14282n0.removeValue(itemStack, true);
            if (this.f14282n0.size == 0) {
                m20156D();
            }
        } else {
            this.f14282n0.add(itemStack);
            ItemCell itemCell2 = this.f14250L.get(itemStack, null);
            if (itemCell2 != null) {
                itemCell2.setSelected(true);
            }
        }
        m20142R();
    }

    /* renamed from: J */
    public final void m20150J() {
        TabConfig[] tabConfigArr;
        this.f14284p.clearChildren();
        for (final TabConfig tabConfig : f14237y0) {
            TabType tabType = tabConfig.tabType;
            if (tabType != TabType.ITEMS_OTHER) {
                if (this.f14277j0 == tabType) {
                    this.f14292t.setPosition(tabConfig.buttonShiftX - 60.0f, -6.0f);
                    this.f14292t.setColor(tabConfig.colorDark);
                    Group group = new Group();
                    group.setTransform(false);
                    group.setTouchable(Touchable.disabled);
                    group.setSize(132.0f, 132.0f);
                    group.setPosition(tabConfig.buttonShiftX - 66.0f, -6.0f);
                    this.f14284p.addActor(group);
                    QuadActor quadActor = new QuadActor(new Color(32), new float[]{0.0f, 4.0f, 7.0f, 120.0f, 17.0f, 119.0f, 5.0f, 7.0f});
                    quadActor.setPosition(125.0f, 0.0f);
                    group.addActor(quadActor);
                    group.addActor(new QuadActor(tabConfig.colorDark, new float[]{6.0f, 0.0f, 0.0f, 132.0f, 132.0f, 129.0f, 125.0f, 4.0f}));
                    Image image = new Image(Game.f8589i.assetManager.getDrawable(tabConfig.iconAlias));
                    image.setSize(80.0f, 80.0f);
                    image.setPosition(25.0f, 28.0f);
                    group.addActor(image);
                } else {
                    ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.6
                        @Override // java.lang.Runnable
                        public void run() {
                            InventoryOverlay.this.m20145O(tabConfig.tabType);
                        }
                    });
                    complexButton.setPosition(tabConfig.buttonShiftX - 54.0f, 25.0f);
                    complexButton.setSize(108.0f, 85.0f);
                    complexButton.setIcon(Game.f8589i.assetManager.getDrawable(tabConfig.iconAlias), 22.0f, 18.0f, 64.0f, 64.0f);
                    complexButton.setIconLabelColors(Color.WHITE, tabConfig.colorBright, tabConfig.colorDark, MaterialColor.GREY.P500);
                    complexButton.setIconLabelShadowEnabled(true);
                    this.f14284p.addActor(complexButton);
                }
                TabType tabType2 = tabConfig.tabType;
                TabType tabType3 = TabType.CRAFTING;
                if (tabType2 == tabType3) {
                    Label label = new Label("18:59:44", Game.f8589i.assetManager.getLabelStyle(21));
                    this.f14246H = label;
                    label.setSize(2.0f, 16.0f);
                    this.f14246H.setPosition(tabConfig.buttonShiftX - 1.0f, 18.0f);
                    this.f14246H.setAlignment(1);
                    this.f14246H.setTouchable(Touchable.disabled);
                    if (this.f14277j0 == tabType3) {
                        this.f14246H.setVisible(false);
                    }
                    this.f14284p.addActor(this.f14246H);
                    Image image2 = new Image(Game.f8589i.assetManager.getTextureRegion("count-bubble"));
                    this.f14248J = image2;
                    image2.setSize(21.5f, 24.5f);
                    this.f14248J.setPosition(tabConfig.buttonShiftX + 24.0f, 84.0f);
                    this.f14248J.setVisible(false);
                    if (this.f14277j0 != tabType3) {
                        this.f14284p.addActor(this.f14248J);
                    }
                } else {
                    TabType tabType4 = TabType.PACKS;
                    if (tabType2 == tabType4) {
                        Label label2 = new Label("18:59:44", Game.f8589i.assetManager.getLabelStyle(21));
                        this.f14247I = label2;
                        label2.setSize(2.0f, 16.0f);
                        this.f14247I.setPosition(tabConfig.buttonShiftX - 1.0f, 18.0f);
                        this.f14247I.setAlignment(1);
                        this.f14247I.setTouchable(Touchable.disabled);
                        if (this.f14277j0 == tabType4) {
                            this.f14247I.setVisible(false);
                        }
                        this.f14284p.addActor(this.f14247I);
                        Image image3 = new Image(Game.f8589i.assetManager.getTextureRegion("count-bubble"));
                        this.f14249K = image3;
                        image3.setSize(21.5f, 24.5f);
                        this.f14249K.setPosition(tabConfig.buttonShiftX + 24.0f, 84.0f);
                        this.f14249K.setVisible(false);
                        if (this.f14277j0 != tabType4) {
                            this.f14284p.addActor(this.f14249K);
                        }
                    }
                }
            }
        }
        m20138V();
    }

    /* renamed from: K */
    public final void m20149K() {
        ItemStack itemStack = this.f14281m0;
        if (itemStack != null && Game.f8589i.progressManager.getItemsCount(itemStack.getItem()) == 0) {
            setSelectedItem(null);
        }
    }

    /* renamed from: L */
    public final void m20148L() {
        if (this.f14277j0 != TabType.ITEMS_MAP_EDITOR) {
            return;
        }
        float scrollY = this.f14294u.getScrollY();
        float height = this.f14294u.getHeight();
        float maxY = this.f14294u.getMaxY();
        float f = (maxY - scrollY) + 70.0f;
        float f2 = (maxY - (scrollY - height)) + 70.0f;
        if (this.f14281m0 != null) {
            setSelectedItem(null);
        }
        ObjectMap.Entries<ItemStack, ItemCell> it = this.f14250L.iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            float top = ((ItemCell) next.value).getTop();
            if (top >= f && top <= f2 && !this.f14282n0.contains((ItemStack) next.key, true)) {
                this.f14282n0.add((ItemStack) next.key);
                ((ItemCell) next.value).setSelected(true);
            }
        }
        m20142R();
    }

    /* renamed from: M */
    public final void m20147M(int i) {
        this.f14254P = i;
        if (this.f14277j0 == TabType.CRAFTING) {
            m20143Q();
        }
    }

    /* renamed from: N */
    public final void m20146N(boolean z) {
        this.f14270d.clearActions();
        if (z) {
            this.f14270d.addAction(Actions.sequence(Actions.show(), Actions.moveTo(0.0f, 0.0f, 0.15f)));
            m20140T();
            return;
        }
        this.f14270d.addAction(Actions.sequence(Actions.moveTo(-212.0f, 0.0f, 0.15f), Actions.hide()));
    }

    /* renamed from: O */
    public final void m20145O(TabType tabType) {
        TabConfig[] tabConfigArr;
        if (this.f14277j0 != tabType) {
            this.f14281m0 = null;
            m20156D();
            TabType tabType2 = this.f14277j0;
            this.f14277j0 = tabType;
            if (this.f14294u != null) {
                this.f14279k0[tabType2.ordinal()] = this.f14294u.getScrollY();
                this.f14294u.setScrollY(this.f14279k0[tabType.ordinal()]);
            }
            m20147M(-1);
            update();
            for (TabConfig tabConfig : f14237y0) {
                if (this.f14277j0 == tabConfig.tabType) {
                    Label label = new Label(tabConfig.getName(), Game.f8589i.assetManager.getLabelStyle(24));
                    label.setPosition(tabConfig.buttonShiftX - 1.0f, -40.0f);
                    label.setSize(2.0f, 18.0f);
                    label.setAlignment(1);
                    label.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.fadeIn(0.3f), Actions.delay(3.0f), Actions.fadeOut(1.0f), Actions.removeActor()));
                    this.f14284p.addActor(label);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* renamed from: P */
    public final void m20144P() {
        Item item;
        int count;
        int i;
        Table infoContainer = Game.f8589i.uiManager.itemCountSelectionOverlay.getInfoContainer();
        infoContainer.clear();
        CraftRecipe craftRecipe = this.f14255Q;
        if (this.f14256R == null) {
            this.f14256R = new int[craftRecipe.ingredients.size];
        }
        int selectedCount = Game.f8589i.uiManager.itemCountSelectionOverlay.getSelectedCount();
        int maxQueueStackWithGVs = craftRecipe.getMaxQueueStackWithGVs();
        ?? r5 = 0;
        boolean z = true;
        final int i2 = 0;
        boolean z2 = true;
        while (true) {
            Array<CraftRecipe.Ingredient> array = craftRecipe.ingredients;
            if (i2 >= array.size) {
                break;
            }
            CraftRecipe.Ingredient ingredient = array.items[i2];
            Array<ItemStack> suitableItemsFromInventory = ingredient.getSuitableItemsFromInventory();
            int countWithGVs = ingredient.getCountWithGVs() * selectedCount;
            int i3 = suitableItemsFromInventory.size;
            if (i3 == 0) {
                item = ingredient.getExampleItems()[r5];
                count = 0;
            } else {
                int i4 = this.f14256R[i2];
                if (i3 <= i4) {
                    i4 = 0;
                }
                item = suitableItemsFromInventory.items[i4].getItem();
                count = suitableItemsFromInventory.items[i4].getCount();
            }
            Group group = new Group();
            group.setTransform(r5);
            boolean z3 = z2;
            infoContainer.add((Table) group).size(64.0f, 80.0f);
            Actor generateIcon = item.generateIcon(64.0f, z);
            generateIcon.setPosition(0.0f, 8.0f);
            group.addActor(generateIcon);
            Label label = new Label(countWithGVs + "", Game.f8589i.assetManager.getLabelStyle(21));
            label.setAlignment(1);
            label.setPosition(61.0f, 7.0f);
            label.setSize(2.0f, 16.0f);
            label.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group.addActor(label);
            Label label2 = new Label(countWithGVs + "", Game.f8589i.assetManager.getLabelStyle(21));
            if (count < countWithGVs) {
                label.setText(count + " / " + countWithGVs);
                label2.setText(count + " / " + countWithGVs);
                label2.setColor(MaterialColor.RED.P300);
                i = 1;
                z2 = false;
            } else {
                z2 = z3;
                i = 1;
            }
            label2.setAlignment(i);
            label2.setPosition(63.0f, 5.0f);
            label2.setSize(2.0f, 16.0f);
            group.addActor(label2);
            if (suitableItemsFromInventory.size > i) {
                if (this.f14256R[i2] > 0) {
                    PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-top"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.4
                        @Override // java.lang.Runnable
                        public void run() {
                            int[] iArr = InventoryOverlay.this.f14256R;
                            int i5 = i2;
                            iArr[i5] = iArr[i5] - 1;
                            InventoryOverlay.this.m20144P();
                        }
                    }, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P300, MaterialColor.LIGHT_BLUE.P600);
                    paddedImageButton.setIconSize(24.0f, 24.0f);
                    paddedImageButton.setIconPosition(20.0f, 33.0f);
                    paddedImageButton.setSize(64.0f, 64.0f);
                    paddedImageButton.setPosition(0.0f, 38.0f);
                    group.addActor(paddedImageButton);
                }
                if (this.f14256R[i2] < suitableItemsFromInventory.size - 1) {
                    PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.5
                        @Override // java.lang.Runnable
                        public void run() {
                            int[] iArr = InventoryOverlay.this.f14256R;
                            int i5 = i2;
                            iArr[i5] = iArr[i5] + 1;
                            InventoryOverlay.this.m20144P();
                        }
                    }, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P300, MaterialColor.LIGHT_BLUE.P600);
                    paddedImageButton2.setIconSize(24.0f, 24.0f);
                    paddedImageButton2.setIconPosition(20.0f, 6.0f);
                    paddedImageButton2.setSize(64.0f, 64.0f);
                    paddedImageButton2.setPosition(0.0f, -26.0f);
                    group.addActor(paddedImageButton2);
                }
            }
            i2++;
            if (i2 != craftRecipe.ingredients.size || !Game.f8589i.progressManager.areF2pTimersDisabled()) {
                Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-plus"));
                image.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                infoContainer.add((Table) image).size(24.0f).padLeft(20.0f).padRight(20.0f);
            }
            int countWithGVs2 = count / ingredient.getCountWithGVs();
            if (countWithGVs2 < maxQueueStackWithGVs) {
                maxQueueStackWithGVs = countWithGVs2;
            }
            r5 = 0;
            z = true;
        }
        boolean z4 = z2;
        if (maxQueueStackWithGVs < 1) {
            maxQueueStackWithGVs = 1;
        }
        if (!Game.f8589i.progressManager.areF2pTimersDisabled()) {
            infoContainer.add((Table) new Label(StringFormatter.digestTime(MathUtils.round(selectedCount * craftRecipe.getTimeWithGVs())), Game.f8589i.assetManager.getLabelStyle(36))).height(80.0f);
        }
        infoContainer.add().height(1.0f).expandX().fillX();
        if (selectedCount > maxQueueStackWithGVs || Game.f8589i.uiManager.itemCountSelectionOverlay.getMaxCount() != maxQueueStackWithGVs) {
            Logger.error("InventoryOverlay", "selected " + selectedCount + " available " + maxQueueStackWithGVs);
            Game.f8589i.uiManager.itemCountSelectionOverlay.setMinMaxCount(1, maxQueueStackWithGVs);
            m20144P();
        }
        Game.f8589i.uiManager.itemCountSelectionOverlay.setConfirmButtonEnabled(z4);
    }

    /* renamed from: Q */
    public final void m20143Q() {
        float f;
        float f2;
        QuadActor quadActor;
        QuadActor quadActor2;
        QuadActor quadActor3;
        QuadActor quadActor4;
        QuadActor quadActor5;
        Table table = this.f14251M;
        if (table == null) {
            return;
        }
        table.clear();
        boolean z = false;
        final int i = 0;
        while (i < 6) {
            ProgressManager.CraftingQueueItem craftingQueueItem = Game.f8589i.progressManager.getCraftingQueueItem(i);
            Group group = new Group();
            group.setTransform(z);
            if (i == this.f14254P) {
                if (i % 2 == 0) {
                    quadActor5 = new QuadActor(Color.WHITE, new float[]{0.0f, -3.0f, -3.0f, 70.0f, 353.0f, 67.0f, 350.0f, -1.0f});
                } else {
                    quadActor5 = new QuadActor(Color.WHITE, new float[]{-3.0f, 0.0f, 0.0f, 68.0f, 350.0f, 70.0f, 353.0f, -3.0f});
                }
                group.addActor(quadActor5);
            }
            int i2 = i % 2;
            if (i2 == 0) {
                quadActor = new QuadActor(Color.WHITE, new float[]{3.0f, 0.0f, 0.0f, 67.0f, 350.0f, 64.0f, 347.0f, 2.0f});
            } else {
                quadActor = new QuadActor(Color.WHITE, new float[]{0.0f, 3.0f, 3.0f, 65.0f, 347.0f, 67.0f, 350.0f, 0.0f});
            }
            group.addActor(quadActor);
            if (craftingQueueItem == null) {
                if (i >= Game.f8589i.progressManager.getMaxCraftQueueSize()) {
                    quadActor.setVertexColors(new Color(1077952767));
                    Table table2 = new Table();
                    table2.setSize(350.0f, 67.0f);
                    group.addActor(table2);
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-lock"));
                    image.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                    table2.add((Table) image).size(40.0f).padRight(8.0f);
                    Label label = new Label(Game.f8589i.localeManager.i18n.get("research_to_unlock"), Game.f8589i.assetManager.getLabelStyle(21));
                    label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                    table2.add((Table) label);
                    table2.setTouchable(Touchable.enabled);
                    table2.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.22
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                        public void clicked(InputEvent inputEvent, float f3, float f4) {
                            InventoryOverlay.this.hide(true);
                            Game.f8589i.screenManager.goToResearchesScreen(ResearchType.CRAFTING_QUEUE_SIZE);
                        }
                    });
                } else {
                    quadActor.setVertexColors(new Color(673720575));
                    Label label2 = new Label(Game.f8589i.localeManager.i18n.get("craft_queue_empty"), Game.f8589i.assetManager.getLabelStyle(21));
                    label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                    label2.setSize(350.0f, 67.0f);
                    label2.setAlignment(1);
                    group.addActor(label2);
                }
            } else {
                RarityType rarity = craftingQueueItem.result.getItem().getRarity();
                if (craftingQueueItem.getTimeLeft() == 0.0f) {
                    quadActor.setVertexColors(Game.f8589i.progressManager.getRarityColor(rarity));
                    if (i2 == 0) {
                        Color color = Color.WHITE;
                        quadActor3 = new QuadActor(color, new float[]{6.0f, 3.0f, 3.0f, 64.0f, 347.0f, 61.0f, 344.0f, 5.0f});
                        quadActor4 = new QuadActor(color, new float[]{4.0f, 28.0f, 3.0f, 64.0f, 347.0f, 61.0f, 347.0f, 39.0f});
                    } else {
                        Color color2 = Color.WHITE;
                        quadActor3 = new QuadActor(color2, new float[]{3.0f, 6.0f, 6.0f, 62.0f, 344.0f, 64.0f, 347.0f, 3.0f});
                        quadActor4 = new QuadActor(color2, new float[]{3.0f, 28.0f, 6.0f, 62.0f, 344.0f, 64.0f, 347.0f, 40.0f});
                    }
                    quadActor3.setVertexColors(new Color(0.0f, 0.0f, 0.0f, 0.56f));
                    Color cpy = Game.f8589i.progressManager.getRarityColor(rarity).cpy();
                    cpy.f3889a = 0.14f;
                    quadActor4.setVertexColors(cpy);
                    group.addActor(quadActor3);
                    group.addActor(quadActor4);
                    Label label3 = new Label((craftingQueueItem.result.getCount() * craftingQueueItem.count) + "", Game.f8589i.assetManager.getLabelStyle(21));
                    label3.setPosition(70.0f, 12.0f);
                    label3.setSize(100.0f, 16.0f);
                    label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                    group.addActor(label3);
                    PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-backpack-arrow-down"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.23
                        @Override // java.lang.Runnable
                        public void run() {
                            Game.f8589i.progressManager.grabCrafted(i);
                            InventoryOverlay.this.update();
                        }
                    }, Color.WHITE, Game.f8589i.progressManager.getRarityBrightColor(rarity), MaterialColor.GREY.P500);
                    paddedImageButton.setIconPosition(14.0f, 18.0f);
                    paddedImageButton.setIconSize(32.0f, 32.0f);
                    paddedImageButton.setPosition(286.0f, 0.0f);
                    group.addActor(paddedImageButton);
                } else {
                    quadActor.setVertexColors(new Color(471604479));
                    float timeLeft = 1.0f - (craftingQueueItem.getTimeLeft() / (craftingQueueItem.duration * craftingQueueItem.count));
                    if (i2 == 0) {
                        quadActor2 = new QuadActor(Color.WHITE, new float[]{6.0f, 3.0f, 3.0f, 64.0f, (344.0f * timeLeft) + 3.0f, ((-3.0f) * timeLeft) + 64.0f, (338.0f * timeLeft) + 6.0f, (timeLeft * 2.0f) + 3.0f});
                        group.addActor(quadActor2);
                    } else {
                        quadActor2 = new QuadActor(Color.WHITE, new float[]{3.0f, 6.0f, 6.0f, 62.0f, (338.0f * timeLeft) + 6.0f, (2.0f * timeLeft) + 62.0f, (344.0f * timeLeft) + 3.0f, (timeLeft * (-3.0f)) + 6.0f});
                        group.addActor(quadActor2);
                    }
                    Color cpy2 = Game.f8589i.progressManager.getRarityBrightColor(rarity).cpy();
                    cpy2.f3889a = 0.28f;
                    quadActor2.setVertexColors(cpy2);
                    Label label4 = new Label((craftingQueueItem.getCraftedCount() * craftingQueueItem.result.getCount()) + " / " + (craftingQueueItem.result.getCount() * craftingQueueItem.count) + "", Game.f8589i.assetManager.getLabelStyle(21));
                    label4.setPosition(70.0f, 12.0f);
                    label4.setSize(100.0f, 16.0f);
                    label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                    group.addActor(label4);
                    Label label5 = new Label(StringFormatter.digestTime(MathUtils.round(craftingQueueItem.getTimeLeft())), Game.f8589i.assetManager.getLabelStyle(24));
                    label5.setSize(78.0f, 67.0f);
                    label5.setPosition(253.0f, 0.0f);
                    label5.setAlignment(16);
                    group.addActor(label5);
                }
                Actor generateIcon = craftingQueueItem.result.getItem().generateIcon(48.0f, true);
                generateIcon.setPosition(13.0f, 9.0f);
                group.addActor(generateIcon);
                Label label6 = new Label(craftingQueueItem.result.getItem().getTitle(), Game.f8589i.assetManager.getLabelStyle(21));
                label6.setSize(100.0f, 16.0f);
                label6.setPosition(69.0f, 37.0f);
                group.addActor(label6);
                group.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.24
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f3, float f4) {
                        if (Game.f8589i.progressManager.getCraftingQueueItem(i) == null) {
                            InventoryOverlay.this.m20147M(-1);
                        } else {
                            InventoryOverlay.this.m20147M(i);
                        }
                        InventoryOverlay.this.update();
                    }
                });
            }
            this.f14251M.add((Table) group).width(350.0f).height(67.0f).padBottom(5.0f).row();
            i++;
            z = false;
        }
        this.f14251M.add().width(1.0f).expandY().fillY().row();
        float totalCraftingTimeLeft = Game.f8589i.progressManager.getTotalCraftingTimeLeft();
        this.f14252N.setText(StringFormatter.digestTime(MathUtils.round(totalCraftingTimeLeft), true));
        Table table3 = new Table();
        this.f14251M.add(table3).padTop(10.0f).fillX().row();
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.25
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.progressManager.grabCrafted();
                InventoryOverlay.this.m20143Q();
            }
        });
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-backpack-arrow-down"), 40.0f, 10.0f, 48.0f, 48.0f);
        Color color3 = Color.WHITE;
        complexButton.setBackground(new QuadDrawable(new QuadActor(color3, new float[]{3.0f, 0.0f, 0.0f, 70.0f, 127.0f, 68.0f, 123.0f, 2.0f})), 0.0f, 0.0f, 127.0f, 70.0f);
        complexButton.backgroundShadow.setDrawable(new QuadDrawable(new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.21f), new float[]{3.0f, 0.0f, 0.0f, 70.0f, 127.0f, 68.0f, 123.0f, 2.0f})));
        complexButton.backgroundShadow.setPosition(4.0f, -4.0f);
        complexButton.backgroundShadow.setSize(127.0f, 70.0f);
        complexButton.backgroundShadow.setVisible(true);
        table3.add((Table) complexButton).size(127.0f, 70.0f);
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("grab_crafted_items_button"), Game.f8589i.assetManager.getLabelStyle(21));
        label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table3.add((Table) label7).expandX().fillX().padLeft(20.0f);
        if (totalCraftingTimeLeft > 0.0f) {
            int acceleratorsRequiredToShortenTime = Game.f8589i.progressManager.getAcceleratorsRequiredToShortenTime(totalCraftingTimeLeft);
            Table table4 = new Table();
            this.f14251M.add(table4).padTop(10.0f).fillX().row();
            ComplexButton complexButton2 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.26
                @Override // java.lang.Runnable
                public void run() {
                    Game.f8589i.progressManager.finishCraftingNow();
                    InventoryOverlay.this.m20143Q();
                }
            });
            complexButton2.setBackground(new QuadDrawable(new QuadActor(color3, new float[]{4.0f, 2.0f, 0.0f, 68.0f, 127.0f, 70.0f, 124.0f, 0.0f})), 0.0f, 0.0f, 127.0f, 70.0f);
            complexButton2.backgroundShadow.setDrawable(new QuadDrawable(new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.21f), new float[]{4.0f, 2.0f, 0.0f, 68.0f, 127.0f, 70.0f, 124.0f, 0.0f})));
            complexButton2.backgroundShadow.setPosition(4.0f, -4.0f);
            complexButton2.backgroundShadow.setSize(127.0f, 70.0f);
            complexButton2.backgroundShadow.setVisible(true);
            table4.add((Table) complexButton2).size(127.0f, 70.0f);
            complexButton2.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, color3);
            Table table5 = new Table();
            table5.setSize(127.0f, 70.0f);
            complexButton2.addActor(table5);
            if (Game.f8589i.progressManager.areF2pTimersDisabled()) {
                table5.add((Table) new Label("FREE", Game.f8589i.assetManager.getLabelStyle(30)));
            } else {
                table5.add((Table) new Image(Game.f8589i.assetManager.getDrawable("time-accelerator"))).size(40.0f).padRight(10.0f);
                table5.add((Table) new Label(acceleratorsRequiredToShortenTime + "", Game.f8589i.assetManager.getLabelStyle(30))).padRight(5.0f);
            }
            Label label8 = new Label(Game.f8589i.localeManager.i18n.get("finish_crafting_now_button_hint"), Game.f8589i.assetManager.getLabelStyle(21));
            f2 = 1.0f;
            label8.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            f = 20.0f;
            table4.add((Table) label8).expandX().fillX().padLeft(20.0f);
        } else {
            f = 20.0f;
            f2 = 1.0f;
        }
        this.f14251M.add().width(f2).height(f).row();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r3v74, types: [T[]] */
    /* JADX WARN: Type inference failed for: r6v10, types: [com.prineside.tdi2.ui.actors.ComplexButton, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor] */
    /* renamed from: R */
    public final void m20142R() {
        float f;
        boolean z;
        Item item;
        Item item2;
        Runnable runnable;
        Array<ItemStack> array;
        float f2;
        Item item3;
        double d;
        String str;
        float f3;
        Array<ItemStack> array2;
        Table table;
        float f4;
        String str2;
        double d2;
        float f5;
        int i;
        ProgressManager.CraftingQueueItem craftingQueueItem;
        Item item4;
        this.f14288r.clearChildren();
        this.f14245G.clearChildren();
        Table table2 = new Table();
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        float f6 = 820.0f + scaledViewportHeight;
        table2.setSize(342.0f, f6);
        table2.setTouchable(Touchable.childrenOnly);
        table2.setPosition(0.0f, 20.0f);
        this.f14288r.addActor(table2);
        Table table3 = new Table();
        table3.setSize(342.0f, f6);
        table3.setTouchable(Touchable.disabled);
        table3.setPosition(0.0f, 20.0f);
        this.f14245G.addActor(table3);
        table2.add().width(1.0f).expandY().fillY().row();
        table3.add().width(1.0f).expandY().fillY().row();
        TabType tabType = this.f14277j0;
        TabType tabType2 = TabType.CRAFTING;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = true;
        if (tabType == tabType2 && (i = this.f14254P) != -1) {
            Array<ProgressManager.CraftingQueueItem> array3 = Game.f8589i.progressManager.craftingQueue;
            if (array3.size > i) {
                craftingQueueItem = array3.items[i];
            } else {
                craftingQueueItem = null;
            }
            if (craftingQueueItem == null) {
                m20147M(-1);
                m20142R();
                item4 = null;
            } else {
                item4 = craftingQueueItem.result.getItem();
                m20157C(Game.f8589i.localeManager.i18n.get("cancel_crafting_button"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.7
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.progressManager.cancelCrafting(InventoryOverlay.this.f14254P);
                        InventoryOverlay.this.update();
                    }
                }, null, table2, table3);
                m20157C(Game.f8589i.localeManager.i18n.get("grab_crafted_items_button"), Game.f8589i.assetManager.getDrawable("icon-backpack-arrow-down"), MaterialColor.LIGHT_BLUE.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.8
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.progressManager.grabCrafted(InventoryOverlay.this.f14254P);
                        InventoryOverlay.this.update();
                    }
                }, null, table2, table3);
            }
            item = item4;
            z = true;
            f = 64.0f;
        } else {
            int i2 = 8;
            String str3 = "";
            if (m20151I()) {
                Array array4 = new Array(Actor.class);
                for (int i3 = this.f14282n0.size - 1; i3 >= 0; i3--) {
                    array4.add(this.f14282n0.items[i3].getItem().generateIcon(96.0f, true));
                    if (array4.size == 8) {
                        break;
                    }
                }
                Array<ItemStack> array5 = this.f14282n0;
                Item item5 = array5.items[array5.size - 1].getItem();
                float f7 = array4.size * 24.0f * 0.5f;
                for (int i4 = 0; i4 < array4.size; i4++) {
                    Actor actor = ((Actor[]) array4.items)[i4];
                    actor.setPosition((132.0f - f7) + (i4 * 24.0f), 708.0f + scaledViewportHeight);
                    this.f14288r.addActor(actor);
                    actor.setZIndex(0);
                }
                Label label = new Label(Game.f8589i.localeManager.i18n.get("selected_items_count") + " " + this.f14282n0.size, Game.f8589i.assetManager.getLabelStyle(30));
                label.setAlignment(1);
                label.setPosition(108.0f, 632.0f + scaledViewportHeight);
                label.setSize(128.0f, 32.0f);
                label.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                this.f14288r.addActor(label);
                Label label2 = new Label(Game.f8589i.localeManager.i18n.get("selected_items_count") + " " + this.f14282n0.size, Game.f8589i.assetManager.getLabelStyle(30));
                label2.setAlignment(1);
                label2.setPosition(107.0f, 635.0f + scaledViewportHeight);
                label2.setSize(128.0f, 32.0f);
                this.f14288r.addActor(label2);
                Label label3 = new Label(Game.f8589i.localeManager.i18n.get("cancel"), Game.f8589i.assetManager.getLabelStyle(24));
                label3.setAlignment(1);
                label3.setPosition(43.0f, 600.0f + scaledViewportHeight);
                label3.setSize(256.0f, 32.0f);
                Color color = MaterialColor.LIGHT_BLUE.P500;
                label3.setColor(color);
                Touchable touchable = Touchable.enabled;
                label3.setTouchable(touchable);
                label3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.9
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f8, float f9) {
                        InventoryOverlay.this.m20156D();
                    }
                });
                this.f14288r.addActor(label3);
                if (this.f14277j0 == TabType.ITEMS_MAP_EDITOR) {
                    String str4 = Game.f8589i.localeManager.i18n.get("select_visible_items");
                    if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
                        str4 = str4 + " (A)";
                    }
                    Label label4 = new Label(str4, Game.f8589i.assetManager.getLabelStyle(24));
                    label4.setAlignment(1);
                    label4.setPosition(43.0f, 536.0f + scaledViewportHeight);
                    label4.setSize(256.0f, 40.0f);
                    label4.setColor(color);
                    label4.setTouchable(touchable);
                    label4.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.10
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                        public void clicked(InputEvent inputEvent, float f8, float f9) {
                            InventoryOverlay.this.m20148L();
                        }
                    });
                    this.f14288r.addActor(label4);
                }
                double d3 = 0.0d;
                int i5 = 0;
                while (true) {
                    Array<ItemStack> array6 = this.f14282n0;
                    if (i5 >= array6.size) {
                        break;
                    }
                    Item item6 = array6.items[i5].getItem();
                    if (item6 instanceof TileItem) {
                        double prestigeScore = ((TileItem) item6).tile.getPrestigeScore();
                        str2 = str3;
                        double count = this.f14282n0.items[i5].getCount();
                        Double.isNaN(count);
                        d2 = prestigeScore * count;
                    } else {
                        str2 = str3;
                        if (item6 instanceof GateItem) {
                            double prestigeScore2 = ((GateItem) item6).gate.getPrestigeScore();
                            double count2 = this.f14282n0.items[i5].getCount();
                            Double.isNaN(count2);
                            d2 = prestigeScore2 * count2;
                        } else {
                            i5++;
                            str3 = str2;
                        }
                    }
                    d3 += d2;
                    i5++;
                    str3 = str2;
                }
                String str5 = str3;
                if (((int) (d3 * 250.0d)) >= 1) {
                    f3 = 24.0f;
                    str = str5;
                    m20157C(Game.f8589i.localeManager.i18n.get("gv_title_PRESTIGE_MODE") + " (" + ((Object) StringFormatter.compactNumber(d, false)) + " mP)", Game.f8589i.assetManager.getDrawable("icon-crown"), MaterialColor.BLUE.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.11
                        @Override // java.lang.Runnable
                        public void run() {
                            Game game = Game.f8589i;
                            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("dialog_confirm_mass_item_prestige"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.11.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    double prestigeScore3;
                                    double count3;
                                    double d4 = 0.0d;
                                    for (int i6 = 0; i6 < InventoryOverlay.this.f14282n0.size; i6++) {
                                        Item item7 = ((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i6].getItem();
                                        if (d4 >= 9.99999999E8d) {
                                            break;
                                        } else if (item7 instanceof TileItem) {
                                            if (Game.f8589i.progressManager.removeItems(((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i6].getItem(), ((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i6].getCount())) {
                                                prestigeScore3 = ((TileItem) item7).tile.getPrestigeScore();
                                                count3 = ((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i6].getCount();
                                                Double.isNaN(count3);
                                                d4 += prestigeScore3 * count3;
                                            }
                                        } else {
                                            if ((item7 instanceof GateItem) && Game.f8589i.progressManager.removeItems(((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i6].getItem(), ((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i6].getCount())) {
                                                prestigeScore3 = ((GateItem) item7).gate.getPrestigeScore();
                                                count3 = ((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i6].getCount();
                                                Double.isNaN(count3);
                                                d4 += prestigeScore3 * count3;
                                            }
                                        }
                                    }
                                    double percentValueAsMultiplier = (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.PRESTIGE_DUST_DROP_RATE);
                                    Double.isNaN(percentValueAsMultiplier);
                                    Game.f8589i.progressManager.addItems(Item.C1543D.PRESTIGE_DUST, (int) (d4 * 250.0d * percentValueAsMultiplier));
                                    InventoryOverlay.this.m20156D();
                                    InventoryOverlay.this.update();
                                }
                            });
                        }
                    }, null, table2, table3);
                } else {
                    str = str5;
                    f3 = 24.0f;
                }
                f14236A0.clear();
                int i6 = 0;
                while (true) {
                    Array<ItemStack> array7 = this.f14282n0;
                    if (i6 >= array7.size) {
                        break;
                    }
                    ItemStack itemStack = array7.items[i6];
                    if (itemStack.getItem().canBeSold()) {
                        itemStack.getItem().addSellItems(f14236A0, itemStack.getCount());
                    }
                    i6++;
                }
                Array<ItemStack> array8 = f14236A0;
                ProgressManager.compressStacksArray(array8);
                if (array8.size != 0) {
                    m20157C(Game.f8589i.localeManager.i18n.get("sell_button"), Game.f8589i.assetManager.getDrawable("icon-dollar"), MaterialColor.RED.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.12
                        @Override // java.lang.Runnable
                        public void run() {
                            Game game = Game.f8589i;
                            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("dialog_confirm_mass_item_sell"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.12.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    for (int i7 = 0; i7 < InventoryOverlay.this.f14282n0.size; i7++) {
                                        Game.f8589i.progressManager.sellItems(((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i7].getItem(), ((ItemStack[]) InventoryOverlay.this.f14282n0.items)[i7].getCount());
                                    }
                                    InventoryOverlay.this.m20156D();
                                    InventoryOverlay.this.update();
                                }
                            });
                        }
                    }, null, table2, table3);
                    Table table4 = new Table();
                    int i7 = 0;
                    while (true) {
                        array2 = f14236A0;
                        if (i7 < array2.size) {
                            ItemStack itemStack2 = array2.items[i7];
                            Table table5 = new Table();
                            table5.add((Table) itemStack2.getItem().generateIcon(f3, false)).size(f3).padRight(6.0f).padLeft(8.0f);
                            StringBuilder sb = new StringBuilder();
                            table = table3;
                            sb.append((Object) StringFormatter.compactNumber(itemStack2.getCount(), false));
                            sb.append(str);
                            table5.add((Table) new Label(sb.toString(), Game.f8589i.assetManager.getLabelStyle(21))).padRight(8.0f);
                            table4.add(table5);
                            if (i7 == 2) {
                                break;
                            }
                            i7++;
                            table3 = table;
                            f3 = 24.0f;
                        } else {
                            table = table3;
                            break;
                        }
                    }
                    if (array2.size > 3) {
                        f4 = 8.0f;
                        table4.add((Table) new Label("+", Game.f8589i.assetManager.getLabelStyle(24))).padRight(8.0f);
                    } else {
                        f4 = 8.0f;
                    }
                    table2.add(table4).padBottom(f4).padTop(f4).height(24.0f).row();
                    table.add().width(1.0f).height(40.0f).row();
                }
                item = item5;
                z = false;
                f = 64.0f;
                z3 = true;
            } else {
                ItemStack itemStack3 = this.f14281m0;
                if (itemStack3 != null) {
                    Item item7 = itemStack3.getItem();
                    if (this.f14277j0 == tabType2) {
                        if (this.f14254P == -1) {
                            Array<CraftRecipe> craftRecipes = Game.f8589i.itemManager.getCraftRecipes(item7);
                            int i8 = 0;
                            while (i8 < craftRecipes.size) {
                                final CraftRecipe craftRecipe = craftRecipes.items[i8];
                                ?? complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.13
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        InventoryOverlay.this.f14255Q = craftRecipe;
                                        InventoryOverlay.this.f14256R = null;
                                        ItemCountSelectionOverlay itemCountSelectionOverlay = Game.f8589i.uiManager.itemCountSelectionOverlay;
                                        itemCountSelectionOverlay.show(Game.f8589i.localeManager.i18n.get("craft_button") + " - " + ((Object) craftRecipe.result.getItem().getTitle()), 1, 1, craftRecipe.result.getItem(), new ItemCountSelectionOverlay.ItemCountSelectionListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.13.1
                                            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                            public void countChanged(int i9) {
                                                InventoryOverlay.this.m20144P();
                                            }

                                            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                            public void selectionCanceled() {
                                            }

                                            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                            public void selectionConfirmed(int i9) {
                                                Array<Item> array9 = new Array<>(Item.class);
                                                int i10 = 0;
                                                while (true) {
                                                    CraftRecipe craftRecipe2 = craftRecipe;
                                                    Array<CraftRecipe.Ingredient> array10 = craftRecipe2.ingredients;
                                                    if (i10 < array10.size) {
                                                        Array<ItemStack> suitableItemsFromInventory = array10.items[i10].getSuitableItemsFromInventory();
                                                        Item item8 = null;
                                                        if (suitableItemsFromInventory.size != 0) {
                                                            int i11 = InventoryOverlay.this.f14256R[i10];
                                                            if (suitableItemsFromInventory.size <= i11) {
                                                                i11 = 0;
                                                            }
                                                            item8 = suitableItemsFromInventory.items[i11].getItem();
                                                        }
                                                        array9.add(item8);
                                                        i10++;
                                                    } else {
                                                        Game.f8589i.progressManager.startCrafting(craftRecipe2, array9, i9);
                                                        InventoryOverlay.this.update();
                                                        return;
                                                    }
                                                }
                                            }
                                        });
                                        InventoryOverlay.this.m20144P();
                                    }
                                });
                                Color color2 = Color.WHITE;
                                float[] fArr = new float[i2];
                                // fill-array-data instruction
                                fArr[0] = 5.0f;
                                fArr[1] = 0.0f;
                                fArr[2] = 0.0f;
                                fArr[3] = 120.0f;
                                fArr[4] = 328.0f;
                                fArr[5] = 117.0f;
                                fArr[6] = 323.0f;
                                fArr[7] = 3.0f;
                                complexButton.setBackground(new QuadDrawable(new QuadActor(color2, fArr)), 0.0f, 10.0f, 328.0f, 120.0f);
                                complexButton.backgroundShadow.setVisible(z4);
                                complexButton.backgroundShadow.setSize(327.0f, 87.0f);
                                complexButton.backgroundShadow.setColor(0.0f, 0.0f, 0.0f, 0.14f);
                                float[] fArr2 = new float[i2];
                                // fill-array-data instruction
                                fArr2[0] = 14.0f;
                                fArr2[1] = 0.0f;
                                fArr2[2] = 6.0f;
                                fArr2[3] = 87.0f;
                                fArr2[4] = 327.0f;
                                fArr2[5] = 85.0f;
                                fArr2[6] = 320.0f;
                                fArr2[7] = 11.0f;
                                complexButton.backgroundShadow.setDrawable(new QuadDrawable(new QuadActor(color2, fArr2)));
                                complexButton.setBackgroundColors(MaterialColor.BLUE_GREY.P800, MaterialColor.BLUE_GREY.P900, MaterialColor.BLUE_GREY.P700, MaterialColor.GREY.P700);
                                table2.add((Table) complexButton).size(328.0f, 130.0f).padTop(8.0f).padLeft(23.0f).left().row();
                                Group group = new Group();
                                group.setTransform(z2);
                                group.setPosition(14.0f, 22.0f);
                                float f8 = 96.0f;
                                group.setSize(290.0f, 96.0f);
                                complexButton.addActor(group);
                                int i9 = 0;
                                ?? r13 = z2;
                                while (true) {
                                    Array<CraftRecipe.Ingredient> array9 = craftRecipe.ingredients;
                                    if (i9 >= array9.size) {
                                        break;
                                    }
                                    float f9 = i9 * f8;
                                    CraftRecipe.Ingredient ingredient = array9.items[i9];
                                    final Group group2 = new Group();
                                    group2.setPosition(f9 + 16.0f, 20.0f);
                                    group2.setSize(64.0f, 64.0f);
                                    group.addActor(group2);
                                    Item[] exampleItems = ingredient.getExampleItems();
                                    Array<CraftRecipe> array10 = craftRecipes;
                                    if (exampleItems.length == 1) {
                                        group2.addActor(exampleItems[r13].generateIcon(64.0f, true));
                                        item3 = item7;
                                    } else {
                                        final Array array11 = new Array();
                                        int length = exampleItems.length;
                                        int i10 = 0;
                                        while (i10 < length) {
                                            array11.add(exampleItems[i10].generateIcon(64.0f, true));
                                            i10++;
                                            item7 = item7;
                                            length = length;
                                            exampleItems = exampleItems;
                                        }
                                        item3 = item7;
                                        final int[] iArr = {0};
                                        group2.addActor((Actor) array11.first());
                                        group2.addAction(Actions.forever(Actions.sequence(Actions.delay(0.75f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.14
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                int[] iArr2 = iArr;
                                                int i11 = iArr2[0] + 1;
                                                iArr2[0] = i11;
                                                if (i11 == array11.size) {
                                                    iArr2[0] = 0;
                                                }
                                                group2.clearChildren();
                                                group2.addActor((Actor) array11.get(iArr[0]));
                                            }
                                        }))));
                                    }
                                    int countWithGVs = ingredient.getCountWithGVs();
                                    Label label5 = new Label(countWithGVs + "", Game.f8589i.assetManager.getLabelStyle(21));
                                    label5.setAlignment(1);
                                    float f10 = 72.0f + f9;
                                    label5.setPosition(f10 - 2.0f, 14.0f);
                                    label5.setSize(1.0f, 16.0f);
                                    label5.setColor(MaterialColor.BLUE_GREY.P800);
                                    group.addActor(label5);
                                    Label label6 = new Label(countWithGVs + "", Game.f8589i.assetManager.getLabelStyle(21));
                                    label6.setAlignment(1);
                                    label6.setPosition(f10, 12.0f);
                                    label6.setSize(1.0f, 16.0f);
                                    group.addActor(label6);
                                    if (i9 != 0) {
                                        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-plus"));
                                        image.setSize(24.0f, 24.0f);
                                        image.setPosition(f9 - 12.0f, 36.0f);
                                        group.addActor(image);
                                    }
                                    i9++;
                                    craftRecipes = array10;
                                    item7 = item3;
                                    f8 = 96.0f;
                                    r13 = 0;
                                }
                                Array<CraftRecipe> array12 = craftRecipes;
                                Item item8 = item7;
                                if (!Game.f8589i.progressManager.areF2pTimersDisabled()) {
                                    CharSequence replaceRegionAliasesWithChars = Game.f8589i.assetManager.replaceRegionAliasesWithChars("<@icon-clock> " + ((Object) StringFormatter.digestTime(MathUtils.round(craftRecipe.getTimeWithGVs()), false)) + "\n= " + craftRecipe.result.getCount());
                                    Label label7 = new Label(replaceRegionAliasesWithChars, Game.f8589i.assetManager.getLabelStyle(24));
                                    label7.setPosition(88.0f, 52.0f);
                                    label7.setSize(200.0f, 16.0f);
                                    label7.setColor(MaterialColor.BLUE_GREY.P800);
                                    label7.setAlignment(16);
                                    group.addActor(label7);
                                    Label label8 = new Label(replaceRegionAliasesWithChars, Game.f8589i.assetManager.getLabelStyle(24));
                                    label8.setPosition(90.0f, 54.0f);
                                    label8.setSize(200.0f, 16.0f);
                                    label8.setAlignment(16);
                                    group.addActor(label8);
                                }
                                Image image2 = new Image(new QuadDrawable(new QuadActor(Color.WHITE, new float[]{0.0f, 0.0f, 0.0f, 13.0f, 19.0f, 13.0f, 19.0f, 13.0f})));
                                image2.setColor(MaterialColor.BLUE_GREY.P900);
                                image2.getColor().lerp(Color.BLACK, 0.5f);
                                table3.add((Table) image2).size(19.0f, 13.0f).padLeft(326.0f).padTop(125.0f).left().row();
                                i8++;
                                craftRecipes = array12;
                                item7 = item8;
                                i2 = 8;
                                z2 = false;
                                z4 = true;
                            }
                        }
                        item2 = item7;
                        f = 64.0f;
                    } else {
                        item2 = item7;
                        Array<ItemStack> array13 = f14236A0;
                        array13.clear();
                        if (this.f14281m0.getItem().canBeSold()) {
                            this.f14281m0.getItem().addSellItems(array13);
                        }
                        if (array13.size != 0) {
                            int i11 = 0;
                            final int i12 = 0;
                            while (true) {
                                Array<ItemStack> array14 = f14236A0;
                                if (i11 >= array14.size) {
                                    break;
                                }
                                if (array14.items[i11].getCount() > i12) {
                                    i12 = array14.items[i11].getCount();
                                }
                                i11++;
                            }
                            f = 64.0f;
                            m20157C(Game.f8589i.localeManager.i18n.get("sell_button"), Game.f8589i.assetManager.getDrawable("icon-dollar"), MaterialColor.RED.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.15
                                @Override // java.lang.Runnable
                                public void run() {
                                    int i13;
                                    int count3 = InventoryOverlay.this.f14281m0.getCount();
                                    int i14 = 500000000 / i12;
                                    if (count3 > i14) {
                                        i13 = i14;
                                    } else {
                                        i13 = count3;
                                    }
                                    ItemCountSelectionOverlay itemCountSelectionOverlay = Game.f8589i.uiManager.itemCountSelectionOverlay;
                                    itemCountSelectionOverlay.show(Game.f8589i.localeManager.i18n.get("sell_button") + " - " + ((Object) InventoryOverlay.this.f14281m0.getItem().getTitle()), 1, i13, InventoryOverlay.this.f14281m0.getItem(), InventoryOverlay.this.f14295u0);
                                    Table infoContainer = Game.f8589i.uiManager.itemCountSelectionOverlay.getInfoContainer();
                                    infoContainer.clear();
                                    InventoryOverlay.this.f14297v0.clear();
                                    for (int i15 = 0; i15 < InventoryOverlay.f14236A0.size; i15++) {
                                        infoContainer.add((Table) ((ItemStack[]) InventoryOverlay.f14236A0.items)[i15].getItem().generateIcon(32.0f, false)).size(32.0f).padLeft(8.0f);
                                        Label label9 = new Label("0", Game.f8589i.assetManager.getLabelStyle(24));
                                        infoContainer.add((Table) label9).padLeft(6.0f).padRight(8.0f);
                                        InventoryOverlay.this.f14297v0.add(label9);
                                    }
                                    InventoryOverlay.this.m20141S();
                                }
                            }, null, table2, table3);
                            Table table6 = new Table();
                            int i13 = 0;
                            while (true) {
                                array = f14236A0;
                                if (i13 >= array.size) {
                                    break;
                                }
                                ItemStack itemStack4 = array.items[i13];
                                Table table7 = new Table();
                                table7.add((Table) itemStack4.getItem().generateIcon(24.0f, false)).size(24.0f).padRight(6.0f).padLeft(8.0f);
                                table7.add((Table) new Label(itemStack4.getCount() + "", Game.f8589i.assetManager.getLabelStyle(21))).padRight(8.0f);
                                table6.add(table7);
                                if (i13 == 2) {
                                    break;
                                }
                                i13++;
                            }
                            if (array.size > 3) {
                                f2 = 8.0f;
                                table6.add((Table) new Label("+", Game.f8589i.assetManager.getLabelStyle(24))).padRight(8.0f);
                            } else {
                                f2 = 8.0f;
                            }
                            table2.add(table6).padBottom(f2).padTop(f2).height(24.0f).row();
                            table3.add().width(1.0f).height(40.0f).row();
                        } else {
                            f = 64.0f;
                        }
                        if (this.f14281m0.getItem().getType() == ItemType.CASE && ((CaseItem) this.f14281m0.getItem()).encrypted) {
                            m20157C(Game.f8589i.localeManager.i18n.get("decrypt_pack_button"), Game.f8589i.assetManager.getDrawable("icon-lock-unlocked"), MaterialColor.LIGHT_BLUE.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.16
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (Game.f8589i.progressManager.areF2pTimersDisabled()) {
                                        CaseItem caseItem = (CaseItem) InventoryOverlay.this.f14281m0.getItem();
                                        if (Game.f8589i.progressManager.removeItems(caseItem, 1)) {
                                            Game.f8589i.progressManager.addItems(Item.C1543D.F_CASE.create(caseItem.caseType, false, caseItem.containsPapers), 1);
                                        } else {
                                            InventoryOverlay.this.setSelectedItem(null);
                                        }
                                    } else {
                                        Game.f8589i.progressManager.startDecryptingCase(((CaseItem) InventoryOverlay.this.f14281m0.getItem()).caseType);
                                    }
                                    InventoryOverlay.this.update();
                                }
                            }, null, table2, table3);
                        }
                        if (this.f14281m0.getItem().canBeUnpacked()) {
                            if (this.f14281m0.getCount() > 1) {
                                runnable = new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.17
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        int i14;
                                        if (!(InventoryOverlay.this.f14281m0.getItem() instanceof RandomTileItem) && !(InventoryOverlay.this.f14281m0.getItem() instanceof RandomBarrierItem)) {
                                            i14 = 50;
                                        } else {
                                            i14 = 500;
                                        }
                                        int min = Math.min(i14, InventoryOverlay.this.f14281m0.getCount());
                                        Game game = Game.f8589i;
                                        game.uiManager.itemCountSelectionOverlay.show(game.localeManager.i18n.get("open_pack_button"), 1, min, InventoryOverlay.this.f14281m0.getItem(), new ItemCountSelectionOverlay.ItemCountSelectionListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.17.1
                                            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                            public void countChanged(int i15) {
                                            }

                                            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                            public void selectionCanceled() {
                                            }

                                            @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                            public void selectionConfirmed(int i15) {
                                                Game.f8589i.progressManager.openPack(InventoryOverlay.this.f14281m0.getItem(), i15, true, false);
                                                InventoryOverlay.this.update();
                                                InventoryOverlay.this.m20149K();
                                            }
                                        });
                                        Game.f8589i.uiManager.itemCountSelectionOverlay.setSelectedCount(min);
                                    }
                                };
                            } else {
                                runnable = null;
                            }
                            m20157C(Game.f8589i.localeManager.i18n.get("open_pack_button"), Game.f8589i.assetManager.getDrawable("icon-eye"), MaterialColor.GREEN.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.18
                                @Override // java.lang.Runnable
                                public void run() {
                                    Game.f8589i.progressManager.openPack(InventoryOverlay.this.f14281m0.getItem(), 1, true, false);
                                    InventoryOverlay.this.update();
                                    InventoryOverlay.this.m20149K();
                                }
                            }, runnable, table2, table3);
                        }
                        if (this.f14281m0.getItem().getType() == ItemType.LUCKY_SHOT_TOKEN) {
                            m20157C(Game.f8589i.localeManager.i18n.get("lucky_shot"), Game.f8589i.assetManager.getDrawable("icon-lucky-wheel"), MaterialColor.GREEN.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.19
                                @Override // java.lang.Runnable
                                public void run() {
                                    InventoryOverlay.this.hide(true);
                                    Game.f8589i.uiManager.luckyWheelOverlay.setVisible(true);
                                }
                            }, null, table2, table3);
                        }
                        if (this.f14281m0.getItem() instanceof Item.UsableItem) {
                            final Item.UsableItem usableItem = (Item.UsableItem) this.f14281m0.getItem();
                            m20157C(Game.f8589i.localeManager.i18n.get("use_item_button"), Game.f8589i.assetManager.getDrawable("icon-check"), MaterialColor.LIGHT_BLUE.values, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.20
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (usableItem.useItemNeedsConfirmation()) {
                                        Game game = Game.f8589i;
                                        game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("dialog_confirm_item_usage"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.20.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                usableItem.useItem();
                                                InventoryOverlay.this.update();
                                            }
                                        });
                                        return;
                                    }
                                    usableItem.useItem();
                                    InventoryOverlay.this.update();
                                }
                            }, null, table2, table3);
                        }
                    }
                    item = item2;
                    z = true;
                    z3 = false;
                } else {
                    f = 64.0f;
                    z = true;
                    z3 = false;
                    item = null;
                }
            }
        }
        if (item != null) {
            if (!z3) {
                Actor generateIcon = item.generateIcon(128.0f, true);
                f5 = 107.0f;
                generateIcon.setPosition(107.0f, 692.0f + scaledViewportHeight);
                this.f14288r.addActor(generateIcon);
            } else {
                f5 = 107.0f;
            }
            if (Game.f8589i.progressManager.isDeveloperModeEnabled() && this.f14281m0 != null) {
                Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-edit"));
                image3.setSize(48.0f, 48.0f);
                image3.setColor(MaterialColor.LIGHT_BLUE.P500);
                image3.setTouchable(Touchable.enabled);
                image3.setPosition(235.0f, 788.0f + scaledViewportHeight);
                image3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.21
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f11, float f12) {
                        InventoryOverlay.this.hide(true);
                        Game.f8589i.uiManager.itemCreationOverlay.show(InventoryOverlay.this.f14281m0.getItem());
                    }
                });
                this.f14288r.addActor(image3);
            }
            if (!z3) {
                RarityType rarity = item.getRarity();
                Label label9 = new Label(item.getTitle(), Game.f8589i.assetManager.getLabelStyle(30));
                label9.setAlignment(1);
                label9.setPosition(108.0f, 632.0f + scaledViewportHeight);
                label9.setSize(128.0f, 32.0f);
                label9.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                this.f14288r.addActor(label9);
                Label label10 = new Label(item.getTitle(), Game.f8589i.assetManager.getLabelStyle(30));
                label10.setAlignment(1);
                label10.setPosition(f5, 635.0f + scaledViewportHeight);
                label10.setSize(128.0f, 32.0f);
                label10.setColor(Game.f8589i.progressManager.getRarityBrightColor(rarity));
                this.f14288r.addActor(label10);
                Label label11 = new Label(Game.f8589i.progressManager.getRarityName(rarity).toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
                label11.setAlignment(1);
                label11.setPosition(f5, 613.0f + scaledViewportHeight);
                label11.setSize(128.0f, 16.0f);
                label11.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                this.f14288r.addActor(label11);
                Label label12 = new Label(item.getDescription(), Game.f8589i.assetManager.getLabelStyle(24));
                label12.setPosition(21.0f, 535.0f + scaledViewportHeight);
                label12.setSize(300.0f, f);
                label12.setWrap(true);
                label12.setAlignment(2);
                this.f14288r.addActor(label12);
            }
            Table table8 = new Table();
            table8.add().height(8.0f).width(300.0f).row();
            item.fillWithInfo(table8, 300.0f);
            table8.row();
            table8.add().expandY().fillY().padBottom(80.0f);
            ScrollPane scrollPane = new ScrollPane(table8, Game.f8589i.assetManager.getScrollPaneStyle(8.0f));
            scrollPane.setPosition(21.0f, 124.0f);
            scrollPane.setSize(300.0f, scaledViewportHeight + 380.0f);
            scrollPane.setScrollingDisabled(true, false);
            this.f14288r.addActor(scrollPane);
        } else if (z) {
            Label label13 = new Label(Game.f8589i.localeManager.i18n.get("inventory_no_item_selected_hint"), Game.f8589i.assetManager.getLabelStyle(21));
            label13.setSize(282.0f, scaledViewportHeight + 860.0f);
            label13.setAlignment(1);
            label13.setWrap(true);
            label13.setPosition(30.0f, 0.0f);
            this.f14288r.addActor(label13);
        }
        table2.setZIndex(9001);
    }

    /* renamed from: S */
    public final void m20141S() {
        Item item = this.f14281m0.getItem();
        int selectedCount = Game.f8589i.uiManager.itemCountSelectionOverlay.getSelectedCount();
        this.f14283o0.clear();
        item.addSellItems(this.f14283o0);
        for (int i = 0; i < f14236A0.size; i++) {
            this.f14297v0.items[i].setText(StringFormatter.commaSeparatedNumber(this.f14283o0.items[i].getCount() * selectedCount));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d7  */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20140T() {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.shared.InventoryOverlay.m20140T():void");
    }

    /* renamed from: U */
    public final void m20139U() {
        int i;
        float f;
        ScrollPane scrollPane = this.f14294u;
        if (scrollPane != null) {
            float visualScrollY = scrollPane.getVisualScrollY();
            float height = this.f14290s.getHeight();
            int i2 = 0;
            while (true) {
                Array<SubcategoryButtonConfig> array = this.f14275h0;
                i = array.size;
                f = 0.0f;
                if (i2 >= i) {
                    break;
                }
                SubcategoryButtonConfig subcategoryButtonConfig = array.items[i2];
                float height2 = subcategoryButtonConfig.button.getHeight();
                float height3 = this.f14290s.getHeight() - (subcategoryButtonConfig.distanceY - visualScrollY);
                float f2 = height2 * 0.5f;
                if (height3 + f2 > height) {
                    height3 = height - f2;
                }
                PaddedImageButton paddedImageButton = subcategoryButtonConfig.button;
                float f3 = height3 - f2;
                paddedImageButton.setPosition(0.0f, f3);
                i2++;
                height = f3;
            }
            for (int i3 = i - 1; i3 >= 0; i3--) {
                SubcategoryButtonConfig subcategoryButtonConfig2 = this.f14275h0.items[i3];
                if (subcategoryButtonConfig2.button.getY() < f) {
                    subcategoryButtonConfig2.button.setY(f);
                    f += subcategoryButtonConfig2.button.getHeight();
                }
            }
        }
    }

    /* renamed from: V */
    public final void m20138V() {
        int i = 0;
        this.f14249K.setVisible(false);
        this.f14248J.setVisible(false);
        DelayedRemovalArray<ItemStack> itemsByType = Game.f8589i.progressManager.getItemsByType(ItemType.CASE);
        ProgressManager progressManager = Game.f8589i.progressManager;
        if (progressManager.decryptingCase != null) {
            this.f14247I.setText(StringFormatter.digestTime((int) progressManager.decryptingCaseTimeLeft));
            if (Game.f8589i.progressManager.decryptingCaseTimeLeft == 0.0f) {
                this.f14249K.setVisible(true);
            }
        } else {
            for (int i2 = 0; i2 < itemsByType.size; i2++) {
                if (((CaseItem) itemsByType.items[i2].getItem()).encrypted) {
                    this.f14249K.setVisible(true);
                    break;
                }
            }
        }
        while (true) {
            if (i >= itemsByType.size) {
                break;
            } else if (!((CaseItem) itemsByType.items[i].getItem()).encrypted) {
                this.f14249K.setVisible(true);
                break;
            } else {
                i++;
            }
        }
        if (Game.f8589i.progressManager.getTotalCraftingTimeLeft() == 0.0f && Game.f8589i.progressManager.craftingQueue.size != 0) {
            this.f14248J.setVisible(true);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f14265a);
        Game.f8589i.uiManager.removeLayer(this.f14267b);
    }

    public void hide(boolean z) {
        Game.f8589i.uiManager.darkOverlay.removeCaller("InventoryOverlay");
        UiUtils.bouncyHideOverlay(null, this.f14267b.getTable(), this.f14278k, new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.41
            @Override // java.lang.Runnable
            public void run() {
                InventoryOverlay.this.m20155E();
            }
        });
        this.f14276i0 = false;
        m20146N(z);
    }

    public void postRender(float f) {
        ItemCell itemCell;
        boolean z;
        if (this.f14276i0) {
            ScrollPane scrollPane = this.f14294u;
            if (scrollPane != null && this.f14239A != scrollPane.getVisualScrollY()) {
                m20139U();
                this.f14239A = this.f14294u.getVisualScrollY();
            }
            if (Gdx.input.isKeyJustPressed(29)) {
                m20148L();
            }
        }
        if (this.f14276i0) {
            m20138V();
            ProgressManager progressManager = Game.f8589i.progressManager;
            if (progressManager.decryptingCase != null) {
                this.f14247I.setText(StringFormatter.digestTime((int) progressManager.decryptingCaseTimeLeft));
                if (Game.f8589i.progressManager.decryptingCaseTimeLeft == 0.0f) {
                    this.f14249K.setVisible(true);
                }
            } else {
                this.f14247I.setText("");
            }
            ProgressManager progressManager2 = Game.f8589i.progressManager;
            if (progressManager2.craftingQueue.size != 0) {
                this.f14246H.setText(StringFormatter.digestTime((int) progressManager2.getTotalCraftingTimeLeft()));
            } else {
                this.f14246H.setText("");
            }
            TabType tabType = this.f14277j0;
            int i = 0;
            if (tabType == TabType.PACKS && (itemCell = this.f14262X) != null) {
                int i2 = this.f14260V;
                ProgressManager progressManager3 = Game.f8589i.progressManager;
                int i3 = progressManager3.decryptingCaseQueue.size;
                if (i2 != i3) {
                    this.f14260V = i3;
                    z = true;
                } else {
                    z = false;
                }
                Item item = this.f14259U;
                CaseItem caseItem = progressManager3.decryptingCase;
                if (item != caseItem) {
                    itemCell.setItem(caseItem, 0);
                    if (caseItem != null) {
                        this.f14269c0.setText(caseItem.getTitle());
                        Color rarityBrightColor = Game.f8589i.progressManager.getRarityBrightColor(caseItem.getRarity());
                        this.f14269c0.setColor(rarityBrightColor);
                        this.f14266a0.setColor(rarityBrightColor);
                        Array.ArrayIterator<ParticleEmitter> it = this.f14273f0.getEmitters().iterator();
                        while (it.hasNext()) {
                            it.next().getTint().setColors(new float[]{rarityBrightColor.f3892r, rarityBrightColor.f3891g, rarityBrightColor.f3890b});
                        }
                    } else {
                        this.f14269c0.setText(Game.f8589i.localeManager.i18n.get("inventory_decrypting_no_item_title"));
                        this.f14269c0.setColor(new Color(1.0f, 1.0f, 1.0f, 0.56f));
                    }
                    this.f14259U = caseItem;
                    z = true;
                }
                if (this.f14259U != null && this.f14261W != Game.f8589i.progressManager.decryptingCaseTimeLeft) {
                    z = true;
                }
                if (z) {
                    ProgressManager progressManager4 = Game.f8589i.progressManager;
                    CaseItem caseItem2 = progressManager4.decryptingCase;
                    if (caseItem2 != null) {
                        float decryptionTime = (1.0f - (progressManager4.decryptingCaseTimeLeft / caseItem2.getDecryptionTime())) * 526.0f;
                        this.f14266a0.setWidth(decryptionTime);
                        float f2 = Game.f8589i.progressManager.decryptingCaseTimeLeft;
                        if (f2 == 0.0f) {
                            this.f14300x.setVisible(true);
                            this.f14302y.setVisible(true);
                            this.f14303z.setVisible(false);
                            this.f14296v.setVisible(false);
                            this.f14271d0.setVisible(false);
                            this.f14272e0.setVisible(false);
                            this.f14298w.setVisible(false);
                            this.f14262X.setNotificationBubbleEnabled(true);
                        } else {
                            this.f14268b0.setText(StringFormatter.digestTime((int) f2, true));
                            this.f14271d0.setVisible(true);
                            this.f14262X.setNotificationBubbleEnabled(false);
                            this.f14296v.setVisible(true);
                            this.f14303z.setVisible(true);
                            this.f14300x.setVisible(false);
                            this.f14302y.setVisible(false);
                            if (Game.f8589i.progressManager.areF2pTimersDisabled()) {
                                this.f14296v.setLabel(26.0f, 25.0f, 90.0f, 19.0f, 1);
                                this.f14296v.setIcon(null);
                                this.f14296v.setText("FREE");
                            } else {
                                this.f14296v.setIcon(Game.f8589i.assetManager.getDrawable("time-accelerator"), 26.0f, 15.0f, 40.0f, 40.0f);
                                this.f14296v.setLabel(76.0f, 25.0f, 40.0f, 19.0f, 8);
                                ComplexButton complexButton = this.f14296v;
                                ProgressManager progressManager5 = Game.f8589i.progressManager;
                                complexButton.setText(progressManager5.getAcceleratorsRequiredToShortenTime(progressManager5.decryptingCaseTimeLeft));
                            }
                            this.f14272e0.setVisible(true);
                            if (Game.f8589i.purchaseManager.rewardingAdsAvailable()) {
                                int secondsTillAdIsReady = Game.f8589i.purchaseManager.getSecondsTillAdIsReady(PurchaseManager.RewardingAdsType.CASE_DECRYPTION);
                                this.f14298w.setVisible(true);
                                if (secondsTillAdIsReady == 0) {
                                    this.f14298w.setText("-20:00");
                                    this.f14298w.setEnabled(true);
                                } else {
                                    this.f14298w.setText(StringFormatter.digestTime(secondsTillAdIsReady));
                                    this.f14298w.setEnabled(false);
                                }
                            } else {
                                this.f14298w.setVisible(false);
                            }
                            Array.ArrayIterator<ParticleEmitter> it2 = this.f14273f0.getEmitters().iterator();
                            while (it2.hasNext()) {
                                ParticleEmitter next = it2.next();
                                next.getSpawnWidth().setHigh(decryptionTime);
                                float f3 = decryptionTime / 7.0f;
                                if (f3 < 2.0f) {
                                    f3 = 2.0f;
                                }
                                next.getEmission().setHigh(f3);
                            }
                        }
                    } else {
                        this.f14272e0.setVisible(false);
                        this.f14271d0.setVisible(false);
                        this.f14296v.setVisible(false);
                        this.f14298w.setVisible(false);
                        this.f14300x.setVisible(false);
                        this.f14302y.setVisible(false);
                        this.f14303z.setVisible(false);
                        if (Game.f8589i.progressManager.getEncryptedCasesCount() > 0) {
                            this.f14262X.setNotificationBubbleEnabled(true);
                        }
                    }
                    this.f14263Y.clearChildren();
                    this.f14264Z.clearChildren();
                    int extraDecryptingSlotsCount = Game.f8589i.progressManager.getExtraDecryptingSlotsCount();
                    if (extraDecryptingSlotsCount < 2) {
                        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-research"));
                        image.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        image.setSize(48.0f, 48.0f);
                        this.f14264Z.addActor(image);
                    } else {
                        Array<CaseItem> array = Game.f8589i.progressManager.decryptingCaseQueue;
                        if (array.size >= 2) {
                            this.f14264Z.addActor(array.get(1).generateIcon(48.0f, false));
                        }
                    }
                    if (extraDecryptingSlotsCount < 1) {
                        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-research"));
                        image2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        image2.setSize(48.0f, 48.0f);
                        this.f14263Y.addActor(image2);
                    } else {
                        Array<CaseItem> array2 = Game.f8589i.progressManager.decryptingCaseQueue;
                        if (array2.size >= 1) {
                            this.f14263Y.addActor(array2.get(0).generateIcon(48.0f, false));
                        }
                    }
                }
            } else if (tabType == TabType.CRAFTING) {
                int totalCraftingTimeLeft = ((int) Game.f8589i.progressManager.getTotalCraftingTimeLeft()) * 31;
                while (true) {
                    Array<ProgressManager.CraftingQueueItem> array3 = Game.f8589i.progressManager.craftingQueue;
                    if (i >= array3.size) {
                        break;
                    }
                    if (array3.items[i].getTimeLeft() != 0.0f) {
                        totalCraftingTimeLeft++;
                    }
                    i++;
                }
                if (totalCraftingTimeLeft != this.f14257S) {
                    m20143Q();
                    this.f14257S = totalCraftingTimeLeft;
                }
            }
        }
        if (this.f14270d.isVisible()) {
            float f4 = this.f14289r0 + f;
            this.f14289r0 = f4;
            if (f4 > 1.0f) {
                this.f14289r0 = 0.0f;
                m20140T();
            }
        }
    }

    public void preRender(float f) {
        if (this.f14291s0) {
            update();
            this.f14291s0 = false;
        }
    }

    public void rebuildLayoutIfRequired() {
        this.f14267b.getTable().clear();
        Group group = new Group();
        group.setTransform(false);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        float f = 860.0f + scaledViewportHeight;
        float f2 = 0.5f * f;
        group.setOrigin(598.0f, f2);
        this.f14267b.getTable().add((Table) group).size(1196.0f, f);
        Group group2 = new Group();
        this.f14278k = group2;
        group2.setTransform(false);
        this.f14278k.setSize(1196.0f, f);
        this.f14278k.setOrigin(598.0f, f2);
        group.addActor(this.f14278k);
        QuadActor quadActor = new QuadActor(new Color(72), new float[]{0.0f, 13.0f, 0.0f, 40.0f, 872.0f, 40.0f, 858.0f, 0.0f});
        quadActor.setPosition(20.0f, -11.0f);
        this.f14278k.addActor(quadActor);
        float f3 = 871.0f + scaledViewportHeight;
        QuadActor quadActor2 = new QuadActor(new Color(72), new float[]{0.0f, 0.0f, 321.0f, 870.0f + scaledViewportHeight, 347.0f, f3, 330.0f, 7.0f});
        quadActor2.setPosition(872.0f, -24.0f);
        this.f14278k.addActor(quadActor2);
        QuadActor quadActor3 = new QuadActor(MaterialColor.GREY.P500, new float[]{0.0f, 0.0f, 110.0f, 17.0f, 135.0f, 17.0f, 119.0f, 4.0f});
        this.f14292t = quadActor3;
        this.f14278k.addActor(quadActor3);
        this.f14278k.addActor(new QuadActor(new Color(791621631), new float[]{7.0f, 11.0f, 0.0f, scaledViewportHeight + 849.0f, 1196.0f, f, 1185.0f, 0.0f}));
        Group group3 = new Group();
        this.f14286q = group3;
        group3.setTransform(false);
        float f4 = 832.0f + scaledViewportHeight;
        this.f14286q.setSize(862.0f, f4);
        this.f14286q.setPosition(0.0f, 14.0f);
        this.f14278k.addActor(this.f14286q);
        Group group4 = new Group();
        this.f14290s = group4;
        group4.setTransform(false);
        this.f14290s.setPosition(-82.0f, 14.0f);
        this.f14290s.setSize(82.0f, f4);
        this.f14278k.addActor(this.f14290s);
        float f5 = scaledViewportHeight + 854.0f;
        QuadActor quadActor4 = new QuadActor(new Color(36), new float[]{15.0f, 0.0f, 0.0f, f5, 17.0f, f5, 22.0f, 0.0f});
        quadActor4.setPosition(837.0f, 3.0f);
        this.f14278k.addActor(quadActor4);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.InventoryOverlay.3
            @Override // java.lang.Runnable
            public void run() {
                InventoryOverlay.this.hide(true);
            }
        });
        complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-inventory-toggle-button"), -100.0f, 0.0f, 212.0f, 105.0f);
        complexButton.setBackgroundColors(MaterialColor.CYAN.P800, MaterialColor.CYAN.P900, MaterialColor.CYAN.P700, MaterialColor.GREY.P800);
        Color color = Color.WHITE;
        complexButton.setIconLabelColors(color, color, color, color);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 28.0f, 25.0f, 64.0f, 64.0f);
        complexButton.setPosition(1193.0f, 633.0f + scaledViewportHeight);
        complexButton.setSize(112.0f, 105.0f);
        this.f14278k.addActor(complexButton);
        Group group5 = new Group();
        this.f14245G = group5;
        group5.setPosition(854.0f, 0.0f);
        this.f14245G.setSize(342.0f, f);
        this.f14278k.addActor(this.f14245G);
        float f6 = scaledViewportHeight + 877.0f;
        QuadActor quadActor5 = new QuadActor(new Color(909522687), new float[]{6.0f, 0.0f, 0.0f, f6, 342.0f, scaledViewportHeight + 867.0f, 331.0f, 7.0f});
        quadActor5.setPosition(854.0f, -7.0f);
        this.f14278k.addActor(quadActor5);
        QuadActor quadActor6 = new QuadActor(new Color(-239), new float[]{6.0f, 0.0f, 0.0f, f6, 12.0f, f3, 8.0f, 0.0f});
        quadActor6.setPosition(854.0f, -7.0f);
        this.f14278k.addActor(quadActor6);
        QuadActor quadActor7 = new QuadActor(new Color(-239), new float[]{12.0f, 4.0f, 0.0f, 10.0f, 342.0f, 0.0f, 342.0f, 0.0f});
        quadActor7.setPosition(854.0f, f);
        this.f14278k.addActor(quadActor7);
        Group group6 = new Group();
        this.f14288r = group6;
        group6.setPosition(854.0f, 0.0f);
        this.f14288r.setSize(342.0f, f);
        this.f14278k.addActor(this.f14288r);
        Group group7 = new Group();
        this.f14284p = group7;
        group7.setTransform(false);
        this.f14284p.setSize(854.0f, 110.0f);
        this.f14284p.setTouchable(Touchable.childrenOnly);
        this.f14278k.addActor(this.f14284p);
        this.f14293t0 = true;
    }

    public void setSelectedItem(ItemStack itemStack) {
        ItemCell itemCell;
        ItemStack itemStack2 = this.f14281m0;
        if (itemStack2 != null) {
            ItemCell itemCell2 = this.f14250L.get(itemStack2, null);
            if (itemCell2 != null) {
                itemCell2.setSelected(false);
            }
            this.f14281m0 = null;
        }
        this.f14281m0 = itemStack;
        if (itemStack != null && (itemCell = this.f14250L.get(itemStack, null)) != null) {
            itemCell.setSelected(true);
        }
        m20142R();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x071e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x091f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0921  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(float r38) {
        /*
            Method dump skipped, instructions count: 3208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.shared.InventoryOverlay.update(float):void");
    }
}
