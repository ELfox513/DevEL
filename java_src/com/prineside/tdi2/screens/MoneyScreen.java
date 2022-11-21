package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.ActionResolver;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.items.CaseItem;
import com.prineside.tdi2.items.CaseKeyItem;
import com.prineside.tdi2.items.DoubleGainShardItem;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.AttentionRaysUnderlay;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.Locale;
/* loaded from: classes2.dex */
public class MoneyScreen extends Screen {

    /* renamed from: p */
    public static float[] f10946p = {0.0f, 5.0f, 0.0f, 161.0f, 590.0f, 166.0f, 590.0f, 0.0f};

    /* renamed from: q */
    public static float[] f10947q = {0.0f, 0.0f, 0.0f, 166.0f, 590.0f, 161.0f, 590.0f, 5.0f};

    /* renamed from: r */
    public static final StringBuilder f10948r = new StringBuilder();

    /* renamed from: a */
    public com.badlogic.gdx.Screen f10949a;

    /* renamed from: d */
    public ComplexButton f10952d;

    /* renamed from: e */
    public Label f10953e;

    /* renamed from: f */
    public Label f10954f;

    /* renamed from: g */
    public float f10955g;

    /* renamed from: j */
    public Label f10958j;

    /* renamed from: k */
    public long f10959k;

    /* renamed from: l */
    public long f10960l;

    /* renamed from: o */
    public ScrollPane f10963o;

    /* renamed from: b */
    public final UiManager.UiLayer f10950b = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 100, "MoneyScreen main");

    /* renamed from: c */
    public final UiManager.UiLayer f10951c = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 101, "MoneyScreen loading overlay", true);

    /* renamed from: h */
    public final _PurchaseManagerListener f10956h = new _PurchaseManagerListener();

    /* renamed from: i */
    public final _ProgressManagerListener f10957i = new _ProgressManagerListener();

    /* renamed from: m */
    public Array<PaperPackConfig> f10961m = new Array<>(PaperPackConfig.class);

    /* renamed from: n */
    public Array<AcceleratorPackConfig> f10962n = new Array<>(AcceleratorPackConfig.class);

    /* loaded from: classes2.dex */
    public class AcceleratorPackConfig {

        /* renamed from: a */
        public String f10998a;

        /* renamed from: b */
        public String f10999b;

        /* renamed from: c */
        public int f11000c;

        /* renamed from: d */
        public int f11001d;

        /* renamed from: e */
        public int f11002e;

        /* renamed from: f */
        public int f11003f;

        public AcceleratorPackConfig(String str, String str2, int i, int i2, int i3, int i4) {
            this.f10999b = str;
            this.f10998a = str2;
            this.f11000c = i;
            this.f11001d = i2;
            this.f11002e = i3;
            this.f11003f = i4;
        }
    }

    /* loaded from: classes2.dex */
    public class PaperPackConfig {

        /* renamed from: a */
        public String f11005a;

        /* renamed from: b */
        public String f11006b;

        /* renamed from: c */
        public int f11007c;

        /* renamed from: d */
        public int f11008d;

        /* renamed from: e */
        public int f11009e;

        /* renamed from: f */
        public int f11010f;

        /* renamed from: g */
        public int f11011g;

        public PaperPackConfig(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            this.f11006b = str;
            this.f11005a = str2;
            this.f11007c = i;
            this.f11008d = i2;
            this.f11009e = i3;
            this.f11010f = i4;
            this.f11011g = i5;
        }
    }

    /* loaded from: classes2.dex */
    public class _ProgressManagerListener extends ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter {
        public _ProgressManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
        public void doubleGainEnabled() {
            MoneyScreen.this.m21167r();
        }

        @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
        public void itemsChanged(Item item, int i, int i2) {
            if (item == Item.C1543D.LUCKY_SHOT_TOKEN || item == Item.C1543D.GREEN_PAPER || item == Item.C1543D.ACCELERATOR || item == Item.C1543D.LOOT_BOOST || item == Item.C1543D.RARITY_BOOST || item == Item.C1543D.CASE_KEY_BLUE || item == Item.C1543D.CASE_KEY_ORANGE || item == Item.C1543D.CASE_KEY_PURPLE || item == Item.C1543D.CASE_KEY_CYAN) {
                MoneyScreen.this.m21167r();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _PurchaseManagerListener extends PurchaseManager.PurchaseManagerListener.PurchaseManagerListenerAdapter {
        public _PurchaseManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener.PurchaseManagerListenerAdapter, com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener
        public void gotResponse(String str, Object obj) {
            MoneyScreen.this.f10951c.getTable().setVisible(false);
        }

        @Override // com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener.PurchaseManagerListenerAdapter, com.prineside.tdi2.managers.PurchaseManager.PurchaseManagerListener
        public void purchased(Transaction transaction) {
            MoneyScreen.this.m21167r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m21170o(PaperPackConfig paperPackConfig) {
        m21168q(paperPackConfig.f11005a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m21169p(AcceleratorPackConfig acceleratorPackConfig) {
        m21168q(acceleratorPackConfig.f10998a);
    }

    /* renamed from: l */
    public final Group m21173l(boolean z, Drawable drawable) {
        return m21172m(z, drawable, 0.0f);
    }

    public MoneyScreen(com.badlogic.gdx.Screen screen) {
        boolean z;
        PurchaseManager purchaseManager;
        float percentValueAsMultiplier = ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.SHOP_PURCHASE_BONUS)) + 1.0f;
        int papersHourBasePrice = Game.f8589i.purchaseManager.getPapersHourBasePrice();
        this.f10961m.add(new PaperPackConfig("money-pack-tiny", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.PACK_TINY), MathUtils.round(papersHourBasePrice), 0, 0, 0, 21));
        float f = papersHourBasePrice * 3;
        this.f10961m.add(new PaperPackConfig("money-pack-small", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.PACK_SMALL), MathUtils.round(f), MathUtils.round(f * 0.1f), 1, 10, 21));
        float f2 = papersHourBasePrice * 10;
        this.f10961m.add(new PaperPackConfig("money-pack-medium", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.PACK_MEDIUM), MathUtils.round(f2), MathUtils.round(f2 * 0.2f), 3, 20, 24));
        float f3 = papersHourBasePrice * 25;
        this.f10961m.add(new PaperPackConfig("money-pack-large", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.PACK_LARGE), MathUtils.round(f3), MathUtils.round(f3 * 0.35f), 10, 35, 30));
        int i = 0;
        if (Game.f8589i.purchaseManager.transactions.size >= 3) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = z;
        while (true) {
            purchaseManager = Game.f8589i.purchaseManager;
            Array<Transaction> array = purchaseManager.transactions;
            if (i >= array.size) {
                break;
            }
            if (array.get(i).getIdentifier().equals(Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.PACK_MEDIUM)) || Game.f8589i.purchaseManager.transactions.get(i).getIdentifier().equals(Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.PACK_LARGE)) || Game.f8589i.purchaseManager.transactions.get(i).getIdentifier().equals(Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_LARGE))) {
                z2 = true;
            }
            i++;
        }
        if (z2) {
            Array<PaperPackConfig> array2 = this.f10961m;
            String purchaseIdentifier = purchaseManager.getPurchaseIdentifier(Config.ProductId.PACK_HUGE);
            float f4 = papersHourBasePrice * 50;
            array2.add(new PaperPackConfig("money-pack-huge", purchaseIdentifier, MathUtils.round(f4), MathUtils.round(f4 * 0.5f), 25, 50, 36));
        }
        this.f10962n.add(new AcceleratorPackConfig("accelerator-pack-tiny", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_TINY), MathUtils.round(20.0f * percentValueAsMultiplier), 0, 0, 21));
        this.f10962n.add(new AcceleratorPackConfig("accelerator-pack-small", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_SMALL), MathUtils.round(60.0f * percentValueAsMultiplier), MathUtils.round(9.0f * percentValueAsMultiplier), 15, 24));
        this.f10962n.add(new AcceleratorPackConfig("accelerator-pack-medium", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_MEDIUM), MathUtils.round(200.0f * percentValueAsMultiplier), MathUtils.round(70.0f * percentValueAsMultiplier), 35, 30));
        this.f10962n.add(new AcceleratorPackConfig("accelerator-pack-large", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_LARGE), MathUtils.round(500.0f * percentValueAsMultiplier), MathUtils.round(250.0f * percentValueAsMultiplier), 50, 36));
        if (z2) {
            float f5 = percentValueAsMultiplier * 1000.0f;
            this.f10962n.add(new AcceleratorPackConfig("accelerator-pack-huge", Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.ACCELERATOR_PACK_HUGE), MathUtils.round(f5), MathUtils.round(f5), 100, 36));
        }
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        this.f10949a = screen;
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.uiManager.resourcesAndMoney.setVisible(true);
        Game.f8589i.uiManager.inventoryOverlay.hide(true);
        Game game = Game.f8589i;
        game.uiManager.screenTitle.setText(game.localeManager.i18n.get("money_screen_title")).setIcon(Game.f8589i.assetManager.getDrawable("icon-money")).setVisible(true);
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.1
            @Override // java.lang.Runnable
            public void run() {
                MoneyScreen.this.m21171n();
            }
        });
        Game.f8589i.purchaseManager.addListener(this.f10956h);
        Game.f8589i.progressManager.addListener(this.f10957i);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f10950b);
        Game.f8589i.uiManager.removeLayer(this.f10951c);
        Game.f8589i.purchaseManager.removeListener(this.f10956h);
        Game.f8589i.progressManager.removeListener(this.f10957i);
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            m21171n();
            return;
        }
        float f2 = this.f10955g + f;
        this.f10955g = f2;
        if (f2 > 1.0f) {
            m21166s();
            this.f10955g = 0.0f;
        }
    }

    /* renamed from: k */
    public final ComplexButton m21174k(CharSequence charSequence, Runnable runnable) {
        ComplexButton complexButton = new ComplexButton(charSequence, Game.f8589i.assetManager.getLabelStyle(30), runnable);
        complexButton.setIconLabelShadowEnabled(true);
        complexButton.setSize(162.0f, 88.0f);
        complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-money-screen-button"), 0.0f, 0.0f, 162.0f, 88.0f);
        complexButton.setBackgroundColors(MaterialColor.LIGHT_GREEN.P600, MaterialColor.LIGHT_GREEN.P700, MaterialColor.LIGHT_GREEN.P500, MaterialColor.GREY.P700);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-money-screen-button-edge"));
        image.setSize(162.0f, 88.0f);
        complexButton.addActor(image);
        complexButton.setLabel(5.0f, 39.0f, 157.0f, 21.0f, 1);
        complexButton.setPosition(445.0f, 11.0f);
        return complexButton;
    }

    /* renamed from: m */
    public final Group m21172m(boolean z, Drawable drawable, float f) {
        Group group = new Group();
        group.setTransform(false);
        float[] fArr = new float[8];
        if (z) {
            float[] fArr2 = f10946p;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
        } else {
            float[] fArr3 = f10947q;
            System.arraycopy(fArr3, 0, fArr, 0, fArr3.length);
        }
        fArr[3] = fArr[3] + f;
        fArr[5] = fArr[5] + f;
        group.addActor(new QuadActor(new Color(690563583), fArr));
        if (z) {
            QuadActor quadActor = new QuadActor(new Color(943208703), new float[]{0.0f, 0.0f, 0.0f, 6.0f, 590.0f, 10.0f, 589.0f, 8.0f});
            float f2 = f + 156.0f;
            quadActor.setPosition(0.0f, f2);
            group.addActor(quadActor);
            QuadActor quadActor2 = new QuadActor(new Color(943208703), new float[]{0.0f, 0.0f, 0.0f, f2, 6.0f, f2, 1.0f, 0.0f});
            quadActor2.setPosition(0.0f, 6.0f);
            group.addActor(quadActor2);
        } else {
            QuadActor quadActor3 = new QuadActor(new Color(943208703), new float[]{0.0f, 1.0f, 0.0f, 6.0f, 590.0f, 1.0f, 590.0f, 0.0f});
            quadActor3.setPosition(0.0f, f + 160.0f);
            group.addActor(quadActor3);
            QuadActor quadActor4 = new QuadActor(new Color(943208703), new float[]{0.0f, 0.0f, 0.0f, f + 165.0f, 5.0f, f + 164.0f, 1.0f, 0.0f});
            quadActor4.setPosition(0.0f, 0.0f);
            group.addActor(quadActor4);
        }
        Image image = new Image(drawable);
        image.setSize(128.0f, 128.0f);
        image.setPosition(16.0f, (0.5f * f) + 19.0f);
        group.addActor(image);
        return group;
    }

    /* renamed from: q */
    public final void m21168q(String str) {
        this.f10951c.getTable().setVisible(true);
        Game.f8589i.purchaseManager.purchaseManager.purchase(str);
    }

    /* renamed from: r */
    public final void m21167r() {
        float f;
        float f2;
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        Group group;
        int i2;
        int i3;
        int i4;
        final CaseItem caseItem;
        CharSequence replaceRegionAliasesWithChars;
        int accelerators;
        final int i5;
        int i6;
        int[] iArr;
        RarityType[] rarityTypeArr;
        float f3;
        ScrollPane scrollPane;
        CaseType[] caseTypeArr;
        boolean z4;
        ScrollPane scrollPane2 = this.f10963o;
        if (scrollPane2 != null) {
            f = scrollPane2.getScrollY();
        } else {
            f = 0.0f;
        }
        Logger.log("MoneyScreen", "update " + f);
        float regularLayerWidth = Game.f8589i.uiManager.getRegularLayerWidth();
        Table table = this.f10950b.getTable();
        table.clear();
        Table table2 = new Table();
        ScrollPane scrollPane3 = new ScrollPane(table2);
        scrollPane3.setSize(regularLayerWidth, Game.f8589i.settingsManager.getScaledViewportHeight());
        scrollPane3.setScrollingDisabled(true, false);
        table.add((Table) scrollPane3).width(regularLayerWidth).height(Game.f8589i.settingsManager.getScaledViewportHeight());
        this.f10963o = scrollPane3;
        Game.f8589i.uiManager.stage.setScrollFocus(scrollPane3);
        table2.add().height(128.0f).width(1.0f).row();
        Group group2 = new Group();
        group2.setTransform(false);
        Color color = Color.WHITE;
        QuadActor quadActor = new QuadActor(color, f10946p);
        if (Game.f8589i.progressManager.getLootBoostTimeLeft() > 0.0f) {
            quadActor.setVertexColors(new Color(641146367), new Color(472258559), new Color(506009855), new Color(674963199));
        } else {
            quadActor.setVertexColors(new Color(51));
        }
        group2.addActor(quadActor);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("loot-token"));
        image.setSize(128.0f, 128.0f);
        image.setPosition(16.0f, 19.0f);
        group2.addActor(image);
        Label label = new Label(Item.C1543D.LOOT_BOOST.getTitle(), Game.f8589i.assetManager.getLabelStyle(30));
        label.setSize(100.0f, 23.0f);
        label.setPosition(158.0f, 112.0f);
        Color color2 = MaterialColor.LIGHT_GREEN.P500;
        label.setColor(color2);
        group2.addActor(label);
        Label label2 = new Label(Item.C1543D.LOOT_BOOST.getDescription(), Game.f8589i.assetManager.getLabelStyle(21));
        label2.setPosition(158.0f, 19.0f);
        label2.setSize(290.0f, 80.0f);
        label2.setWrap(true);
        label2.setAlignment(10);
        group2.addActor(label2);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f10958j = label3;
        label3.setAlignment(16);
        this.f10958j.setPosition(425.0f, 25.0f);
        this.f10958j.setSize(145.0f, 28.0f);
        group2.addActor(this.f10958j);
        table2.add((Table) group2).size(590.0f, 166.0f).padRight(20.0f);
        int itemsCount = Game.f8589i.progressManager.getItemsCount(Item.C1543D.RARITY_BOOST);
        Group group3 = new Group();
        group3.setTransform(false);
        QuadActor quadActor2 = new QuadActor(color, f10947q);
        if (itemsCount > 0) {
            quadActor2.setVertexColors(new Color(1311839743), new Color(756879103), new Color(857804799), new Color(1429542655));
        } else {
            quadActor2.setVertexColors(new Color(51));
        }
        group3.addActor(quadActor2);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("rarity-token"));
        image2.setSize(128.0f, 128.0f);
        image2.setPosition(16.0f, 19.0f);
        group3.addActor(image2);
        Label label4 = new Label(Item.C1543D.RARITY_BOOST.getTitle(), Game.f8589i.assetManager.getLabelStyle(30));
        label4.setSize(100.0f, 23.0f);
        label4.setPosition(158.0f, 112.0f);
        Color color3 = MaterialColor.AMBER.P400;
        label4.setColor(color3);
        group3.addActor(label4);
        Label label5 = new Label(Item.C1543D.RARITY_BOOST.getDescription(), Game.f8589i.assetManager.getLabelStyle(21));
        label5.setPosition(158.0f, 19.0f);
        label5.setSize(290.0f, 80.0f);
        label5.setWrap(true);
        label5.setAlignment(10);
        group3.addActor(label5);
        Label label6 = new Label("x" + itemsCount, Game.f8589i.assetManager.getLabelStyle(36));
        label6.setAlignment(16);
        label6.setPosition(425.0f, 25.0f);
        label6.setSize(145.0f, 28.0f);
        if (itemsCount > 0) {
            label6.setColor(color3);
        } else {
            label6.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        }
        group3.addActor(label6);
        table2.add((Table) group3).size(590.0f, 166.0f).row();
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("shop_tokens_info"), Game.f8589i.assetManager.getLabelStyle(21));
        label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table2.add((Table) label7).padTop(20.0f).padBottom(20.0f).colspan(2).row();
        if (Game.f8589i.purchaseManager.isPurchasesEnabled() || Game.f8589i.progressManager.isDoubleGainEnabled()) {
            Group m21172m = m21172m(false, Game.f8589i.assetManager.getDrawable("money-pack-double-gain"), 32.0f);
            String str = Game.f8589i.localeManager.i18n.get("double_gain_title");
            if (Game.f8589i.progressManager.isDoubleGainEnabled() && !Game.f8589i.progressManager.isDoubleGainPermanent()) {
                int acceleratorsForDuration = DoubleGainShardItem.getAcceleratorsForDuration(Game.f8589i.progressManager.getTempDoubleGainDurationLeft());
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                AssetManager assetManager = Game.f8589i.assetManager;
                sb.append((Object) assetManager.replaceRegionAliasesWithChars(" +<@time-accelerator>" + acceleratorsForDuration));
                str = sb.toString();
            }
            Actor label8 = new Label(str, Game.f8589i.assetManager.getLabelStyle(30));
            label8.setSize(100.0f, 23.0f);
            label8.setPosition(158.0f, 144.0f);
            label8.setColor(color3);
            m21172m.addActor(label8);
            Label label9 = new Label(Game.f8589i.localeManager.i18n.get("double_gain_description"), Game.f8589i.assetManager.getLabelStyle(21));
            label9.setPosition(158.0f, 19.0f);
            label9.setSize(275.0f, 112.0f);
            label9.setWrap(true);
            label9.setAlignment(10);
            m21172m.addActor(label9);
            Label label10 = new Label(Game.f8589i.localeManager.i18n.get("double_gain_permanent_hint").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(24));
            label10.setPosition(469.0f, 149.0f);
            label10.setAlignment(16);
            label10.setSize(100.0f, 18.0f);
            label10.setColor(color2);
            m21172m.addActor(label10);
            if (Game.f8589i.progressManager.isDoubleGainEnabled() && Game.f8589i.progressManager.isDoubleGainPermanent()) {
                Label label11 = new Label(Game.f8589i.localeManager.i18n.get("enabled"), Game.f8589i.assetManager.getLabelStyle(30));
                label11.setAlignment(16);
                label11.setPosition(425.0f, 30.0f);
                label11.setSize(145.0f, 28.0f);
                label11.setColor(color2);
                m21172m.addActor(label11);
            } else if (Game.f8589i.purchaseManager.isPurchasesEnabled() && "true".equals(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.IAP_DOUBLE_GAIN_ENABLED))) {
                PurchaseManager purchaseManager = Game.f8589i.purchaseManager;
                m21172m.addActor(m21174k(purchaseManager.purchaseManager.getInformation(purchaseManager.getPurchaseIdentifier(Config.ProductId.DOUBLE_GAIN)).getLocalPricing(), new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MoneyScreen.this.m21168q(Game.f8589i.purchaseManager.getPurchaseIdentifier(Config.ProductId.DOUBLE_GAIN));
                    }
                }));
            }
            table2.add((Table) m21172m).size(590.0f, 198.0f).padRight(20.0f);
        }
        if (Game.f8589i.purchaseManager.rewardingAdsAvailable()) {
            Group m21172m2 = m21172m(true, Game.f8589i.assetManager.getDrawable("rewarding-ad"), 32.0f);
            Actor label12 = new Label(Game.f8589i.localeManager.i18n.get("rewarding_ads_title"), Game.f8589i.assetManager.getLabelStyle(30));
            label12.setSize(100.0f, 23.0f);
            label12.setPosition(158.0f, 144.0f);
            label12.setColor(color3);
            m21172m2.addActor(label12);
            Label label13 = new Label(Game.f8589i.localeManager.i18n.get("rewarding_ads_description"), Game.f8589i.assetManager.getLabelStyle(21));
            label13.setPosition(158.0f, 19.0f);
            label13.setSize(275.0f, 112.0f);
            label13.setWrap(true);
            label13.setAlignment(10);
            m21172m2.addActor(label13);
            Game game = Game.f8589i;
            IssuedItems regularRewardingAdItems = game.progressManager.getRegularRewardingAdItems(((int) game.statisticsManager.getAllTime(StatisticsType.RVW)) + 1);
            int i7 = 0;
            while (true) {
                Array<ItemStack> array = regularRewardingAdItems.items;
                if (i7 >= array.size || i7 == 5) {
                    break;
                }
                Actor generateIcon = array.items[i7].getItem().generateIcon(48.0f, true);
                float f4 = (i7 * 56.0f) + 158.0f;
                generateIcon.setPosition(f4, 42.0f);
                m21172m2.addActor(generateIcon);
                Label label14 = new Label(StringFormatter.compactNumber(regularRewardingAdItems.items.items[i7].getCount(), false), Game.f8589i.assetManager.getLabelStyle(18));
                label14.setPosition(f4, 22.0f);
                label14.setSize(48.0f, 16.0f);
                label14.setAlignment(1);
                m21172m2.addActor(label14);
                i7++;
            }
            Label label15 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
            this.f10953e = label15;
            label15.setAlignment(16);
            this.f10953e.setPosition(425.0f, 30.0f);
            this.f10953e.setSize(145.0f, 28.0f);
            this.f10953e.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            m21172m2.addActor(this.f10953e);
            ComplexButton m21174k = m21174k(Game.f8589i.assetManager.replaceRegionAliasesWithChars("<@icon-triangle-right>"), new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.3
                @Override // java.lang.Runnable
                public void run() {
                    if (Game.getTimestampMillis() - MoneyScreen.this.f10959k < 1000) {
                        return;
                    }
                    PurchaseManager purchaseManager2 = Game.f8589i.purchaseManager;
                    PurchaseManager.RewardingAdsType rewardingAdsType = PurchaseManager.RewardingAdsType.REGULAR;
                    if (purchaseManager2.canShowRewardingAd(rewardingAdsType)) {
                        MoneyScreen.this.f10959k = Game.getTimestampMillis();
                        Game.f8589i.purchaseManager.showRewardingAd(rewardingAdsType, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.MoneyScreen.3.1
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(Boolean bool) {
                                if (Game.getTimestampMillis() - MoneyScreen.this.f10960l < 30000) {
                                    bool = Boolean.FALSE;
                                }
                                if (bool.booleanValue()) {
                                    Game game2 = Game.f8589i;
                                    IssuedItems regularRewardingAdItems2 = game2.progressManager.getRegularRewardingAdItems((int) game2.statisticsManager.getAllTime(StatisticsType.RVW));
                                    MoneyScreen.this.f10960l = Game.getTimestampMillis();
                                    Game.f8589i.progressManager.addIssuedPrizes(regularRewardingAdItems2, true);
                                    int i8 = 0;
                                    while (true) {
                                        Array<ItemStack> array2 = regularRewardingAdItems2.items;
                                        if (i8 >= array2.size) {
                                            break;
                                        }
                                        Game.f8589i.progressManager.addItems(array2.get(i8));
                                        i8++;
                                    }
                                    Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                                    Game.f8589i.statisticsManager.registerDelta(StatisticsType.RVV, 1.0d);
                                } else {
                                    Game.f8589i.uiManager.dialog.showAlert("Something went wrong, please try again later");
                                }
                                MoneyScreen.this.m21167r();
                            }
                        });
                        MoneyScreen.this.m21166s();
                        return;
                    }
                    Game game2 = Game.f8589i;
                    game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("ad_is_not_loaded_yet"));
                }
            });
            this.f10952d = m21174k;
            m21174k.setVisible(false);
            this.f10952d.setBackgroundColors(MaterialColor.LIGHT_BLUE.P600, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P500, MaterialColor.GREY.P700);
            m21172m2.addActor(this.f10952d);
            table2.add((Table) m21172m2).size(590.0f, 198.0f).row();
        }
        if (Game.f8589i.progressManager.isDoubleGainEnabled() && !Game.f8589i.progressManager.isDoubleGainPermanent()) {
            Table table3 = new Table();
            Label label16 = new Label(Game.f8589i.localeManager.i18n.get("temp_double_gain_active"), Game.f8589i.assetManager.getLabelStyle(24));
            label16.setColor(MaterialColor.LIGHT_GREEN.P500);
            table3.add((Table) label16).row();
            Label label17 = new Label(StringFormatter.timePassed(Game.f8589i.progressManager.getTempDoubleGainDurationLeft(), true, true), Game.f8589i.assetManager.getLabelStyle(24));
            this.f10954f = label17;
            table3.add((Table) label17);
            table3.setBackground(new QuadDrawable(new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{0.0f, 4.0f, 10.0f, 92.0f, 500.0f, 96.0f, 510.0f, 0.0f})));
            table2.add(table3).width(510.0f).height(96.0f).padLeft(40.0f).padRight(40.0f).padTop(-4.0f).padBottom(16.0f);
            table2.add().row();
        }
        table2.add().row();
        Group m21173l = m21173l(true, Game.f8589i.assetManager.getDrawable("lucky-shot"));
        Actor label18 = new Label(Game.f8589i.localeManager.i18n.get("lucky_shot"), Game.f8589i.assetManager.getLabelStyle(30));
        label18.setSize(100.0f, 23.0f);
        label18.setPosition(158.0f, 112.0f);
        label18.setColor(MaterialColor.AMBER.P400);
        m21173l.addActor(label18);
        Actor image3 = new Image(Game.f8589i.assetManager.getDrawable("lucky-shot-token"));
        image3.setSize(48.0f, 48.0f);
        image3.setPosition(158.0f, 44.0f);
        m21173l.addActor(image3);
        Actor label19 = new Label("x" + Game.f8589i.progressManager.getItemsCount(Item.C1543D.LUCKY_SHOT_TOKEN), Game.f8589i.assetManager.getLabelStyle(30));
        label19.setSize(48.0f, 48.0f);
        label19.setPosition(212.0f, 44.0f);
        m21173l.addActor(label19);
        ComplexButton m21174k2 = m21174k(Game.f8589i.assetManager.replaceRegionAliasesWithChars("<@icon-lucky-wheel> Show"), new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.4
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.uiManager.luckyWheelOverlay.setVisible(true);
            }
        });
        m21174k2.setBackgroundColors(MaterialColor.LIGHT_BLUE.P600, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P500, MaterialColor.GREY.P700);
        m21173l.addActor(m21174k2);
        table2.add((Table) m21173l).size(590.0f, 166.0f).padRight(20.0f).padTop(20.0f);
        table2.row();
        if (Game.f8589i.purchaseManager.rewardingAdsAvailable()) {
            table2.row();
            Group group4 = new Group();
            group4.setTransform(false);
            Label label20 = new Label(Game.f8589i.localeManager.i18n.get("shop_ad_bars_title"), Game.f8589i.assetManager.getLabelStyle(36));
            label20.setColor(MaterialColor.GREEN.P500);
            label20.setPosition(40.0f, 254.0f);
            label20.setSize(100.0f, 27.0f);
            group4.addActor(label20);
            Label label21 = new Label(Game.f8589i.localeManager.i18n.get("shop_ad_bars_description"), Game.f8589i.assetManager.getLabelStyle(24));
            label21.setPosition(40.0f, 201.0f);
            label21.setSize(500.0f, 27.0f);
            label21.setWrap(true);
            group4.addActor(label21);
            if (Game.f8589i.progressManager.isDoubleGainEnabled() && Game.f8589i.progressManager.isDoubleGainPermanent()) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                Label label22 = new Label(Game.f8589i.localeManager.i18n.get("shop_ad_bars_hint_without_double_gain"), Game.f8589i.assetManager.getLabelStyle(24));
                label22.setSize(255.0f, 47.0f);
                label22.setAlignment(1);
                label22.setWrap(true);
                label22.setPosition(615.0f, 191.0f);
                label22.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                group4.addActor(label22);
            } else {
                Label label23 = new Label(Game.f8589i.localeManager.i18n.get("shop_ad_bars_hint_with_double_gain"), Game.f8589i.assetManager.getLabelStyle(24));
                label23.setSize(255.0f, 47.0f);
                label23.setAlignment(1);
                label23.setWrap(true);
                label23.setPosition(905.0f, 191.0f);
                label23.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                group4.addActor(label23);
            }
            Color color4 = Color.WHITE;
            QuadActor quadActor3 = new QuadActor(color4, new float[]{5.0f, 0.0f, 0.0f, 40.0f, 584.0f, 40.0f, 589.0f, 0.0f});
            quadActor3.setPosition(0.0f, 111.0f);
            quadActor3.setSize(589.0f, 40.0f);
            quadActor3.setVertexColors(new Color(606348543));
            group4.addActor(quadActor3);
            float f5 = Game.f8589i.progressManager.videosWatchedForDoubleGain / 500.0f;
            if (f5 > 1.0f) {
                f5 = 1.0f;
            }
            float f6 = f5 * 584.0f;
            float f7 = f6 + 5.0f;
            QuadActor quadActor4 = new QuadActor(color4, new float[]{5.0f, 0.0f, 0.0f, 40.0f, f6, 40.0f, f7, 0.0f});
            quadActor4.setPosition(0.0f, 111.0f);
            quadActor4.setSize(f7, 40.0f);
            quadActor4.setVertexColors(new Color(-797506305));
            group4.addActor(quadActor4);
            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("shop-ad-bar-reflection"));
            image4.setPosition(0.0f, 111.0f);
            image4.setSize(589.0f, 40.0f);
            group4.addActor(image4);
            Label label24 = new Label(Game.f8589i.progressManager.videosWatchedForDoubleGain + " / 500", Game.f8589i.assetManager.getLabelStyle(24));
            label24.setSize(100.0f, 40.0f);
            label24.setPosition(476.0f, 109.0f);
            label24.setAlignment(16);
            label24.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group4.addActor(label24);
            Label label25 = new Label(Game.f8589i.progressManager.videosWatchedForDoubleGain + " / 500", Game.f8589i.assetManager.getLabelStyle(24));
            label25.setSize(100.0f, 40.0f);
            label25.setPosition(474.0f, 111.0f);
            label25.setAlignment(16);
            group4.addActor(label25);
            QuadActor quadActor5 = new QuadActor(color4, new float[]{5.0f, 0.0f, 0.0f, 40.0f, 584.0f, 40.0f, 589.0f, 0.0f});
            quadActor5.setPosition(0.0f, 31.0f);
            quadActor5.setSize(589.0f, 40.0f);
            quadActor5.setVertexColors(new Color(606348543));
            group4.addActor(quadActor5);
            float f8 = Game.f8589i.progressManager.videosWatchedForLuckyShot / 20.0f;
            if (f8 > 1.0f) {
                f8 = 1.0f;
            }
            float f9 = f8 * 584.0f;
            float f10 = f9 + 5.0f;
            QuadActor quadActor6 = new QuadActor(color4, new float[]{5.0f, 0.0f, 0.0f, 40.0f, f9, 40.0f, f10, 0.0f});
            quadActor6.setPosition(0.0f, 31.0f);
            quadActor6.setSize(f10, 40.0f);
            quadActor6.setVertexColors(new Color(-1869573889));
            group4.addActor(quadActor6);
            Image image5 = new Image(Game.f8589i.assetManager.getDrawable("shop-ad-bar-reflection"));
            image5.setPosition(0.0f, 31.0f);
            image5.setSize(589.0f, 40.0f);
            group4.addActor(image5);
            Label label26 = new Label(Game.f8589i.progressManager.videosWatchedForLuckyShot + " / 20", Game.f8589i.assetManager.getLabelStyle(24));
            label26.setSize(100.0f, 40.0f);
            label26.setPosition(476.0f, 29.0f);
            label26.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            label26.setAlignment(16);
            group4.addActor(label26);
            Label label27 = new Label(Game.f8589i.progressManager.videosWatchedForLuckyShot + " / 20", Game.f8589i.assetManager.getLabelStyle(24));
            label27.setSize(100.0f, 40.0f);
            label27.setPosition(474.0f, 31.0f);
            label27.setAlignment(16);
            group4.addActor(label27);
            QuadActor quadActor7 = new QuadActor(color4, new float[]{0.0f, 1.0f, 25.0f, 190.0f, 31.0f, 189.0f, 6.0f, 0.0f});
            quadActor7.setVertexColors(new Color(1.0f, 1.0f, 1.0f, 0.14f));
            quadActor7.setSize(31.0f, 190.0f);
            quadActor7.setPosition(864.0f, 0.0f);
            group4.addActor(quadActor7);
            Image image6 = new Image(Game.f8589i.assetManager.getDrawable("double-gain-shard"));
            image6.setPosition(622.0f, 99.0f);
            image6.setSize(64.0f, 64.0f);
            Touchable touchable = Touchable.disabled;
            image6.setTouchable(touchable);
            if (z4) {
                image6.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            }
            if (!z4 && Game.f8589i.progressManager.videosWatchedForDoubleGain >= 500) {
                QuadActor quadActor8 = new QuadActor(color4, new float[]{8.0f, 0.0f, 0.0f, 76.0f, 253.0f, 74.0f, 244.0f, 2.0f});
                quadActor8.setVertexColors(MaterialColor.GREEN.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f));
                quadActor8.setPosition(609.0f, 92.0f);
                quadActor8.setSize(253.0f, 76.0f);
                quadActor8.addAction(Actions.forever(Actions.sequence(Actions.alpha(1.0f, 0.3f), Actions.alpha(0.78f, 0.3f))));
                quadActor8.setTouchable(Touchable.enabled);
                group4.addActor(quadActor8);
                AttentionRaysUnderlay attentionRaysUnderlay = new AttentionRaysUnderlay(96.0f, MaterialColor.AMBER.P300);
                attentionRaysUnderlay.setPosition(606.0f, 83.0f);
                attentionRaysUnderlay.setSize(96.0f, 96.0f);
                attentionRaysUnderlay.setTouchable(touchable);
                group4.addActor(attentionRaysUnderlay);
                quadActor8.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.MoneyScreen.5
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f11, float f12) {
                        ProgressManager progressManager = Game.f8589i.progressManager;
                        int i8 = progressManager.videosWatchedForDoubleGain;
                        if (i8 >= 500) {
                            progressManager.videosWatchedForDoubleGain = i8 - 500;
                            progressManager.requireDelayedSave();
                            DoubleGainShardItem create = ((DoubleGainShardItem.DoubleGainShardItemFactory) Game.f8589i.itemManager.getFactory(ItemType.DOUBLE_GAIN_SHARD)).create();
                            create.duration = DoubleGainShardItem.DEFAULT_DURATION;
                            Game.f8589i.progressManager.addItems(create, 1);
                            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.REWARD_VIDEO, Game.getTimestampSeconds());
                            issuedItems.items.add(new ItemStack(create, 1));
                            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                            Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        }
                        MoneyScreen.this.m21167r();
                    }
                });
            }
            group4.addActor(image6);
            String str2 = Game.f8589i.localeManager.i18n.get("double_gain_title");
            Label label28 = new Label(str2 + "\n" + Game.f8589i.localeManager.i18n.format("n_weeks", 2), Game.f8589i.assetManager.getLabelStyle(24));
            label28.setSize(160.0f, 64.0f);
            label28.setPosition(702.0f, 99.0f);
            Color color5 = MaterialColor.AMBER.P500;
            label28.setColor(color5);
            label28.setTouchable(touchable);
            if (z4) {
                label28.setColor(label28.getColor().mul(1.0f, 1.0f, 1.0f, 0.28f));
            }
            group4.addActor(label28);
            Image image7 = new Image(Game.f8589i.assetManager.getDrawable("lucky-shot-token"));
            image7.setPosition(622.0f, 19.0f);
            image7.setSize(64.0f, 64.0f);
            image7.setTouchable(touchable);
            if (z4) {
                image7.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            }
            if (!z4 && Game.f8589i.progressManager.videosWatchedForLuckyShot >= 20) {
                QuadActor quadActor9 = new QuadActor(color4, new float[]{8.0f, 0.0f, 0.0f, 76.0f, 253.0f, 74.0f, 244.0f, 2.0f});
                quadActor9.setVertexColors(MaterialColor.GREEN.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f));
                quadActor9.setPosition(609.0f, 12.0f);
                quadActor9.setSize(253.0f, 76.0f);
                quadActor9.addAction(Actions.forever(Actions.sequence(Actions.alpha(1.0f, 0.3f), Actions.alpha(0.78f, 0.3f))));
                quadActor9.setTouchable(Touchable.enabled);
                group4.addActor(quadActor9);
                AttentionRaysUnderlay attentionRaysUnderlay2 = new AttentionRaysUnderlay(96.0f, MaterialColor.GREY.P300);
                attentionRaysUnderlay2.setPosition(606.0f, 3.0f);
                attentionRaysUnderlay2.setSize(96.0f, 96.0f);
                attentionRaysUnderlay2.setTouchable(touchable);
                group4.addActor(attentionRaysUnderlay2);
                quadActor9.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.MoneyScreen.6
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f11, float f12) {
                        ProgressManager progressManager = Game.f8589i.progressManager;
                        int i8 = progressManager.videosWatchedForLuckyShot;
                        if (i8 >= 20) {
                            progressManager.videosWatchedForLuckyShot = i8 - 20;
                            progressManager.requireDelayedSave();
                            Game.f8589i.progressManager.addItems(Item.C1543D.LUCKY_SHOT_TOKEN, 2);
                            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.REWARD_VIDEO, Game.getTimestampSeconds());
                            issuedItems.items.add(new ItemStack(Item.C1543D.LUCKY_SHOT_TOKEN, 2));
                            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                            Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        }
                        MoneyScreen.this.m21167r();
                    }
                });
            }
            group4.addActor(image7);
            String str3 = Game.f8589i.localeManager.i18n.get("lucky_shot");
            Label label29 = new Label(str3 + "\nx2", Game.f8589i.assetManager.getLabelStyle(24));
            label29.setSize(160.0f, 64.0f);
            label29.setPosition(702.0f, 19.0f);
            label29.setColor(new Color(-656877313));
            label29.setTouchable(touchable);
            if (z4) {
                label29.setColor(label29.getColor().mul(1.0f, 1.0f, 1.0f, 0.28f));
            }
            group4.addActor(label29);
            Image image8 = new Image(Game.f8589i.assetManager.getDrawable("time-accelerator"));
            image8.setPosition(913.0f, 99.0f);
            image8.setSize(64.0f, 64.0f);
            image8.setTouchable(touchable);
            if (!z4) {
                image8.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            }
            if (z4 && Game.f8589i.progressManager.videosWatchedForDoubleGain >= 500) {
                QuadActor quadActor10 = new QuadActor(color4, new float[]{0.0f, 0.0f, 8.0f, 76.0f, 243.0f, 74.0f, 253.0f, 2.0f});
                quadActor10.setVertexColors(MaterialColor.GREEN.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f));
                quadActor10.setPosition(901.0f, 92.0f);
                quadActor10.setSize(253.0f, 76.0f);
                quadActor10.addAction(Actions.forever(Actions.sequence(Actions.alpha(1.0f, 0.3f), Actions.alpha(0.78f, 0.3f))));
                quadActor10.setTouchable(Touchable.enabled);
                group4.addActor(quadActor10);
                AttentionRaysUnderlay attentionRaysUnderlay3 = new AttentionRaysUnderlay(96.0f, MaterialColor.AMBER.P300);
                attentionRaysUnderlay3.setPosition(897.0f, 83.0f);
                attentionRaysUnderlay3.setSize(96.0f, 96.0f);
                attentionRaysUnderlay3.setTouchable(touchable);
                group4.addActor(attentionRaysUnderlay3);
                quadActor10.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.MoneyScreen.7
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f11, float f12) {
                        ProgressManager progressManager = Game.f8589i.progressManager;
                        int i8 = progressManager.videosWatchedForDoubleGain;
                        if (i8 >= 500) {
                            progressManager.videosWatchedForDoubleGain = i8 - 500;
                            progressManager.requireDelayedSave();
                            Game.f8589i.progressManager.addItems(Item.C1543D.ACCELERATOR, HttpStatus.SC_OK);
                            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.REWARD_VIDEO, Game.getTimestampSeconds());
                            issuedItems.items.add(new ItemStack(Item.C1543D.ACCELERATOR, HttpStatus.SC_OK));
                            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                            Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        }
                        MoneyScreen.this.m21167r();
                    }
                });
            }
            group4.addActor(image8);
            String str4 = Game.f8589i.localeManager.i18n.get("item_title_ACCELERATOR");
            Label label30 = new Label(str4 + "\nx200", Game.f8589i.assetManager.getLabelStyle(24));
            label30.setSize(160.0f, 64.0f);
            label30.setPosition(993.0f, 99.0f);
            label30.setColor(color5);
            label30.setTouchable(touchable);
            if (!z4) {
                label30.setColor(label30.getColor().mul(1.0f, 1.0f, 1.0f, 0.28f));
            }
            group4.addActor(label30);
            Image image9 = new Image(Game.f8589i.assetManager.getDrawable("lucky-shot-token"));
            image9.setPosition(913.0f, 19.0f);
            image9.setSize(64.0f, 64.0f);
            image9.setTouchable(touchable);
            if (!z4) {
                image9.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            }
            if (z4 && Game.f8589i.progressManager.videosWatchedForLuckyShot >= 20) {
                QuadActor quadActor11 = new QuadActor(color4, new float[]{0.0f, 0.0f, 8.0f, 76.0f, 243.0f, 74.0f, 253.0f, 2.0f});
                quadActor11.setVertexColors(MaterialColor.GREEN.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f));
                quadActor11.setPosition(901.0f, 12.0f);
                quadActor11.setSize(253.0f, 76.0f);
                quadActor11.addAction(Actions.forever(Actions.sequence(Actions.alpha(1.0f, 0.3f), Actions.alpha(0.78f, 0.3f))));
                quadActor11.setTouchable(Touchable.enabled);
                group4.addActor(quadActor11);
                AttentionRaysUnderlay attentionRaysUnderlay4 = new AttentionRaysUnderlay(96.0f, MaterialColor.GREY.P300);
                attentionRaysUnderlay4.setPosition(897.0f, 3.0f);
                attentionRaysUnderlay4.setSize(96.0f, 96.0f);
                attentionRaysUnderlay4.setTouchable(touchable);
                group4.addActor(attentionRaysUnderlay4);
                quadActor11.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.MoneyScreen.8
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f11, float f12) {
                        ProgressManager progressManager = Game.f8589i.progressManager;
                        int i8 = progressManager.videosWatchedForLuckyShot;
                        if (i8 >= 20) {
                            progressManager.videosWatchedForLuckyShot = i8 - 20;
                            progressManager.requireDelayedSave();
                            Game.f8589i.progressManager.addItems(Item.C1543D.LUCKY_SHOT_TOKEN, 5);
                            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.REWARD_VIDEO, Game.getTimestampSeconds());
                            issuedItems.items.add(new ItemStack(Item.C1543D.LUCKY_SHOT_TOKEN, 5));
                            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                            Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                        }
                        MoneyScreen.this.m21167r();
                    }
                });
            }
            group4.addActor(image9);
            String str5 = Game.f8589i.localeManager.i18n.get("lucky_shot");
            Label label31 = new Label(str5 + "\nx5", Game.f8589i.assetManager.getLabelStyle(24));
            label31.setSize(160.0f, 64.0f);
            label31.setPosition(993.0f, 19.0f);
            label31.setColor(new Color(-656877313));
            label31.setTouchable(touchable);
            if (!z4) {
                label31.setColor(label31.getColor().mul(1.0f, 1.0f, 1.0f, 0.28f));
            }
            group4.addActor(label31);
            table2.add((Table) group4).size(1200.0f, 285.0f).padTop(45.0f).colspan(2).row();
            f2 = 1.0f;
        } else {
            table2.row();
            f2 = 1.0f;
            table2.add().size(1.0f, 20.0f).row();
        }
        table2.add().width(f2).height(32.0f).row();
        CaseType[] caseTypeArr2 = {CaseType.BLUE, CaseType.PURPLE, CaseType.ORANGE, CaseType.CYAN};
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 4; i8 < i10; i10 = 4) {
            final CaseType caseType = caseTypeArr2[i8];
            final CaseItem create = Item.C1543D.F_CASE.create(caseType, false, false);
            if (i9 != 0 && i9 != 3) {
                z3 = false;
            } else {
                z3 = true;
            }
            Group m21173l2 = m21173l(z3, create.getIconDrawable());
            Actor label32 = new Label(create.getTitle(), Game.f8589i.assetManager.getLabelStyle(30));
            label32.setSize(100.0f, 23.0f);
            label32.setPosition(158.0f, 112.0f);
            label32.setColor(Game.f8589i.progressManager.getRarityBrightColor(create.getRarity()));
            m21173l2.addActor(label32);
            Group group5 = new Group();
            group5.setTransform(false);
            group5.setPosition(158.0f, 46.0f);
            group5.setSize(1.0f, 1.0f);
            m21173l2.addActor(group5);
            int[] itemRarityChances = create.getItemRarityChances();
            RarityType[] rarityTypeArr2 = RarityType.values;
            int length = rarityTypeArr2.length;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                int i13 = length;
                RarityType rarityType = rarityTypeArr2[i11];
                if (itemRarityChances[rarityType.ordinal()] > 0) {
                    rarityTypeArr = rarityTypeArr2;
                    float f11 = i12 * 46.0f;
                    caseTypeArr = caseTypeArr2;
                    f3 = f;
                    StringBuilder sb2 = new StringBuilder();
                    scrollPane = scrollPane3;
                    sb2.append(itemRarityChances[rarityType.ordinal()]);
                    sb2.append("");
                    iArr = itemRarityChances;
                    Label label33 = new Label(sb2.toString(), Game.f8589i.assetManager.getLabelStyle(21));
                    label33.setPosition(f11, 39.0f);
                    label33.setSize(32.0f, 16.0f);
                    label33.setColor(Game.f8589i.progressManager.getRarityBrightColor(rarityType));
                    label33.setAlignment(1);
                    group5.addActor(label33);
                    Image image10 = new Image(Game.f8589i.uiManager.itemCellRarityCoats[i12 % 2][rarityType.ordinal()]);
                    image10.setPosition(f11, 0.0f);
                    image10.setSize(32.0f, 36.0f);
                    group5.addActor(image10);
                    i12++;
                } else {
                    iArr = itemRarityChances;
                    rarityTypeArr = rarityTypeArr2;
                    f3 = f;
                    scrollPane = scrollPane3;
                    caseTypeArr = caseTypeArr2;
                }
                i11++;
                length = i13;
                rarityTypeArr2 = rarityTypeArr;
                caseTypeArr2 = caseTypeArr;
                f = f3;
                itemRarityChances = iArr;
                scrollPane3 = scrollPane;
            }
            float f12 = f;
            ScrollPane scrollPane4 = scrollPane3;
            CaseType[] caseTypeArr3 = caseTypeArr2;
            float f13 = i12 * 46.0f;
            Label label34 = new Label("%", Game.f8589i.assetManager.getLabelStyle(21));
            label34.setPosition(f13, 39.0f);
            label34.setSize(32.0f, 16.0f);
            group5.addActor(label34);
            Label label35 = new Label("x" + create.getItemCount(), Game.f8589i.assetManager.getLabelStyle(21));
            label35.setPosition(f13, 0.0f);
            label35.setSize(32.0f, 36.0f);
            group5.addActor(label35);
            if (create.getGuaranteedItemType() != null) {
                Actor label36 = new Label(Game.f8589i.localeManager.i18n.get("guaranteed") + ": [#" + Game.f8589i.progressManager.getRarityBrightColor(create.getGuaranteedItemType()).toString() + "]" + Game.f8589i.progressManager.getRarityName(create.getGuaranteedItemType()) + "[] x1", Game.f8589i.assetManager.getLabelStyle(21));
                label36.setPosition(158.0f, 22.0f);
                label36.setSize(100.0f, 16.0f);
                m21173l2.addActor(label36);
            }
            final int casePriceInKeys = create.getCasePriceInKeys();
            if (casePriceInKeys > 0) {
                final CaseKeyItem create2 = Item.C1543D.F_CASE_KEY.create(caseType);
                final int itemsCount2 = Game.f8589i.progressManager.getItemsCount(create2);
                Runnable runnable = null;
                if (itemsCount2 / casePriceInKeys >= 1) {
                    i6 = itemsCount2;
                    group = m21173l2;
                    i2 = i8;
                    caseItem = create;
                    i3 = i9;
                    i4 = 30;
                    runnable = new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.10
                        @Override // java.lang.Runnable
                        public void run() {
                            int min = Math.min(50, itemsCount2 / casePriceInKeys);
                            final Label label37 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
                            ItemCountSelectionOverlay.ItemCountSelectionListener itemCountSelectionListener = new ItemCountSelectionOverlay.ItemCountSelectionListener() { // from class: com.prineside.tdi2.screens.MoneyScreen.10.1
                                @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                public void selectionCanceled() {
                                }

                                @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                public void countChanged(int i14) {
                                    Label label38 = label37;
                                    label38.setText(((Object) StringFormatter.commaSeparatedNumber(casePriceInKeys * Game.f8589i.uiManager.itemCountSelectionOverlay.getSelectedCount())) + "[#AAAAAA] / " + ((Object) StringFormatter.commaSeparatedNumber(itemsCount2)) + "[]");
                                }

                                @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                public void selectionConfirmed(int i14) {
                                    ProgressManager progressManager = Game.f8589i.progressManager;
                                    RunnableC212710 runnableC212710 = RunnableC212710.this;
                                    if (progressManager.removeItems(create2, create.getCasePriceInKeys() * i14)) {
                                        Game.f8589i.progressManager.addItems(create, i14);
                                        IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                                        issuedItems.items.add(new ItemStack(create, i14));
                                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems, false);
                                        Game.f8589i.progressManager.openPack(create, i14, true, false);
                                        Game.f8589i.actionResolver.logCurrencySpent(caseType.name().toLowerCase(Locale.ENGLISH) + "_case", "case_key_" + caseType.name(), create.getCasePriceInKeys());
                                        MoneyScreen.this.m21167r();
                                        return;
                                    }
                                    Game game2 = Game.f8589i;
                                    game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("not_enough_items"));
                                }
                            };
                            Game game2 = Game.f8589i;
                            game2.uiManager.itemCountSelectionOverlay.show(game2.localeManager.i18n.get("shop_buy_chests"), 1, min, create, itemCountSelectionListener);
                            Table infoContainer = Game.f8589i.uiManager.itemCountSelectionOverlay.getInfoContainer();
                            infoContainer.clear();
                            infoContainer.add((Table) create2.generateIcon(48.0f, false)).size(48.0f).padRight(16.0f);
                            infoContainer.add((Table) label37).size(400.0f).left().height(48.0f);
                            infoContainer.add().expandX().fillX();
                            Game.f8589i.uiManager.itemCountSelectionOverlay.setSelectedCount(min);
                            itemCountSelectionListener.countChanged(min);
                        }
                    };
                } else {
                    i6 = itemsCount2;
                    group = m21173l2;
                    i2 = i8;
                    i3 = i9;
                    i4 = 30;
                    caseItem = create;
                }
                AssetManager assetManager2 = Game.f8589i.assetManager;
                ComplexButton complexButton = new ComplexButton(assetManager2.replaceRegionAliasesWithChars("<@icon-key> " + i6 + " / " + casePriceInKeys), Game.f8589i.assetManager.getLabelStyle(i4), new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Game.f8589i.progressManager.removeItems(create2, caseItem.getCasePriceInKeys())) {
                            Game.f8589i.progressManager.addItems(caseItem, 1);
                            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                            issuedItems.items.add(new ItemStack(caseItem, 1));
                            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, false);
                            Game.f8589i.progressManager.openPack(caseItem, 1, true, false);
                            Game.f8589i.actionResolver.logCurrencySpent(caseType.name().toLowerCase(Locale.ENGLISH) + "_case", "case_key_" + caseType.name(), caseItem.getCasePriceInKeys());
                            MoneyScreen.this.m21167r();
                            return;
                        }
                        Game game2 = Game.f8589i;
                        game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("not_enough_items"));
                    }
                }, runnable);
                complexButton.setIconLabelShadowEnabled(true);
                complexButton.setSize(162.0f, 78.0f);
                complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-money-screen-button-small-top"), 0.0f, 0.0f, 162.0f, 78.0f);
                complexButton.setBackgroundColors(MaterialColor.LIGHT_BLUE.P600, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P500, MaterialColor.GREY.P800);
                if (i6 < casePriceInKeys) {
                    complexButton.setEnabled(false);
                }
                Image image11 = new Image(Game.f8589i.assetManager.getDrawable("ui-money-screen-button-small-top-edge"));
                image11.setSize(162.0f, 78.0f);
                complexButton.addActor(image11);
                complexButton.setLabel(5.0f, 34.0f, 157.0f, 21.0f, 1);
                complexButton.setPosition(445.0f, 77.0f);
                group.addActor(complexButton);
            } else {
                group = m21173l2;
                i2 = i8;
                i3 = i9;
                i4 = 30;
                caseItem = create;
            }
            final int casePriceInPapers = caseItem.getCasePriceInPapers();
            int casePriceInAccelerators = caseItem.getCasePriceInAccelerators();
            if (casePriceInAccelerators > 0 || casePriceInPapers > 0) {
                if (casePriceInPapers > 0) {
                    AssetManager assetManager3 = Game.f8589i.assetManager;
                    replaceRegionAliasesWithChars = assetManager3.replaceRegionAliasesWithChars("<@icon-money> " + ((Object) StringFormatter.commaSeparatedNumber(casePriceInPapers)));
                    accelerators = Game.f8589i.progressManager.getGreenPapers() / casePriceInPapers;
                } else {
                    AssetManager assetManager4 = Game.f8589i.assetManager;
                    replaceRegionAliasesWithChars = assetManager4.replaceRegionAliasesWithChars("<@time-accelerator> " + casePriceInAccelerators);
                    accelerators = Game.f8589i.progressManager.getAccelerators() / casePriceInAccelerators;
                }
                CharSequence charSequence = replaceRegionAliasesWithChars;
                if (casePriceInPapers > 0) {
                    i5 = casePriceInPapers;
                } else {
                    i5 = casePriceInAccelerators;
                }
                final int min = StrictMath.min(accelerators, 50);
                Runnable runnable2 = null;
                if (min >= 1) {
                    final CaseItem caseItem2 = caseItem;
                    runnable2 = new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.12
                        @Override // java.lang.Runnable
                        public void run() {
                            final int accelerators2;
                            Actor generateIcon2;
                            if (casePriceInPapers > 0) {
                                accelerators2 = Game.f8589i.progressManager.getGreenPapers();
                            } else {
                                accelerators2 = Game.f8589i.progressManager.getAccelerators();
                            }
                            final int min2 = Math.min(50, min);
                            final Label label37 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
                            ItemCountSelectionOverlay.ItemCountSelectionListener itemCountSelectionListener = new ItemCountSelectionOverlay.ItemCountSelectionListener() { // from class: com.prineside.tdi2.screens.MoneyScreen.12.1
                                @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                public void selectionCanceled() {
                                }

                                @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                public void countChanged(int i14) {
                                    Label label38 = label37;
                                    label38.setText(((Object) StringFormatter.commaSeparatedNumber(i5 * Game.f8589i.uiManager.itemCountSelectionOverlay.getSelectedCount())) + "[#AAAAAA] / " + ((Object) StringFormatter.commaSeparatedNumber(accelerators2)) + "[]");
                                }

                                @Override // com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay.ItemCountSelectionListener
                                public void selectionConfirmed(int i14) {
                                    Item item;
                                    ProgressManager progressManager = Game.f8589i.progressManager;
                                    RunnableC213012 runnableC213012 = RunnableC213012.this;
                                    if (casePriceInPapers > 0) {
                                        item = Item.C1543D.GREEN_PAPER;
                                    } else {
                                        item = Item.C1543D.ACCELERATOR;
                                    }
                                    if (progressManager.removeItems(item, i5 * i14)) {
                                        Game.f8589i.progressManager.addItems(caseItem2, i14);
                                        IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                                        issuedItems.items.add(new ItemStack(caseItem2, i14));
                                        Game.f8589i.progressManager.addIssuedPrizes(issuedItems, false);
                                        Game.f8589i.progressManager.openPack(caseItem2, i14, true, false);
                                        if (caseItem2.getCasePriceInPapers() != 0) {
                                            ActionResolver actionResolver = Game.f8589i.actionResolver;
                                            actionResolver.logCurrencySpent(caseType.name().toLowerCase(Locale.ENGLISH) + "_case", "green_paper", caseItem2.getCasePriceInPapers() * min2);
                                            return;
                                        }
                                        ActionResolver actionResolver2 = Game.f8589i.actionResolver;
                                        actionResolver2.logCurrencySpent(caseType.name().toLowerCase(Locale.ENGLISH) + "_case", "accelerator", caseItem2.getCasePriceInAccelerators() * min2);
                                    } else if (caseItem2.getCasePriceInPapers() != 0) {
                                        Game game2 = Game.f8589i;
                                        game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("not_enough_green_papers"));
                                    } else {
                                        Game game3 = Game.f8589i;
                                        game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("not_enough_accelerators"));
                                    }
                                }
                            };
                            Game game2 = Game.f8589i;
                            game2.uiManager.itemCountSelectionOverlay.show(game2.localeManager.i18n.get("shop_buy_chests"), 1, min2, caseItem2, itemCountSelectionListener);
                            Table infoContainer = Game.f8589i.uiManager.itemCountSelectionOverlay.getInfoContainer();
                            infoContainer.clear();
                            if (casePriceInPapers > 0) {
                                generateIcon2 = Item.C1543D.GREEN_PAPER.generateIcon(48.0f, false);
                            } else {
                                generateIcon2 = Item.C1543D.ACCELERATOR.generateIcon(48.0f, false);
                            }
                            infoContainer.add((Table) generateIcon2).size(48.0f).padRight(16.0f);
                            infoContainer.add((Table) label37).size(400.0f).left().height(48.0f);
                            infoContainer.add().expandX().fillX();
                            Game.f8589i.uiManager.itemCountSelectionOverlay.setSelectedCount(min2);
                            itemCountSelectionListener.countChanged(min2);
                        }
                    };
                }
                ComplexButton complexButton2 = new ComplexButton(charSequence, Game.f8589i.assetManager.getLabelStyle(i4), new Runnable() { // from class: com.prineside.tdi2.screens.MoneyScreen.13
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean removeAccelerators;
                        if (caseItem.getCasePriceInPapers() != 0) {
                            removeAccelerators = Game.f8589i.progressManager.removeGreenPapers(caseItem.getCasePriceInPapers());
                        } else {
                            removeAccelerators = Game.f8589i.progressManager.removeAccelerators(caseItem.getCasePriceInAccelerators());
                        }
                        if (removeAccelerators) {
                            Game.f8589i.progressManager.addItems(caseItem, 1);
                            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                            issuedItems.items.add(new ItemStack(caseItem, 1));
                            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, false);
                            Game.f8589i.progressManager.openPack(caseItem, 1, true, false);
                            if (caseItem.getCasePriceInPapers() != 0) {
                                ActionResolver actionResolver = Game.f8589i.actionResolver;
                                actionResolver.logCurrencySpent(caseType.name().toLowerCase(Locale.ENGLISH) + "_case", "green_paper", caseItem.getCasePriceInPapers());
                                return;
                            }
                            ActionResolver actionResolver2 = Game.f8589i.actionResolver;
                            actionResolver2.logCurrencySpent(caseType.name().toLowerCase(Locale.ENGLISH) + "_case", "accelerator", caseItem.getCasePriceInAccelerators());
                        } else if (caseItem.getCasePriceInPapers() != 0) {
                            Game game2 = Game.f8589i;
                            game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("not_enough_green_papers"));
                        } else {
                            Game game3 = Game.f8589i;
                            game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("not_enough_accelerators"));
                        }
                    }
                }, runnable2);
                complexButton2.setIconLabelShadowEnabled(true);
                complexButton2.setSize(162.0f, 74.0f);
                complexButton2.setBackground(Game.f8589i.assetManager.getDrawable("ui-money-screen-button-small-bottom"), 0.0f, 0.0f, 162.0f, 74.0f);
                complexButton2.setBackgroundColors(MaterialColor.LIGHT_BLUE.P600, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P500, MaterialColor.GREY.P800);
                if (Game.f8589i.progressManager.getAccelerators() < casePriceInAccelerators || Game.f8589i.progressManager.getGreenPapers() < casePriceInPapers) {
                    complexButton2.setEnabled(false);
                }
                Image image12 = new Image(Game.f8589i.assetManager.getDrawable("ui-money-screen-button-small-bottom-edge"));
                image12.setSize(162.0f, 74.0f);
                complexButton2.addActor(image12);
                complexButton2.setLabel(5.0f, 32.0f, 157.0f, 21.0f, 1);
                complexButton2.setPosition(445.0f, 3.0f);
                group.addActor(complexButton2);
            }
            Cell padBottom = table2.add((Table) group).size(590.0f, 166.0f).padBottom(20.0f);
            if (i3 % 2 == 0) {
                padBottom.padRight(20.0f);
            } else {
                padBottom.row();
            }
            i8 = i2 + 1;
            i9 = i3 + 1;
            caseTypeArr2 = caseTypeArr3;
            f = f12;
            scrollPane3 = scrollPane4;
        }
        float f14 = f;
        ScrollPane scrollPane5 = scrollPane3;
        table2.row();
        table2.add().height(46.0f).width(1.0f).row();
        if (Game.f8589i.purchaseManager.isPurchasesEnabled() && "true".equals(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.IAP_GREEN_PAPER_ENABLED))) {
            Array.ArrayIterator<PaperPackConfig> it = this.f10961m.iterator();
            int i14 = 0;
            while (it.hasNext()) {
                final PaperPackConfig next = it.next();
                if (Game.f8589i.progressManager.getGreenPapers() + next.f11007c + next.f11008d <= 999999999) {
                    if (i14 != 0 && i14 != 3 && i14 != 4) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    Group m21173l3 = m21173l(z2, Game.f8589i.assetManager.getDrawable(next.f11006b));
                    Actor image13 = new Image(Game.f8589i.assetManager.getDrawable("item-cell-a-shape"));
                    image13.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                    image13.setSize(96.0f, 106.0f);
                    image13.setPosition(156.0f, 29.0f);
                    m21173l3.addActor(image13);
                    Actor image14 = new Image(Game.f8589i.assetManager.getDrawable("icon-money"));
                    Color color6 = MaterialColor.GREEN.P500;
                    image14.setColor(color6);
                    image14.setSize(64.0f, 64.0f);
                    image14.setPosition(172.0f, 63.0f);
                    m21173l3.addActor(image14);
                    Label label37 = new Label(StringFormatter.compactNumber(next.f11007c, false), Game.f8589i.assetManager.getLabelStyle(21));
                    label37.setAlignment(1);
                    label37.setPosition(156.0f, 44.0f);
                    label37.setSize(96.0f, 16.0f);
                    m21173l3.addActor(label37);
                    if (next.f11010f > 0) {
                        Actor image15 = new Image(Game.f8589i.assetManager.getDrawable("item-cell-b-shape"));
                        image15.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                        image15.setSize(96.0f, 106.0f);
                        image15.setPosition(252.0f, 29.0f);
                        m21173l3.addActor(image15);
                        Actor image16 = new Image(Game.f8589i.assetManager.getDrawable("icon-money"));
                        image16.setColor(color6);
                        image16.setSize(64.0f, 64.0f);
                        image16.setPosition(268.0f, 63.0f);
                        m21173l3.addActor(image16);
                        Label label38 = new Label(StringFormatter.compactNumber(next.f11008d, false), Game.f8589i.assetManager.getLabelStyle(21));
                        label38.setAlignment(1);
                        Color color7 = MaterialColor.AMBER.P400;
                        label38.setColor(color7);
                        label38.setPosition(252.0f, 44.0f);
                        label38.setSize(96.0f, 16.0f);
                        m21173l3.addActor(label38);
                        Actor image17 = new Image(Game.f8589i.assetManager.getDrawable("icon-plus"));
                        image17.setColor(color7);
                        image17.setSize(24.0f, 24.0f);
                        image17.setPosition(241.0f, 72.0f);
                        m21173l3.addActor(image17);
                        if (next.f11009e > 0) {
                            Actor image18 = new Image(Game.f8589i.assetManager.getDrawable("item-cell-a-shape"));
                            image18.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                            image18.setSize(96.0f, 106.0f);
                            image18.setPosition(348.0f, 29.0f);
                            m21173l3.addActor(image18);
                            Actor image19 = new Image(Game.f8589i.assetManager.getDrawable("rarity-token"));
                            image19.setSize(64.0f, 64.0f);
                            image19.setPosition(364.0f, 63.0f);
                            m21173l3.addActor(image19);
                            Label label39 = new Label(StringFormatter.commaSeparatedNumber(next.f11009e), Game.f8589i.assetManager.getLabelStyle(21));
                            label39.setAlignment(1);
                            label39.setColor(color7);
                            label39.setPosition(348.0f, 44.0f);
                            label39.setSize(96.0f, 16.0f);
                            m21173l3.addActor(label39);
                            Actor image20 = new Image(Game.f8589i.assetManager.getDrawable("icon-plus"));
                            image20.setColor(color7);
                            image20.setSize(24.0f, 24.0f);
                            image20.setPosition(337.0f, 72.0f);
                            m21173l3.addActor(image20);
                        }
                        Label label40 = new Label("+" + next.f11010f + "%", Game.f8589i.assetManager.getLabelStyle(next.f11011g));
                        label40.setColor(color7);
                        label40.setSize(82.0f, 24.0f);
                        label40.setAlignment(16);
                        label40.setPosition(490.0f, 117.0f);
                        m21173l3.addActor(label40);
                    }
                    m21173l3.addActor(m21174k(Game.f8589i.purchaseManager.purchaseManager.getInformation(next.f11005a).getLocalPricing(), new Runnable() { // from class: com.prineside.tdi2.screens.e0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MoneyScreen.this.m21170o(next);
                        }
                    }));
                    Cell padBottom2 = table2.add((Table) m21173l3).size(590.0f, 166.0f).padBottom(20.0f);
                    if (i14 % 2 == 0) {
                        padBottom2.padRight(20.0f);
                    } else {
                        padBottom2.row();
                    }
                    i14++;
                }
            }
            i = 21;
            table2.row();
            table2.add().height(46.0f).width(1.0f).row();
        } else {
            i = 21;
        }
        if (Game.f8589i.purchaseManager.isPurchasesEnabled() && Game.f8589i.progressManager.getAccelerators() < 500000000 && "true".equals(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.IAP_ACCELERATOR_ENABLED))) {
            Array.ArrayIterator<AcceleratorPackConfig> it2 = this.f10962n.iterator();
            int i15 = 0;
            while (it2.hasNext()) {
                final AcceleratorPackConfig next2 = it2.next();
                if (i15 != 0 && i15 != 3 && i15 != 4) {
                    z = false;
                } else {
                    z = true;
                }
                Group m21173l4 = m21173l(z, Game.f8589i.assetManager.getDrawable(next2.f10999b));
                Actor image21 = new Image(Game.f8589i.assetManager.getDrawable("item-cell-a-shape"));
                image21.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                image21.setSize(96.0f, 106.0f);
                image21.setPosition(156.0f, 29.0f);
                m21173l4.addActor(image21);
                Actor image22 = new Image(Game.f8589i.assetManager.getDrawable("time-accelerator"));
                image22.setSize(64.0f, 64.0f);
                image22.setPosition(172.0f, 63.0f);
                m21173l4.addActor(image22);
                Label label41 = new Label(StringFormatter.commaSeparatedNumber(next2.f11000c), Game.f8589i.assetManager.getLabelStyle(i));
                label41.setAlignment(1);
                label41.setPosition(156.0f, 44.0f);
                label41.setSize(96.0f, 16.0f);
                m21173l4.addActor(label41);
                if (next2.f11002e > 0) {
                    Actor image23 = new Image(Game.f8589i.assetManager.getDrawable("item-cell-b-shape"));
                    image23.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                    image23.setSize(96.0f, 106.0f);
                    image23.setPosition(252.0f, 29.0f);
                    m21173l4.addActor(image23);
                    Actor image24 = new Image(Game.f8589i.assetManager.getDrawable("time-accelerator"));
                    image24.setSize(64.0f, 64.0f);
                    image24.setPosition(268.0f, 63.0f);
                    m21173l4.addActor(image24);
                    Label label42 = new Label(StringFormatter.commaSeparatedNumber(next2.f11001d), Game.f8589i.assetManager.getLabelStyle(i));
                    label42.setAlignment(1);
                    Color color8 = MaterialColor.AMBER.P400;
                    label42.setColor(color8);
                    label42.setPosition(252.0f, 44.0f);
                    label42.setSize(96.0f, 16.0f);
                    m21173l4.addActor(label42);
                    Actor image25 = new Image(Game.f8589i.assetManager.getDrawable("icon-plus"));
                    image25.setColor(color8);
                    image25.setSize(24.0f, 24.0f);
                    image25.setPosition(241.0f, 72.0f);
                    m21173l4.addActor(image25);
                    Label label43 = new Label("+" + next2.f11002e + "%", Game.f8589i.assetManager.getLabelStyle(next2.f11003f));
                    label43.setColor(color8);
                    label43.setSize(82.0f, 24.0f);
                    label43.setAlignment(16);
                    label43.setPosition(490.0f, 117.0f);
                    m21173l4.addActor(label43);
                }
                String localPricing = Game.f8589i.purchaseManager.purchaseManager.getInformation(next2.f10998a).getLocalPricing();
                Logger.log("MoneyScreen", localPricing);
                m21173l4.addActor(m21174k(localPricing, new Runnable() { // from class: com.prineside.tdi2.screens.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MoneyScreen.this.m21169p(next2);
                    }
                }));
                Cell padBottom3 = table2.add((Table) m21173l4).size(590.0f, 166.0f).padBottom(20.0f);
                if (i15 % 2 == 0) {
                    padBottom3.padRight(20.0f);
                } else {
                    padBottom3.row();
                }
                i15++;
            }
            table2.row();
            table2.add().height(160.0f).width(1.0f).row();
        }
        m21166s();
        scrollPane5.layout();
        scrollPane5.setScrollY(f14);
        scrollPane5.updateVisualScroll();
        this.f10951c.getTable().clear();
        this.f10951c.getTable().addListener(new InputVoid());
        this.f10951c.getTable().background(Game.f8589i.assetManager.getDrawable("blank").tint(Config.BACKGROUND_COLOR.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f)));
        Image image26 = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        Color color9 = MaterialColor.CYAN.P500;
        image26.setColor(color9);
        image26.addAction(Actions.forever(Actions.sequence(Actions.color(color9, 1.0f), Actions.color(MaterialColor.LIGHT_GREEN.P500, 1.0f), Actions.color(MaterialColor.ORANGE.P500, 1.0f), Actions.color(MaterialColor.PINK.P500, 1.0f), Actions.color(MaterialColor.PURPLE.P500, 1.0f))));
        image26.addAction(Actions.forever(Actions.rotateBy(90.0f, 0.5f)));
        image26.setOrigin(64.0f, 64.0f);
        this.f10951c.getTable().add((Table) image26).size(128.0f);
        this.f10951c.getTable().setVisible(false);
    }

    /* renamed from: s */
    public void m21166s() {
        this.f10958j.setText(StringFormatter.digestTime((int) Game.f8589i.progressManager.getLootBoostTimeLeft(), true));
        if (Game.f8589i.progressManager.getLootBoostTimeLeft() > 0.0f) {
            this.f10958j.setColor(MaterialColor.LIGHT_GREEN.P500);
        } else {
            this.f10958j.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        }
        if (Game.f8589i.purchaseManager.rewardingAdsAvailable() && this.f10952d != null) {
            PurchaseManager purchaseManager = Game.f8589i.purchaseManager;
            PurchaseManager.RewardingAdsType rewardingAdsType = PurchaseManager.RewardingAdsType.REGULAR;
            if (purchaseManager.canShowRewardingAd(rewardingAdsType)) {
                this.f10952d.setVisible(true);
                this.f10953e.setVisible(false);
            } else {
                this.f10952d.setVisible(false);
                int secondsTillAdIsReady = Game.f8589i.purchaseManager.getSecondsTillAdIsReady(rewardingAdsType);
                if (secondsTillAdIsReady > 0) {
                    this.f10953e.setText(StringFormatter.digestTime(secondsTillAdIsReady));
                    this.f10953e.setVisible(true);
                }
            }
            if (Game.f8589i.progressManager.isDoubleGainEnabled() && !Game.f8589i.progressManager.isDoubleGainPermanent() && this.f10954f != null) {
                this.f10954f.setText(StringFormatter.timePassed(Game.f8589i.progressManager.getTempDoubleGainDurationLeft(), true, true));
            }
        }
    }

    /* renamed from: n */
    public final void m21171n() {
        dispose();
        com.badlogic.gdx.Screen screen = this.f10949a;
        if (screen instanceof AboutScreen) {
            Game.f8589i.screenManager.goToAboutScreen();
        } else if (screen instanceof LevelSelectScreen) {
            Game.f8589i.screenManager.goToLevelSelectScreen();
        } else if (screen instanceof CustomMapSelectScreen) {
            Game.f8589i.screenManager.goToCustomMapSelectScreen();
        } else if (screen instanceof ResearchesScreen) {
            Game.f8589i.screenManager.goToResearchesScreen();
        } else if (screen instanceof SettingsScreen) {
            Game.f8589i.screenManager.goToSettingsScreen();
        } else if (screen instanceof StatisticsScreen) {
            Game.f8589i.screenManager.goToStatisticsScreen();
        } else {
            Game.f8589i.screenManager.goToMainMenu();
        }
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
        super.resize(i, i2);
        if (i > 0 && i2 > 0) {
            m21167r();
        }
    }
}
