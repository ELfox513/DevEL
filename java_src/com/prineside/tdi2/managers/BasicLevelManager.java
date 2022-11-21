package com.prineside.tdi2.managers;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.BasicLevelStage;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Requirement;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.IntRectangle;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import java.io.StringWriter;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class BasicLevelManager extends Manager.ManagerAdapter {
    public static final int PREVIEW_HEIGHT = 230;
    public static final int PREVIEW_WIDTH = 310;

    /* renamed from: z */
    public static final Array<BasicLevel> f9675z = new Array<>(BasicLevel.class);

    /* renamed from: q */
    public boolean f9681q;

    /* renamed from: r */
    public boolean f9682r;

    /* renamed from: s */
    public int f9683s;

    /* renamed from: t */
    public OrthographicCamera f9684t;

    /* renamed from: u */
    public CameraController f9685u;

    /* renamed from: v */
    public FrameBuffer f9686v;

    /* renamed from: w */
    public SpriteCache f9687w;
    public final Array<BasicLevelStage> stagesOrdered = new Array<>(BasicLevelStage.class);

    /* renamed from: a */
    public final ObjectMap<String, BasicLevelStage> f9676a = new ObjectMap<>();
    public final Array<String> defaultLevelNames = new Array<>(String.class);
    public final Array<BasicLevel> levelsOrdered = new Array<>(BasicLevel.class);

    /* renamed from: b */
    public final ObjectMap<String, BasicLevel> f9677b = new ObjectMap<>();

    /* renamed from: d */
    public final ObjectSet<String> f9678d = new ObjectSet<>();

    /* renamed from: k */
    public final ObjectSet<String> f9679k = new ObjectSet<>();

    /* renamed from: p */
    public final ObjectMap<String, BasicLevelQuestConfig> f9680p = new ObjectMap<>();

    /* renamed from: x */
    public Array<MapPreview> f9688x = new Array<>(MapPreview.class);

    /* renamed from: y */
    public final DelayedRemovalArray<BasicLevelManagerListener> f9689y = new DelayedRemovalArray<>(false, 1);

    /* loaded from: classes2.dex */
    public interface BasicLevelManagerListener {
    }

    /* loaded from: classes2.dex */
    public class MapPreview {

        /* renamed from: a */
        public TextureRegion f9691a;

        /* renamed from: b */
        public Texture f9692b;

        /* renamed from: c */
        public Map f9693c;

        public TextureRegion getTextureRegion() {
            return this.f9691a;
        }

        public MapPreview(Map map) {
            this.f9693c = map;
            this.f9691a = new TextureRegion(Game.f8589i.assetManager.getTextureRegion("map-preview-placeholder"));
        }

        public void generate() {
            Miner miner;
            Building building;
            if (this.f9693c == null) {
                return;
            }
            if (BasicLevelManager.this.f9687w == null) {
                BasicLevelManager.this.f9687w = new SpriteCache(32767, false);
                BasicLevelManager.this.f9686v = new FrameBuffer(Pixmap.Format.RGBA8888, BasicLevelManager.PREVIEW_WIDTH, BasicLevelManager.PREVIEW_HEIGHT, false);
            }
            IntRectangle trimBounds = this.f9693c.getTrimBounds();
            int i = (trimBounds.maxX - trimBounds.minX) + 1;
            int i2 = (trimBounds.maxY - trimBounds.minY) + 1;
            BasicLevelManager.this.f9687w.clear();
            BasicLevelManager.this.f9687w.beginCache();
            int i3 = this.f9693c.tilesArray.size;
            for (int i4 = 0; i4 < i3; i4++) {
                Tile tile = this.f9693c.tilesArray.items[i4];
                MapRenderingSystem.DrawMode drawMode = MapRenderingSystem.DrawMode.DETAILED;
                tile.drawStatic(BasicLevelManager.this.f9687w, (tile.getX() - trimBounds.minX) * 128, (tile.getY() - trimBounds.minY) * 128, 128.0f, 128.0f, drawMode);
                tile.drawExtras(BasicLevelManager.this.f9687w, (tile.getX() - trimBounds.minX) * 128, (tile.getY() - trimBounds.minY) * 128, 128.0f, 128.0f, drawMode);
                if (tile.type == TileType.PLATFORM && (building = ((PlatformTile) tile).building) != null) {
                    building.drawBase(BasicLevelManager.this.f9687w, (tile.getX() - trimBounds.minX) * 128, (tile.getY() - trimBounds.minY) * 128, MapRenderingSystem.DrawMode.DEFAULT);
                }
            }
            for (int i5 = 0; i5 <= this.f9693c.heightTiles; i5++) {
                for (int i6 = 0; i6 <= this.f9693c.widthTiles; i6++) {
                    for (Gate.Side side : Gate.Side.values) {
                        Gate gate = this.f9693c.gates[i5][i6][side.ordinal()];
                        if (gate != null) {
                            try {
                                gate.drawStatic(BasicLevelManager.this.f9687w, i6 - trimBounds.minX, i5 - trimBounds.minY);
                            } catch (Exception e) {
                                Logger.error("BasicLevelManager", "stopped preview generation", e);
                            }
                        }
                    }
                }
            }
            int endCache = BasicLevelManager.this.f9687w.endCache();
            BasicLevelManager.this.f9686v.begin();
            Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
            GL20 gl20 = Gdx.f3119gl;
            Color color = Config.BACKGROUND_COLOR;
            gl20.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
            Gdx.f3119gl.glClear(16384);
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            BasicLevelManager.this.f9685u.setScreenSize(BasicLevelManager.PREVIEW_WIDTH, BasicLevelManager.PREVIEW_HEIGHT);
            BasicLevelManager.this.f9685u.setMapSize(i * 128, i2 * 128);
            BasicLevelManager.this.f9685u.setZoomBoundaries(0.001f, 1000.0f);
            BasicLevelManager.this.f9685u.fitMapToScreen(10.0f);
            BasicLevelManager.this.f9687w.setProjectionMatrix(BasicLevelManager.this.f9684t.combined);
            BasicLevelManager.this.f9687w.begin();
            BasicLevelManager.this.f9687w.draw(endCache);
            BasicLevelManager.this.f9687w.end();
            Game.f8589i.renderingManager.batch.begin();
            Game.f8589i.renderingManager.batch.setProjectionMatrix(BasicLevelManager.this.f9684t.combined);
            int i7 = this.f9693c.tilesArray.size;
            for (int i8 = 0; i8 < i7; i8++) {
                Tile tile2 = this.f9693c.tilesArray.items[i8];
                tile2.drawBatch(Game.f8589i.renderingManager.batch, 0.0f, (tile2.getX() - trimBounds.minX) * 128, (tile2.getY() - trimBounds.minY) * 128);
                tile2.postDrawBatch(Game.f8589i.renderingManager.batch, 0.0f, (tile2.getX() - trimBounds.minX) * 128, (tile2.getY() - trimBounds.minY) * 128);
                TileType tileType = tile2.type;
                if (tileType == TileType.PLATFORM) {
                    Building building2 = ((PlatformTile) tile2).building;
                    if (building2 != null && building2.buildingType == BuildingType.TOWER) {
                        ((Tower) building2).drawWeapon(Game.f8589i.renderingManager.batch, (tile2.getX() - trimBounds.minX) * 128, (tile2.getY() - trimBounds.minY) * 128, 128.0f, 0.0f);
                    }
                } else if (tileType == TileType.SOURCE && (miner = ((SourceTile) tile2).miner) != null) {
                    miner.drawBatch(Game.f8589i.renderingManager.batch, (tile2.getX() - trimBounds.minX) * 128, (tile2.getY() - trimBounds.minY) * 128, 128.0f, 0.0f, MapRenderingSystem.DrawMode.DEFAULT);
                }
            }
            for (int i9 = 0; i9 <= this.f9693c.heightTiles; i9++) {
                for (int i10 = 0; i10 <= this.f9693c.widthTiles; i10++) {
                    for (Gate.Side side2 : Gate.Side.values) {
                        Gate gate2 = this.f9693c.getGate(i10, i9, side2);
                        if (gate2 != null) {
                            gate2.drawBatch(Game.f8589i.renderingManager.batch, 0.0f, i10 - trimBounds.minX, i9 - trimBounds.minY);
                        }
                    }
                }
            }
            Game.f8589i.renderingManager.batch.end();
            Pixmap pixmap = null;
            this.f9693c = null;
            try {
                pixmap = Pixmap.createFromFrameBuffer(0, 0, BasicLevelManager.PREVIEW_WIDTH, BasicLevelManager.PREVIEW_HEIGHT);
            } catch (Exception unused) {
            }
            BasicLevelManager.this.f9686v.end();
            if (pixmap != null) {
                Texture texture = new Texture(pixmap) { // from class: com.prineside.tdi2.managers.BasicLevelManager.MapPreview.1

                    /* renamed from: v */
                    public boolean f9695v = false;

                    public void finalize() {
                        super.finalize();
                        if (this.f9695v) {
                            return;
                        }
                        try {
                            if (Game.f8589i.isInMainThread()) {
                                MapPreview.this.f9692b.dispose();
                                MapPreview.this.f9692b = null;
                            } else {
                                this.f9695v = true;
                                MapPreview.this.f9692b = null;
                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.BasicLevelManager.MapPreview.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            this.dispose();
                                        } catch (Exception e2) {
                                            Logger.error("BasicLevelManager", "failed to dispose texture in runnable", e2);
                                        }
                                    }
                                });
                            }
                            MapPreview.this.f9691a.setRegion(Game.f8589i.assetManager.getTextureRegion("map-preview-placeholder"));
                        } catch (Exception e2) {
                            Logger.error("BasicLevelManager", "failed to finalize map preview texture", e2);
                        }
                    }
                };
                this.f9692b = texture;
                Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
                texture.setFilter(textureFilter, textureFilter);
                this.f9691a.setU(0.002f);
                this.f9691a.setV(0.998f);
                this.f9691a.setU2(0.998f);
                this.f9691a.setV2(0.002f);
                this.f9691a.setTexture(this.f9692b);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<BasicLevelManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public BasicLevelManager read() {
            return Game.f8589i.basicLevelManager;
        }
    }

    public boolean canBePurchased(BasicLevel basicLevel) {
        int i = 0;
        while (true) {
            Array<Requirement> array = basicLevel.openRequirements;
            if (i < array.size) {
                if (!array.get(i).isSatisfied()) {
                    return false;
                }
                i++;
            } else if (basicLevel.priceInMoney > Game.f8589i.progressManager.getGreenPapers()) {
                return false;
            } else {
                int i2 = 0;
                while (true) {
                    int[] iArr = basicLevel.priceInResources;
                    if (i2 < iArr.length) {
                        if (iArr[i2] > Game.f8589i.progressManager.getResources(ResourceType.values[i2])) {
                            return false;
                        }
                        i2++;
                    } else {
                        return true;
                    }
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public int getGainedStars(BasicLevel basicLevel) {
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<BasicLevel.WaveQuest> array = basicLevel.waveQuests;
            if (i >= array.size) {
                break;
            }
            BasicLevel.WaveQuest waveQuest = array.get(i);
            if (waveQuest.isCompleted()) {
                int i3 = 0;
                while (true) {
                    Array<ItemStack> array2 = waveQuest.prizes;
                    if (i3 < array2.size) {
                        ItemStack itemStack = array2.get(i3);
                        if (itemStack.getItem() == Item.C1543D.STAR) {
                            i2 += itemStack.getCount();
                        }
                        i3++;
                    }
                }
            }
            i++;
        }
        int i4 = 0;
        while (true) {
            Array<BasicLevelQuestConfig> array3 = basicLevel.quests;
            if (i4 >= array3.size) {
                return i2;
            }
            BasicLevelQuestConfig basicLevelQuestConfig = array3.get(i4);
            if (basicLevelQuestConfig.isCompleted()) {
                int i5 = 0;
                while (true) {
                    Array<ItemStack> array4 = basicLevelQuestConfig.prizes;
                    if (i5 < array4.size) {
                        ItemStack itemStack2 = array4.get(i5);
                        if (itemStack2.getItem() == Item.C1543D.STAR) {
                            i2 += itemStack2.getCount();
                        }
                        i5++;
                    }
                }
            }
            i4++;
        }
    }

    public BasicLevel getLevel(String str) {
        return this.f9677b.get(str, null);
    }

    public BasicLevelStage getLevelStage(String str) {
        return getStage(getLevel(str).stageName);
    }

    public int getMaxStarsCount() {
        return this.f9683s;
    }

    public int getPrestigeCompletedQuests() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<BasicLevelStage> array = this.stagesOrdered;
            if (i < array.size) {
                BasicLevelStage basicLevelStage = array.items[i];
                if (basicLevelStage.regular) {
                    int i3 = 0;
                    while (true) {
                        Array<BasicLevel> array2 = basicLevelStage.levels;
                        if (i3 < array2.size) {
                            BasicLevel basicLevel = array2.items[i3];
                            int i4 = 0;
                            while (true) {
                                Array<BasicLevelQuestConfig> array3 = basicLevel.quests;
                                if (i4 < array3.size) {
                                    if (array3.items[i4].isCompleted()) {
                                        i2++;
                                    }
                                    i4++;
                                }
                            }
                            i3++;
                        }
                    }
                }
                i++;
            } else {
                return i2;
            }
        }
    }

    public int getPrestigeMaxCompletedQuests() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<BasicLevelStage> array = this.stagesOrdered;
            if (i < array.size) {
                BasicLevelStage basicLevelStage = array.items[i];
                if (basicLevelStage.regular) {
                    int i3 = 0;
                    while (true) {
                        Array<BasicLevel> array2 = basicLevelStage.levels;
                        if (i3 < array2.size) {
                            i2 += array2.items[i3].quests.size;
                            i3++;
                        }
                    }
                }
                i++;
            } else {
                return i2;
            }
        }
    }

    public BasicLevelQuestConfig getRegularQuestById(String str) {
        return this.f9680p.get(str, null);
    }

    public BasicLevelStage getStage(String str) {
        return this.f9676a.get(str);
    }

    public boolean isMastered(BasicLevel basicLevel) {
        int i = 0;
        while (true) {
            Array<BasicLevelQuestConfig> array = basicLevel.quests;
            if (i < array.size) {
                if (!array.get(i).isCompleted()) {
                    return false;
                }
                i++;
            } else {
                int i2 = 0;
                while (true) {
                    Array<BasicLevel.WaveQuest> array2 = basicLevel.waveQuests;
                    if (i2 < array2.size) {
                        if (!array2.get(i2).isCompleted()) {
                            return false;
                        }
                        i2++;
                    } else {
                        return true;
                    }
                }
            }
        }
    }

    public boolean isQuestCompleted(String str) {
        return this.f9678d.contains(str);
    }

    public boolean isQuestEverCompleted(String str) {
        return this.f9679k.contains(str);
    }

    public boolean isVisible(BasicLevelStage basicLevelStage) {
        if (Config.isModdingMode()) {
            return "-1".equals(basicLevelStage.name);
        }
        int i = 0;
        while (true) {
            Array<Requirement> array = basicLevelStage.showRequirements;
            if (i >= array.size) {
                return true;
            }
            if (!array.get(i).isSatisfied()) {
                return false;
            }
            i++;
        }
    }

    public boolean mapEditingAvailable() {
        return Game.f8589i.progressManager.isDeveloperModeEnabled();
    }

    public boolean playedBefore(BasicLevel basicLevel) {
        return basicLevel.gameStartsCount > 0;
    }

    public void registerLevel(BasicLevel basicLevel) {
        int i = 0;
        while (true) {
            Array<BasicLevelQuestConfig> array = basicLevel.quests;
            if (i >= array.size) {
                break;
            }
            BasicLevelQuestConfig basicLevelQuestConfig = array.items[i];
            this.f9680p.put(basicLevelQuestConfig.f8469id, basicLevelQuestConfig);
            i++;
        }
        unloadLevel(basicLevel.name);
        BasicLevelStage stage = getStage(basicLevel.stageName);
        if (stage != null) {
            if (Config.isModdingMode() && !"-1".equals(stage.name)) {
                Logger.log("BasicLevelManager", "skipping level " + basicLevel.name + " from stage " + stage.name + " due to the modding mode");
                return;
            }
            stage.levels.add(basicLevel);
            this.levelsOrdered.add(basicLevel);
            this.f9677b.put(basicLevel.name, basicLevel);
            return;
        }
        throw new IllegalStateException("Stage " + basicLevel.stageName + " not found");
    }

    public void removeListener(BasicLevelManagerListener basicLevelManagerListener) {
        this.f9689y.removeValue(basicLevelManagerListener, true);
    }

    public void save() {
        this.f9682r = false;
        if (Config.isHeadless()) {
            return;
        }
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        Json json = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        ObjectSet.ObjectSetIterator<String> it = this.f9678d.iterator();
        while (it.hasNext()) {
            json.writeValue(it.next());
        }
        json.writeArrayEnd();
        preferencesManager.set("basicLevelCompletedQuests", stringWriter.toString());
        Json json2 = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter2 = new StringWriter();
        json2.setWriter(stringWriter2);
        json2.writeArrayStart();
        ObjectSet.ObjectSetIterator<String> it2 = this.f9679k.iterator();
        while (it2.hasNext()) {
            json2.writeValue(it2.next());
        }
        json2.writeArrayEnd();
        preferencesManager.set("basicLevelEverCompletedQuests", stringWriter2.toString());
        Json json3 = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter3 = new StringWriter();
        json3.setWriter(stringWriter3);
        json3.writeArrayStart();
        int i = 0;
        while (true) {
            Array<BasicLevel> array = this.levelsOrdered;
            if (i < array.size) {
                BasicLevel basicLevel = array.get(i);
                json3.writeObjectStart();
                json3.writeValue("n", basicLevel.name);
                json3.writeValue("p", Boolean.valueOf(basicLevel.purchased));
                json3.writeValue("gsc", Integer.valueOf(basicLevel.gameStartsCount));
                json3.writeValue("mrw", Integer.valueOf(basicLevel.maxReachedWave));
                json3.writeValue("mpt", Integer.valueOf(basicLevel.maxPlayingTime));
                json3.writeValue("ms", Long.valueOf(basicLevel.maxScore));
                json3.writeObjectStart("sv");
                int i2 = 0;
                while (true) {
                    Array<BasicLevelQuestConfig> array2 = basicLevel.quests;
                    if (i2 < array2.size) {
                        BasicLevelQuestConfig basicLevelQuestConfig = array2.get(i2);
                        if (!basicLevelQuestConfig.isCompleted() && basicLevelQuestConfig.savedValue != 0.0d) {
                            json3.writeValue(basicLevelQuestConfig.getId(), Double.valueOf(basicLevelQuestConfig.savedValue));
                        }
                        i2++;
                    }
                }
                json3.writeObjectEnd();
                json3.writeObjectEnd();
                i++;
            } else {
                json3.writeArrayEnd();
                preferencesManager.set("basicLevels", stringWriter3.toString());
                preferencesManager.flush();
                return;
            }
        }
    }

    public void setQuestCompleted(String str, boolean z) {
        if (z) {
            if (!this.f9678d.contains(str)) {
                this.f9678d.add(str);
                this.f9682r = true;
                if (!this.f9679k.contains(str)) {
                    this.f9679k.add(str);
                }
                Game.f8589i.actionResolver.logCustomEvent("basic_level_quest_completed", new String[]{"id", str});
                Game.f8589i.progressManager.checkSpecialTrophiesGiven();
            }
        } else if (this.f9678d.contains(str)) {
            Logger.log("BasicLevelManager", "cleared completed quest: " + str);
            this.f9678d.remove(str);
            this.f9682r = true;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        int i = 0;
        while (true) {
            Array<BasicLevel> array = this.levelsOrdered;
            if (i < array.size) {
                BasicLevel basicLevel = array.get(i);
                try {
                    basicLevel.getPreview();
                    i++;
                } catch (Exception e) {
                    Logger.error("BasicLevelManager", "Test: failed BasicLevel#getPreview() for level " + basicLevel.name);
                    throw e;
                }
            } else {
                return;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class QuestsPrestigeMilestone {
        public int percentage;
        public int tokensCount;

        public QuestsPrestigeMilestone(int i, int i2) {
            this.percentage = i;
            this.tokensCount = i2;
        }
    }

    /* renamed from: i */
    public static /* synthetic */ void m21648i() {
        ResearchManager researchManager = Game.f8589i.researchManager;
        if (researchManager != null) {
            researchManager.updateAndValidateStarBranch();
        }
    }

    public void addListener(BasicLevelManagerListener basicLevelManagerListener) {
        if (!this.f9689y.contains(basicLevelManagerListener, true)) {
            this.f9689y.add(basicLevelManagerListener);
        }
    }

    @Deprecated
    public String generateLevelsJson() {
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        json.writeArrayStart("stages");
        int i = 0;
        while (true) {
            Array<BasicLevelStage> array = this.stagesOrdered;
            if (i < array.size) {
                BasicLevelStage basicLevelStage = array.items[i];
                i++;
            } else {
                json.writeArrayEnd();
                json.writeArrayStart("levels");
                json.writeArrayEnd();
                json.writeObjectEnd();
                return stringWriter.toString();
            }
        }
    }

    public MapPreview generatePreview(Map map) {
        MapPreview mapPreview = new MapPreview(map);
        this.f9688x.add(mapPreview);
        return mapPreview;
    }

    public Array<BasicLevel> getMasteredLevels() {
        BasicLevelStage stage = getStage("0");
        f9675z.clear();
        int i = 0;
        while (true) {
            Array<BasicLevel> array = this.levelsOrdered;
            if (i < array.size) {
                BasicLevel basicLevel = array.items[i];
                if (getStage(basicLevel.stageName) != stage && isMastered(basicLevel)) {
                    f9675z.add(basicLevel);
                }
                i++;
            } else {
                return f9675z;
            }
        }
    }

    public int getMaxStars(BasicLevelStage basicLevelStage, boolean z) {
        if (z) {
            int i = 0;
            int i2 = 0;
            while (true) {
                Array<BasicLevel> array = basicLevelStage.levels;
                if (i < array.size) {
                    if (Game.f8589i.basicLevelManager.isVisible(array.get(i))) {
                        i2 += 3;
                    }
                    i++;
                } else {
                    return i2;
                }
            }
        } else {
            return basicLevelStage.levels.size * 3;
        }
    }

    public int getQuestSkipPrice(BasicLevelQuestConfig basicLevelQuestConfig) {
        int i = 0;
        if (basicLevelQuestConfig.scripted || basicLevelQuestConfig.isCompleted() || !getStage(basicLevelQuestConfig.level.stageName).regular) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            Array<ItemStack> array = basicLevelQuestConfig.prizes;
            if (i2 < array.size) {
                if (array.items[i2].getItem() == Item.C1543D.STAR) {
                    return 0;
                }
                i2++;
            } else {
                int i3 = 0;
                while (true) {
                    Array<BasicLevelQuestConfig> array2 = basicLevelQuestConfig.level.quests;
                    if (i < array2.size) {
                        if (array2.items[i] == basicLevelQuestConfig) {
                            break;
                        }
                        int i4 = i;
                        i++;
                        i3 = i4;
                    } else {
                        i = i3;
                        break;
                    }
                }
                return i + 10;
            }
        }
    }

    public QuestsPrestigeMilestone[] getQuestsPrestigeMilestones() {
        float percentValueAsMultiplier = (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.PRESTIGE_DUST_DROP_RATE);
        return new QuestsPrestigeMilestone[]{new QuestsPrestigeMilestone(25, MathUtils.round(100.0f * percentValueAsMultiplier)), new QuestsPrestigeMilestone(50, MathUtils.round(250.0f * percentValueAsMultiplier)), new QuestsPrestigeMilestone(75, MathUtils.round(600.0f * percentValueAsMultiplier)), new QuestsPrestigeMilestone(100, MathUtils.round(percentValueAsMultiplier * 1000.0f))};
    }

    public boolean isOpened(BasicLevel basicLevel) {
        if (basicLevel.purchased) {
            return true;
        }
        if (basicLevel.priceInMoney > 0) {
            return false;
        }
        int i = 0;
        while (true) {
            int[] iArr = basicLevel.priceInResources;
            if (i < iArr.length) {
                if (iArr[i] > 0) {
                    return false;
                }
                i++;
            } else {
                int i2 = 0;
                while (true) {
                    Array<Requirement> array = basicLevel.openRequirements;
                    if (i2 >= array.size) {
                        return true;
                    }
                    if (!array.get(i2).isSatisfied()) {
                        return false;
                    }
                    i2++;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0335, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0336, code lost:
        r4 = r2.waveQuests;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x033a, code lost:
        if (r3 >= r4.size) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x033c, code lost:
        r4 = r4.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0348, code lost:
        if (r0.contains(r4.f8465id) != false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x034a, code lost:
        r0.add(r4.f8465id);
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0368, code lost:
        throw new java.lang.RuntimeException("Duplicate quest id " + r4.f8465id);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void reload() {
        /*
            Method dump skipped, instructions count: 1022
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.BasicLevelManager.reload():void");
    }

    public void setPurchased(BasicLevel basicLevel) {
        if (!basicLevel.purchased) {
            basicLevel.purchased = true;
            save();
            Game.f8589i.actionResolver.logCustomEvent("basic_level_purchased", new String[]{"name", basicLevel.name});
        }
        Game.f8589i.researchManager.checkResearchesStatus(true);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.BasicLevelManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                BasicLevelManager.this.reload();
            }
        });
        this.f9681q = true;
    }

    public void unloadLevel(String str) {
        if (this.f9677b.containsKey(str)) {
            int i = 0;
            int i2 = 0;
            while (true) {
                Array<BasicLevelStage> array = this.stagesOrdered;
                if (i2 >= array.size) {
                    break;
                }
                BasicLevelStage basicLevelStage = array.get(i2);
                int i3 = 0;
                while (true) {
                    Array<BasicLevel> array2 = basicLevelStage.levels;
                    if (i3 >= array2.size) {
                        break;
                    } else if (array2.get(i3).name.equals(str)) {
                        basicLevelStage.levels.removeIndex(i3);
                        break;
                    } else {
                        i3++;
                    }
                }
                i2++;
            }
            while (true) {
                Array<BasicLevel> array3 = this.levelsOrdered;
                if (i >= array3.size) {
                    break;
                } else if (array3.get(i).name.equals(str)) {
                    this.levelsOrdered.removeIndex(i);
                    break;
                } else {
                    i++;
                }
            }
            this.f9677b.remove(str);
        }
    }

    public BasicLevelManager() {
        if (!Config.isHeadless()) {
            this.f9684t = new OrthographicCamera(310.0f, 230.0f);
            this.f9685u = new CameraController(this.f9684t, 1, 1);
        }
        reload();
    }

    public BasicLevel loadAndRegisterLevelFromJson(JsonValue jsonValue) {
        BasicLevel fromJson = BasicLevel.fromJson(jsonValue);
        registerLevel(fromJson);
        return fromJson;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        if (!Config.isHeadless() && this.f9681q) {
            if (this.f9682r) {
                save();
            }
            Array<MapPreview> array = this.f9688x;
            if (array.size != 0) {
                array.removeIndex(0).generate();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b2, code lost:
        if (r7.isCompleted() == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b4, code lost:
        r7.savedValue = 0.0d;
        r7.setCompleted(false);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resetQuestsForPrestige() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.BasicLevelManager.resetQuestsForPrestige():void");
    }

    public void setMap(BasicLevel basicLevel, Map map) {
        if (mapEditingAvailable()) {
            try {
                Json json = new Json(JsonWriter.OutputType.json);
                StringWriter stringWriter = new StringWriter();
                json.setWriter(stringWriter);
                json.writeObjectStart();
                map.toJson(json);
                json.writeObjectEnd();
                Files files = Gdx.files;
                files.local("levels/maps/" + basicLevel.name + ".json").writeString(stringWriter.toString(), false, "UTF-8");
                basicLevel.setMap(map);
                Logger.log("BasicLevelManager", "map saved");
                return;
            } catch (Exception e) {
                Logger.error("BasicLevelManager", "unable to write map", e);
                return;
            }
        }
        Logger.error("BasicLevelManager", "unable to set basic level map on this OS or not in developer mode");
    }

    public void skipQuest(BasicLevelQuestConfig basicLevelQuestConfig) {
        int questSkipPrice = getQuestSkipPrice(basicLevelQuestConfig);
        if (Game.f8589i.progressManager.removeItems(Item.C1543D.ACCELERATOR, questSkipPrice)) {
            Game.f8589i.actionResolver.logCurrencySpent("quest_skip", "accelerator", questSkipPrice);
            basicLevelQuestConfig.setCompleted(true);
            if (Game.f8589i.dailyQuestManager.getDailyLootCurrentQuest().equals(basicLevelQuestConfig.f8469id)) {
                Game.f8589i.dailyQuestManager.setDailyLootQuestCompleted();
                return;
            }
            return;
        }
        Game game = Game.f8589i;
        game.uiManager.notifications.add(game.localeManager.i18n.get("not_enough_accelerators"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
    }

    public boolean isVisible(BasicLevel basicLevel) {
        if (!isVisible(getStage(basicLevel.stageName))) {
            return false;
        }
        int i = 0;
        while (true) {
            Array<Requirement> array = basicLevel.showRequirements;
            if (i >= array.size) {
                return true;
            }
            if (!array.get(i).isSatisfied()) {
                return false;
            }
            i++;
        }
    }

    public int getGainedStars(BasicLevelStage basicLevelStage) {
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<BasicLevel> array = basicLevelStage.levels;
            if (i >= array.size) {
                return i2;
            }
            BasicLevel[] basicLevelArr = array.items;
            if (!basicLevelArr[i].dailyQuest) {
                i2 += getGainedStars(basicLevelArr[i]);
            }
            i++;
        }
    }

    public int getGainedStars() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<BasicLevelStage> array = this.stagesOrdered;
            if (i >= array.size) {
                return i2;
            }
            i2 += getGainedStars(array.items[i]);
            i++;
        }
    }
}
