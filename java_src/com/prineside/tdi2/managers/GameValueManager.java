package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Research;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.enums.TrophyType;
import com.prineside.tdi2.items.GameValueGlobalItem;
import com.prineside.tdi2.items.GameValueLevelItem;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.ResearchManager;
import com.prineside.tdi2.managers.TrophyManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class GameValueManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public boolean f9794a;

    /* renamed from: d */
    public final GameValueStockConfig[] f9796d;
    public static final Color ICON_BACKGROUND_COLOR = new Color(252645375);

    /* renamed from: t */
    public static final StringBuilder f9793t = new StringBuilder();
    public static final Pool<GameValueEffect> gameValueEffectPool = new Pool<GameValueEffect>() { // from class: com.prineside.tdi2.managers.GameValueManager.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public GameValueEffect newObject() {
            return new GameValueEffect();
        }
    };

    /* renamed from: b */
    public boolean f9795b = false;

    /* renamed from: k */
    public boolean f9797k = true;

    /* renamed from: p */
    public final GameValuesSnapshot f9798p = new GameValuesSnapshot();

    /* renamed from: q */
    public final DelayedRemovalArray<GameValueManagerListener> f9799q = new DelayedRemovalArray<>(false, 1);

    /* renamed from: r */
    public final _ResearchManagerListener f9800r = new _ResearchManagerListener();

    /* renamed from: s */
    public final _ProgressManagerListener f9801s = new _ProgressManagerListener();

    /* renamed from: com.prineside.tdi2.managers.GameValueManager$3 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C17853 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9803a;

        static {
            int[] iArr = new int[ValueUnits.values().length];
            f9803a = iArr;
            try {
                iArr[ValueUnits.SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9803a[ValueUnits.PERCENTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9803a[ValueUnits.UNITS_PER_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9803a[ValueUnits.PERCENTS_PER_SECOND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class GameValueEffect implements KryoSerializable {
        public double delta;
        @NAGS
        public String questId;
        @NAGS
        public ResearchType researchType;
        public Source source;
        @NAGS
        public TrophyType trophyType;
        public GameValueType type;

        @REGS
        /* loaded from: classes2.dex */
        public enum Source {
            STOCK,
            LEVEL_STOCK,
            RESEARCH,
            TROPHY,
            LEVEL_QUEST,
            LEVEL_WAVE_QUEST,
            BASE_TILE,
            CORE_TILE,
            BOSS_TILE,
            GV_TILE,
            CUSTOM;
            
            public static final Source[] values = values();
        }

        public GameValueEffect() {
        }

        public GameValueEffect(GameValueType gameValueType, double d) {
            this.type = gameValueType;
            this.delta = d;
        }

        public void from(GameValueEffect gameValueEffect) {
            this.type = gameValueEffect.type;
            this.delta = gameValueEffect.delta;
            this.source = gameValueEffect.source;
            this.researchType = gameValueEffect.researchType;
            this.trophyType = gameValueEffect.trophyType;
            this.questId = gameValueEffect.questId;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.type = (GameValueType) kryo.readObjectOrNull(input, GameValueType.class);
            this.delta = input.readDouble();
            this.source = (Source) kryo.readObjectOrNull(input, Source.class);
            this.researchType = (ResearchType) kryo.readObjectOrNull(input, ResearchType.class);
            this.trophyType = (TrophyType) kryo.readObjectOrNull(input, TrophyType.class);
            this.questId = (String) kryo.readObjectOrNull(input, String.class);
        }

        public boolean sameAs(GameValueEffect gameValueEffect) {
            if (gameValueEffect.type != this.type || gameValueEffect.delta != this.delta || gameValueEffect.source != this.source || gameValueEffect.researchType != this.researchType || gameValueEffect.trophyType != this.trophyType) {
                return false;
            }
            String str = gameValueEffect.questId;
            if (str != null && !str.equals(this.questId)) {
                return false;
            }
            return true;
        }

        public void setup(GameValueType gameValueType, double d, Source source) {
            this.type = gameValueType;
            this.delta = d;
            this.source = source;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(this.type.name());
            sb.append(" ");
            if (this.delta > 0.0d) {
                str = "+";
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(this.delta);
            String sb2 = sb.toString();
            if (this.source != null) {
                sb2 = sb2 + " (source: " + this.source.name() + ")";
            }
            if (this.researchType != null) {
                sb2 = sb2 + " research: " + this.researchType.name();
            }
            if (this.trophyType != null) {
                sb2 = sb2 + " trophy: " + this.trophyType.name();
            }
            if (this.questId != null) {
                return sb2 + " quest: " + this.questId;
            }
            return sb2;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.type, GameValueType.class);
            output.writeDouble(this.delta);
            kryo.writeObjectOrNull(output, this.source, Source.class);
            kryo.writeObjectOrNull(output, this.researchType, ResearchType.class);
            kryo.writeObjectOrNull(output, this.trophyType, TrophyType.class);
            kryo.writeObjectOrNull(output, this.questId, String.class);
        }

        public GameValueEffect(GameValueEffect gameValueEffect) {
            from(gameValueEffect);
        }
    }

    /* loaded from: classes2.dex */
    public interface GameValueManagerListener {
        void gameValuesRecalculated();
    }

    /* loaded from: classes2.dex */
    public static class GameValueStockConfig {

        /* renamed from: a */
        public Array<TextureRegionConfig> f9805a;
        public String iconString;
        public double stockValue;
        public String titleAlias;
        public GameValueType type;
        public ValueUnits units;

        public Array<TextureRegionConfig> getIcon() {
            if (this.f9805a == null) {
                this.f9805a = new Array<>(true, 1, TextureRegionConfig.class);
                if (this.iconString.startsWith("@tower-ability")) {
                    String[] split = this.iconString.split(":");
                    Tower.Factory<? extends Tower> factory = Game.f8589i.towerManager.getFactory(TowerType.valueOf(split[1]));
                    int parseInt = Integer.parseInt(split[2]);
                    String str = split[3];
                    Array<TextureRegionConfig> shadowTextures = factory.getShadowTextures();
                    for (int i = 0; i < shadowTextures.size; i++) {
                        TextureRegionConfig textureRegionConfig = new TextureRegionConfig(shadowTextures.items[i]);
                        textureRegionConfig.color.set(0.0f, 0.0f, 0.0f, 0.28f);
                        this.f9805a.add(textureRegionConfig);
                    }
                    Array<TextureRegionConfig> baseTextures = factory.getBaseTextures();
                    for (int i2 = 0; i2 < baseTextures.size; i2++) {
                        TextureRegionConfig textureRegionConfig2 = new TextureRegionConfig(baseTextures.items[i2]);
                        Color color = textureRegionConfig2.color;
                        color.f3892r *= 0.56f;
                        color.f3891g *= 0.56f;
                        color.f3890b *= 0.56f;
                        this.f9805a.add(textureRegionConfig2);
                    }
                    this.f9805a.addAll(factory.getAbilityTextures(parseInt));
                    Array<TextureRegionConfig> array = this.f9805a;
                    ResourcePack.AtlasTextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion(str);
                    Color color2 = GameValueManager.ICON_BACKGROUND_COLOR;
                    array.add(new TextureRegionConfig(textureRegion, -0.02f, 0.01f, 0.22f, 0.22f, 0.44f, 0.44f, color2));
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(str), 0.01f, -0.02f, 0.22f, 0.22f, 0.44f, 0.44f, color2));
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(str), -0.02f, -0.02f, 0.22f, 0.22f, 0.48f, 0.48f, color2));
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(str), -0.02f, -0.02f, 0.22f, 0.22f, 0.44f, 0.44f));
                    if (split.length > 4) {
                        this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(split[4]), -0.02f, 0.23f, 0.22f, 0.22f, 0.44f, 0.44f));
                    }
                } else if (this.iconString.contains(":")) {
                    String[] split2 = this.iconString.split(":");
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(split2[0]), 0.0f, 0.0f, 0.5f, 0.5f, 1.0f, 1.0f));
                    Array<TextureRegionConfig> array2 = this.f9805a;
                    ResourcePack.AtlasTextureRegion textureRegion2 = Game.f8589i.assetManager.getTextureRegion(split2[1]);
                    Color color3 = GameValueManager.ICON_BACKGROUND_COLOR;
                    array2.add(new TextureRegionConfig(textureRegion2, -0.02f, 0.01f, 0.22f, 0.22f, 0.44f, 0.44f, color3));
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(split2[1]), 0.01f, -0.02f, 0.22f, 0.22f, 0.44f, 0.44f, color3));
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(split2[1]), -0.02f, -0.02f, 0.22f, 0.22f, 0.48f, 0.48f, color3));
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(split2[1]), -0.02f, -0.02f, 0.22f, 0.22f, 0.44f, 0.44f));
                } else {
                    this.f9805a.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(this.iconString), 0.0f, 0.0f, 0.5f, 0.5f, 1.0f, 1.0f));
                }
            }
            return this.f9805a;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class GameValuesSnapshot implements GameValueProvider, KryoSerializable {
        public int hash;
        public double[] values = new double[GameValueType.values.length];
        public DelayedRemovalArray<GameValueEffect> effects = new DelayedRemovalArray<>(GameValueEffect.class);

        @Override // com.prineside.tdi2.GameValueProvider
        public boolean getBooleanValue(GameValueType gameValueType) {
            return this.values[gameValueType.ordinal()] != 0.0d;
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public float getFloatValue(GameValueType gameValueType) {
            return (float) this.values[gameValueType.ordinal()];
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public int getIntValue(GameValueType gameValueType) {
            return (int) getValue(gameValueType);
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public double getPercentValueAsMultiplier(GameValueType gameValueType) {
            return this.values[gameValueType.ordinal()] * 0.01d;
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public double getValue(GameValueType gameValueType) {
            return this.values[gameValueType.ordinal()];
        }

        public Array<GvSnapDiff> getDifferences(GameValuesSnapshot gameValuesSnapshot) {
            boolean z;
            Array<GvSnapDiff> array = new Array<>(GvSnapDiff.class);
            int i = gameValuesSnapshot.hash;
            int i2 = this.hash;
            if (i != i2) {
                array.add(new GvSnapDiff(GvSnapDiff.Type.GLOBAL_HASH, i2, i));
            }
            int i3 = 0;
            while (true) {
                double[] dArr = this.values;
                if (i3 >= dArr.length) {
                    break;
                }
                double d = dArr[i3];
                double d2 = gameValuesSnapshot.values[i3];
                if (d != d2) {
                    array.add(new GvSnapDiff(GvSnapDiff.Type.GV_RESULT, d, d2));
                }
                i3++;
            }
            int i4 = gameValuesSnapshot.effects.size;
            int i5 = this.effects.size;
            if (i4 != i5) {
                array.add(new GvSnapDiff(GvSnapDiff.Type.GV_COUNT, i5, i4));
            }
            Array array2 = new Array(false, this.effects.size, GameValueEffect.class);
            int i6 = 0;
            while (true) {
                DelayedRemovalArray<GameValueEffect> delayedRemovalArray = this.effects;
                if (i6 >= delayedRemovalArray.size) {
                    break;
                }
                array2.add(new GameValueEffect(delayedRemovalArray.items[i6]));
                i6++;
            }
            int i7 = 0;
            while (true) {
                DelayedRemovalArray<GameValueEffect> delayedRemovalArray2 = gameValuesSnapshot.effects;
                if (i7 >= delayedRemovalArray2.size) {
                    break;
                }
                GameValueEffect gameValueEffect = delayedRemovalArray2.items[i7];
                int i8 = 0;
                while (true) {
                    if (i8 < array2.size) {
                        if (((GameValueEffect[]) array2.items)[i8].sameAs(gameValueEffect)) {
                            array2.removeIndex(i8);
                            z = true;
                            break;
                        }
                        i8++;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    array.add(new GvSnapDiff(GvSnapDiff.Type.GV_NOT_IN_ORIG, gameValueEffect));
                }
                i7++;
            }
            for (int i9 = 0; i9 < array2.size; i9++) {
                array.add(new GvSnapDiff(GvSnapDiff.Type.GV_NOT_IN_TO, ((GameValueEffect[]) array2.items)[i9]));
            }
            return array;
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public float getFloatValue(GameValueType gameValueType, GameValueType gameValueType2) {
            return (float) (this.values[gameValueType.ordinal()] + this.values[gameValueType2.ordinal()]);
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public int getIntValue(GameValueType gameValueType, GameValueType gameValueType2) {
            return (int) (this.values[gameValueType.ordinal()] + this.values[gameValueType2.ordinal()]);
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public double getPercentValueAsMultiplier(GameValueType gameValueType, GameValueType gameValueType2) {
            return (this.values[gameValueType.ordinal()] + this.values[gameValueType2.ordinal()]) * 0.01d;
        }

        public void printDifferences(String str, String str2, GameValuesSnapshot gameValuesSnapshot, StringBuilder stringBuilder) {
            boolean z;
            if (gameValuesSnapshot.hash != this.hash) {
                stringBuilder.append("hash (").append(str2).append(") ").append(String.valueOf(gameValuesSnapshot.hash)).append(" != (").append(str).append(") ").append(String.valueOf(this.hash)).append("\n");
            }
            int i = 0;
            while (true) {
                double[] dArr = this.values;
                if (i >= dArr.length) {
                    break;
                }
                if (dArr[i] != gameValuesSnapshot.values[i]) {
                    stringBuilder.append("value ").append(GameValueType.values[i].name()).append(" ").append(String.valueOf(gameValuesSnapshot.values[i])).append(" != ").append(String.valueOf(this.values[i])).append("\n");
                }
                i++;
            }
            if (gameValuesSnapshot.effects.size != this.effects.size) {
                stringBuilder.append("effects count ").append(String.valueOf(gameValuesSnapshot.effects.size)).append(" != ").append(String.valueOf(this.effects.size)).append("\n");
            }
            Array array = new Array(false, this.effects.size, GameValueEffect.class);
            int i2 = 0;
            while (true) {
                DelayedRemovalArray<GameValueEffect> delayedRemovalArray = this.effects;
                if (i2 >= delayedRemovalArray.size) {
                    break;
                }
                array.add(new GameValueEffect(delayedRemovalArray.items[i2]));
                i2++;
            }
            int i3 = 0;
            while (true) {
                DelayedRemovalArray<GameValueEffect> delayedRemovalArray2 = gameValuesSnapshot.effects;
                if (i3 >= delayedRemovalArray2.size) {
                    break;
                }
                GameValueEffect gameValueEffect = delayedRemovalArray2.items[i3];
                int i4 = 0;
                while (true) {
                    if (i4 < array.size) {
                        if (((GameValueEffect[]) array.items)[i4].sameAs(gameValueEffect)) {
                            array.removeIndex(i4);
                            z = true;
                            break;
                        }
                        i4++;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    stringBuilder.append("not found effect in ").append(str).append(": ").append(gameValueEffect.toString()).append("\n");
                }
                i3++;
            }
            for (int i5 = 0; i5 < array.size; i5++) {
                stringBuilder.append("not found effect in ").append(str2).append(": ").append(((GameValueEffect[]) array.items)[i5].toString()).append("\n");
            }
        }

        public String toString() {
            GameValueType[] gameValueTypeArr;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("GameValuesSnapshot: {\n");
            for (GameValueType gameValueType : GameValueType.values) {
                stringBuilder.append("  ").append(gameValueType.name()).append(" = ").append(this.values[gameValueType.ordinal()]).append("\n");
            }
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeInt(this.hash);
            kryo.writeObject(output, this.values);
            kryo.writeObject(output, this.effects);
        }

        @Override // com.prineside.tdi2.GameValueProvider
        public double getPercentValueAsMultiplier(GameValueType[] gameValueTypeArr) {
            double d = 0.0d;
            for (GameValueType gameValueType : gameValueTypeArr) {
                d += this.values[gameValueType.ordinal()];
            }
            return d * 0.01d;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.hash = input.readInt();
            this.values = (double[]) kryo.readObject(input, double[].class);
            this.effects = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<GameValueManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public GameValueManager read() {
            return Game.f8589i.gameValueManager;
        }
    }

    /* loaded from: classes2.dex */
    public enum ValueUnits {
        UNITS,
        SECONDS,
        UNITS_PER_SECOND,
        PERCENTS_PER_SECOND,
        PERCENTS,
        BOOLEAN
    }

    /* loaded from: classes2.dex */
    public class _ResearchManagerListener extends ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter {
        public _ResearchManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter, com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
        public void researchesUpdated() {
            GameValueManager.this.requireRecalculation();
        }
    }

    public String getCheatingReason(Array<GvSnapDiff> array) {
        for (int i = 0; i < array.size; i++) {
            GvSnapDiff gvSnapDiff = array.items[i];
            if (gvSnapDiff.type == GvSnapDiff.Type.GV_NOT_IN_ORIG) {
                GameValueEffect gameValueEffect = gvSnapDiff.effect;
                if (gameValueEffect.source == GameValueEffect.Source.STOCK) {
                    GameValueStockConfig gameValueStockConfig = this.f9796d[gameValueEffect.type.ordinal()];
                    return gameValueStockConfig.type.name() + " " + gvSnapDiff.effect.delta + " != stock " + gameValueStockConfig.stockValue;
                }
            }
        }
        return null;
    }

    public void requireRecalculation() {
        this.f9797k = true;
    }

    /* loaded from: classes2.dex */
    public class _ProgressManagerListener extends ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter {
        public _ProgressManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
        public void itemsChanged(Item item, int i, int i2) {
            if (item.getType() == ItemType.TROPHY) {
                GameValueManager.this.requireRecalculation();
            }
        }
    }

    /* renamed from: a */
    public final void m21601a() {
        if (!this.f9795b) {
            m21598d();
        }
    }

    public void addListener(GameValueManagerListener gameValueManagerListener) {
        if (gameValueManagerListener != null) {
            if (!this.f9799q.contains(gameValueManagerListener, true)) {
                this.f9799q.add(gameValueManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: b */
    public final void m21600b() {
        if (this.f9797k) {
            m21601a();
            m21599c();
        }
    }

    /* renamed from: c */
    public final void m21599c() {
        if (this.f9794a) {
            m21601a();
            createSnapshot(this.f9798p, Game.f8589i.progressManager.getDifficultyMode(), true, null, false, false);
            this.f9797k = false;
            this.f9799q.begin();
            int i = this.f9799q.size;
            for (int i2 = 0; i2 < i; i2++) {
                this.f9799q.get(i2).gameValuesRecalculated();
            }
            this.f9799q.end();
            return;
        }
        throw new IllegalStateException("Manager is not set up yet");
    }

    public GameValuesSnapshot createSnapshot(GameValuesSnapshot gameValuesSnapshot, DifficultyMode difficultyMode, boolean z, BasicLevel basicLevel, boolean z2, boolean z3) {
        DelayedRemovalArray<GameValueEffect> delayedRemovalArray;
        DifficultyMode difficultyMode2;
        GameValueStockConfig[] gameValueStockConfigArr;
        TrophyManager.TrophyConfig[] configs;
        int i;
        int i2;
        GameValuesSnapshot gameValuesSnapshot2 = gameValuesSnapshot;
        m21601a();
        if (gameValuesSnapshot2 == null) {
            gameValuesSnapshot2 = new GameValuesSnapshot();
        } else {
            int i3 = 0;
            while (true) {
                delayedRemovalArray = gameValuesSnapshot2.effects;
                if (i3 >= delayedRemovalArray.size) {
                    break;
                }
                gameValueEffectPool.free(delayedRemovalArray.items[i3]);
                i3++;
            }
            delayedRemovalArray.clear();
        }
        if (basicLevel == null || (difficultyMode2 = basicLevel.forcedDifficulty) == null) {
            difficultyMode2 = difficultyMode;
        }
        boolean isEndless = DifficultyMode.isEndless(difficultyMode2);
        for (GameValueStockConfig gameValueStockConfig : this.f9796d) {
            gameValuesSnapshot2.values[gameValueStockConfig.type.ordinal()] = gameValueStockConfig.stockValue;
            if (z) {
                GameValueEffect obtain = gameValueEffectPool.obtain();
                obtain.delta = gameValueStockConfig.stockValue;
                obtain.type = gameValueStockConfig.type;
                obtain.source = GameValueEffect.Source.STOCK;
                gameValuesSnapshot2.effects.add(obtain);
            }
        }
        Array<Research> instances = Game.f8589i.researchManager.getInstances();
        if (z2) {
            if (z3) {
                int i4 = 0;
                while (i4 < instances.size) {
                    Research research = instances.items[i4];
                    if ((isEndless || !research.endlessOnly) && (i2 = research.installedLevel) != 0 && research.cantBeIgnoredOnUserMaps) {
                        if (!isEndless) {
                            Research.ResearchLevel[] researchLevelArr = research.levels;
                            if (i2 > researchLevelArr.length) {
                                i2 = researchLevelArr.length;
                            }
                        }
                        Array<GameValueEffect> effects = research.getEffects(i2);
                        int i5 = 0;
                        while (i5 < effects.size) {
                            GameValueEffect gameValueEffect = effects.items[i5];
                            double[] dArr = gameValuesSnapshot2.values;
                            int ordinal = gameValueEffect.type.ordinal();
                            boolean z4 = isEndless;
                            dArr[ordinal] = dArr[ordinal] + gameValueEffect.delta;
                            if (z) {
                                GameValueEffect obtain2 = gameValueEffectPool.obtain();
                                obtain2.setup(gameValueEffect.type, gameValueEffect.delta, GameValueEffect.Source.RESEARCH);
                                obtain2.researchType = research.type;
                                gameValuesSnapshot2.effects.add(obtain2);
                            }
                            i5++;
                            isEndless = z4;
                        }
                    }
                    i4++;
                    isEndless = isEndless;
                }
            }
        } else if (Game.f8589i.researchManager.isSetUp()) {
            for (int i6 = 0; i6 < instances.size; i6++) {
                Research research2 = instances.items[i6];
                if ((isEndless || !research2.endlessOnly) && (i = research2.installedLevel) != 0) {
                    if (!isEndless) {
                        Research.ResearchLevel[] researchLevelArr2 = research2.levels;
                        if (i > researchLevelArr2.length) {
                            i = researchLevelArr2.length;
                        }
                    }
                    Array<GameValueEffect> effects2 = research2.getEffects(i);
                    for (int i7 = 0; i7 < effects2.size; i7++) {
                        GameValueEffect gameValueEffect2 = effects2.items[i7];
                        double[] dArr2 = gameValuesSnapshot2.values;
                        int ordinal2 = gameValueEffect2.type.ordinal();
                        dArr2[ordinal2] = dArr2[ordinal2] + gameValueEffect2.delta;
                        if (z) {
                            GameValueEffect obtain3 = gameValueEffectPool.obtain();
                            obtain3.setup(gameValueEffect2.type, gameValueEffect2.delta, GameValueEffect.Source.RESEARCH);
                            obtain3.researchType = research2.type;
                            gameValuesSnapshot2.effects.add(obtain3);
                        }
                    }
                }
            }
            for (TrophyManager.TrophyConfig trophyConfig : Game.f8589i.trophyManager.getConfigs()) {
                if (trophyConfig.isReceived()) {
                    int i8 = 0;
                    while (true) {
                        Array<GameValueEffect> array = trophyConfig.gameValues;
                        if (i8 < array.size) {
                            GameValueEffect gameValueEffect3 = array.items[i8];
                            double[] dArr3 = gameValuesSnapshot2.values;
                            int ordinal3 = gameValueEffect3.type.ordinal();
                            dArr3[ordinal3] = dArr3[ordinal3] + gameValueEffect3.delta;
                            if (z) {
                                GameValueEffect obtain4 = gameValueEffectPool.obtain();
                                obtain4.setup(gameValueEffect3.type, gameValueEffect3.delta, GameValueEffect.Source.TROPHY);
                                obtain4.trophyType = trophyConfig.type;
                                gameValuesSnapshot2.effects.add(obtain4);
                            }
                            i8++;
                        }
                    }
                }
            }
            int i9 = 0;
            while (true) {
                Array<BasicLevel> array2 = Game.f8589i.basicLevelManager.levelsOrdered;
                if (i9 >= array2.size) {
                    break;
                }
                BasicLevel basicLevel2 = array2.items[i9];
                int i10 = 0;
                while (true) {
                    Array<BasicLevelQuestConfig> array3 = basicLevel2.quests;
                    if (i10 >= array3.size) {
                        break;
                    }
                    BasicLevelQuestConfig basicLevelQuestConfig = array3.items[i10];
                    if (basicLevelQuestConfig.wasEverCompleted()) {
                        int i11 = 0;
                        while (true) {
                            Array<ItemStack> array4 = basicLevelQuestConfig.prizes;
                            if (i11 < array4.size) {
                                ItemStack itemStack = array4.items[i11];
                                if (itemStack.getItem().getType() == ItemType.GAME_VALUE_GLOBAL) {
                                    GameValueGlobalItem gameValueGlobalItem = (GameValueGlobalItem) itemStack.getItem();
                                    double[] dArr4 = gameValuesSnapshot2.values;
                                    int ordinal4 = gameValueGlobalItem.gameValueType.ordinal();
                                    dArr4[ordinal4] = dArr4[ordinal4] + gameValueGlobalItem.delta;
                                    if (z) {
                                        GameValueEffect obtain5 = gameValueEffectPool.obtain();
                                        obtain5.setup(gameValueGlobalItem.gameValueType, gameValueGlobalItem.delta, GameValueEffect.Source.LEVEL_QUEST);
                                        obtain5.questId = basicLevelQuestConfig.f8469id;
                                        gameValuesSnapshot2.effects.add(obtain5);
                                    }
                                }
                                i11++;
                            }
                        }
                    }
                    i10++;
                }
                int i12 = 0;
                while (true) {
                    Array<BasicLevel.WaveQuest> array5 = basicLevel2.waveQuests;
                    if (i12 < array5.size) {
                        BasicLevel.WaveQuest waveQuest = array5.get(i12);
                        if (waveQuest.isCompleted()) {
                            int i13 = 0;
                            while (true) {
                                Array<ItemStack> array6 = waveQuest.prizes;
                                if (i13 < array6.size) {
                                    ItemStack itemStack2 = array6.items[i13];
                                    if (itemStack2.getItem().getType() == ItemType.GAME_VALUE_GLOBAL) {
                                        GameValueGlobalItem gameValueGlobalItem2 = (GameValueGlobalItem) itemStack2.getItem();
                                        double[] dArr5 = gameValuesSnapshot2.values;
                                        int ordinal5 = gameValueGlobalItem2.gameValueType.ordinal();
                                        dArr5[ordinal5] = dArr5[ordinal5] + gameValueGlobalItem2.delta;
                                        if (z) {
                                            GameValueEffect obtain6 = gameValueEffectPool.obtain();
                                            obtain6.setup(gameValueGlobalItem2.gameValueType, gameValueGlobalItem2.delta, GameValueEffect.Source.LEVEL_WAVE_QUEST);
                                            obtain6.questId = waveQuest.f8465id;
                                            gameValuesSnapshot2.effects.add(obtain6);
                                        }
                                    }
                                    i13++;
                                }
                            }
                        }
                        i12++;
                    }
                }
                i9++;
            }
        } else {
            throw new IllegalStateException("Research manager is not set up yet");
        }
        if (basicLevel != null) {
            int i14 = 0;
            while (true) {
                Array<BasicLevelQuestConfig> array7 = basicLevel.quests;
                if (i14 >= array7.size) {
                    break;
                }
                BasicLevelQuestConfig basicLevelQuestConfig2 = array7.items[i14];
                if (basicLevelQuestConfig2.wasEverCompleted()) {
                    int i15 = 0;
                    while (true) {
                        Array<ItemStack> array8 = basicLevelQuestConfig2.prizes;
                        if (i15 < array8.size) {
                            ItemStack itemStack3 = array8.items[i15];
                            if (itemStack3.getItem().getType() == ItemType.GAME_VALUE_LEVEL) {
                                GameValueLevelItem gameValueLevelItem = (GameValueLevelItem) itemStack3.getItem();
                                double[] dArr6 = gameValuesSnapshot2.values;
                                int ordinal6 = gameValueLevelItem.gameValueType.ordinal();
                                dArr6[ordinal6] = dArr6[ordinal6] + gameValueLevelItem.delta;
                                if (z) {
                                    GameValueEffect obtain7 = gameValueEffectPool.obtain();
                                    obtain7.setup(gameValueLevelItem.gameValueType, gameValueLevelItem.delta, GameValueEffect.Source.LEVEL_QUEST);
                                    obtain7.questId = basicLevelQuestConfig2.f8469id;
                                    gameValuesSnapshot2.effects.add(obtain7);
                                }
                            }
                            i15++;
                        }
                    }
                }
                i14++;
            }
            int i16 = 0;
            while (true) {
                Array<BasicLevel.WaveQuest> array9 = basicLevel.waveQuests;
                if (i16 >= array9.size) {
                    break;
                }
                BasicLevel.WaveQuest waveQuest2 = array9.items[i16];
                if (waveQuest2.isCompleted()) {
                    int i17 = 0;
                    while (true) {
                        Array<ItemStack> array10 = waveQuest2.prizes;
                        if (i17 < array10.size) {
                            ItemStack itemStack4 = array10.items[i17];
                            if (itemStack4.getItem().getType() == ItemType.GAME_VALUE_LEVEL) {
                                GameValueLevelItem gameValueLevelItem2 = (GameValueLevelItem) itemStack4.getItem();
                                double[] dArr7 = gameValuesSnapshot2.values;
                                int ordinal7 = gameValueLevelItem2.gameValueType.ordinal();
                                dArr7[ordinal7] = dArr7[ordinal7] + gameValueLevelItem2.delta;
                                if (z) {
                                    GameValueEffect obtain8 = gameValueEffectPool.obtain();
                                    obtain8.setup(gameValueLevelItem2.gameValueType, gameValueLevelItem2.delta, GameValueEffect.Source.LEVEL_WAVE_QUEST);
                                    obtain8.questId = waveQuest2.f8465id;
                                    gameValuesSnapshot2.effects.add(obtain8);
                                }
                            }
                            i17++;
                        }
                    }
                }
                i16++;
            }
        }
        int i18 = 1;
        for (GameValueType gameValueType : GameValueType.values) {
            i18 = (i18 * 31) + ((int) (gameValuesSnapshot2.values[gameValueType.ordinal()] * 1000.0d));
        }
        gameValuesSnapshot2.hash = i18;
        return gameValuesSnapshot2;
    }

    /* renamed from: d */
    public final void m21598d() {
        GameValueType valueOf;
        for (GameValueStockConfig gameValueStockConfig : this.f9796d) {
            gameValueStockConfig.stockValue = 0.0d;
        }
        Iterator<JsonValue> iterator2 = new JsonReader().parse(Gdx.files.internal("res/game-values.json")).iterator2();
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            try {
                GameValueStockConfig gameValueStockConfig2 = this.f9796d[GameValueType.valueOf(next.name).ordinal()];
                gameValueStockConfig2.stockValue = next.get("default").asDouble();
                gameValueStockConfig2.units = ValueUnits.valueOf(next.get("units").asString());
                gameValueStockConfig2.titleAlias = "gv_title_" + valueOf.name();
                gameValueStockConfig2.iconString = next.get("icon").asString();
                next.getString("flags", "");
            } catch (Exception e) {
                Logger.error("GameValueManager", "failed to load game value config '" + next.name + "'", e);
            }
        }
        this.f9795b = true;
        requireRecalculation();
    }

    public void removeListener(GameValueManagerListener gameValueManagerListener) {
        if (gameValueManagerListener != null) {
            this.f9799q.removeValue(gameValueManagerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.GameValueManager.2
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                GameValueManager.this.requireRecalculation();
            }
        });
        Game.f8589i.researchManager.addListener(this.f9800r);
        Game.f8589i.progressManager.addListener(this.f9801s);
        this.f9794a = true;
    }

    public GameValueManager() {
        GameValueType[] gameValueTypeArr = GameValueType.values;
        this.f9796d = new GameValueStockConfig[gameValueTypeArr.length];
        for (GameValueType gameValueType : gameValueTypeArr) {
            this.f9796d[gameValueType.ordinal()] = new GameValueStockConfig();
            this.f9796d[gameValueType.ordinal()].type = gameValueType;
        }
    }

    public StringBuilder formatEffectValue(double d, ValueUnits valueUnits) {
        String str;
        m21601a();
        StringBuilder stringBuilder = f9793t;
        stringBuilder.setLength(0);
        if (valueUnits == ValueUnits.BOOLEAN) {
            if (d <= 0.0d) {
                str = "false";
            } else {
                str = "true";
            }
            return stringBuilder.append(str);
        }
        if (d > 0.0d) {
            stringBuilder.append("+");
        }
        if (d % 1.0d == 0.0d) {
            stringBuilder.append((int) d);
        } else {
            stringBuilder.append(StringFormatter.compactNumber(d, true));
        }
        int i = C17853.f9803a[valueUnits.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        stringBuilder.append("%/").append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
                    }
                } else {
                    stringBuilder.append("/").append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
                }
            } else {
                stringBuilder.append('%');
            }
        } else {
            stringBuilder.append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
        }
        return stringBuilder;
    }

    public Array<GameValueEffect> getCurrentEffects() {
        m21600b();
        return this.f9798p.effects;
    }

    public GameValuesSnapshot getSnapshot() {
        m21600b();
        return this.f9798p;
    }

    public GameValueStockConfig getStockValueConfig(GameValueType gameValueType) {
        m21601a();
        return this.f9796d[gameValueType.ordinal()];
    }

    public StringBuilder getTitle(GameValueType gameValueType) {
        m21601a();
        StringBuilder stringBuilder = f9793t;
        stringBuilder.setLength(0);
        stringBuilder.append(Game.f8589i.localeManager.i18n.get(getStockValueConfig(gameValueType).titleAlias));
        return stringBuilder;
    }

    public ValueUnits getUnits(GameValueType gameValueType) {
        m21601a();
        return getStockValueConfig(gameValueType).units;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        m21601a();
        for (GameValueType gameValueType : GameValueType.values) {
            getStockValueConfig(gameValueType);
        }
    }

    /* loaded from: classes2.dex */
    public static class GvSnapDiff {
        public GameValueEffect effect;
        public Type type;
        public double vOrig;
        public double vTo;

        /* loaded from: classes2.dex */
        public enum Type {
            GLOBAL_HASH,
            GV_COUNT,
            GV_RESULT,
            GV_NOT_IN_ORIG,
            GV_NOT_IN_TO
        }

        public GvSnapDiff(Type type, double d, double d2) {
            this.type = type;
            this.vOrig = d;
            this.vTo = d2;
        }

        public GvSnapDiff(Type type, GameValueEffect gameValueEffect) {
            this.type = type;
            this.effect = gameValueEffect;
        }
    }
}
