package com.prineside.tdi2.managers;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntFloatMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.kryo.FixedInput;
import com.prineside.kryo.FixedOutput;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.StatisticsSystem;
import com.prineside.tdi2.utils.ObjectPair;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.StringWriter;
import java.lang.ref.SoftReference;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ReplayManager extends Manager.ManagerAdapter {
    public static FixedOutput helperOutput = new FixedOutput(65536, -1);

    /* renamed from: k */
    public static final ObjectMap<String, String> f10029k = new ObjectMap<>();

    /* renamed from: a */
    public final Array<String> f10030a = new Array<>(false, 1, String.class);

    /* renamed from: b */
    public final ObjectMap<String, SoftReference<ReplayRecord>> f10031b = new ObjectMap<>();

    /* renamed from: d */
    public int f10032d = 1;

    /* loaded from: classes2.dex */
    public enum LeaderboardsMode {
        score,
        waves;
        
        public static final LeaderboardsMode[] values = values();
    }

    /* loaded from: classes2.dex */
    public static class ReplayRecord {

        /* renamed from: a */
        public boolean f10049a;

        /* renamed from: b */
        public byte[] f10050b;
        public int build;

        /* renamed from: c */
        public byte[] f10051c;
        public ChartFrames chartFrames;
        public int defeatedWaves;
        public DifficultyMode difficultyMode = DifficultyMode.NORMAL;
        public GameStateSystem.GameMode gameMode;
        public boolean hasPreferences;
        public boolean hasState;

        /* renamed from: id */
        public String f10052id;
        public String levelName;
        public int modeDifficultyMultiplier;
        public int playRealTime;
        public int profileXp;
        public long saveTimestamp;
        public long score;
        public long startTimestamp;
        public IntFloatMap statistics;
        public byte version;

        @REGS
        /* loaded from: classes2.dex */
        public static class ChartFrames implements KryoSerializable {
            public static final FrameValues frameValuesHelper = new FrameValues();

            /* renamed from: a */
            public static final FixedOutput f10053a = new FixedOutput(4096, -1);

            /* renamed from: b */
            public static final FixedOutput f10054b = new FixedOutput(1024, -1);

            /* renamed from: d */
            public static final FixedInput f10055d = new FixedInput();

            /* renamed from: k */
            public static final FixedInput f10056k = new FixedInput();
            public int version = 2;
            public Array<FrameValues> frames = new Array<>(true, 1, FrameValues.class);

            /* loaded from: classes2.dex */
            public static class FrameValues {
                public int cBounties;
                public int cKilledEnemies;
                public int cOther;
                public int cWaveCalls;
                public float mdps;
                public long sKilledEnemies;
                public long sMining;
                public long sWaveCalls;
                public long sWavesCleared;
                public int wave;

                public void read(FixedInput fixedInput) {
                    this.cBounties = fixedInput.readVarInt(true);
                    this.cKilledEnemies = fixedInput.readVarInt(true);
                    this.cWaveCalls = fixedInput.readVarInt(true);
                    this.cOther = fixedInput.readVarInt(true);
                    this.sKilledEnemies = fixedInput.readVarLong(true);
                    this.sMining = fixedInput.readVarLong(true);
                    this.sWaveCalls = fixedInput.readVarLong(true);
                    this.sWavesCleared = fixedInput.readVarLong(true);
                    this.wave = fixedInput.readVarInt(true);
                    this.mdps = fixedInput.readFloat();
                }

                public FrameValues cpy() {
                    FrameValues frameValues = new FrameValues();
                    frameValues.cBounties = this.cBounties;
                    frameValues.cKilledEnemies = this.cKilledEnemies;
                    frameValues.cWaveCalls = this.cWaveCalls;
                    frameValues.cOther = this.cOther;
                    frameValues.sKilledEnemies = this.sKilledEnemies;
                    frameValues.sMining = this.sMining;
                    frameValues.sWaveCalls = this.sWaveCalls;
                    frameValues.sWavesCleared = this.sWavesCleared;
                    frameValues.wave = this.wave;
                    frameValues.mdps = this.mdps;
                    return frameValues;
                }

                public void write(FixedOutput fixedOutput) {
                    fixedOutput.writeVarInt(this.cBounties, true);
                    fixedOutput.writeVarInt(this.cKilledEnemies, true);
                    fixedOutput.writeVarInt(this.cWaveCalls, true);
                    fixedOutput.writeVarInt(this.cOther, true);
                    fixedOutput.writeVarLong(this.sKilledEnemies, true);
                    fixedOutput.writeVarLong(this.sMining, true);
                    fixedOutput.writeVarLong(this.sWaveCalls, true);
                    fixedOutput.writeVarLong(this.sWavesCleared, true);
                    fixedOutput.writeVarInt(this.wave, true);
                    fixedOutput.writeFloat(this.mdps);
                }
            }

            public void addFrame(GameSystemProvider gameSystemProvider) {
                this.frames.add(generateFrameValues(gameSystemProvider).cpy());
            }

            public void read(FixedInput fixedInput) {
                this.version = fixedInput.readVarInt(true);
                byte[] readBytes = fixedInput.readBytes(fixedInput.readVarInt(true));
                this.frames.clear();
                if (this.version == 2) {
                    FixedInput fixedInput2 = f10055d;
                    fixedInput2.setBuffer(readBytes);
                    int readVarInt = fixedInput2.readVarInt(true);
                    for (int i = 0; i < readVarInt; i++) {
                        FrameValues frameValues = new FrameValues();
                        frameValues.read(f10055d);
                        this.frames.add(frameValues);
                    }
                    return;
                }
                Logger.log("ReplayManager", "skipped reading replay ChartFrames data - version mismatch (" + this.version + ", 2)");
            }

            public void write(FixedOutput fixedOutput) {
                fixedOutput.writeVarInt(this.version, true);
                FixedOutput fixedOutput2 = f10054b;
                fixedOutput2.clear();
                fixedOutput2.writeVarInt(this.frames.size, true);
                int i = 0;
                while (true) {
                    Array<FrameValues> array = this.frames;
                    if (i < array.size) {
                        array.items[i].write(f10054b);
                        i++;
                    } else {
                        FixedOutput fixedOutput3 = f10054b;
                        fixedOutput.writeVarInt(fixedOutput3.position(), true);
                        fixedOutput.writeBytes(fixedOutput3.getBuffer(), 0, fixedOutput3.position());
                        return;
                    }
                }
            }

            public static ChartFrames fromBytes(FixedInput fixedInput) {
                ChartFrames chartFrames = new ChartFrames();
                try {
                    chartFrames.read(fixedInput);
                    return chartFrames;
                } catch (Exception e) {
                    Logger.error("ReplayManager", "failed to load chart frames, fallback", e);
                    return new ChartFrames();
                }
            }

            public static FrameValues generateFrameValues(GameSystemProvider gameSystemProvider) {
                int i;
                StatisticsSystem statisticsSystem = gameSystemProvider.statistics;
                FrameValues frameValues = frameValuesHelper;
                frameValues.cBounties = (int) statisticsSystem.getCurrentGameStatistic(StatisticsType.CG_B);
                frameValues.cKilledEnemies = (int) statisticsSystem.getCurrentGameStatistic(StatisticsType.CG_EK);
                frameValues.cWaveCalls = (int) statisticsSystem.getCurrentGameStatistic(StatisticsType.CG_WC);
                frameValues.cOther = ((int) statisticsSystem.getCurrentGameStatistic(StatisticsType.CG_PG)) + ((int) statisticsSystem.getCurrentGameStatistic(StatisticsType.CG_U));
                frameValues.sKilledEnemies = (long) statisticsSystem.getCurrentGameStatistic(StatisticsType.SG_EK);
                frameValues.sMining = (long) statisticsSystem.getCurrentGameStatistic(StatisticsType.SG_RM);
                frameValues.sWaveCalls = (long) statisticsSystem.getCurrentGameStatistic(StatisticsType.SG_WCA);
                frameValues.sWavesCleared = (long) statisticsSystem.getCurrentGameStatistic(StatisticsType.SG_WCL);
                Wave wave = gameSystemProvider.wave.wave;
                if (wave == null) {
                    i = 1;
                } else {
                    i = wave.waveNumber;
                }
                frameValues.wave = i;
                frameValues.mdps = (float) gameSystemProvider.enemy.getTowersMaxDps();
                return frameValues;
            }

            public ChartFrames cpy() {
                ChartFrames chartFrames = new ChartFrames();
                chartFrames.version = this.version;
                int i = 0;
                while (true) {
                    Array<FrameValues> array = this.frames;
                    if (i < array.size) {
                        chartFrames.frames.add(array.items[i].cpy());
                        i++;
                    } else {
                        return chartFrames;
                    }
                }
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void write(Kryo kryo, Output output) {
                FixedOutput fixedOutput = f10053a;
                fixedOutput.clear();
                write(fixedOutput);
                output.writeVarInt(fixedOutput.position(), true);
                output.writeBytes(fixedOutput.getBuffer(), 0, fixedOutput.position());
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void read(Kryo kryo, Input input) {
                byte[] readBytes = input.readBytes(input.readVarInt(true));
                FixedInput fixedInput = f10056k;
                fixedInput.setBuffer(readBytes);
                read(fixedInput);
            }
        }

        public static ReplayRecord fromBytes(byte[] bArr, boolean z) {
            ReplayRecord replayRecord = new ReplayRecord();
            replayRecord.m21518a(new FixedInput(bArr), z);
            return replayRecord;
        }

        public static ReplayRecord fromCompactString(String str, boolean z) {
            ReplayRecord replayRecord = new ReplayRecord();
            replayRecord.m21518a(new FixedInput(StringFormatter.fromCompactBase64(str)), z);
            return replayRecord;
        }

        public static ReplayRecord fromState(GameSystemProvider gameSystemProvider, byte[] bArr, boolean z) {
            StatisticsType[] statisticsTypeArr;
            ReplayRecord replayRecord = new ReplayRecord();
            replayRecord.build = 184;
            GameStateSystem gameStateSystem = gameSystemProvider.gameState;
            replayRecord.f10052id = gameStateSystem.replayId;
            GameStateSystem.GameMode gameMode = gameStateSystem.gameMode;
            replayRecord.gameMode = gameMode;
            replayRecord.difficultyMode = gameStateSystem.difficultyMode;
            replayRecord.modeDifficultyMultiplier = gameStateSystem.modeDifficultyMultiplier;
            if (GameStateSystem.GameMode.isBasicLevel(gameMode)) {
                replayRecord.levelName = gameSystemProvider.gameState.basicLevelName;
            } else {
                GameStateSystem gameStateSystem2 = gameSystemProvider.gameState;
                if (gameStateSystem2.gameMode == GameStateSystem.GameMode.USER_MAPS) {
                    replayRecord.levelName = gameStateSystem2.userMapId;
                }
            }
            replayRecord.playRealTime = (int) gameSystemProvider.gameState.playRealTime;
            replayRecord.defeatedWaves = gameSystemProvider.wave.getCompletedWavesCount();
            replayRecord.score = gameSystemProvider.gameState.getScore();
            replayRecord.startTimestamp = gameSystemProvider.gameState.gameStartTimestamp;
            replayRecord.saveTimestamp = Game.getTimestampMillis();
            replayRecord.profileXp = gameSystemProvider.gameState.pxpExperience;
            replayRecord.statistics = new IntFloatMap();
            double[] currentGameStatistics = gameSystemProvider.statistics.getCurrentGameStatistics();
            for (StatisticsType statisticsType : StatisticsType.values) {
                if (currentGameStatistics[statisticsType.ordinal()] != 0.0d) {
                    replayRecord.statistics.put(statisticsType.ordinal(), (float) currentGameStatistics[statisticsType.ordinal()]);
                }
            }
            replayRecord.chartFrames = gameSystemProvider.statistics.getCurrentReplayChart().cpy();
            if (z) {
                Logger.log("ReplayManager", "saving state in replay " + replayRecord.f10052id);
                replayRecord.hasState = true;
                replayRecord.f10050b = gameSystemProvider.gameState.getStateBytes().toBytes();
                replayRecord.hasPreferences = true;
                replayRecord.f10051c = bArr;
            }
            replayRecord.f10049a = true;
            return replayRecord;
        }

        /* renamed from: b */
        public final void m21517b() {
            if (!this.f10049a) {
                FileHandle local = Gdx.files.local("cache/replays/" + this.f10052id + ".rpl");
                if (local.exists() && !local.isDirectory()) {
                    m21518a(new FixedInput(local.readBytes()), true);
                } else {
                    this.f10049a = true;
                }
            }
        }

        public byte[] getPreferencesSnapshot() {
            if (!this.hasPreferences) {
                return null;
            }
            m21517b();
            return this.f10051c;
        }

        public byte[] getStateBytes() {
            if (!this.hasState) {
                return null;
            }
            m21517b();
            return this.f10050b;
        }

        public void removePreferencesData() {
            if (!this.hasPreferences) {
                return;
            }
            m21517b();
            this.hasPreferences = false;
            this.f10051c = null;
            Logger.log("ReplayManager", "removed preferences from replay " + this.f10052id);
        }

        public void removeStateData() {
            if (!this.hasState) {
                return;
            }
            m21517b();
            this.hasState = false;
            this.f10050b = null;
            Logger.log("ReplayManager", "removed state from replay " + this.f10052id);
        }

        /* renamed from: a */
        public final void m21518a(FixedInput fixedInput, boolean z) {
            byte b;
            int i;
            int position = fixedInput.position();
            if (fixedInput.readInt() == 152630033) {
                b = fixedInput.readByte();
            } else {
                fixedInput.setPosition(position);
                b = 1;
            }
            this.build = fixedInput.readVarInt(true);
            this.f10052id = fixedInput.readString();
            this.gameMode = GameStateSystem.GameMode.values[fixedInput.readVarInt(true)];
            this.difficultyMode = DifficultyMode.values[fixedInput.readVarInt(true)];
            if (b >= 2) {
                i = fixedInput.readVarInt(true);
            } else {
                i = 100;
            }
            this.modeDifficultyMultiplier = i;
            this.levelName = fixedInput.readString();
            this.playRealTime = fixedInput.readVarInt(true);
            this.defeatedWaves = fixedInput.readVarInt(true);
            this.score = fixedInput.readVarLong(true);
            this.startTimestamp = fixedInput.readLong();
            this.saveTimestamp = fixedInput.readLong();
            this.profileXp = fixedInput.readVarInt(true);
            int readVarInt = fixedInput.readVarInt(true);
            this.statistics = new IntFloatMap(readVarInt);
            for (int i2 = 0; i2 < readVarInt; i2++) {
                this.statistics.put(fixedInput.readVarInt(true), fixedInput.readFloat());
            }
            this.chartFrames = ChartFrames.fromBytes(fixedInput);
            this.hasState = fixedInput.readBoolean();
            this.hasPreferences = fixedInput.readBoolean();
            if (z) {
                if (this.hasState) {
                    this.f10050b = fixedInput.readBytes(fixedInput.readVarInt(true));
                }
                if (this.hasPreferences) {
                    this.f10051c = fixedInput.readBytes(fixedInput.readVarInt(true));
                }
            }
            this.f10049a = z;
            if (!this.hasState && !this.hasPreferences) {
                this.f10049a = true;
            }
        }

        public void applyPreferences() {
            byte[] preferencesSnapshot = getPreferencesSnapshot();
            if (preferencesSnapshot != null) {
                Game.f8589i.preferencesManager.setTemporaryPreferences(preferencesSnapshot);
                Logger.log("ReplayManager", "loaded preferences from replay " + this.f10052id);
                return;
            }
            throw new IllegalStateException("Replay is already cleaned up");
        }

        public void saveLocally() {
            byte[] bytes = toBytes();
            Files files = Gdx.files;
            files.local("cache/replays/" + this.f10052id + ".rpl").writeBytes(bytes, false);
            Logger.log("ReplayManager", "saved " + this.f10052id + " locally, state: " + this.hasState + ", prefs: " + this.hasPreferences);
        }

        public byte[] toBytes() {
            m21517b();
            FixedOutput fixedOutput = ReplayManager.helperOutput;
            fixedOutput.clear();
            fixedOutput.writeInt(152630033);
            fixedOutput.writeByte(3);
            fixedOutput.writeVarInt(this.build, true);
            fixedOutput.writeString(this.f10052id);
            fixedOutput.writeVarInt(this.gameMode.ordinal(), true);
            fixedOutput.writeVarInt(this.difficultyMode.ordinal(), true);
            fixedOutput.writeVarInt(this.modeDifficultyMultiplier, true);
            fixedOutput.writeString(this.levelName);
            fixedOutput.writeVarInt(this.playRealTime, true);
            fixedOutput.writeVarInt(this.defeatedWaves, true);
            fixedOutput.writeVarLong(this.score, true);
            fixedOutput.writeLong(this.startTimestamp);
            fixedOutput.writeLong(this.saveTimestamp);
            fixedOutput.writeVarInt(this.profileXp, true);
            fixedOutput.writeVarInt(this.statistics.size, true);
            IntFloatMap.Keys keys = this.statistics.keys();
            while (keys.hasNext) {
                int next = keys.next();
                fixedOutput.writeVarInt(next, true);
                fixedOutput.writeFloat(this.statistics.get(next, 0.0f));
            }
            this.chartFrames.write(fixedOutput);
            fixedOutput.writeBoolean(this.hasState);
            fixedOutput.writeBoolean(this.hasPreferences);
            if (this.hasState) {
                fixedOutput.writeVarInt(this.f10050b.length, true);
                fixedOutput.writeBytes(this.f10050b);
            }
            if (this.hasPreferences) {
                fixedOutput.writeVarInt(this.f10051c.length, true);
                fixedOutput.writeBytes(this.f10051c);
            }
            return fixedOutput.toBytes();
        }

        public String toCompactString() {
            byte[] bytes = toBytes();
            return StringFormatter.toCompactBase64(bytes, 0, bytes.length);
        }
    }

    /* loaded from: classes2.dex */
    public static class ReplaySendStatus {
        public int bonusXpGained;
        public boolean bonusXpLeft;
        public int regularXpGained;
        public boolean regularXpLeft;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ReplayManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ReplayManager read() {
            return Game.f8589i.replayManager;
        }
    }

    public static void main(String[] strArr) {
        new JsonReader().parse("");
    }

    /* renamed from: e */
    public final void m21521e() {
        int hashCode;
        Array array = new Array(String.class);
        Array<String> allRecordIds = getAllRecordIds();
        Pool pool = Pools.get(ObjectPair.class);
        for (int i = 0; i < allRecordIds.size; i++) {
            ReplayRecord record = getRecord(allRecordIds.items[i]);
            if (record.hasState && this.f10030a.contains(record.f10052id, false) && !Config.isCompatibleWithBuild(record.build)) {
                record.removeStateData();
                record.saveLocally();
                Logger.log("ReplayManager", "cleanup - removed state from " + record.f10052id + " as it is obsolete and already sent");
            }
        }
        IntMap intMap = new IntMap();
        for (int i2 = 0; i2 < allRecordIds.size; i2++) {
            ReplayRecord record2 = getRecord(allRecordIds.items[i2]);
            if (record2.hasState && Config.isCompatibleWithBuild(record2.build)) {
                int ordinal = ((record2.difficultyMode.ordinal() * 31) + record2.gameMode.ordinal()) * 31;
                String str = record2.levelName;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                int i3 = ordinal + hashCode;
                ObjectPair objectPair = (ObjectPair) intMap.get(i3, null);
                if (objectPair == null || ((Long) objectPair.second).longValue() < record2.score) {
                    ObjectPair objectPair2 = (ObjectPair) pool.obtain();
                    objectPair2.first = record2.f10052id;
                    objectPair2.second = Long.valueOf(record2.score);
                    intMap.put(i3, objectPair2);
                }
            }
        }
        Iterator it = intMap.iterator();
        while (it.hasNext()) {
            IntMap.Entry entry = (IntMap.Entry) it.next();
            array.add((String) ((ObjectPair) entry.value).first);
            pool.free((ObjectPair) entry.value);
        }
        Logger.log("ReplayManager", "preserving " + array.size + " replays");
        Array array2 = new Array(ObjectPair.class);
        for (int i4 = 0; i4 < allRecordIds.size; i4++) {
            ReplayRecord record3 = getRecord(allRecordIds.items[i4]);
            if (!array.contains(record3.f10052id, true)) {
                ObjectPair objectPair3 = (ObjectPair) pool.obtain();
                objectPair3.first = record3.f10052id;
                objectPair3.second = Long.valueOf(record3.saveTimestamp);
                array2.add(objectPair3);
            }
        }
        array2.sort(new Comparator<ObjectPair>() { // from class: com.prineside.tdi2.managers.ReplayManager.3
            @Override // java.util.Comparator
            public int compare(ObjectPair objectPair4, ObjectPair objectPair5) {
                return (((Long) objectPair5.second).longValue() > ((Long) objectPair4.second).longValue() ? 1 : (((Long) objectPair5.second).longValue() == ((Long) objectPair4.second).longValue() ? 0 : -1));
            }
        });
        for (int i5 = 20; i5 < array2.size; i5++) {
            String str2 = (String) ((ObjectPair[]) array2.items)[i5].first;
            this.f10031b.remove(str2);
            try {
                Files files = Gdx.files;
                files.local("cache/replays/" + str2 + ".rpl").delete();
                Logger.log("ReplayManager", "removed " + str2 + " as obsolete");
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: f */
    public final void m21520f() {
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        int i = 0;
        while (true) {
            Array<String> array = this.f10030a;
            if (i < array.size) {
                json.writeValue(array.get(i));
                i++;
            } else {
                json.writeArrayEnd();
                PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
                preferencesManager.set("sentGameReplaysToServer", stringWriter.toString());
                preferencesManager.flush();
                return;
            }
        }
    }

    public Array<String> getAllRecordIds() {
        FileHandle[] list;
        Array<String> array = new Array<>(String.class);
        FileHandle local = Gdx.files.local("cache/replays/");
        if (local.exists() && local.isDirectory()) {
            for (FileHandle fileHandle : local.list()) {
                if (fileHandle.name().endsWith(".rpl")) {
                    array.add(fileHandle.name().substring(0, fileHandle.name().length() - 4));
                }
            }
        }
        return array;
    }

    public ReplayRecord getRecord(String str) {
        if (this.f10031b.containsKey(str)) {
            ReplayRecord replayRecord = this.f10031b.get(str).get();
            if (replayRecord != null) {
                return replayRecord;
            }
            this.f10031b.remove(str);
        }
        if (!str.contains(".")) {
            FileHandle local = Gdx.files.local("cache/replays/" + str + ".rpl");
            if (local.exists() && !local.isDirectory()) {
                try {
                    byte[] readBytes = local.readBytes();
                    if (readBytes.length != 0) {
                        ReplayRecord fromBytes = ReplayRecord.fromBytes(readBytes, false);
                        this.f10031b.put(str, new SoftReference<>(fromBytes));
                        return fromBytes;
                    }
                    throw new IllegalStateException("zero bytes read");
                } catch (Exception e) {
                    Logger.error("ReplayManager", "failed to load replay record - removing", e);
                    this.f10031b.remove(str);
                    try {
                        local.delete();
                    } catch (Exception unused) {
                    }
                }
            }
            return null;
        }
        throw new IllegalArgumentException("Replay ID should not contain dots, " + str + " given");
    }

    public void loadAndStoreBestReplayFromServer(final String str, final ObjectRetriever<ReplayRecord> objectRetriever) {
        Logger.log("ReplayManager", "requesting best replay from server for level " + str);
        if (Game.f8589i.authManager.getSignInStatus() != AuthManager.SignInStatus.SIGNED_IN) {
            Logger.error("ReplayManager", "player is not signed in, skipping best replay request");
            return;
        }
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.GET_BEST_GAME_REPLAY_URL);
        HashMap hashMap = new HashMap();
        hashMap.put("map", str);
        hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.ReplayManager.4
            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
                Logger.error("ReplayManager", Transaction.REVERSAL_TEXT_CANCELLED);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("ReplayManager", "Failed", th);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                try {
                    String resultAsString = httpResponse.getResultAsString();
                    final JsonValue parse = new JsonReader().parse(resultAsString);
                    if (parse.getString("status", "error").equals("success")) {
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.ReplayManager.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    boolean z = true;
                                    ReplayRecord fromCompactString = ReplayRecord.fromCompactString(parse.getString("replay"), true);
                                    if (ReplayManager.this.getRecord(fromCompactString.f10052id) != null) {
                                        Logger.log("ReplayManager", "skilled loading best replay from server (" + str + ", " + fromCompactString.f10052id + ") - already stored locally");
                                    } else if (fromCompactString.chartFrames.version != 2) {
                                        Logger.log("ReplayManager", "skilled loading best replay from server (" + str + ", " + fromCompactString.f10052id + ") - chartFrames version differ (" + fromCompactString.chartFrames.version + ", 2)");
                                    } else {
                                        fromCompactString.saveLocally();
                                        int i = 0;
                                        while (true) {
                                            if (i < ReplayManager.this.f10030a.size) {
                                                if (((String[]) ReplayManager.this.f10030a.items)[i].equals(fromCompactString.f10052id)) {
                                                    break;
                                                }
                                                i++;
                                            } else {
                                                z = false;
                                                break;
                                            }
                                        }
                                        if (!z) {
                                            ReplayManager.this.f10030a.add(fromCompactString.f10052id);
                                            ReplayManager.this.m21520f();
                                        }
                                        ObjectRetriever objectRetriever2 = objectRetriever;
                                        if (objectRetriever2 != null) {
                                            objectRetriever2.retrieved(fromCompactString);
                                        }
                                    }
                                } catch (Exception e) {
                                    Logger.error("ReplayManager", "failed to load best replay from server", e);
                                }
                            }
                        });
                    } else {
                        Logger.error("ReplayManager", "Error: " + resultAsString);
                    }
                } catch (Exception e) {
                    Logger.error("ReplayManager", "Exception: " + e.getMessage(), e);
                }
            }
        });
    }

    public final void reload() {
        this.f10031b.clear();
        this.f10030a.clear();
        String str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS).get("sentGameReplaysToServer", "[]");
        try {
            Iterator<JsonValue> iterator2 = new JsonReader().parse(str).iterator2();
            while (iterator2.hasNext()) {
                this.f10030a.add(iterator2.next().asString());
            }
            Logger.log("ReplayManager", "loaded " + this.f10030a.size + " replay IDs sent to the server");
        } catch (Exception e) {
            Logger.error("ReplayManager", "failed to parse json: " + str, e);
        }
    }

    public void sendReplayToServer(final String str, final ObjectRetriever<ReplaySendStatus> objectRetriever) {
        if (!Game.f8589i.authManager.isSignedIn()) {
            Logger.error("ReplayManager", "not signed it");
        } else if (Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            Logger.log("ReplayManager", "skipped sendReplayToServer - dev mode");
        } else {
            final ReplayRecord record = getRecord(str);
            if (record == null) {
                Logger.error("ReplayManager", "can't get record " + str);
            } else if (record.getStateBytes() == null) {
                Logger.error("ReplayManager", str + " is cleaned up and no longer has a state");
            } else {
                GameStateSystem.GameMode gameMode = record.gameMode;
                if (gameMode == GameStateSystem.GameMode.USER_MAPS) {
                    Logger.error("ReplayManager", str + " is a custom map");
                    return;
                }
                DifficultyMode difficultyMode = record.difficultyMode;
                if (difficultyMode != DifficultyMode.NORMAL && difficultyMode != DifficultyMode.ENDLESS_I) {
                    Logger.error("ReplayManager", str + " has " + record.difficultyMode + " difficulty, won't be sent to the server");
                    this.f10030a.add(str);
                    return;
                }
                if (GameStateSystem.GameMode.isBasicLevel(gameMode)) {
                    try {
                        if (!Game.f8589i.basicLevelManager.getLevel(record.levelName).hasLeaderboards) {
                            Logger.error("ReplayManager", str + " hasn't leaderboards, skipping");
                            this.f10030a.add(str);
                            return;
                        }
                    } catch (Exception e) {
                        Logger.error("ReplayManager", "failed to get level " + record.levelName, e);
                        return;
                    }
                }
                Logger.log("ReplayManager", str + " is not sent yet");
                try {
                    if (record.build < this.f10032d) {
                        Logger.log("ReplayManager", str + " has too low version, skipping");
                        this.f10030a.add(str);
                        return;
                    }
                    Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                    httpRequest.setUrl(Config.GAME_REPLAY_REPORT_URL);
                    Json json = new Json(JsonWriter.OutputType.json);
                    StringWriter stringWriter = new StringWriter();
                    json.setWriter(stringWriter);
                    json.writeObjectStart();
                    json.writeValue("build", Integer.valueOf(record.build));
                    json.writeValue("id", record.f10052id);
                    json.writeValue("os", Gdx.app.getType().name());
                    json.writeValue("playRealTime", Integer.valueOf(record.playRealTime));
                    json.writeValue("gameMode", record.gameMode.name());
                    json.writeValue("difficultyMode", record.difficultyMode.name());
                    json.writeValue("modeDifficultyMultiplier", Integer.valueOf(record.modeDifficultyMultiplier));
                    String str2 = record.levelName;
                    if (str2 != null) {
                        json.writeValue("levelName", str2);
                    }
                    json.writeValue("profileXp", Integer.valueOf(record.profileXp));
                    json.writeValue("defeatedWaves", Integer.valueOf(record.defeatedWaves));
                    json.writeValue("score", Long.valueOf(record.score));
                    json.writeValue("record", record.toCompactString());
                    json.writeObjectEnd();
                    HashMap hashMap = new HashMap();
                    hashMap.put("report", stringWriter.toString());
                    hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
                    httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                    Game.getRealTickCount();
                    Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.ReplayManager.5
                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                        public void cancelled() {
                            Logger.error("ReplayManager", Transaction.REVERSAL_TEXT_CANCELLED);
                        }

                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                        public void failed(Throwable th) {
                            Logger.error("ReplayManager", "Failed", th);
                        }

                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                        public void handleHttpResponse(Net.HttpResponse httpResponse) {
                            try {
                                final String resultAsString = httpResponse.getResultAsString();
                                Logger.log("ReplayManager", resultAsString);
                                final JsonValue parse = new JsonReader().parse(resultAsString);
                                if (parse.getString("status", "error").equals("success")) {
                                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.ReplayManager.5.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Logger.log("ReplayManager", "Success: " + resultAsString);
                                            ReplayManager.this.f10030a.add(str);
                                            ReplayManager.this.m21520f();
                                            record.removePreferencesData();
                                            record.saveLocally();
                                            if (objectRetriever != null && parse.get("xpGained") != null) {
                                                ReplaySendStatus replaySendStatus = new ReplaySendStatus();
                                                replaySendStatus.regularXpGained = parse.get("xpGained").getInt("regular", 0);
                                                replaySendStatus.bonusXpGained = parse.get("xpGained").getInt("bonus", 0);
                                                replaySendStatus.bonusXpLeft = parse.get("xpGained").getBoolean("bonusLeft", false);
                                                replaySendStatus.regularXpLeft = parse.get("xpGained").getBoolean("regularLeft", true);
                                                objectRetriever.retrieved(replaySendStatus);
                                            }
                                        }
                                    });
                                } else {
                                    Logger.error("ReplayManager", "Error: " + resultAsString);
                                }
                            } catch (Exception e2) {
                                Logger.error("ReplayManager", "Exception: " + e2.getMessage(), e2);
                            }
                        }
                    });
                } catch (Exception e2) {
                    Logger.log("ReplayManager", "Failed to send replay to the server (" + e2.getMessage() + ")");
                }
            }
        }
    }

    public void sendUnsentReplaysToTheServer() {
        if (Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            Logger.log("ReplayManager", "skipped sendUnsentReplaysToTheServer - dev mode");
        } else if (!Config.isHeadless() && !Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode() && Game.f8589i.authManager.isSignedIn()) {
            if (Game.f8589i.preferencesManager.isTemporarySettingsApplied()) {
                Logger.log("ReplayManager", "temporary settings enabled, skipped replays sending");
                return;
            }
            Logger.log("ReplayManager", "sending unsent replays...");
            Array<String> allRecordIds = getAllRecordIds();
            for (int i = 0; i < allRecordIds.size; i++) {
                String str = allRecordIds.get(i);
                if (!this.f10030a.contains(str, false)) {
                    sendReplayToServer(str, null);
                }
            }
            m21521e();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.ReplayManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                ReplayManager.this.reload();
            }
        });
        reload();
        Game.f8589i.authManager.getNews(new ObjectRetriever<AuthManager.NewsResponse>() { // from class: com.prineside.tdi2.managers.ReplayManager.2
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(AuthManager.NewsResponse newsResponse) {
                if (newsResponse != null) {
                    ReplayManager.this.f10032d = newsResponse.networkRequiredVersion;
                }
                ReplayManager.this.sendUnsentReplaysToTheServer();
            }
        });
    }

    public void deleteAllReplays() {
        Array<String> allRecordIds = getAllRecordIds();
        for (int i = 0; i < allRecordIds.size; i++) {
            Files files = Gdx.files;
            files.local("cache/replays/" + allRecordIds.items[i] + ".rpl").delete();
        }
        this.f10030a.clear();
    }

    public String saveReplay(GameSystemProvider gameSystemProvider, byte[] bArr, boolean z) {
        ReplayRecord fromState = ReplayRecord.fromState(gameSystemProvider, bArr, z);
        fromState.saveLocally();
        this.f10031b.put(fromState.f10052id, new SoftReference<>(fromState));
        return fromState.f10052id;
    }
}
