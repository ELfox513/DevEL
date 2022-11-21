package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.miners.InfiarMiner;
import com.prineside.tdi2.miners.MatrixMiner;
import com.prineside.tdi2.miners.ScalarMiner;
import com.prineside.tdi2.miners.TensorMiner;
import com.prineside.tdi2.miners.VectorMiner;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class MinerManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9892F;
    public final ObjectMap<MinerType, String> SHORT_MINER_ALIASES;

    /* renamed from: a */
    public final Miner.Factory[] f9893a;

    /* renamed from: b */
    public final StatisticsType[] f9894b;

    /* renamed from: d */
    public final StatisticsType[] f9895d;
    public ParticleEffectPool doubleSpeedParticleEffectPool;
    public ParticleEffectPool[] highlightParticles;

    /* renamed from: k */
    public final StatisticsType[] f9896k;
    public ParticleEffectPool minedResourceParticleEffectPool;

    /* renamed from: p */
    public final GameValueType[] f9897p;

    /* renamed from: q */
    public final String[] f9898q;

    /* renamed from: com.prineside.tdi2.managers.MinerManager$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18211 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9899a;

        static {
            int[] iArr = new int[MinerType.values().length];
            f9899a = iArr;
            try {
                iArr[MinerType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9899a[MinerType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9899a[MinerType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9899a[MinerType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9899a[MinerType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Factories {
        public InfiarMiner.InfiarMinerFactory INFIAR;
        public MatrixMiner.MatrixMinerFactory MATRIX;
        public ScalarMiner.ScalarMinerFactory SCALAR;
        public TensorMiner.TensorMinerFactory TENSOR;
        public VectorMiner.VectorMinerFactory VECTOR;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<MinerManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public MinerManager read() {
            return Game.f8589i.minerManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public StatisticsType getBuiltStatisticType(MinerType minerType) {
        return this.f9895d[minerType.ordinal()];
    }

    public Miner.Factory<? extends Miner> getFactory(MinerType minerType) {
        return this.f9893a[minerType.ordinal()];
    }

    public StatisticsType getMoneySpentStatisticType(MinerType minerType) {
        return this.f9894b[minerType.ordinal()];
    }

    public StatisticsType getUpgradedStatisticType(MinerType minerType) {
        return this.f9896k[minerType.ordinal()];
    }

    public boolean minersAndEnergyAvailable() {
        return Game.f8589i.gameValueManager.getSnapshot().getIntValue(GameValueType.MINER_COUNT_SCALAR) > 0;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
    }

    public Miner fromJson(JsonValue jsonValue) {
        Miner create = getFactory(MinerType.valueOf(jsonValue.getString("type"))).create();
        create.loadFromJson(jsonValue);
        return create;
    }

    public boolean isMinerOpened(MinerType minerType, GameValueProvider gameValueProvider) {
        int i = C18211.f9899a[minerType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5 || gameValueProvider.getIntValue(GameValueType.MINER_COUNT_INFIAR) <= 0) {
                            return false;
                        }
                        return true;
                    } else if (gameValueProvider.getIntValue(GameValueType.MINER_COUNT_TENSOR) <= 0) {
                        return false;
                    } else {
                        return true;
                    }
                } else if (gameValueProvider.getIntValue(GameValueType.MINER_COUNT_MATRIX) <= 0) {
                    return false;
                } else {
                    return true;
                }
            } else if (gameValueProvider.getIntValue(GameValueType.MINER_COUNT_VECTOR) <= 0) {
                return false;
            } else {
                return true;
            }
        } else if (gameValueProvider.getIntValue(GameValueType.MINER_COUNT_SCALAR) <= 0) {
            return false;
        } else {
            return true;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        MinerType[] minerTypeArr;
        for (Miner.Factory factory : this.f9893a) {
            factory.setup();
        }
        if (Game.f8589i.assetManager != null) {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/mined-resource.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.minedResourceParticleEffectPool = new ParticleEffectPool(particleEffect, 8, 128);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.internal("particles/miner-double-speed.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.doubleSpeedParticleEffectPool = new ParticleEffectPool(particleEffect2, 8, 128);
            for (MinerType minerType : MinerType.values) {
                ParticleEffect particleEffect3 = new ParticleEffect();
                particleEffect3.load(Gdx.files.internal("particles/building-highlight.prt"), Game.f8589i.assetManager.getTextureRegion("tower-basic-base").getAtlas());
                particleEffect3.setEmittersCleanUpBlendFunction(false);
                particleEffect3.getEmitters().first().setSprites(new Array<>(new Sprite[]{new Sprite(Game.f8589i.minerManager.getFactory(minerType).getTexture())}));
                this.highlightParticles[minerType.ordinal()] = new ParticleEffectPool(particleEffect3, 8, 128);
            }
        }
    }

    public MinerManager() {
        MinerType[] minerTypeArr;
        MinerType[] minerTypeArr2 = MinerType.values;
        this.f9893a = new Miner.Factory[minerTypeArr2.length];
        this.f9892F = new Factories();
        ObjectMap<MinerType, String> objectMap = new ObjectMap<>();
        this.SHORT_MINER_ALIASES = objectMap;
        objectMap.put(MinerType.SCALAR, "S");
        objectMap.put(MinerType.VECTOR, "V");
        objectMap.put(MinerType.MATRIX, "M");
        objectMap.put(MinerType.TENSOR, "T");
        objectMap.put(MinerType.INFIAR, "I");
        this.f9894b = new StatisticsType[minerTypeArr2.length];
        this.f9895d = new StatisticsType[minerTypeArr2.length];
        this.f9896k = new StatisticsType[minerTypeArr2.length];
        this.f9897p = new GameValueType[minerTypeArr2.length];
        this.f9898q = new String[minerTypeArr2.length];
        this.highlightParticles = new ParticleEffectPool[TowerType.values.length];
        for (MinerType minerType : minerTypeArr2) {
            String str = this.SHORT_MINER_ALIASES.get(minerType);
            this.f9894b[minerType.ordinal()] = StatisticsType.valueOf("MMS_" + str);
            this.f9895d[minerType.ordinal()] = StatisticsType.valueOf("MB_" + str);
            this.f9896k[minerType.ordinal()] = StatisticsType.valueOf("MU_" + str);
        }
        Miner.Factory[] factoryArr = this.f9893a;
        int ordinal = MinerType.SCALAR.ordinal();
        Factories factories = this.f9892F;
        ScalarMiner.ScalarMinerFactory scalarMinerFactory = new ScalarMiner.ScalarMinerFactory();
        factories.SCALAR = scalarMinerFactory;
        factoryArr[ordinal] = scalarMinerFactory;
        Miner.Factory[] factoryArr2 = this.f9893a;
        int ordinal2 = MinerType.VECTOR.ordinal();
        Factories factories2 = this.f9892F;
        VectorMiner.VectorMinerFactory vectorMinerFactory = new VectorMiner.VectorMinerFactory();
        factories2.VECTOR = vectorMinerFactory;
        factoryArr2[ordinal2] = vectorMinerFactory;
        Miner.Factory[] factoryArr3 = this.f9893a;
        int ordinal3 = MinerType.MATRIX.ordinal();
        Factories factories3 = this.f9892F;
        MatrixMiner.MatrixMinerFactory matrixMinerFactory = new MatrixMiner.MatrixMinerFactory();
        factories3.MATRIX = matrixMinerFactory;
        factoryArr3[ordinal3] = matrixMinerFactory;
        Miner.Factory[] factoryArr4 = this.f9893a;
        int ordinal4 = MinerType.TENSOR.ordinal();
        Factories factories4 = this.f9892F;
        TensorMiner.TensorMinerFactory tensorMinerFactory = new TensorMiner.TensorMinerFactory();
        factories4.TENSOR = tensorMinerFactory;
        factoryArr4[ordinal4] = tensorMinerFactory;
        Miner.Factory[] factoryArr5 = this.f9893a;
        int ordinal5 = MinerType.INFIAR.ordinal();
        Factories factories5 = this.f9892F;
        InfiarMiner.InfiarMinerFactory infiarMinerFactory = new InfiarMiner.InfiarMinerFactory();
        factories5.INFIAR = infiarMinerFactory;
        factoryArr5[ordinal5] = infiarMinerFactory;
        for (MinerType minerType2 : MinerType.values) {
            if (this.f9893a[minerType2.ordinal()] == null) {
                throw new RuntimeException("Not all miner factories were created");
            }
        }
        for (MinerType minerType3 : MinerType.values) {
            this.f9898q[minerType3.ordinal()] = "miner_name_" + minerType3.name();
            this.f9897p[minerType3.ordinal()] = GameValueType.valueOf("MINER_" + minerType3.name() + "_INSTALL_DURATION");
        }
    }

    public GameValueType getInstallDurationGameValueType(MinerType minerType) {
        return this.f9897p[minerType.ordinal()];
    }

    public String getTitle(MinerType minerType) {
        return Game.f8589i.localeManager.i18n.get(this.f9898q[minerType.ordinal()]);
    }
}
