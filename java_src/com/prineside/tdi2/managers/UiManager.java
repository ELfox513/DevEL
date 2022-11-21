package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.SnapshotArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.viewport.ScreenViewport;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.ScreenManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.HighlightActor;
import com.prineside.tdi2.p036ui.components.RatingForm;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.p036ui.shared.BackButton;
import com.prineside.tdi2.p036ui.shared.CameraTools;
import com.prineside.tdi2.p036ui.shared.DailyLootOverlay;
import com.prineside.tdi2.p036ui.shared.DailyQuestOverlay;
import com.prineside.tdi2.p036ui.shared.DarkOverlay;
import com.prineside.tdi2.p036ui.shared.DeveloperConsole;
import com.prineside.tdi2.p036ui.shared.Dialog;
import com.prineside.tdi2.p036ui.shared.DifficultyModeOverlay;
import com.prineside.tdi2.p036ui.shared.ForwardButton;
import com.prineside.tdi2.p036ui.shared.InventoryOverlay;
import com.prineside.tdi2.p036ui.shared.IssuedPrizesOverlay;
import com.prineside.tdi2.p036ui.shared.ItemCountSelectionOverlay;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.p036ui.shared.ItemDescriptionDialog;
import com.prineside.tdi2.p036ui.shared.LeaderboardsOverlay;
import com.prineside.tdi2.p036ui.shared.LevelConfigurationEditor;
import com.prineside.tdi2.p036ui.shared.LoadingOverlay;
import com.prineside.tdi2.p036ui.shared.LuckyWheelOverlay;
import com.prineside.tdi2.p036ui.shared.MainMenuUiScene;
import com.prineside.tdi2.p036ui.shared.MusicListOverlay;
import com.prineside.tdi2.p036ui.shared.Notifications;
import com.prineside.tdi2.p036ui.shared.OpenedPackOverlay;
import com.prineside.tdi2.p036ui.shared.ProfileSummary;
import com.prineside.tdi2.p036ui.shared.QuestPrestigeOverlay;
import com.prineside.tdi2.p036ui.shared.ResourcesAndMoney;
import com.prineside.tdi2.p036ui.shared.ScreenTitle;
import com.prineside.tdi2.p036ui.shared.TextInputOverlay;
import com.prineside.tdi2.p036ui.shared.TrophiesListOverlay;
import com.prineside.tdi2.p036ui.shared.TrophyViewOverlay;
import com.prineside.tdi2.p036ui.shared.WavesTimelineOverlay;
import com.prineside.tdi2.p036ui.shared.WebBrowser;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.REGS;
import java.util.Comparator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class UiManager extends Manager.ManagerAdapter implements Game.ScreenResizeListener {

    /* renamed from: t */
    public static final Comparator<UiLayer> f10217t = new Comparator<UiLayer>() { // from class: com.prineside.tdi2.managers.UiManager.1
        @Override // java.util.Comparator
        public int compare(UiLayer uiLayer, UiLayer uiLayer2) {
            int i = uiLayer.zIndex;
            int i2 = uiLayer2.zIndex;
            if (i == i2) {
                return 0;
            }
            return i < i2 ? -1 : 1;
        }
    };

    /* renamed from: u */
    public static final Vector2 f10218u = new Vector2();

    /* renamed from: v */
    public static final StringBuilder f10219v = new StringBuilder();

    /* renamed from: a */
    public UiLayer f10220a;
    public AbilitySelectionOverlay abilitySelectionOverlay;

    /* renamed from: b */
    public WebBrowser f10221b;
    public BackButton backButton;
    public CameraTools cameraTools;

    /* renamed from: d */
    public final UiLayer f10222d;
    public DailyLootOverlay dailyLootOverlay;
    public DailyQuestOverlay dailyQuestOverlay;
    public DarkOverlay darkOverlay;
    public DeveloperConsole developerConsole;
    public Dialog dialog;
    public DifficultyModeOverlay difficultyModeOverlay;
    public ForwardButton forwardButton;
    public InventoryOverlay inventoryOverlay;
    public IssuedPrizesOverlay issuedPrizesOverlay;
    public ParticleEffectPool itemCellFlashParticles;
    public Drawable[][] itemCellRarityCoats;
    public Drawable[] itemCellShapes;
    public ItemCountSelectionOverlay itemCountSelectionOverlay;
    public ItemCreationOverlay itemCreationOverlay;
    public ItemDescriptionDialog itemDescriptionDialog;

    /* renamed from: k */
    public final Group f10223k;
    public final Array<UiLayer>[] layers;
    public LeaderboardsOverlay leaderboardsOverlay;
    public LevelConfigurationEditor levelConfigurationEditor;
    public LoadingOverlay loadingOverlay;
    public LuckyWheelOverlay luckyWheelOverlay;
    public final Group[] mainLayerGroups;
    public MainMenuUiScene mainMenuUiScene;
    public MusicListOverlay musicListOverlay;
    public Notifications notifications;
    public OpenedPackOverlay openedPackOverlay;

    /* renamed from: p */
    public int f10224p;
    public ProfileSummary profileSummary;

    /* renamed from: q */
    public float f10225q;
    public QuestPrestigeOverlay questPrestigeOverlay;

    /* renamed from: r */
    public boolean f10226r;
    public RatingForm ratingForm;
    public ResourcesAndMoney resourcesAndMoney;

    /* renamed from: s */
    public final _ScreenManagerListener f10227s;
    public ScreenTitle screenTitle;
    public final Stage stage;
    public TextInputOverlay textInputOverlay;
    public TrophiesListOverlay trophiesListOverlay;
    public TrophyViewOverlay trophyViewOverlay;
    public final ScreenViewport viewport;
    public WavesTimelineOverlay wavesTimelineOverlay;

    @REGS
    /* loaded from: classes2.dex */
    public enum MainUiLayer {
        SCREEN,
        SHARED_COMPONENTS,
        OVERLAY;
        
        public static final MainUiLayer[] values = values();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<UiManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public UiManager read() {
            return Game.f8589i.uiManager;
        }
    }

    /* loaded from: classes2.dex */
    public static class UiLayer {

        /* renamed from: a */
        public Table f10232a;
        public boolean ignoreSafeMargin;
        public final MainUiLayer mainUiLayer;
        public final String name;
        public int zIndex;

        public Table getTable() {
            return this.f10232a;
        }

        public UiLayer(MainUiLayer mainUiLayer, Table table, int i, String str) {
            this.ignoreSafeMargin = false;
            this.mainUiLayer = mainUiLayer;
            this.f10232a = table;
            this.zIndex = i;
            this.name = str;
            table.setName(str);
        }
    }

    /* loaded from: classes2.dex */
    public class _ScreenManagerListener implements ScreenManager.ScreenManagerListener {
        public _ScreenManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ScreenManager.ScreenManagerListener
        public void screenChanged() {
            UiManager.this.removeAllHighlights();
        }
    }

    public UiLayer addLayer(MainUiLayer mainUiLayer, int i, String str) {
        return addLayer(mainUiLayer, i, str, false);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public float getRegularLayerWidth() {
        return this.viewport.getWorldWidth() - (getScreenSafeMargin() * 2);
    }

    public int getScreenSafeMargin() {
        return Game.f8589i.actionResolver.getInitConfigManager().get(SettingsManager.InitConfig.GRAPHICS_SAFE_AREA);
    }

    public void removeHighlight(HighlightActor highlightActor) {
        highlightActor.addAction(Actions.sequence(Actions.alpha(0.0f, 0.3f), Actions.removeActor()));
    }

    @Override // com.prineside.tdi2.Game.ScreenResizeListener
    public void resize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        rebuildLayers();
    }

    public void setLogTouchDownsEnabled(boolean z) {
        this.f10226r = z && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DISABLE_UI_TOUCH_LOG) == 0.0d;
    }

    @Override // com.prineside.tdi2.Game.ScreenResizeListener
    public void visibleDisplayFrameChanged() {
    }

    public HighlightActor addHighlight(Actor actor) {
        HighlightActor highlightActor = new HighlightActor(actor);
        this.f10223k.addActor(highlightActor);
        highlightActor.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.alpha(1.0f, 0.3f)));
        return highlightActor;
    }

    public UiLayer addLayer(MainUiLayer mainUiLayer, int i, String str, boolean z) {
        UiLayer uiLayer = new UiLayer(mainUiLayer, new Table(), i, str);
        uiLayer.ignoreSafeMargin = z;
        this.layers[mainUiLayer.ordinal()].add(uiLayer);
        rebuildLayers();
        return uiLayer;
    }

    public void dumpActorsHierarchy(Group group, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            stringBuilder.append("|");
        }
        if (group == null) {
            Group[] groupArr = this.mainLayerGroups;
            int length = groupArr.length;
            while (i2 < length) {
                Group group2 = groupArr[i2];
                Logger.log("UiManager", ((Object) stringBuilder) + " " + group2.getName() + " (Group)");
                dumpActorsHierarchy(group2, i + 1);
                i2++;
            }
            return;
        }
        SnapshotArray<Actor> children = group.getChildren();
        int i4 = children.size;
        while (i2 < i4) {
            Actor actor = children.get(i2);
            Logger.log("UiManager", ((Object) stringBuilder) + " " + actor.getName() + " (" + actor.getClass().getSimpleName() + ")");
            if (actor instanceof Group) {
                dumpActorsHierarchy((Group) actor, i + 1);
            }
            i2++;
        }
    }

    public Actor findActor(String str) {
        Group[] groupArr;
        for (Group group : this.mainLayerGroups) {
            if (group.getName() != null && group.getName().equals(str)) {
                return group;
            }
            Actor findActor = group.findActor(str);
            if (findActor != null) {
                return findActor;
            }
        }
        return null;
    }

    public void findDuplicateActorNames() {
        ObjectSet<String> objectSet = new ObjectSet<>();
        for (Group group : this.mainLayerGroups) {
            m21452f(objectSet, group);
        }
    }

    /* renamed from: g */
    public final CharSequence m21451g(Actor actor) {
        StringBuilder stringBuilder;
        f10219v.setLength(0);
        Actor actor2 = null;
        Group group = actor;
        while (actor2 == null) {
            if (group.getListeners().size != 0) {
                actor2 = group;
            } else {
                group = group.getParent();
                if (group == null) {
                    break;
                }
            }
        }
        if (actor2 == null) {
            StringBuilder stringBuilder2 = f10219v;
            stringBuilder2.append("No listeners in parents of ").append(actor.getClass().getSimpleName()).append(' ').append(actor.getName());
            return stringBuilder2;
        }
        do {
            stringBuilder = f10219v;
            if (stringBuilder.length != 0) {
                stringBuilder.append(" < ");
            }
            if (actor2.getName() != null) {
                stringBuilder.append(actor2.getName());
                return stringBuilder;
            }
            stringBuilder.append(actor2.getClass().getSimpleName());
            actor2 = actor2.getParent();
        } while (actor2 != null);
        if (stringBuilder.length != 0) {
            stringBuilder.append(" < ");
        }
        stringBuilder.append("stage");
        return stringBuilder;
    }

    public void getTextInput(Input.TextInputListener textInputListener, String str, String str2, String str3) {
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            this.textInputOverlay.show(textInputListener, str, str2, str3);
        } else {
            Gdx.input.getTextInput(textInputListener, str, str2, str3);
        }
    }

    public WebBrowser getWebBrowser() {
        if (this.f10221b == null) {
            this.f10221b = new WebBrowser();
        }
        return this.f10221b;
    }

    public void hideAllComponents() {
        this.dialog.hide();
        this.textInputOverlay.hide();
        this.issuedPrizesOverlay.hide();
        this.leaderboardsOverlay.hide();
        this.trophiesListOverlay.hide();
        this.itemCreationOverlay.hide();
        this.openedPackOverlay.hide();
        this.inventoryOverlay.hide(false);
        this.itemCountSelectionOverlay.hide();
        this.musicListOverlay.hide();
        this.dailyLootOverlay.setVisible(false);
        this.luckyWheelOverlay.setVisible(false);
        this.levelConfigurationEditor.hide();
        this.questPrestigeOverlay.setVisible(false);
        WebBrowser webBrowser = this.f10221b;
        if (webBrowser != null) {
            webBrowser.setVisible(false);
        }
        this.abilitySelectionOverlay.hide();
        this.wavesTimelineOverlay.hide();
        this.ratingForm.hide();
        this.itemDescriptionDialog.hide();
        this.loadingOverlay.hide();
        this.backButton.setVisible(false);
        this.forwardButton.setVisible(false);
        this.screenTitle.setVisible(false);
        this.profileSummary.setVisible(false);
        this.resourcesAndMoney.setVisible(false);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        CameraTools cameraTools = this.cameraTools;
        if (cameraTools != null) {
            cameraTools.postRender(f);
        }
        DarkOverlay darkOverlay = this.darkOverlay;
        if (darkOverlay != null) {
            darkOverlay.postRender(f);
        }
        InventoryOverlay inventoryOverlay = this.inventoryOverlay;
        if (inventoryOverlay != null) {
            inventoryOverlay.postRender(f);
        }
        MusicListOverlay musicListOverlay = this.musicListOverlay;
        if (musicListOverlay != null) {
            musicListOverlay.postRender(f);
        }
        DailyLootOverlay dailyLootOverlay = this.dailyLootOverlay;
        if (dailyLootOverlay != null) {
            dailyLootOverlay.postRender(f);
        }
        LuckyWheelOverlay luckyWheelOverlay = this.luckyWheelOverlay;
        if (luckyWheelOverlay != null) {
            luckyWheelOverlay.postRender(f);
        }
        ResourcesAndMoney resourcesAndMoney = this.resourcesAndMoney;
        if (resourcesAndMoney != null) {
            resourcesAndMoney.postRender(f);
        }
        ProfileSummary profileSummary = this.profileSummary;
        if (profileSummary != null) {
            profileSummary.postRender(f);
        }
        Dialog dialog = this.dialog;
        if (dialog != null) {
            dialog.postRender(f);
        }
        TextInputOverlay textInputOverlay = this.textInputOverlay;
        if (textInputOverlay != null) {
            textInputOverlay.postRender(f);
        }
        if (this.stage.getBatch().isDrawing()) {
            this.stage.getBatch().end();
        }
        if (Game.f8589i.debugManager != null) {
            long realTickCount = Game.getRealTickCount();
            this.stage.act(f);
            Game.f8589i.debugManager.registerFrameJob("UI-act", Game.getRealTickCount() - realTickCount);
            long realTickCount2 = Game.getRealTickCount();
            this.stage.draw();
            Game.f8589i.debugManager.registerFrameJob("UI-draw", Game.getRealTickCount() - realTickCount2);
        } else {
            this.stage.act(f);
            this.stage.draw();
        }
        float f2 = this.f10225q + f;
        this.f10225q = f2;
        if (f2 > 1.0f) {
            this.f10225q = 0.0f;
            int rotation = Gdx.input.getRotation();
            if (this.f10224p != rotation) {
                this.f10224p = rotation;
                rebuildLayers();
            }
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        InventoryOverlay inventoryOverlay = this.inventoryOverlay;
        if (inventoryOverlay != null) {
            inventoryOverlay.preRender(f);
        }
        ResourcesAndMoney resourcesAndMoney = this.resourcesAndMoney;
        if (resourcesAndMoney != null) {
            resourcesAndMoney.preRender(f);
        }
    }

    public void rebuildLayers() {
        MainUiLayer[] mainUiLayerArr;
        MainUiLayer[] mainUiLayerArr2;
        int width = Gdx.graphics.getWidth();
        int height = Gdx.graphics.getHeight();
        this.viewport.setUnitsPerPixel(Game.f8589i.settingsManager.getScaledViewportHeight() / Gdx.graphics.getHeight());
        this.viewport.update(width, height, true);
        int screenSafeMargin = getScreenSafeMargin();
        UiLayer uiLayer = this.f10220a;
        if (uiLayer != null) {
            if (screenSafeMargin == 0) {
                uiLayer.getTable().setVisible(false);
            } else {
                Table table = uiLayer.getTable();
                table.setVisible(true);
                table.clearChildren();
                Image image = new Image(Game.f8589i.assetManager.getDrawable("transparent"));
                image.setColor(0.0f, 0.0f, 0.0f, 0.0f);
                float f = screenSafeMargin;
                float f2 = -screenSafeMargin;
                table.add((Table) image).width(f).padLeft(f2).expandY().fillY();
                Touchable touchable = Touchable.enabled;
                image.setTouchable(touchable);
                image.addListener(new InputVoid());
                table.add().fillX().expandX();
                Image image2 = new Image(Game.f8589i.assetManager.getDrawable("transparent"));
                image2.setColor(0.0f, 0.0f, 0.0f, 0.0f);
                table.add((Table) image2).width(f).padRight(f2).expandY().fillY();
                image2.setTouchable(touchable);
                image2.addListener(new InputVoid());
            }
        }
        float worldWidth = this.viewport.getWorldWidth();
        float f3 = screenSafeMargin;
        float f4 = (worldWidth - f3) - f3;
        float worldHeight = this.viewport.getWorldHeight();
        for (MainUiLayer mainUiLayer : MainUiLayer.values) {
            this.mainLayerGroups[mainUiLayer.ordinal()].setSize(worldWidth, worldHeight);
            this.mainLayerGroups[mainUiLayer.ordinal()].setPosition(0.0f, 0.0f);
        }
        for (Array<UiLayer> array : this.layers) {
            array.sort(f10217t);
        }
        for (MainUiLayer mainUiLayer2 : MainUiLayer.values) {
            this.mainLayerGroups[mainUiLayer2.ordinal()].clearChildren();
            Array.ArrayIterator<UiLayer> it = this.layers[mainUiLayer2.ordinal()].iterator();
            while (it.hasNext()) {
                UiLayer next = it.next();
                if (next.ignoreSafeMargin) {
                    next.f10232a.setPosition(0.0f, 0.0f);
                    next.f10232a.setSize(worldWidth, worldHeight);
                } else {
                    next.f10232a.setPosition(f3, 0.0f);
                    next.f10232a.setSize(f4, worldHeight);
                }
                this.mainLayerGroups[mainUiLayer2.ordinal()].addActor(next.f10232a);
            }
        }
    }

    public void removeAllHighlights() {
        SnapshotArray<Actor> children = this.f10223k.getChildren();
        for (int i = 0; i < children.size; i++) {
            children.get(i).clearActions();
            children.get(i).addAction(Actions.sequence(Actions.alpha(0.0f, 0.3f), Actions.removeActor()));
        }
    }

    public void removeLayer(UiLayer uiLayer) {
        this.layers[uiLayer.mainUiLayer.ordinal()].removeValue(uiLayer, true);
        rebuildLayers();
    }

    public void setAsInputHandler() {
        Logger.log("UiManager", "stage now handles all input");
        Gdx.input.setInputProcessor(this.stage);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        this.dialog = new Dialog();
        this.textInputOverlay = new TextInputOverlay();
        this.darkOverlay = new DarkOverlay();
        this.itemCreationOverlay = new ItemCreationOverlay();
        this.itemCountSelectionOverlay = new ItemCountSelectionOverlay();
        this.musicListOverlay = new MusicListOverlay();
        this.dailyLootOverlay = new DailyLootOverlay();
        this.luckyWheelOverlay = new LuckyWheelOverlay();
        this.levelConfigurationEditor = new LevelConfigurationEditor();
        this.questPrestigeOverlay = new QuestPrestigeOverlay();
        this.inventoryOverlay = new InventoryOverlay();
        this.openedPackOverlay = new OpenedPackOverlay();
        this.issuedPrizesOverlay = new IssuedPrizesOverlay();
        this.leaderboardsOverlay = new LeaderboardsOverlay();
        this.trophiesListOverlay = new TrophiesListOverlay();
        this.abilitySelectionOverlay = new AbilitySelectionOverlay();
        this.wavesTimelineOverlay = new WavesTimelineOverlay();
        this.ratingForm = new RatingForm();
        this.itemDescriptionDialog = new ItemDescriptionDialog();
        this.trophyViewOverlay = new TrophyViewOverlay();
        this.dailyQuestOverlay = new DailyQuestOverlay();
        this.difficultyModeOverlay = new DifficultyModeOverlay();
        this.notifications = new Notifications();
        this.backButton = new BackButton();
        this.forwardButton = new ForwardButton();
        this.screenTitle = new ScreenTitle();
        this.profileSummary = new ProfileSummary();
        this.loadingOverlay = new LoadingOverlay();
        this.resourcesAndMoney = new ResourcesAndMoney();
        this.mainMenuUiScene = new MainMenuUiScene();
        this.cameraTools = new CameraTools();
        if ((Config.isModdingMode() || Game.f8589i.progressManager.isDeveloperModeEnabled()) && Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            this.developerConsole = new DeveloperConsole();
        }
        Game.f8589i.progressManager.addListener(new ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.UiManager.3
            @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
            public void developerConsoleEnabled() {
                UiManager uiManager = UiManager.this;
                if (uiManager.developerConsole == null) {
                    uiManager.developerConsole = new DeveloperConsole();
                }
            }
        });
        setAsInputHandler();
        Game.f8589i.screenManager.addListener(this.f10227s);
        Game.f8589i.settingsManager.addListener(new SettingsManager.SettingsManagerListener() { // from class: com.prineside.tdi2.managers.UiManager.4
            @Override // com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener
            public void settingsChanged() {
            }

            @Override // com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener
            public void customValueChanged(SettingsManager.CustomValueType customValueType, double d) {
                if (customValueType == SettingsManager.CustomValueType.UI_SCALE) {
                    if (UiManager.this.f10221b != null) {
                        UiManager.this.f10221b.dispose();
                        UiManager.this.f10221b = null;
                    }
                    UiManager.this.inventoryOverlay.requireLayoutRebuild();
                }
            }
        });
    }

    public UiManager() {
        RarityType[] rarityTypeArr;
        MainUiLayer[] mainUiLayerArr = MainUiLayer.values;
        this.layers = new Array[mainUiLayerArr.length];
        this.mainLayerGroups = new Group[mainUiLayerArr.length];
        this.f10226r = false;
        this.itemCellRarityCoats = (Drawable[][]) java.lang.reflect.Array.newInstance(Drawable.class, 2, RarityType.values.length);
        this.itemCellShapes = new Drawable[2];
        this.f10227s = new _ScreenManagerListener();
        ScreenViewport screenViewport = new ScreenViewport();
        this.viewport = screenViewport;
        Stage stage = new Stage(screenViewport, Game.f8589i.renderingManager.batch) { // from class: com.prineside.tdi2.managers.UiManager.2
            @Override // com.badlogic.gdx.scenes.scene2d.Stage, com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
            public boolean touchDown(int i, int i2, int i3, int i4) {
                if (UiManager.this.f10226r) {
                    UiManager.this.stage.screenToStageCoordinates(UiManager.f10218u.set(i, i2));
                    Actor hit = hit(UiManager.f10218u.f5527x, UiManager.f10218u.f5528y, true);
                    boolean z = super.touchDown(i, i2, i3, i4);
                    if (hit != null) {
                        Logger.log("UiManager", String.valueOf(UiManager.this.m21451g(hit)));
                    }
                    return z;
                }
                return super.touchDown(i, i2, i3, i4);
            }
        };
        this.stage = stage;
        stage.getRoot().setTransform(false);
        Game.f8589i.addScreenResizeListener(this);
        for (MainUiLayer mainUiLayer : mainUiLayerArr) {
            Group group = new Group();
            group.setName("main_ui_layer_" + mainUiLayer.name());
            group.setTransform(false);
            group.setTouchable(Touchable.childrenOnly);
            this.mainLayerGroups[mainUiLayer.ordinal()] = group;
            this.stage.addActor(group);
            this.layers[mainUiLayer.ordinal()] = new Array<>(UiLayer.class);
        }
        this.f10224p = Gdx.input.getRotation();
        UiLayer addLayer = addLayer(MainUiLayer.SCREEN, 110, "Highlight actors");
        this.f10222d = addLayer;
        Group group2 = new Group();
        this.f10223k = group2;
        group2.setTransform(false);
        group2.setTouchable(Touchable.childrenOnly);
        addLayer.getTable().add((Table) group2).expand().fill();
        this.f10220a = addLayer(MainUiLayer.OVERLAY, 1000000, "UiManager safe area");
        ParticleEffect particleEffect = new ParticleEffect();
        particleEffect.load(Gdx.files.external("particles/item-cell.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
        particleEffect.setEmittersCleanUpBlendFunction(false);
        this.itemCellFlashParticles = new ParticleEffectPool(particleEffect, 4, 128);
        for (RarityType rarityType : RarityType.values) {
            this.itemCellRarityCoats[0][rarityType.ordinal()] = Game.f8589i.assetManager.getDrawable("item-cell-a-coat-" + rarityType.name());
            this.itemCellRarityCoats[1][rarityType.ordinal()] = Game.f8589i.assetManager.getDrawable("item-cell-b-coat-" + rarityType.name());
        }
        this.itemCellShapes[0] = Game.f8589i.assetManager.getDrawable("item-cell-a-shape");
        this.itemCellShapes[1] = Game.f8589i.assetManager.getDrawable("item-cell-b-shape");
        rebuildLayers();
    }

    /* renamed from: f */
    public final void m21452f(ObjectSet<String> objectSet, Actor actor) {
        if (actor.getName() != null) {
            if (!objectSet.contains(actor.getName())) {
                objectSet.add(actor.getName());
            } else {
                throw new RuntimeException("Duplicate actor name: " + actor.getName());
            }
        }
        if (actor instanceof Group) {
            SnapshotArray<Actor> children = ((Group) actor).getChildren();
            int i = children.size;
            for (int i2 = 0; i2 < i; i2++) {
                m21452f(objectSet, children.get(i2));
            }
        }
    }
}
