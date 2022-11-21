package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
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
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.JsonReader;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.BasicLevelStage;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Requirement;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.RequirementType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.BasicLevelManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.p036ui.shared.LevelConfigurationEditor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
/* renamed from: com.prineside.tdi2.ui.shared.LevelConfigurationEditor */
/* loaded from: classes2.dex */
public class LevelConfigurationEditor {

    /* renamed from: a */
    public final UiManager.UiLayer f14555a;

    /* renamed from: b */
    public BasicLevel f14556b;

    /* renamed from: c */
    public Table f14557c;

    /* renamed from: d */
    public Table f14558d;

    /* renamed from: e */
    public CheckBox.CheckBoxStyle f14559e;

    /* renamed from: f */
    public SelectBox.SelectBoxStyle f14560f;

    /* renamed from: g */
    public TextField.TextFieldStyle f14561g;

    /* renamed from: com.prineside.tdi2.ui.shared.LevelConfigurationEditor$35 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C288635 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14640a;

        static {
            int[] iArr = new int[RequirementType.values().length];
            f14640a = iArr;
            try {
                iArr[RequirementType.RESEARCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14640a[RequirementType.STARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14640a[RequirementType.STAGE_STARS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14640a[RequirementType.OPENED_LEVEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14640a[RequirementType.ALL_TIME_STATISTIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B0 */
    public /* synthetic */ void m20084B0() {
        Game.f8589i.uiManager.dialog.showConfirm("Reset level configuration? Original configuration will be used", new Runnable() { // from class: com.prineside.tdi2.ui.shared.k0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20086A0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D0 */
    public /* synthetic */ void m20080D0() {
        Game.f8589i.uiManager.dialog.showConfirm("Delete this level? Map will be kept as a local file (create a level with the same name to access it)", new Runnable() { // from class: com.prineside.tdi2.ui.shared.m0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20082C0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F0 */
    public /* synthetic */ void m20076F0() {
        Game.f8589i.uiManager.dialog.showConfirm("Reset map? Map will be restored to the original state", new Runnable() { // from class: com.prineside.tdi2.ui.shared.v0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20078E0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public /* synthetic */ void m20072H0() {
        Game.f8589i.uiManager.getTextInput(new C28581(), "Level name", "", "0-9, a-Z and dot, minimum 2 characters. Name can't be changed, choose wisely");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public /* synthetic */ void m20052U(Array array, ItemStack itemStack) {
        array.removeValue(itemStack, true);
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public /* synthetic */ void m20043b0() {
        Game.f8589i.uiManager.dialog.showConfirm("Delete this level and its map?", new Runnable() { // from class: com.prineside.tdi2.ui.shared.s0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20045a0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public /* synthetic */ void m20037e0(Boolean bool) {
        this.f14556b.hasLeaderboards = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ void m20033g0(Boolean bool) {
        this.f14556b.fixedQuests = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m20031h0(Boolean bool) {
        this.f14556b.isBonus = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public /* synthetic */ void m20029i0(Boolean bool) {
        this.f14556b.customWaves = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ void m20027j0(Boolean bool) {
        this.f14556b.dailyQuest = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0 */
    public /* synthetic */ void m20021m0(final int i) {
        Game.f8589i.uiManager.dialog.showConfirm("Delete wave?", new Runnable() { // from class: com.prineside.tdi2.ui.shared.o0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20023l0(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o0 */
    public /* synthetic */ void m20017o0(final WaveTemplates.PredefinedWaveTemplate predefinedWaveTemplate, final int i) {
        Game.f8589i.uiManager.dialog.showConfirm("Delete group?", new Runnable() { // from class: com.prineside.tdi2.ui.shared.j0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20019n0(predefinedWaveTemplate, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s0 */
    public /* synthetic */ void m20009s0(final BasicLevel.WaveQuest waveQuest) {
        Game.f8589i.uiManager.dialog.showConfirm("Delete wave quest?", new Runnable() { // from class: com.prineside.tdi2.ui.shared.r0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20011r0(waveQuest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u0 */
    public /* synthetic */ void m20005u0() {
        Game.f8589i.uiManager.getTextInput(new Input.TextInputListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.2
            @Override // com.badlogic.gdx.Input.TextInputListener
            public void canceled() {
            }

            @Override // com.badlogic.gdx.Input.TextInputListener
            public void input(String str) {
                if (str.length() >= 2 && !str.contains("/") && !str.contains("\\")) {
                    if (Game.f8589i.basicLevelManager.getLevel(str) != null) {
                        Game.f8589i.uiManager.dialog.showAlert("Level with this name already exists");
                        return;
                    }
                    BasicLevel clone = LevelConfigurationEditor.this.f14556b.clone(str);
                    Game.f8589i.basicLevelManager.registerLevel(clone);
                    LevelConfigurationEditor.this.f14556b = clone;
                    LevelConfigurationEditor.this.m20060N0();
                    return;
                }
                Game.f8589i.uiManager.dialog.showAlert("0-9, a-Z and dot, minimum 2 characters");
            }
        }, "Map name", this.f14556b.name, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w0 */
    public /* synthetic */ void m20001w0(final BasicLevelQuestConfig basicLevelQuestConfig) {
        Game.f8589i.uiManager.dialog.showConfirm("Delete quest?", new Runnable() { // from class: com.prineside.tdi2.ui.shared.n0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20003v0(basicLevelQuestConfig);
            }
        });
    }

    /* renamed from: x0 */
    public static /* synthetic */ void m19999x0(BasicLevelQuestConfig basicLevelQuestConfig, Boolean bool) {
        basicLevelQuestConfig.scripted = bool.booleanValue();
    }

    /* renamed from: y0 */
    public static /* synthetic */ void m19997y0(BasicLevelQuestConfig basicLevelQuestConfig, Boolean bool) {
        basicLevelQuestConfig.duringGame = bool.booleanValue();
    }

    /* renamed from: J0 */
    public final void m20068J0(SelectBox selectBox) {
        this.f14558d.add((Table) selectBox).size(400.0f, 48.0f).top().left().row();
    }

    /* renamed from: K0 */
    public final void m20066K0() {
        this.f14558d.add().width(1.0f).height(10.0f).row();
    }

    /* renamed from: L0 */
    public final LabelToggleButton m20064L0(String str, boolean z, ObjectRetriever<Boolean> objectRetriever) {
        return m20062M0(true, str, z, objectRetriever);
    }

    public void show() {
        if (!Config.isModdingMode() && !Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            Game.f8589i.uiManager.dialog.showAlert("Developer mode research required");
            return;
        }
        Game.f8589i.uiManager.darkOverlay.addCaller("ItemCreationOverlay", this.f14555a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.a0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.hide();
            }
        });
        this.f14555a.getTable().setVisible(true);
    }

    /* renamed from: com.prineside.tdi2.ui.shared.LevelConfigurationEditor$1 */
    /* loaded from: classes2.dex */
    public class C28581 implements Input.TextInputListener {
        public C28581() {
        }

        @Override // com.badlogic.gdx.Input.TextInputListener
        public void canceled() {
        }

        @Override // com.badlogic.gdx.Input.TextInputListener
        public void input(final String str) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.shared.e1
                @Override // java.lang.Runnable
                public final void run() {
                    LevelConfigurationEditor.C28581.this.m19993b(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m19993b(String str) {
            if (str.length() >= 2 && !str.contains("/") && !str.contains("\\")) {
                if (Game.f8589i.basicLevelManager.getLevel(str) != null) {
                    Game.f8589i.uiManager.dialog.showAlert("Level with this name already exists");
                    return;
                }
                BasicLevel createNew = BasicLevel.createNew(str);
                Game.f8589i.basicLevelManager.registerLevel(createNew);
                createNew.saveToDisk();
                LevelConfigurationEditor.this.f14556b = createNew;
                LevelConfigurationEditor.this.m20060N0();
                return;
            }
            Game.f8589i.uiManager.dialog.showAlert("0-9, a-Z and dot, minimum 2 characters");
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.LevelConfigurationEditor$22 */
    /* loaded from: classes2.dex */
    public class C287222 extends ClickListener {

        /* renamed from: o */
        public final /* synthetic */ ItemStack f14600o;

        public C287222(ItemStack itemStack) {
            this.f14600o = itemStack;
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
        public void clicked(InputEvent inputEvent, float f, float f2) {
            ItemCreationOverlay itemCreationOverlay = Game.f8589i.uiManager.itemCreationOverlay;
            Item item = this.f14600o.getItem();
            final ItemStack itemStack = this.f14600o;
            itemCreationOverlay.show(item, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.f1
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    LevelConfigurationEditor.C287222.this.m19991b(itemStack, (Item) obj);
                }
            }, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m19991b(ItemStack itemStack, Item item) {
            itemStack.setItem(item);
            LevelConfigurationEditor.this.m20060N0();
        }
    }

    public LevelConfigurationEditor() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 141, "LevelConfigurationEditor main");
        this.f14555a = addLayer;
        Drawable tint = Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.RED.P500);
        Drawable tint2 = Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.GREEN.P500);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        CheckBox.CheckBoxStyle checkBoxStyle = new CheckBox.CheckBoxStyle(tint, tint2, font, color);
        this.f14559e = checkBoxStyle;
        checkBoxStyle.checkboxOff.setLeftWidth(24.0f);
        this.f14559e.checkboxOff.setBottomHeight(24.0f);
        List.ListStyle listStyle = new List.ListStyle(Game.f8589i.assetManager.getFont(24), color, color, Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.LIGHT_BLUE.P800));
        Drawable drawable = listStyle.selection;
        drawable.setLeftWidth(drawable.getLeftWidth() + 10.0f);
        Drawable drawable2 = listStyle.selection;
        drawable2.setRightWidth(drawable2.getRightWidth() + 10.0f);
        ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(24);
        TextureRegionDrawable drawable3 = Game.f8589i.assetManager.getDrawable("blank");
        Color color2 = MaterialColor.GREY.P900;
        SelectBox.SelectBoxStyle selectBoxStyle = new SelectBox.SelectBoxStyle(font2, color, drawable3.tint(color2), new ScrollPane.ScrollPaneStyle(Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.GREY.P800), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank"), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank")), listStyle);
        this.f14560f = selectBoxStyle;
        Drawable drawable4 = selectBoxStyle.background;
        drawable4.setLeftWidth(drawable4.getLeftWidth() + 10.0f);
        Drawable drawable5 = this.f14560f.background;
        drawable5.setRightWidth(drawable5.getRightWidth() + 10.0f);
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(24, false), color, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(color2));
        this.f14561g = textFieldStyle;
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable6 = this.f14561g.background;
        drawable6.setLeftWidth(drawable6.getLeftWidth() + 10.0f);
        Drawable drawable7 = this.f14561g.background;
        drawable7.setRightWidth(drawable7.getRightWidth() + 10.0f);
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).size(1200.0f, 1000.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(1200.0f, 1000.0f);
        image.setColor(new Color(858993663));
        group.addActor(image);
        this.f14557c = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f14557c, Game.f8589i.assetManager.getScrollPaneStyle(8.0f));
        scrollPane.setSize(240.0f, 1000.0f);
        scrollPane.setScrollingDisabled(true, false);
        group.addActor(scrollPane);
        m20058O0();
        Table table = new Table();
        this.f14558d = table;
        table.setSize(900.0f, 906.0f);
        ScrollPane scrollPane2 = new ScrollPane(this.f14558d, Game.f8589i.assetManager.getScrollPaneStyle(16.0f));
        scrollPane2.setSize(940.0f, 906.0f);
        scrollPane2.setPosition(260.0f, 84.0f);
        group.addActor(scrollPane2);
        final Group group2 = new Group();
        group2.setTransform(false);
        group2.setPosition(250.0f, 10.0f);
        group.addActor(group2);
        RectButton rectButton = new RectButton("Save", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.p
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20049X(group2);
            }
        });
        rectButton.setSize(200.0f, 64.0f);
        rectButton.setPosition(740.0f, 0.0f);
        group2.addActor(rectButton);
        m20060N0();
        hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A0 */
    public /* synthetic */ void m20086A0() {
        try {
            String str = this.f14556b.name;
            Game.f8589i.basicLevelManager.unloadLevel(str);
            Files files = Gdx.files;
            files.local("levels/" + this.f14556b.name + ".json").delete();
            BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
            JsonReader jsonReader = new JsonReader();
            Files files2 = Gdx.files;
            basicLevelManager.loadAndRegisterLevelFromJson(jsonReader.parse(files2.internal("levels/" + str + ".json").readString("UTF-8")));
            m20060N0();
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "failed to restore level " + this.f14556b.name, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C0 */
    public /* synthetic */ void m20082C0() {
        try {
            Game.f8589i.basicLevelManager.unloadLevel(this.f14556b.name);
            Files files = Gdx.files;
            files.local("levels/" + this.f14556b.name + ".json").delete();
            this.f14556b = Game.f8589i.basicLevelManager.levelsOrdered.first();
            m20060N0();
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "failed to delete level " + this.f14556b.name, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E0 */
    public /* synthetic */ void m20078E0() {
        try {
            Files files = Gdx.files;
            files.local("levels/maps/" + this.f14556b.name + ".json").delete();
            this.f14556b.reloadMap();
            m20060N0();
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "failed to delete level " + this.f14556b.name, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G0 */
    public /* synthetic */ void m20074G0(BasicLevel basicLevel) {
        this.f14556b = basicLevel;
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public /* synthetic */ void m20050W(Array array) {
        final ItemStack itemStack = new ItemStack(Item.C1543D.GREEN_PAPER, 100);
        array.add(itemStack);
        m20060N0();
        Game.f8589i.uiManager.itemCreationOverlay.show(itemStack.getItem(), new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.x0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20051V(itemStack, (Item) obj);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public /* synthetic */ void m20049X(Group group) {
        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
        BasicLevel basicLevel = this.f14556b;
        if (basicLevel != null) {
            basicLevel.saveToDisk();
            Label label = new Label("Done!", Game.f8589i.assetManager.getLabelStyle(24));
            label.setColor(MaterialColor.GREEN.P500);
            label.setPosition(740.0f, 0.0f);
            label.setSize(200.0f, 64.0f);
            label.setAlignment(1);
            label.setTouchable(Touchable.disabled);
            group.addActor(label);
            label.addAction(Actions.sequence(Actions.moveBy(0.0f, 64.0f, 0.3f, Interpolation.exp5Out), Actions.fadeOut(0.2f), Actions.removeActor()));
            m20060N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public /* synthetic */ void m20047Z(Array array) {
        Requirement requirement = new Requirement();
        requirement.type = RequirementType.ALL_TIME_STATISTIC;
        requirement.statisticsType = StatisticsType.WIP;
        requirement.statisticsValue = 1.0d;
        array.add(requirement);
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m20045a0() {
        try {
            Files files = Gdx.files;
            files.local("levels/maps/" + this.f14556b.name + ".json").delete();
            Game.f8589i.basicLevelManager.unloadLevel(this.f14556b.name);
            Files files2 = Gdx.files;
            files2.local("levels/" + this.f14556b.name + ".json").delete();
            this.f14556b = Game.f8589i.basicLevelManager.levelsOrdered.first();
            m20060N0();
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "failed to delete level " + this.f14556b.name, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public /* synthetic */ void m20041c0(String str) {
        try {
            this.f14556b.stagePosition = Integer.parseInt(str);
            m20058O0();
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "bad value: " + str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d0 */
    public /* synthetic */ void m20039d0(String str) {
        try {
            this.f14556b.seed = Integer.parseInt(str);
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "bad value: " + str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m20035f0(String str) {
        try {
            this.f14556b.fastForwardFrame = Integer.parseInt(str);
            BasicLevel basicLevel = this.f14556b;
            if (basicLevel.fastForwardFrame < 0) {
                basicLevel.fastForwardFrame = 0;
            }
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "bad value: " + str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ void m20025k0(String str) {
        try {
            this.f14556b.priceInMoney = Integer.parseInt(str);
            BasicLevel basicLevel = this.f14556b;
            if (basicLevel.priceInMoney < 0) {
                basicLevel.priceInMoney = 0;
            }
        } catch (Exception e) {
            Logger.error("ItemCreationOverlay", "bad value: " + str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ void m20023l0(int i) {
        BasicLevel basicLevel;
        BasicLevel basicLevel2 = this.f14556b;
        WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr = basicLevel2.enemyWaves;
        if (predefinedWaveTemplateArr.length == 1) {
            basicLevel2.enemyWaves = null;
        } else {
            WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr2 = new WaveTemplates.PredefinedWaveTemplate[predefinedWaveTemplateArr.length - 1];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                basicLevel = this.f14556b;
                WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr3 = basicLevel.enemyWaves;
                if (i2 >= predefinedWaveTemplateArr3.length) {
                    break;
                }
                if (i2 != i) {
                    predefinedWaveTemplateArr2[i3] = predefinedWaveTemplateArr3[i2];
                    i3++;
                }
                i2++;
            }
            basicLevel.enemyWaves = predefinedWaveTemplateArr2;
        }
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ void m20019n0(WaveTemplates.PredefinedWaveTemplate predefinedWaveTemplate, int i) {
        EnemyGroup[] enemyGroupArr = predefinedWaveTemplate.enemyGroups;
        if (enemyGroupArr.length == 1) {
            Game.f8589i.uiManager.dialog.showAlert("Last enemy group can't be deleted");
            return;
        }
        EnemyGroup[] enemyGroupArr2 = new EnemyGroup[enemyGroupArr.length - 1];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            EnemyGroup[] enemyGroupArr3 = predefinedWaveTemplate.enemyGroups;
            if (i2 < enemyGroupArr3.length) {
                if (i2 != i) {
                    enemyGroupArr2[i3] = enemyGroupArr3[i2];
                    i3++;
                }
                i2++;
            } else {
                predefinedWaveTemplate.enemyGroups = enemyGroupArr2;
                m20060N0();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m20015p0(WaveTemplates.PredefinedWaveTemplate predefinedWaveTemplate) {
        EnemyGroup[] enemyGroupArr = predefinedWaveTemplate.enemyGroups;
        int length = enemyGroupArr.length + 1;
        EnemyGroup[] enemyGroupArr2 = new EnemyGroup[length];
        System.arraycopy(enemyGroupArr, 0, enemyGroupArr2, 0, enemyGroupArr.length);
        predefinedWaveTemplate.enemyGroups = enemyGroupArr2;
        enemyGroupArr2[length - 1] = new EnemyGroup(EnemyType.REGULAR, 1.0f, 20.0f, 10, 0.0f, 0.5f, 2.0f, 1.0f, 10);
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q0 */
    public /* synthetic */ void m20013q0() {
        BasicLevel basicLevel = this.f14556b;
        WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr = basicLevel.enemyWaves;
        if (predefinedWaveTemplateArr == null) {
            basicLevel.enemyWaves = new WaveTemplates.PredefinedWaveTemplate[1];
        } else {
            WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr2 = new WaveTemplates.PredefinedWaveTemplate[predefinedWaveTemplateArr.length + 1];
            System.arraycopy(predefinedWaveTemplateArr, 0, predefinedWaveTemplateArr2, 0, predefinedWaveTemplateArr.length);
            this.f14556b.enemyWaves = predefinedWaveTemplateArr2;
        }
        WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr3 = this.f14556b.enemyWaves;
        predefinedWaveTemplateArr3[predefinedWaveTemplateArr3.length - 1] = new WaveTemplates.PredefinedWaveTemplate(new EnemyGroup(EnemyType.REGULAR, 1.0f, 20.0f, 10, 0.0f, 0.5f, 2.0f, 1.0f, 10));
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r0 */
    public /* synthetic */ void m20011r0(BasicLevel.WaveQuest waveQuest) {
        this.f14556b.waveQuests.removeValue(waveQuest, true);
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t0 */
    public /* synthetic */ void m20007t0() {
        int i;
        String str = "W:" + this.f14556b.name + ":";
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Array<BasicLevel.WaveQuest> array = this.f14556b.waveQuests;
            if (i2 < array.size) {
                String[] split = array.items[i2].f8465id.split(":");
                try {
                    i = Integer.parseInt(split[split.length - 1]);
                } catch (Exception unused) {
                    i = 0;
                }
                if (i > i3) {
                    i3 = i;
                }
                i2++;
            } else {
                this.f14556b.waveQuests.add(new BasicLevel.WaveQuest(this.f14556b, str + (i3 + 1), 1));
                m20060N0();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v0 */
    public /* synthetic */ void m20003v0(BasicLevelQuestConfig basicLevelQuestConfig) {
        this.f14556b.quests.removeValue(basicLevelQuestConfig, true);
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z0 */
    public /* synthetic */ void m19995z0() {
        String[] split;
        int i;
        String str = "Q:" + this.f14556b.name + ":";
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Array<BasicLevelQuestConfig> array = this.f14556b.quests;
            if (i2 < array.size) {
                try {
                    i = Integer.parseInt(array.items[i2].f8469id.split(":")[split.length - 1]);
                } catch (Exception unused) {
                    i = 0;
                }
                if (i > i3) {
                    i3 = i;
                }
                i2++;
            } else {
                this.f14556b.quests.add(new BasicLevelQuestConfig(str + (i3 + 1), false, StatisticsType.PT, 360L, true, this.f14556b));
                m20060N0();
                return;
            }
        }
    }

    /* renamed from: I0 */
    public final void m20070I0(final Array<Requirement> array) {
        for (final int i = 0; i < array.size; i++) {
            final Requirement requirement = array.items[i];
            Table table = new Table();
            Table table2 = new Table();
            table.add(table2).expandX().fillX().height(48.0f).padBottom(4.0f);
            final SelectBox selectBox = new SelectBox(this.f14560f);
            selectBox.setItems(RequirementType.values);
            selectBox.setSelected(requirement.type);
            selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.24
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    requirement.setType((RequirementType) selectBox.getSelected());
                    LevelConfigurationEditor.this.m20060N0();
                }
            });
            table2.add((Table) selectBox).size(250.0f, 48.0f).top().left();
            PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.t0
                @Override // java.lang.Runnable
                public final void run() {
                    LevelConfigurationEditor.this.m20048Y(array, i);
                }
            }, MaterialColor.ORANGE.P500, MaterialColor.ORANGE.P400, MaterialColor.ORANGE.P700);
            paddedImageButton.setIconSize(32.0f, 32.0f);
            paddedImageButton.setIconPosition(8.0f, 8.0f);
            table.add((Table) paddedImageButton).size(48.0f).row();
            int i2 = C288635.f14640a[requirement.type.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                final SelectBox selectBox2 = new SelectBox(this.f14560f);
                                selectBox2.setItems(StatisticsType.values);
                                selectBox2.setSelected(requirement.statisticsType);
                                selectBox2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.32
                                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                        requirement.statisticsType = (StatisticsType) selectBox2.getSelected();
                                    }
                                });
                                table2.add((Table) selectBox2).size(400.0f, 48.0f).top().left().padLeft(4.0f);
                                final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(requirement.statisticsValue + "", this.f14561g);
                                textFieldXPlatform.setSize(100.0f, 64.0f);
                                textFieldXPlatform.setMessageText("Value");
                                table2.add((Table) textFieldXPlatform).top().left().size(200.0f, 48.0f).padLeft(4.0f);
                                textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.33
                                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                        try {
                                            requirement.statisticsValue = Double.parseDouble(textFieldXPlatform.getText());
                                        } catch (Exception unused) {
                                        }
                                    }
                                });
                            }
                        } else {
                            final SelectBox selectBox3 = new SelectBox(this.f14560f);
                            Array array2 = new Array(String.class);
                            int i3 = 0;
                            while (true) {
                                Array<BasicLevel> array3 = Game.f8589i.basicLevelManager.levelsOrdered;
                                if (i3 >= array3.size) {
                                    break;
                                }
                                array2.add(array3.items[i3].name);
                                i3++;
                            }
                            selectBox3.setItems(array2);
                            selectBox3.setSelected(requirement.openedLevelName);
                            selectBox3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.31
                                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                    requirement.openedLevelName = (String) selectBox3.getSelected();
                                }
                            });
                            table2.add((Table) selectBox3).size(400.0f, 48.0f).top().left().padLeft(4.0f);
                        }
                    } else {
                        final SelectBox selectBox4 = new SelectBox(this.f14560f);
                        Array array4 = new Array(String.class);
                        int i4 = 0;
                        while (true) {
                            Array<BasicLevelStage> array5 = Game.f8589i.basicLevelManager.stagesOrdered;
                            if (i4 >= array5.size) {
                                break;
                            }
                            array4.add(array5.items[i4].name);
                            i4++;
                        }
                        selectBox4.setItems(array4);
                        selectBox4.setSelected(requirement.stageName);
                        selectBox4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.29
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                requirement.stageName = (String) selectBox4.getSelected();
                            }
                        });
                        table2.add((Table) selectBox4).size(400.0f, 48.0f).top().left().padLeft(4.0f);
                        final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(requirement.stageStars + "", this.f14561g);
                        textFieldXPlatform2.setSize(100.0f, 64.0f);
                        textFieldXPlatform2.setMessageText("Stars");
                        table2.add((Table) textFieldXPlatform2).top().left().size(200.0f, 48.0f).padLeft(4.0f);
                        textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.30
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                try {
                                    requirement.stageStars = Integer.parseInt(textFieldXPlatform2.getText());
                                } catch (Exception unused) {
                                }
                            }
                        });
                    }
                } else {
                    final SelectBox selectBox5 = new SelectBox(this.f14560f);
                    Array array6 = new Array(String.class);
                    int i5 = 0;
                    while (true) {
                        Array<BasicLevel> array7 = Game.f8589i.basicLevelManager.levelsOrdered;
                        if (i5 >= array7.size) {
                            break;
                        }
                        array6.add(array7.items[i5].name);
                        i5++;
                    }
                    selectBox5.setItems(array6);
                    selectBox5.setSelected(requirement.levelName);
                    selectBox5.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.27
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            requirement.levelName = (String) selectBox5.getSelected();
                        }
                    });
                    table2.add((Table) selectBox5).size(400.0f, 48.0f).top().left().padLeft(4.0f);
                    final TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform(requirement.levelStars + "", this.f14561g);
                    textFieldXPlatform3.setSize(100.0f, 64.0f);
                    textFieldXPlatform3.setMessageText("Stars");
                    table2.add((Table) textFieldXPlatform3).top().left().size(200.0f, 48.0f).padLeft(4.0f);
                    textFieldXPlatform3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.28
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                requirement.levelStars = Integer.parseInt(textFieldXPlatform3.getText());
                            } catch (Exception unused) {
                            }
                        }
                    });
                }
            } else {
                final SelectBox selectBox6 = new SelectBox(this.f14560f);
                selectBox6.setItems(ResearchType.values);
                selectBox6.setSelected(requirement.researchType);
                selectBox6.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.25
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        requirement.researchType = (ResearchType) selectBox6.getSelected();
                    }
                });
                table2.add((Table) selectBox6).size(400.0f, 48.0f).top().left().padLeft(4.0f);
                final TextFieldXPlatform textFieldXPlatform4 = new TextFieldXPlatform(requirement.researchLevel + "", this.f14561g);
                textFieldXPlatform4.setSize(100.0f, 64.0f);
                textFieldXPlatform4.setMessageText("Level");
                table2.add((Table) textFieldXPlatform4).top().left().size(200.0f, 48.0f).padLeft(4.0f);
                textFieldXPlatform4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.26
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        try {
                            requirement.researchLevel = Integer.parseInt(textFieldXPlatform4.getText());
                        } catch (Exception unused) {
                        }
                    }
                });
            }
            table2.add().height(1.0f).expandX().fillX();
            this.f14558d.add(table).fillX().expandX().padRight(8.0f).row();
        }
        this.f14558d.add((Table) new RectButton("Add requirement", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.u0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20047Z(array);
            }
        })).size(200.0f, 48.0f).top().left().row();
    }

    /* renamed from: M0 */
    public final LabelToggleButton m20062M0(boolean z, String str, boolean z2, ObjectRetriever<Boolean> objectRetriever) {
        LabelToggleButton labelToggleButton = new LabelToggleButton(str, z2, 24, 32.0f, objectRetriever);
        if (z) {
            this.f14558d.add(labelToggleButton).height(48.0f).top().left().row();
        }
        return labelToggleButton;
    }

    /* renamed from: N0 */
    public final void m20060N0() {
        ResourceType[] resourceTypeArr;
        float f;
        if (this.f14556b == null) {
            this.f14556b = Game.f8589i.basicLevelManager.levelsOrdered.first();
        }
        m20058O0();
        this.f14558d.clearChildren();
        Group group = new Group();
        group.setTransform(false);
        float f2 = 40.0f;
        this.f14558d.add((Table) group).expandX().fillX().padTop(20.0f).height(40.0f).row();
        Label label = new Label(this.f14556b.name, Game.f8589i.assetManager.getLabelStyle(30));
        label.setColor(MaterialColor.AMBER.P500);
        label.setSize(200.0f, 40.0f);
        group.addActor(label);
        Table table = new Table();
        table.setSize(700.0f, 40.0f);
        table.setPosition(200.0f, 0.0f);
        table.add().height(1.0f).expandX().fillX();
        group.addActor(table);
        Gdx.files.internal("levels/" + this.f14556b.name + ".json").exists();
        Application.ApplicationType type = Gdx.app.getType();
        Application.ApplicationType applicationType = Application.ApplicationType.Desktop;
        boolean z = (type == applicationType || Gdx.app.getType() == Application.ApplicationType.HeadlessDesktop) ? false : false;
        boolean exists = Gdx.files.local("levels/" + this.f14556b.name + ".json").exists();
        boolean contains = Game.f8589i.basicLevelManager.defaultLevelNames.contains(this.f14556b.name, false);
        if (contains) {
            table.add((Table) new Label("Default", Game.f8589i.assetManager.getLabelStyle(21))).padRight(10.0f);
        }
        table.add((Table) new RectButton("Clone", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.y0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20005u0();
            }
        })).size(150.0f, 40.0f).padLeft(10.0f);
        if (exists) {
            if (z) {
                table.add((Table) new RectButton("Reset configuration", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        LevelConfigurationEditor.this.m20084B0();
                    }
                })).size(200.0f, 40.0f).padLeft(10.0f);
            } else if (!contains) {
                table.add((Table) new RectButton("Delete", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LevelConfigurationEditor.this.m20080D0();
                    }
                })).size(150.0f, 40.0f).padLeft(10.0f);
            }
        }
        Gdx.files.internal("levels/maps/" + this.f14556b.name + ".json").exists();
        boolean z2 = (Gdx.app.getType() == applicationType || Gdx.app.getType() == Application.ApplicationType.HeadlessDesktop) ? false : false;
        boolean exists2 = Gdx.files.local("levels/maps/" + this.f14556b.name + ".json").exists();
        if (contains && z2 && exists2) {
            table.add((Table) new RectButton("Reset map", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.c0
                @Override // java.lang.Runnable
                public final void run() {
                    LevelConfigurationEditor.this.m20076F0();
                }
            })).size(200.0f, 40.0f).padLeft(10.0f);
        }
        if (!contains && exists2) {
            table.add((Table) new RectButton("Delete (+map)", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.d0
                @Override // java.lang.Runnable
                public final void run() {
                    LevelConfigurationEditor.this.m20043b0();
                }
            })).size(200.0f, 40.0f).padLeft(10.0f);
        }
        m20066K0();
        m20053T("Stage");
        final SelectBox selectBox = new SelectBox(this.f14560f);
        Array array = new Array(String.class);
        Array.ArrayIterator<BasicLevelStage> it = Game.f8589i.basicLevelManager.stagesOrdered.iterator();
        while (it.hasNext()) {
            BasicLevelStage next = it.next();
            array.add(next.name + " - " + next.getTitle());
        }
        selectBox.setItems(array);
        selectBox.setSelected(this.f14556b.stageName + " - " + Game.f8589i.basicLevelManager.getStage(this.f14556b.stageName).getTitle());
        selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                String[] split = ((String) selectBox.getSelected()).split(" - ");
                Game.f8589i.basicLevelManager.unloadLevel(LevelConfigurationEditor.this.f14556b.name);
                LevelConfigurationEditor.this.f14556b.stageName = split[0];
                Game.f8589i.basicLevelManager.registerLevel(LevelConfigurationEditor.this.f14556b);
                LevelConfigurationEditor.this.m20058O0();
            }
        });
        m20068J0(selectBox);
        m20066K0();
        m20053T("Position in stage");
        hint("Levels will be sorted by this value, higher = further in the list");
        textField(String.valueOf(this.f14556b.stagePosition), new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.e0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20041c0((String) obj);
            }
        });
        m20066K0();
        m20053T("Seed");
        hint("Random seed - enemy waves depend on it");
        textField(String.valueOf(this.f14556b.seed), new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.f0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20039d0((String) obj);
            }
        });
        m20066K0();
        m20064L0("Has leaderboards", this.f14556b.hasLeaderboards, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.g0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20037e0((Boolean) obj);
            }
        });
        hint("Should the game send replays for this level to the server and show leaderboards?");
        m20066K0();
        m20053T("Forced difficulty");
        final SelectBox selectBox2 = new SelectBox(this.f14560f);
        Array array2 = new Array(String.class);
        array2.add("-");
        for (DifficultyMode difficultyMode : DifficultyMode.values()) {
            array2.add(difficultyMode.name());
        }
        selectBox2.setItems(array2);
        DifficultyMode difficultyMode2 = this.f14556b.forcedDifficulty;
        if (difficultyMode2 == null) {
            selectBox2.setSelected("-");
        } else {
            selectBox2.setSelected(difficultyMode2.name());
        }
        selectBox2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.4
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                String str = (String) selectBox2.getSelected();
                if (str.equals("-")) {
                    LevelConfigurationEditor.this.f14556b.forcedDifficulty = null;
                    return;
                }
                LevelConfigurationEditor.this.f14556b.forcedDifficulty = DifficultyMode.valueOf(str);
            }
        });
        m20068J0(selectBox2);
        m20066K0();
        m20053T("Fast forward frame");
        hint("Game will start the first wave and auto-run to this frame at start");
        textField(String.valueOf(this.f14556b.fastForwardFrame), new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.h0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20035f0((String) obj);
            }
        });
        m20066K0();
        m20064L0("Fixed quests", this.f14556b.fixedQuests, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.i0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20033g0((Boolean) obj);
            }
        });
        hint("If enabled, quests prizes / difficulty will not be affected by research (for example, Prestige mode hard quests research)");
        m20066K0();
        m20064L0("Bonus", this.f14556b.isBonus, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.z0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20031h0((Boolean) obj);
            }
        });
        hint("Will mark this level as bonus one");
        m20066K0();
        m20064L0("Custom waves", this.f14556b.customWaves, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.a1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20029i0((Boolean) obj);
            }
        });
        hint("Level has custom (scripted) waves, wave timeline won't be available in level's menu");
        m20066K0();
        m20064L0("Daily quest", this.f14556b.dailyQuest, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.b1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20027j0((Boolean) obj);
            }
        });
        hint("Daily quest level names should start with 'DQ'");
        m20066K0();
        m20053T("Price in Green Papers");
        textField(String.valueOf(this.f14556b.priceInMoney), new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.c1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                LevelConfigurationEditor.this.m20025k0((String) obj);
            }
        });
        m20066K0();
        m20053T("Price in Resources");
        Table table2 = new Table();
        this.f14558d.add(table2).top().left().pad(10.0f, 0.0f, 10.0f, 0.0f).top().left().row();
        table2.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.14f)));
        for (final ResourceType resourceType : ResourceType.values) {
            Label label2 = new Label(Game.f8589i.resourceManager.getName(resourceType), Game.f8589i.assetManager.getLabelStyle(24));
            label2.setColor(Game.f8589i.resourceManager.getColor(resourceType));
            table2.add((Table) label2).padLeft(15.0f).padRight(15.0f).height(48.0f);
            final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(String.valueOf(this.f14556b.priceInResources[resourceType.ordinal()]), this.f14561g);
            textFieldXPlatform.setSize(300.0f, 40.0f);
            table2.add((Table) textFieldXPlatform).size(300.0f, 40.0f).padRight(4.0f).row();
            textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.5
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        LevelConfigurationEditor.this.f14556b.priceInResources[resourceType.ordinal()] = Integer.parseInt(textFieldXPlatform.getText());
                    } catch (Exception unused) {
                    }
                }
            });
        }
        m20066K0();
        m20053T("Difficulty milestones");
        hint("Wave numbers on which difficulty will start to grow significantly");
        Table table3 = new Table();
        this.f14558d.add(table3).top().left().pad(10.0f, 0.0f, 10.0f, 0.0f).top().left().row();
        for (final int i = 0; i < this.f14556b.difficultyMilestones.length; i++) {
            final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(String.valueOf(this.f14556b.difficultyMilestones[i]), this.f14561g);
            textFieldXPlatform2.setSize(300.0f, 40.0f);
            table3.add((Table) textFieldXPlatform2).size(300.0f, 40.0f).padBottom(8.0f).row();
            textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.6
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        LevelConfigurationEditor.this.f14556b.difficultyMilestones[i] = Integer.parseInt(textFieldXPlatform2.getText());
                    } catch (Exception unused) {
                    }
                }
            });
        }
        m20066K0();
        m20053T("Enemy waves");
        hint("Use fixed enemy waves configuration");
        Table table4 = new Table();
        this.f14558d.add(table4).top().left().pad(10.0f, 0.0f, 10.0f, 0.0f).top().left().row();
        WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr = this.f14556b.enemyWaves;
        if (predefinedWaveTemplateArr != null) {
            int length = predefinedWaveTemplateArr.length;
            int i2 = 0;
            final int i3 = 0;
            while (i2 < length) {
                final WaveTemplates.PredefinedWaveTemplate predefinedWaveTemplate = predefinedWaveTemplateArr[i2];
                Table table5 = new Table();
                table5.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.14f)));
                Table table6 = new Table();
                table5.add(table6).width(f2).align(10).padLeft(15.0f).padRight(15.0f).padTop(10.0f).top().left();
                int i4 = i3 + 1;
                WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr2 = predefinedWaveTemplateArr;
                table6.add((Table) new Label(String.valueOf(i4), Game.f8589i.assetManager.getLabelStyle(30))).size(40.0f, 32.0f).align(1).row();
                ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.d1
                    @Override // java.lang.Runnable
                    public final void run() {
                        LevelConfigurationEditor.this.m20021m0(i3);
                    }
                });
                complexButton.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 40.0f, 40.0f);
                complexButton.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, Color.GRAY);
                complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 4.0f, 4.0f, 32.0f, 32.0f);
                table6.add((Table) complexButton).padTop(10.0f).size(40.0f, 40.0f);
                Table table7 = new Table();
                table7.add().height(4.0f).row();
                Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getLabelStyle(21));
                labelStyle.fontColor = MaterialColor.GREY.P600;
                table7.add((Table) new Label("Type", labelStyle));
                table7.add((Table) new Label("Count", labelStyle));
                table7.add((Table) new Label("HP", labelStyle));
                table7.add((Table) new Label("Speed", labelStyle));
                table7.add((Table) new Label("Delay", labelStyle));
                table7.add((Table) new Label("Interval", labelStyle));
                table7.add((Table) new Label("Coins", labelStyle));
                table7.add((Table) new Label("Score", labelStyle));
                table7.add((Table) new Label("XP", labelStyle));
                table7.add();
                table7.row();
                table7.add().height(4.0f).row();
                EnemyGroup[] enemyGroupArr = predefinedWaveTemplate.enemyGroups;
                int length2 = enemyGroupArr.length;
                int i5 = 0;
                final int i6 = 0;
                while (i5 < length2) {
                    final EnemyGroup enemyGroup = enemyGroupArr[i5];
                    EnemyGroup[] enemyGroupArr2 = enemyGroupArr;
                    final SelectBox selectBox3 = new SelectBox(this.f14560f);
                    selectBox3.setItems(new Array(EnemyType.values));
                    selectBox3.setSelected(enemyGroup.type);
                    selectBox3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.7
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            enemyGroup.type = (EnemyType) selectBox3.getSelected();
                        }
                    });
                    table7.add((Table) selectBox3).size(150.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform(String.valueOf(enemyGroup.count), this.f14561g);
                    textFieldXPlatform3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.8
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.count = Integer.parseInt(textFieldXPlatform3.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.count < 1) {
                                    enemyGroup2.count = 1;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform3).top().left().size(60.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform4 = new TextFieldXPlatform(String.valueOf(enemyGroup.health), this.f14561g);
                    textFieldXPlatform4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.9
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.health = Float.parseFloat(textFieldXPlatform4.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.health < 0.0f) {
                                    enemyGroup2.health = 0.0f;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform4).top().left().size(100.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform5 = new TextFieldXPlatform(String.valueOf(enemyGroup.speed), this.f14561g);
                    textFieldXPlatform5.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.10
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.speed = Float.parseFloat(textFieldXPlatform5.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.speed < 0.0f) {
                                    enemyGroup2.speed = 0.0f;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform5).top().left().size(75.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform6 = new TextFieldXPlatform(String.valueOf(enemyGroup.delay), this.f14561g);
                    textFieldXPlatform6.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.11
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.delay = Float.parseFloat(textFieldXPlatform6.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.delay < 0.0f) {
                                    enemyGroup2.delay = 0.0f;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform6).top().left().size(75.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform7 = new TextFieldXPlatform(String.valueOf(enemyGroup.interval), this.f14561g);
                    textFieldXPlatform7.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.12
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.interval = Float.parseFloat(textFieldXPlatform7.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.interval < 0.0f) {
                                    enemyGroup2.interval = 0.0f;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform7).top().left().size(75.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform8 = new TextFieldXPlatform(String.valueOf(enemyGroup.bounty), this.f14561g);
                    textFieldXPlatform8.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.13
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.bounty = Float.parseFloat(textFieldXPlatform8.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.bounty < 0.0f) {
                                    enemyGroup2.bounty = 0.0f;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform8).top().left().size(75.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform9 = new TextFieldXPlatform(String.valueOf(enemyGroup.killScore), this.f14561g);
                    textFieldXPlatform9.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.14
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.killScore = Integer.parseInt(textFieldXPlatform9.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.killScore < 0) {
                                    enemyGroup2.killScore = 0;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform9).top().left().size(75.0f, 40.0f).padRight(4.0f);
                    final TextFieldXPlatform textFieldXPlatform10 = new TextFieldXPlatform(String.valueOf(enemyGroup.killExp), this.f14561g);
                    textFieldXPlatform10.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.15
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            try {
                                enemyGroup.killExp = Float.parseFloat(textFieldXPlatform10.getText());
                                EnemyGroup enemyGroup2 = enemyGroup;
                                if (enemyGroup2.killExp < 0.0f) {
                                    enemyGroup2.killExp = 0.0f;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    table7.add((Table) textFieldXPlatform10).top().left().size(75.0f, 40.0f).padRight(4.0f);
                    ComplexButton complexButton2 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.q
                        @Override // java.lang.Runnable
                        public final void run() {
                            LevelConfigurationEditor.this.m20017o0(predefinedWaveTemplate, i6);
                        }
                    });
                    complexButton2.setIconColors(MaterialColor.ORANGE.P500, MaterialColor.ORANGE.P600, MaterialColor.ORANGE.P400, Color.GRAY);
                    complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 4.0f, 4.0f, 32.0f, 32.0f);
                    table7.add((Table) complexButton2).size(44.0f, 40.0f);
                    table7.row();
                    table7.add().width(1.0f).height(4.0f).row();
                    i6++;
                    i5++;
                    enemyGroupArr = enemyGroupArr2;
                    length2 = length2;
                    length = length;
                    i4 = i4;
                }
                table7.add((Table) new RectButton("Add group", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        LevelConfigurationEditor.this.m20015p0(predefinedWaveTemplate);
                    }
                })).size(150.0f, 40.0f).padBottom(4.0f).top().left().row();
                table5.add(table7).row();
                table4.add(table5).padBottom(4.0f).row();
                i2++;
                predefinedWaveTemplateArr = predefinedWaveTemplateArr2;
                i3 = i4;
                f2 = 40.0f;
            }
        }
        this.f14558d.add((Table) new RectButton("Add wave", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.s
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20013q0();
            }
        })).size(200.0f, 48.0f).top().left().row();
        m20066K0();
        m20053T("Visibility requirements");
        m20070I0(this.f14556b.showRequirements);
        m20053T("Unlock requirements");
        m20070I0(this.f14556b.openRequirements);
        m20053T("Wave quests");
        Table table8 = new Table();
        this.f14558d.add(table8).top().left().pad(10.0f, 0.0f, 10.0f, 0.0f).fillX().expandX().top().left().row();
        Array.ArrayIterator<BasicLevel.WaveQuest> it2 = this.f14556b.waveQuests.iterator();
        while (true) {
            f = 220.0f;
            if (!it2.hasNext()) {
                break;
            }
            final BasicLevel.WaveQuest next2 = it2.next();
            Table table9 = new Table();
            table9.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.14f)));
            Table table10 = new Table();
            table9.add(table10).width(220.0f).align(10).padLeft(15.0f).padRight(15.0f).padTop(10.0f).top().left();
            final TextFieldXPlatform textFieldXPlatform11 = new TextFieldXPlatform(next2.f8465id, this.f14561g);
            textFieldXPlatform11.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.16
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    next2.f8465id = textFieldXPlatform11.getText();
                }
            });
            table10.add((Table) textFieldXPlatform11).size(160.0f, 40.0f).align(1);
            final TextFieldXPlatform textFieldXPlatform12 = new TextFieldXPlatform(String.valueOf(next2.waves), this.f14561g);
            textFieldXPlatform12.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.17
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        next2.waves = Integer.parseInt(textFieldXPlatform12.getText());
                    } catch (Exception unused) {
                    }
                }
            });
            table10.add((Table) textFieldXPlatform12).size(56.0f, 40.0f).padLeft(4.0f).align(1).row();
            ComplexButton complexButton3 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.t
                @Override // java.lang.Runnable
                public final void run() {
                    LevelConfigurationEditor.this.m20009s0(next2);
                }
            });
            complexButton3.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 40.0f, 40.0f);
            complexButton3.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, Color.GRAY);
            complexButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 4.0f, 4.0f, 32.0f, 32.0f);
            table10.add((Table) complexButton3).padTop(10.0f).size(40.0f, 40.0f).left();
            Table table11 = new Table();
            m20054S(table11, next2.prizes);
            table9.add(table11).fillX().expandX().padTop(8.0f).padBottom(8.0f).row();
            table8.add(table9).padBottom(4.0f).fillX().expandX().row();
        }
        this.f14558d.add((Table) new RectButton("Add wave quest", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.u
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20007t0();
            }
        })).size(200.0f, 48.0f).top().left().row();
        m20066K0();
        m20053T("Quests");
        Table table12 = new Table();
        this.f14558d.add(table12).top().left().pad(10.0f, 0.0f, 10.0f, 0.0f).fillX().expandX().top().left().row();
        Array.ArrayIterator<BasicLevelQuestConfig> it3 = this.f14556b.quests.iterator();
        while (it3.hasNext()) {
            final BasicLevelQuestConfig next3 = it3.next();
            Table table13 = new Table();
            table13.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.14f)));
            Table table14 = new Table();
            table13.add(table14).width(f).align(10).padLeft(15.0f).padRight(15.0f).padTop(10.0f).top().left();
            final TextFieldXPlatform textFieldXPlatform13 = new TextFieldXPlatform(next3.f8469id, this.f14561g);
            textFieldXPlatform13.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.18
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    next3.f8469id = textFieldXPlatform13.getText();
                }
            });
            table14.add((Table) textFieldXPlatform13).size(f, 40.0f).align(1);
            table14.row();
            ComplexButton complexButton4 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.w
                @Override // java.lang.Runnable
                public final void run() {
                    LevelConfigurationEditor.this.m20001w0(next3);
                }
            });
            complexButton4.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 40.0f, 40.0f);
            complexButton4.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, Color.GRAY);
            complexButton4.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 4.0f, 4.0f, 32.0f, 32.0f);
            table14.add((Table) complexButton4).padTop(10.0f).size(40.0f, 40.0f).left();
            Table table15 = new Table();
            table13.add(table15).expandX().fillX().padLeft(15.0f).padRight(15.0f).padTop(10.0f).top().left();
            Table table16 = new Table();
            table16.add(m20062M0(false, "Scripted", next3.scripted, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.x
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    LevelConfigurationEditor.m19999x0(BasicLevelQuestConfig.this, (Boolean) obj);
                }
            }));
            table16.add(m20062M0(false, "One game", next3.duringGame, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.y
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    LevelConfigurationEditor.m19997y0(BasicLevelQuestConfig.this, (Boolean) obj);
                }
            })).padLeft(15.0f);
            String str = next3.scriptedTitle;
            if (str == null) {
                str = "";
            }
            final TextFieldXPlatform textFieldXPlatform14 = new TextFieldXPlatform(str, this.f14561g);
            textFieldXPlatform14.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.19
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    if (textFieldXPlatform14.getText().length() == 0) {
                        next3.scriptedTitle = null;
                        return;
                    }
                    next3.scriptedTitle = textFieldXPlatform14.getText();
                }
            });
            textFieldXPlatform14.setMessageText("Scripted alias");
            table16.add((Table) textFieldXPlatform14).padLeft(15.0f).size(260.0f, 40.0f);
            table16.add().height(1.0f).expandX().fillX();
            table15.add(table16).expandX().fillX().row();
            Table table17 = new Table();
            final SelectBox selectBox4 = new SelectBox(this.f14560f);
            selectBox4.setItems(new Array(StatisticsType.values));
            selectBox4.setSelected(next3.statisticsType);
            selectBox4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.20
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    next3.statisticsType = (StatisticsType) selectBox4.getSelected();
                }
            });
            table17.add((Table) selectBox4).size(340.0f, 40.0f);
            final TextFieldXPlatform textFieldXPlatform15 = new TextFieldXPlatform(String.valueOf(next3.requiredValue), this.f14561g);
            textFieldXPlatform15.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.21
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        next3.requiredValue = Long.parseLong(textFieldXPlatform15.getText());
                    } catch (Exception unused) {
                    }
                }
            });
            table17.add((Table) textFieldXPlatform15).size(160.0f, 40.0f).padLeft(15.0f);
            table17.add().height(1.0f).expandX().fillX();
            table15.add(table17).expandX().fillX().padTop(10.0f).row();
            Table table18 = new Table();
            m20054S(table18, next3.prizes);
            table15.add(table18).fillX().expandX().padTop(8.0f).padBottom(8.0f);
            table12.add(table13).padBottom(4.0f).fillX().expandX().row();
            f = 220.0f;
        }
        this.f14558d.add((Table) new RectButton("Add quest", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.z
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m19995z0();
            }
        })).size(200.0f, 48.0f).top().left().row();
        m20066K0();
        this.f14558d.add().row();
        this.f14558d.add().width(1.0f).height(80.0f).row();
        this.f14558d.add().expand().fill().row();
    }

    /* renamed from: O0 */
    public final void m20058O0() {
        this.f14557c.clear();
        Array.ArrayIterator<BasicLevelStage> it = Game.f8589i.basicLevelManager.stagesOrdered.iterator();
        while (it.hasNext()) {
            BasicLevelStage next = it.next();
            next.sortLevels();
            Label label = new Label(next.name + " - " + next.getTitle(), Game.f8589i.assetManager.getLabelStyle(21));
            label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            label.setAlignment(1);
            this.f14557c.add((Table) label).size(240.0f, 24.0f).padBottom(4.0f).padTop(16.0f).row();
            Array.ArrayIterator<BasicLevel> it2 = next.levels.iterator();
            while (it2.hasNext()) {
                final BasicLevel next2 = it2.next();
                RectButton rectButton = new RectButton(next2.name, Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.l0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LevelConfigurationEditor.this.m20074G0(next2);
                    }
                });
                if (this.f14556b == next2) {
                    Color color = Color.WHITE;
                    rectButton.setBackgroundColors(color, color, color, MaterialColor.AMBER.P900);
                    rectButton.setEnabled(false);
                }
                Color color2 = Color.WHITE;
                rectButton.setIconLabelColors(color2, color2, color2, color2);
                this.f14557c.add((Table) rectButton).size(240.0f, 48.0f).padBottom(2.0f).row();
            }
        }
        RectButton rectButton2 = new RectButton("Add level", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.w0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20072H0();
            }
        });
        Color color3 = Color.WHITE;
        rectButton2.setIconLabelColors(color3, color3, color3, color3);
        rectButton2.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, color3);
        this.f14557c.add((Table) rectButton2).size(240.0f, 48.0f).padBottom(2.0f).padTop(8.0f).row();
        this.f14557c.add().width(1.0f).height(96.0f);
    }

    /* renamed from: S */
    public final void m20054S(Table table, final Array<ItemStack> array) {
        String str;
        for (int i = 0; i < array.size; i++) {
            final ItemStack itemStack = array.items[i];
            Group group = new Group();
            group.setTransform(false);
            table.add((Table) group).size(96.0f, 144.0f);
            ItemCell itemCell = new ItemCell();
            itemCell.setCompact();
            itemCell.setColRow(i, 0);
            itemCell.setItem(itemStack.getItem(), 0);
            itemCell.setPosition(0.0f, 32.0f);
            itemCell.addListener(new C287222(itemStack));
            group.addActor(itemCell);
            final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(String.valueOf(itemStack.getCount()), this.f14561g);
            textFieldXPlatform.setSize(92.0f, 30.0f);
            textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.23
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        itemStack.setCount(Integer.parseInt(textFieldXPlatform.getText()));
                    } catch (Exception unused) {
                    }
                }
            });
            group.addActor(textFieldXPlatform);
            RectButton rectButton = new RectButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.p0
                @Override // java.lang.Runnable
                public final void run() {
                    LevelConfigurationEditor.this.m20052U(array, itemStack);
                }
            });
            rectButton.setBackground(Game.f8589i.assetManager.getDrawable("blank"), 0.0f, 0.0f, 32.0f, 32.0f);
            rectButton.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, Color.GRAY);
            rectButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 3.0f, 3.0f, 24.0f, 24.0f);
            rectButton.setSize(30.0f, 30.0f);
            rectButton.setPosition(66.0f, 112.0f);
            group.addActor(rectButton);
        }
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.q0
            @Override // java.lang.Runnable
            public final void run() {
                LevelConfigurationEditor.this.m20050W(array);
            }
        });
        AssetManager assetManager = Game.f8589i.assetManager;
        if (array.size % 2 == 0) {
            str = "item-cell-a-shape";
        } else {
            str = "item-cell-b-shape";
        }
        complexButton.setBackground(assetManager.getDrawable(str), 0.0f, 0.0f, 96.0f, 105.0f);
        complexButton.setBackgroundColors(new Color(0.0f, 0.0f, 0.0f, 0.28f), new Color(0.0f, 0.0f, 0.0f, 0.56f), new Color(1.0f, 1.0f, 1.0f, 0.14f), Color.GRAY);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-plus"), 32.0f, 36.5f, 32.0f, 32.0f);
        table.add((Table) complexButton).size(96.0f, 105.0f).padBottom(28.0f);
        table.add().height(1.0f).expandX().fillX();
    }

    /* renamed from: T */
    public final Label m20053T(String str) {
        Label label = new Label(str, Game.f8589i.assetManager.getLabelStyle(24));
        this.f14558d.add((Table) label).top().left().pad(10.0f, 0.0f, 10.0f, 0.0f).top().left().row();
        return label;
    }

    public void hide() {
        Game.f8589i.uiManager.darkOverlay.removeCaller("ItemCreationOverlay");
        this.f14555a.getTable().setVisible(false);
        Game.f8589i.uiManager.stage.unfocusAll();
    }

    public Label hint(String str) {
        Label label = new Label(str, Game.f8589i.assetManager.getLabelStyle(21));
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label.setWrap(true);
        label.setAlignment(8);
        this.f14558d.add((Table) label).top().left().pad(-6.0f, 0.0f, 10.0f, 0.0f).top().left().width(900.0f).row();
        return label;
    }

    public TextFieldXPlatform textField(String str, final ObjectRetriever<String> objectRetriever) {
        final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(str, this.f14561g);
        textFieldXPlatform.setSize(400.0f, 64.0f);
        this.f14558d.add((Table) textFieldXPlatform).top().left().size(300.0f, 48.0f).row();
        textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.LevelConfigurationEditor.34
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                objectRetriever.retrieved(textFieldXPlatform.getText());
            }
        });
        return textFieldXPlatform;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public /* synthetic */ void m20051V(ItemStack itemStack, Item item) {
        itemStack.setItem(item);
        m20060N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public /* synthetic */ void m20048Y(Array array, int i) {
        array.removeIndex(i);
        m20060N0();
    }

    public void show(BasicLevel basicLevel) {
        this.f14556b = basicLevel;
        m20060N0();
        show();
    }
}
