package com.prineside.tdi2.systems;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.actions.RewardingAdAction;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.REGS;
import java.io.PrintStream;
@REGS
/* loaded from: classes2.dex */
public class LootSystem extends GameSystem {

    /* renamed from: E */
    public static ItemStack f11533E = null;
    public static final float ENCRYPTED_CASE_GLOBAL_INTERVAL = 2400.0f;

    /* renamed from: a */
    public ProgressManager.InventoryStatistics f11538a;

    /* renamed from: b */
    public float f11539b;
    public ProgressManager.InventoryStatistics inventoryStatistics;
    public RandomXS128 random;

    /* renamed from: t */
    public int f11546t;

    /* renamed from: u */
    public float f11547u;

    /* renamed from: v */
    public int f11548v;

    /* renamed from: w */
    public int f11549w;

    /* renamed from: y */
    public float f11551y;
    public static final int[] REWARDING_AD_VIEW_BONUSES = {3, 7, 12, 18, 25};

    /* renamed from: D */
    public static final Vector2 f11532D = new Vector2();

    /* renamed from: F */
    public static final int[] f11534F = new int[ResourceType.values.length];
    public float globalLootDropRateMultiplier = 1.0f;

    /* renamed from: d */
    public float f11540d = 60.0f;

    /* renamed from: k */
    public float f11541k = 1.0f;

    /* renamed from: p */
    public int f11542p = 0;

    /* renamed from: q */
    public boolean f11543q = false;

    /* renamed from: r */
    public float f11544r = 0.0f;

    /* renamed from: s */
    public float f11545s = 0.0f;

    /* renamed from: x */
    public int f11550x = 0;

    /* renamed from: z */
    public int f11552z = 0;

    /* renamed from: A */
    public int f11535A = 0;

    /* renamed from: B */
    public int f11536B = 0;

    /* renamed from: C */
    public IntIntMap f11537C = new IntIntMap();
    public ListenerGroup<LootSystemListener> listeners = new ListenerGroup<>(LootSystemListener.class);

    /* renamed from: com.prineside.tdi2.systems.LootSystem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23081 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11553a;

        static {
            int[] iArr = new int[MinerType.values().length];
            f11553a = iArr;
            try {
                iArr[MinerType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11553a[MinerType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11553a[MinerType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11553a[MinerType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11553a[MinerType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface LootSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class LootSystemListenerAdapter implements LootSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener
            public void enemyLootAdded(Enemy enemy, Item item, int i, boolean z) {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener
            public void minerMinedItem(Miner miner, ItemStack itemStack) {
            }

            @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener
            public void rewardingAdBecameAvailable() {
            }

            @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener
            public void rewardingAdRegistered() {
            }
        }

        void enemyLootAdded(Enemy enemy, Item item, int i, boolean z);

        void minerMinedItem(Miner miner, ItemStack itemStack);

        void rewardingAdBecameAvailable();

        void rewardingAdRegistered();
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11554a;

        public /* synthetic */ _EnemySystemListener(GameSystemProvider gameSystemProvider, C23081 c23081) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 100107;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11554a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11554a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            if (enemy.loot != null) {
                LootSystem.f11532D.set(enemy.getPosition());
                InputSystem inputSystem = this.f11554a._input;
                if (inputSystem != null) {
                    inputSystem.cameraController.mapToStage(LootSystem.f11532D);
                }
                float f = ((-enemy.loot.size) * 96.0f * 0.5f) + 48.0f;
                int i = 0;
                while (true) {
                    Array<ItemStack> array = enemy.loot;
                    if (i < array.size) {
                        ItemStack[] itemStackArr = array.items;
                        if (itemStackArr[i] != null) {
                            this.f11554a.gameState.addLootIssuedPrizes(itemStackArr[i], LootSystem.f11532D.f5527x + f + (i * 96.0f), LootSystem.f11532D.f5528y, 2);
                        }
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f11554a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MinerSystemListener extends MinerSystem.MinerSystemListener.MinerSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11555a;

        public /* synthetic */ _MinerSystemListener(GameSystemProvider gameSystemProvider, C23081 c23081) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 190106;
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerResourcesChanged(Miner miner, ResourceType resourceType, int i, boolean z) {
            this.f11555a.loot.m21010k(miner, resourceType, i, z);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11555a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11555a, GameSystemProvider.class);
        }

        @Deprecated
        public _MinerSystemListener() {
        }

        public _MinerSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11555a = gameSystemProvider;
        }
    }

    /* renamed from: d */
    public static float m21017d(float f) {
        if (f <= 100.0f) {
            return ((100.0f - f) * 0.01f) + 1.0f;
        }
        if (f > 880.0f) {
            f = ((1.0f - (1.0f / (((f - 880.0f) * 0.00125f) + 1.0f))) * 720.0f) + 880.0f;
        }
        return 1.0f / (((MathUtils.sin(((f - 100.0f) * 0.002f) - 1.5707964f) * 40.0f) + 1.0f) + 40.0f);
    }

    /* renamed from: e */
    public static float m21016e(float f, float f2, int i) {
        float clamp = (float) MathUtils.clamp(f, 0.001d, 1.0d);
        float f3 = i;
        double d = clamp;
        Double.isNaN(d);
        return (0.15f * f2 * clamp * f3) + f2 + ((((float) StrictMath.pow(i, (d * 0.2d) + 1.0d)) - (f3 * (1.0f - clamp))) * 0.075f * f2);
    }

    /* renamed from: f */
    public static float m21015f(int i) {
        if (i < 100) {
            return i * 0.01f;
        }
        float f = i;
        if (f > 2000.0f) {
            f = ((1.0f - (1.0f / (((f - 2000.0f) * 0.00375f) + 1.0f))) * 270.91f) + 2000.0f;
        }
        double d = f;
        Double.isNaN(d);
        Double.isNaN(d);
        return (float) (((((d - 100.0d) / 400.0d) * 0.85d) + 1.0d) - (StrictMath.pow(d * 2.5E-4d, 3.5d) * 10.0d));
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public boolean canGiveEncryptedChests() {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        return gameStateSystem.canLootCases && this.f11536B + gameStateSystem.encryptedChestsInInventory < Game.f8589i.progressManager.getMaxEncryptedCasesInInventory();
    }

    /* renamed from: g */
    public final float m21014g() {
        return (1800.0f / ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE))) * ((this.random.nextFloat() * 0.4f) + 0.8f);
    }

    public int getRewardingAdViews() {
        return this.f11542p;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Loot";
    }

    public boolean isRewardingAdAvailableByState() {
        return getTimeToRewardingAds(false) == 0.0f;
    }

    public boolean isRewardingAdAvailableInReality() {
        return getTimeToRewardingAds(true) == 0.0f;
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    /* renamed from: h */
    public static ItemStack m21013h() {
        if (f11533E == null) {
            f11533E = new ItemStack(Item.C1543D.GREEN_PAPER, 1);
        }
        return f11533E;
    }

    public static void main(String[] strArr) {
        int[] iArr = {30, 50, 75, 90, 99, 100, 101, 120, 150, 250, 350, 500, 900, 1500, 2000, 2500, 2550, 2600, 5000};
        for (int i = 0; i < 19; i++) {
            int i2 = iArr[i];
            PrintStream printStream = System.out;
            printStream.println(i2 + " = " + m21017d(i2));
        }
        int[] iArr2 = {0, 1, 2, 3, 5, 10, 20, 50, 100, HttpStatus.SC_OK, 500, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 2000};
        float[] fArr = {1.0f, 0.9f, 0.5f, 0.2f, 0.1f, 0.0f};
        for (int i3 = 0; i3 < 6; i3++) {
            float f = fArr[i3];
            for (int i4 = 0; i4 < 13; i4++) {
                int i5 = iArr2[i4];
                PrintStream printStream2 = System.out;
                printStream2.println(i5 + "^" + f + " = " + m21016e(f, 1.0f, i5));
            }
        }
        int[] iArr3 = {30, 50, 75, 90, 99, 100, 101, 120, 150, 250, 350, 500, 900, 1500, 2000, 2001, 2010, 2050, 2200, 2270, 2271, 2300, 2500, 2550, 2600, 3500, 5000};
        for (int i6 = 0; i6 < 27; i6++) {
            int i7 = iArr3[i6];
            PrintStream printStream3 = System.out;
            printStream3.println(i7 + " diff = " + m21015f(i7));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x02aa A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void fillWithLoot(com.prineside.tdi2.Enemy r36) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.systems.LootSystem.fillWithLoot(com.prineside.tdi2.Enemy):void");
    }

    public int getLootSlots(MinerType minerType) {
        int intValue;
        int intValue2 = this.f8844S.gameValue.getIntValue(GameValueType.MINERS_LOOT_SLOTS);
        int i = C23081.f11553a[minerType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_INFIAR_LOOT_SLOTS);
                        } else {
                            return intValue2;
                        }
                    } else {
                        intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_TENSOR_LOOT_SLOTS);
                    }
                } else {
                    intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_MATRIX_LOOT_SLOTS);
                }
            } else {
                intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_VECTOR_LOOT_SLOTS);
            }
        } else {
            intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_SCALAR_LOOT_SLOTS);
        }
        return intValue2 + intValue;
    }

    public float getRewardingAdsLootMultiplier() {
        int i = this.f11542p;
        if (i <= 0) {
            return 1.0f;
        }
        int[] iArr = REWARDING_AD_VIEW_BONUSES;
        if (i > iArr.length) {
            return 1.0f;
        }
        return 1.0f + (iArr[i - 1] * 0.01f);
    }

    public float getTimeToRewardingAds(boolean z) {
        if (this.f11542p >= 5) {
            return -1.0f;
        }
        if (!Config.isHeadless() && !Game.f8589i.purchaseManager.rewardingAdsAvailable()) {
            return -1.0f;
        }
        float f = 300.0f - this.f11545s;
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (z) {
            return Math.max(Game.f8589i.purchaseManager.getSecondsTillAdIsReady(PurchaseManager.RewardingAdsType.LOOT_MULTIPLIER), f);
        }
        return f;
    }

    /* renamed from: k */
    public final void m21010k(Miner miner, ResourceType resourceType, int i, boolean z) {
        if (z && i > 0) {
            int y = (miner.getTile().getY() * 8192) + miner.getTile().getX();
            int i2 = this.f11537C.get(y, 0);
            for (int i3 = 0; i3 < ResourceType.values.length; i3++) {
                f11534F[i3] = miner.minedResources[i3].get();
            }
            int lootSlots = getLootSlots(miner.type);
            float m21012i = m21012i(f11534F, miner.minedItems.size, lootSlots);
            if (i2 >= lootSlots) {
                m21012i = 0.0f;
            }
            if (m21012i != 0.0f && this.random.nextFloat() < 0.4f && this.random.nextFloat() < m21012i) {
                float m21011j = m21011j(this.random, resourceType, i2);
                ItemStack generateItemByRarity = Game.f8589i.itemManager.generateItemByRarity(this.random, ProgressManager.getRarityFromQuality(m21011j), ProgressManager.globalQualityToRarityQualuty(m21011j), 0.5f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, false, this.f11538a);
                this.f11538a.countItem(generateItemByRarity.getItem());
                Vector2 vector2 = f11532D;
                vector2.set(miner.getTile().center);
                InputSystem inputSystem = this.f8844S._input;
                if (inputSystem != null) {
                    inputSystem.cameraController.mapToStage(vector2);
                }
                this.f8844S.gameState.addLootIssuedPrizes(generateItemByRarity, vector2.f5527x, vector2.f5528y, 2);
                miner.minedItems.add(generateItemByRarity);
                this.f11537C.put(y, i2 + 1);
                this.listeners.begin();
                for (int i4 = 0; i4 < this.listeners.size(); i4++) {
                    this.listeners.get(i4).minerMinedItem(miner, generateItemByRarity);
                }
                this.listeners.end();
            }
        }
    }

    /* renamed from: l */
    public final void m21009l() {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        int i = this.f11546t;
        float f = i - (i * 0.4f);
        int nextFloat = (int) (f + (((i + (i * 0.4f)) - f) * this.random.nextFloat()));
        this.f11549w = nextFloat;
        if (nextFloat == 0) {
            this.f11549w = 1;
        }
    }

    /* renamed from: m */
    public final void m21008m() {
        float m21016e;
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.LOOT_FREQUENCY);
        if (percentValueAsMultiplier <= 0.0f) {
            m21016e = 3.1536E7f;
        } else {
            m21016e = m21016e((1.0f - (((float) StrictMath.pow(percentValueAsMultiplier - 1.0f, 1.5d)) * 0.031625f)) * 0.5f, this.f11539b, this.f11552z) / percentValueAsMultiplier;
        }
        float clamp = m21016e / MathUtils.clamp(this.globalLootDropRateMultiplier, 0.001f, 1.0f);
        float f = this.f11540d + clamp;
        this.f11540d = f;
        if (this.f11552z == 0) {
            clamp *= 0.35f;
        }
        this.f11540d = f + ((this.random.nextFloat() - this.random.nextFloat()) * clamp);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.random = (RandomXS128) kryo.readObjectOrNull(input, RandomXS128.class);
        this.globalLootDropRateMultiplier = input.readFloat();
        this.inventoryStatistics = (ProgressManager.InventoryStatistics) kryo.readObject(input, ProgressManager.InventoryStatistics.class);
        this.f11538a = (ProgressManager.InventoryStatistics) kryo.readObject(input, ProgressManager.InventoryStatistics.class);
        this.f11539b = input.readFloat();
        this.f11540d = input.readFloat();
        this.f11541k = input.readFloat();
        this.f11542p = input.readVarInt(true);
        this.f11543q = input.readBoolean();
        this.f11544r = input.readFloat();
        this.f11545s = input.readFloat();
        this.f11546t = input.readInt();
        this.f11547u = input.readFloat();
        this.f11548v = input.readInt();
        this.f11549w = input.readInt();
        this.f11550x = input.readInt();
        this.f11551y = input.readFloat();
        this.f11552z = input.readInt();
        this.f11535A = input.readInt();
        this.f11536B = input.readVarInt(true);
        this.f11537C = (IntIntMap) kryo.readObject(input, IntIntMap.class);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        if (this.f8844S.gameState.getSeed() != -1) {
            if (this.f8844S.gameState.gameStartTimestamp != -1) {
                ProgressManager.InventoryStatistics inventoryStatistics = this.inventoryStatistics;
                if (inventoryStatistics != null) {
                    this.f11538a = inventoryStatistics.cpy();
                    long seed = this.f8844S.gameState.getSeed() + (this.f8844S.gameState.gameStartTimestamp * 29);
                    this.random = new RandomXS128(seed);
                    Logger.log("LootSystem", "loot random state " + this.f8844S.gameState.gameStartTimestamp + " " + this.random.getState(0) + " " + this.random.getState(1));
                    this.f11539b = m21017d((float) this.f8844S.gameState.averageDifficulty) * 210.0f;
                    StringBuilder sb = new StringBuilder();
                    sb.append("itemStep = ");
                    sb.append(this.f11539b);
                    sb.append(" avgDiff = ");
                    sb.append(this.f8844S.gameState.averageDifficulty);
                    Logger.log("LootSystem", sb.toString());
                    GameStateSystem gameStateSystem = this.f8844S.gameState;
                    int i = gameStateSystem.averageDifficulty;
                    if (i < 100) {
                        float f = i * 0.01f;
                        this.f11547u = f;
                        this.f11546t = (int) (f * 125.0f);
                    } else if (i > 100) {
                        float f2 = (((i - 100) / 400.0f) * 1.5f) + 1.0f;
                        this.f11547u = f2;
                        this.f11546t = (int) (f2 * 125.0f);
                    } else {
                        this.f11547u = 1.0f;
                        this.f11546t = 125;
                    }
                    this.f11547u *= 0.15f;
                    float difficultyModePrizeMultiplier = this.f11539b * (1.0f / Game.f8589i.progressManager.getDifficultyModePrizeMultiplier(gameStateSystem.difficultyMode));
                    this.f11539b = difficultyModePrizeMultiplier;
                    GameStateSystem gameStateSystem2 = this.f8844S.gameState;
                    if (gameStateSystem2.lootBoostEnabled) {
                        this.f11539b = difficultyModePrizeMultiplier / 1.5f;
                    }
                    if (gameStateSystem2.rarityBoostEnabled) {
                        this.f11541k *= 1.5f;
                    }
                    if (this.f11539b > 0.0f) {
                        m21008m();
                        m21009l();
                        GameSystemProvider gameSystemProvider = this.f8844S;
                        gameSystemProvider.enemy.listeners.add(new _EnemySystemListener(gameSystemProvider, null));
                        GameSystemProvider gameSystemProvider2 = this.f8844S;
                        gameSystemProvider2.miner.listeners.add(new _MinerSystemListener(gameSystemProvider2, null));
                        Logger.log("LootSystem", "game start ts: " + this.f8844S.gameState.gameStartTimestamp + " avg diff: " + this.f8844S.gameState.averageDifficulty + " loot random seed: " + seed + " items step: " + this.f11539b + " " + this.f11540d + " " + this.f11549w);
                        return;
                    }
                    throw new IllegalStateException("itemsStep is " + this.f11539b);
                }
                throw new IllegalStateException("inventoryStatistics not set");
            }
            throw new IllegalStateException("GameStartTimestamp not set");
        }
        throw new IllegalStateException("GameStateSystem seed not set");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        StateSystem.ActionsArray currentUpdateActions = this.f8844S.gameState.getCurrentUpdateActions();
        if (currentUpdateActions != null) {
            for (int i = 0; i < currentUpdateActions.size; i++) {
                Action action = currentUpdateActions.actions[i];
                if (action.getType() == ActionType.RA) {
                    RewardingAdAction rewardingAdAction = (RewardingAdAction) action;
                    if (isRewardingAdAvailableByState()) {
                        this.f11542p++;
                        this.f11545s = 0.0f;
                        Logger.log("LootSystem", "rewarding ad view registered, current multiplier: " + getRewardingAdsLootMultiplier());
                        this.f8844S.gameState.registerPlayerActivity();
                        this.listeners.begin();
                        for (int i2 = 0; i2 < this.listeners.size(); i2++) {
                            this.listeners.get(i2).rewardingAdRegistered();
                        }
                        this.listeners.end();
                    } else {
                        Logger.error("LootSystem", "failed to handle rewarding ads action - not available (" + getTimeToRewardingAds(false) + ")");
                    }
                }
            }
        }
        if (this.f8844S.gameState.isGameRealTimePasses()) {
            float rewardingAdsLootMultiplier = f * getRewardingAdsLootMultiplier();
            if (this.f8844S.gameState.isGameRealTimePasses()) {
                rewardingAdsLootMultiplier *= 1.25f;
            }
            this.f11544r += rewardingAdsLootMultiplier;
            this.f11545s += rewardingAdsLootMultiplier;
            if (!this.f11543q && isRewardingAdAvailableByState()) {
                this.listeners.begin();
                for (int i3 = 0; i3 < this.listeners.size(); i3++) {
                    this.listeners.get(i3).rewardingAdBecameAvailable();
                }
                this.listeners.end();
                this.f11543q = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0038 A[LOOP:0: B:20:0x0035->B:22:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0045  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float m21012i(int[] r5, int r6, int r7) {
        /*
            r0 = 2147483647(0x7fffffff, float:NaN)
            r1 = 0
            if (r6 < r7) goto L8
        L6:
            r6 = 0
            goto L33
        L8:
            if (r6 != 0) goto L10
            r0 = 150(0x96, float:2.1E-43)
            r6 = 994352038(0x3b449ba6, float:0.003)
            goto L33
        L10:
            r7 = 1
            if (r6 != r7) goto L19
            r0 = 400(0x190, float:5.6E-43)
            r6 = 977574822(0x3a449ba6, float:7.5E-4)
            goto L33
        L19:
            r7 = 2
            if (r6 != r7) goto L22
            r0 = 1150(0x47e, float:1.611E-42)
            r6 = 956016770(0x38fba882, float:1.2E-4)
            goto L33
        L22:
            r7 = 3
            if (r6 != r7) goto L2b
            r0 = 2000(0x7d0, float:2.803E-42)
            r6 = 944879383(0x3851b717, float:5.0E-5)
            goto L33
        L2b:
            r7 = 4
            if (r6 != r7) goto L6
            r0 = 3200(0xc80, float:4.484E-42)
            r6 = 925353388(0x3727c5ac, float:1.0E-5)
        L33:
            r7 = 0
            r2 = 0
        L35:
            int r3 = r5.length
            if (r7 >= r3) goto L42
            r3 = r5[r7]
            int r4 = r7 + 6
            int r3 = r3 * r4
            int r2 = r2 + r3
            int r7 = r7 + 1
            goto L35
        L42:
            if (r2 > r0) goto L45
            return r1
        L45:
            int r2 = r2 - r0
            float r5 = (float) r2
            r7 = 1008981770(0x3c23d70a, float:0.01)
            float r5 = r5 * r7
            r7 = 1065353216(0x3f800000, float:1.0)
            float r5 = r5 + r7
            double r0 = (double) r5
            r2 = 4603804719079489536(0x3fe4000000000000, double:0.625)
            double r0 = java.lang.StrictMath.pow(r0, r2)
            r2 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 - r2
            float r5 = (float) r0
            float r5 = r5 * r6
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.systems.LootSystem.m21012i(int[], int, int):float");
    }

    /* renamed from: j */
    public static float m21011j(RandomXS128 randomXS128, ResourceType resourceType, int i) {
        float f;
        float ordinal = (resourceType.ordinal() + 1) * 0.2f;
        if (i == 0) {
            f = 0.7f;
        } else {
            f = i == 1 ? 0.85f : 0.85f;
            return StrictMath.abs(randomXS128.nextFloat() - randomXS128.nextFloat()) * ((0.75f * ordinal) + (ordinal * StrictMath.abs(randomXS128.nextFloat() - randomXS128.nextFloat()) * 0.25f));
        }
        ordinal *= f;
        return StrictMath.abs(randomXS128.nextFloat() - randomXS128.nextFloat()) * ((0.75f * ordinal) + (ordinal * StrictMath.abs(randomXS128.nextFloat() - randomXS128.nextFloat()) * 0.25f));
    }

    /* renamed from: c */
    public final void m21018c(Enemy enemy, Item item, int i, boolean z) {
        enemy.addLoot(item, i);
        this.listeners.begin();
        for (int i2 = 0; i2 < this.listeners.size(); i2++) {
            this.listeners.get(i2).enemyLootAdded(enemy, item, i, z);
        }
        this.listeners.end();
    }

    public void viewRewardingAdAction() {
        if (isRewardingAdAvailableByState()) {
            this.f8844S.gameState.pushAction(new RewardingAdAction());
            return;
        }
        Logger.error("LootSystem", "failed to add rewarding ads action - not available " + getTimeToRewardingAds(false));
        Logger.log("LootSystem", this.f11542p + "/5 " + Game.f8589i.purchaseManager.rewardingAdsAvailable() + " " + Game.f8589i.actionResolver.rewardAdsAvailable());
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.random, RandomXS128.class);
        output.writeFloat(this.globalLootDropRateMultiplier);
        kryo.writeObject(output, this.inventoryStatistics);
        kryo.writeObject(output, this.f11538a);
        output.writeFloat(this.f11539b);
        output.writeFloat(this.f11540d);
        output.writeFloat(this.f11541k);
        output.writeVarInt(this.f11542p, true);
        output.writeBoolean(this.f11543q);
        output.writeFloat(this.f11544r);
        output.writeFloat(this.f11545s);
        output.writeInt(this.f11546t);
        output.writeFloat(this.f11547u);
        output.writeInt(this.f11548v);
        output.writeInt(this.f11549w);
        output.writeInt(this.f11550x);
        output.writeFloat(this.f11551y);
        output.writeInt(this.f11552z);
        output.writeInt(this.f11535A);
        output.writeVarInt(this.f11536B, true);
        kryo.writeObject(output, this.f11537C);
        kryo.writeObject(output, this.listeners);
    }
}
