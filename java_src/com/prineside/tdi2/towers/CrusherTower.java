package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectFilter;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class CrusherTower extends Tower {

    /* renamed from: V */
    public static final float f12204V = new Color(1.0f, 1.0f, 1.0f, 0.0f).toFloatBits();

    /* renamed from: W */
    public static final float f12205W = new Color(1.0f, 1.0f, 1.0f, 1.0f).toFloatBits();

    /* renamed from: X */
    public static final Vector2 f12206X = new Vector2();

    /* renamed from: Y */
    public static final ObjectFilter<Enemy> f12207Y = new ObjectFilter() { // from class: com.prineside.tdi2.towers.a
        @Override // com.prineside.tdi2.utils.ObjectFilter
        public final boolean passes(Object obj) {
            boolean m20761g;
            m20761g = CrusherTower.m20761g((Enemy) obj);
            return m20761g;
        }
    };

    /* renamed from: Z */
    public static final int[] f12208Z = {4, 2, 1, 3, 5};
    @NAGS

    /* renamed from: M */
    public float f12209M;
    @NAGS

    /* renamed from: N */
    public float f12210N;

    /* renamed from: O */
    public float f12211O;

    /* renamed from: P */
    public float f12212P;

    /* renamed from: Q */
    public int f12213Q;

    /* renamed from: R */
    public float f12214R;

    /* renamed from: T */
    public float f12215T;

    /* renamed from: U */
    public Array<Hook> f12216U;

    /* renamed from: com.prineside.tdi2.towers.CrusherTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24271 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12217a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12217a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12217a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12217a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12217a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12217a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class CrusherTowerFactory extends Tower.Factory<CrusherTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12218i;

        /* renamed from: j */
        public TextureRegion f12219j;

        /* renamed from: k */
        public TextureRegion f12220k;

        public CrusherTowerFactory() {
            super("tower-crusher", TowerType.CRUSHER);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 49;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.BROWN.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24271.f12217a[generalizedTowerStatType.ordinal()];
            if (i == 1 || i == 2) {
                return 1;
            }
            if (i != 3) {
                return (i == 4 || i == 5) ? 1 : 0;
            }
            return 5;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public CrusherTower create() {
            return new CrusherTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12219j = Game.f8589i.assetManager.getTextureRegion("tower-crusher-hook");
            this.f12220k = Game.f8589i.assetManager.getTextureRegion("crusher-chain");
            this.f12218i = Game.f8589i.towerManager.getTextureConfig(TowerType.CRUSHER, "weapon");
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CRUSHER_A_HEAVY_VICE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_CRUSHER_A_INCREASED_CAPACITY), 0, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CRUSHER_A_CAREFUL_PROCESSING), 2, true).toString();
            CrusherTower crusherTower = (CrusherTower) tower;
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(crusherTower.getDisorientationChance(), 1, true).toString();
            int intValue = gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_CRUSHER_A_ULTIMATE_COINS_LIMIT);
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(crusherTower.getDisorientedUnitCoinPerTile(), 1, true).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(intValue, 1, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider) {
            int buildPrice = super.getBuildPrice(gameSystemProvider);
            int i = 0;
            int i2 = 0;
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray = gameSystemProvider.tower.towers;
                if (i < delayedRemovalArray.size) {
                    if (delayedRemovalArray.items[i].type == TowerType.CRUSHER) {
                        i2++;
                    }
                    i++;
                } else {
                    return (int) (buildPrice * (((float) StrictMath.pow(i2, 1.600000023841858d)) + 1.0f));
                }
            }
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{""};
            abilityConfigArr[1].descriptionArgs = new String[]{""};
            abilityConfigArr[2].descriptionArgs = new String[]{""};
            abilityConfigArr[3].descriptionArgs = new String[]{""};
            abilityConfigArr[4].descriptionArgs = new String[]{"", ""};
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class Hook implements KryoSerializable {
        public float chewingTime;
        @NAGS
        public float enemyStartDistance;
        public boolean recruiting;
        public float startingHealth;
        public float timeSinceDamage;
        public float timeSinceEnemySearch;

        /* renamed from: a */
        public Enemy.EnemyReference f12221a = Enemy.EnemyReference.NULL;
        public Vector2 basePos = new Vector2();
        public Vector2 pos = new Vector2();
        public int status = 0;
        @NAGS
        public Vector2 drawPos = new Vector2();
        @NAGS
        public Vector2 enemyStartPos = new Vector2();

        public Enemy getTarget() {
            return this.f12221a.enemy;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f12221a = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
            this.basePos = (Vector2) kryo.readObject(input, Vector2.class);
            this.pos = (Vector2) kryo.readObject(input, Vector2.class);
            this.status = input.readByte();
            this.startingHealth = input.readFloat();
            this.chewingTime = input.readFloat();
            this.timeSinceEnemySearch = input.readFloat();
            this.timeSinceDamage = input.readFloat();
            this.recruiting = input.readBoolean();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f12221a);
            kryo.writeObject(output, this.basePos);
            kryo.writeObject(output, this.pos);
            output.writeByte(this.status);
            output.writeFloat(this.startingHealth);
            output.writeFloat(this.chewingTime);
            output.writeFloat(this.timeSinceEnemySearch);
            output.writeFloat(this.timeSinceDamage);
            output.writeBoolean(this.recruiting);
        }
    }

    public /* synthetic */ CrusherTower(C24271 c24271) {
        this();
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m20761g(Enemy enemy) {
        return !enemy.crusherTowerTarget;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        return false;
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        Enemy target;
        int i = 0;
        while (true) {
            Array<Hook> array = this.f12216U;
            if (i < array.size) {
                Hook hook = array.items[i];
                if (hook.status == 3 && (target = hook.getTarget()) != null) {
                    Vector2 vector2 = target.drawPosition;
                    Vector2 vector22 = hook.basePos;
                    vector2.set(vector22.f5527x, vector22.f5528y);
                    target.healthBarInvisible = true;
                    target.drawHealth(spriteBatch);
                }
                i++;
            } else {
                spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                super.drawBatch(spriteBatch, f);
                return;
            }
        }
    }

    public float getDisorientedUnitCoinPerTile() {
        return this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_CRUSHER_A_ULTIMATE_COINS);
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.CRUSHER.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.CRUSHER.f12218i;
    }

    /* renamed from: h */
    public final void m20760h() {
        int i = 0;
        while (true) {
            Array<Hook> array = this.f12216U;
            if (i < array.size) {
                Hook hook = array.items[i];
                int i2 = hook.status;
                if ((i2 == 2 || i2 == 3) && hook.getTarget() != null) {
                    Enemy target = hook.getTarget();
                    target.disabled = false;
                    target.visible = true;
                    target.healthBarInvisible = false;
                    target.setPositionToPath();
                    target.crusherTowerTarget = false;
                    this.f8844S.enemy.updateEnemyCurrentTile(target);
                    hook.status = 0;
                    hook.f12221a = Enemy.EnemyReference.NULL;
                    hook.recruiting = false;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void onPreSell() {
        m20760h();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean shouldSearchForTarget() {
        return false;
    }

    public CrusherTower() {
        super(TowerType.CRUSHER);
        this.f12216U = new Array<>(Hook.class);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawWeapon(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        float f5;
        boolean z;
        float f6;
        int i;
        Enemy target;
        float f7;
        int i2;
        float f8;
        boolean z2;
        float f9 = this.f12210N - this.f12209M;
        float abs = StrictMath.abs(f9);
        float f10 = 2.0f;
        float f11 = 0.0f;
        if (f9 < 0.0f) {
            f5 = f4 * 2.0f;
        } else {
            f5 = f4 * 0.5f;
        }
        int i3 = 2;
        float f12 = 1.0f;
        if (f5 >= abs) {
            float f13 = this.f12210N;
            this.f12209M = f13;
            if (f13 == 0.0f) {
                int i4 = 0;
                while (true) {
                    Array<Hook> array = this.f12216U;
                    if (i4 < array.size) {
                        if (array.items[i4].status == 3) {
                            z2 = true;
                            break;
                        }
                        i4++;
                    } else {
                        z2 = false;
                        break;
                    }
                }
                if (z2) {
                    this.f12210N = 1.0f;
                }
            } else {
                this.f12210N = 0.0f;
            }
        } else {
            this.f12209M += f9 * (f5 / abs);
            int i5 = 0;
            while (true) {
                Array<Hook> array2 = this.f12216U;
                if (i5 < array2.size) {
                    Hook[] hookArr = array2.items;
                    if (hookArr[i5].status == 2 && PMath.getSquareDistanceBetweenPoints(hookArr[i5].drawPos.f5527x, hookArr[i5].drawPos.f5528y, hookArr[i5].basePos.f5527x, hookArr[i5].basePos.f5528y) < 4096.0f) {
                        z = true;
                        break;
                    }
                    i5++;
                } else {
                    z = false;
                    break;
                }
            }
            if (z) {
                this.f12210N = 0.0f;
            }
        }
        if (getTile().visibleOnScreen && !isOutOfOrder()) {
            int i6 = 0;
            while (true) {
                Array<Hook> array3 = this.f12216U;
                if (i6 >= array3.size) {
                    break;
                }
                Hook hook = array3.items[i6];
                Vector2 vector2 = hook.basePos;
                float f14 = vector2.f5527x;
                float f15 = vector2.f5528y;
                Vector2 vector22 = hook.pos;
                float distanceBetweenPoints = PMath.getDistanceBetweenPoints(f14, f15, vector22.f5527x, vector22.f5528y) / 64.0f;
                if (distanceBetweenPoints > f12) {
                    f7 = 1.0f;
                } else {
                    f7 = distanceBetweenPoints;
                }
                int i7 = hook.status;
                if (i7 == i3) {
                    if (hook.enemyStartDistance != f11) {
                        f8 = ((PMath.getDistanceBetweenPoints(hook.drawPos, hook.basePos) / hook.enemyStartDistance) * 0.4f) + 0.6f;
                    } else {
                        f8 = 1.0f;
                    }
                    float f16 = f8 * f7;
                    TextureRegion textureRegion = Game.f8589i.towerManager.f10174F.CRUSHER.f12220k;
                    Vector2 vector23 = hook.basePos;
                    float f17 = vector23.f5527x;
                    float f18 = vector23.f5528y;
                    Vector2 vector24 = hook.drawPos;
                    i2 = i6;
                    DrawUtils.texturedLine(spriteBatch, textureRegion, f17, f18, vector24.f5527x, vector24.f5528y, 8.0f * f7, f12204V, f12205W);
                    float angleBetweenPoints = PMath.getAngleBetweenPoints(hook.basePos, hook.drawPos);
                    TextureRegion textureRegion2 = Game.f8589i.towerManager.f10174F.CRUSHER.f12219j;
                    Vector2 vector25 = hook.drawPos;
                    float f19 = f16 * 23.0f;
                    float f20 = f16 * 22.0f;
                    spriteBatch.draw(textureRegion2, vector25.f5527x - f19, vector25.f5528y - f20, f19, f20, f16 * 46.0f, f16 * 44.0f, 1.0f, 1.0f, angleBetweenPoints);
                } else {
                    i2 = i6;
                    if (i7 == 1) {
                        TextureRegion textureRegion3 = Game.f8589i.towerManager.f10174F.CRUSHER.f12220k;
                        Vector2 vector26 = hook.basePos;
                        float f21 = vector26.f5527x;
                        float f22 = vector26.f5528y;
                        Vector2 vector27 = hook.drawPos;
                        DrawUtils.texturedLine(spriteBatch, textureRegion3, f21, f22, vector27.f5527x, vector27.f5528y, f7 * 8.0f, f12204V, f12205W);
                        float angleBetweenPoints2 = PMath.getAngleBetweenPoints(hook.basePos, hook.drawPos);
                        TextureRegion textureRegion4 = Game.f8589i.towerManager.f10174F.CRUSHER.f12219j;
                        Vector2 vector28 = hook.drawPos;
                        float f23 = f7 * 23.0f;
                        float f24 = f7 * 22.0f;
                        spriteBatch.draw(textureRegion4, vector28.f5527x - f23, vector28.f5528y - f24, f23, f24, f7 * 46.0f, f7 * 44.0f, 1.0f, 1.0f, angleBetweenPoints2);
                    }
                }
                i6 = i2 + 1;
                f12 = 1.0f;
                i3 = 2;
                f11 = 0.0f;
            }
            int i8 = 0;
            while (true) {
                Array<Hook> array4 = this.f12216U;
                if (i8 >= array4.size) {
                    break;
                }
                Hook hook2 = array4.items[i8];
                if (hook2.status == 3 && (target = hook2.getTarget()) != null) {
                    TextureRegion texture = target.getTexture();
                    float regionWidth = texture.getRegionWidth() * (24.0f / (target.getSize() * 2.0f));
                    Vector2 vector29 = hook2.basePos;
                    float f25 = regionWidth * 0.5f;
                    float f26 = vector29.f5528y - f25;
                    float f27 = this.f12209M;
                    i = i8;
                    spriteBatch.draw(texture, vector29.f5527x - f25, f26, f25, f25, regionWidth, regionWidth, (0.3f * f27) + 1.0f, 1.0f - (f27 * 0.6f), 0.0f);
                } else {
                    i = i8;
                }
                i8 = i + 1;
            }
            float f28 = this.f12209M * 8.0f;
            Array<TextureRegionConfig> weaponTextures = getWeaponTextures();
            weaponTextures.items[0].drawBatch(spriteBatch, getTile().boundingBox.minX, getTile().boundingBox.minY + f28, 128.0f);
            weaponTextures.items[1].drawBatch(spriteBatch, getTile().boundingBox.minX, getTile().boundingBox.minY - f28, 128.0f);
            int i9 = 0;
            while (true) {
                Array<Hook> array5 = this.f12216U;
                if (i9 < array5.size) {
                    Hook hook3 = array5.items[i9];
                    Enemy target2 = hook3.getTarget();
                    if (hook3.status == 2 && target2 != null) {
                        if (hook3.enemyStartDistance != 0.0f) {
                            f6 = PMath.getDistanceBetweenPoints(hook3.drawPos, hook3.basePos) / hook3.enemyStartDistance;
                        } else {
                            f6 = 1.0f;
                        }
                        TextureRegion texture2 = target2.getTexture();
                        float size = 24.0f / (target2.getSize() * f10);
                        float regionWidth2 = texture2.getRegionWidth() * (((1.0f - size) * f6) + size);
                        float f29 = target2.drawAngle * f6;
                        Vector2 vector210 = hook3.drawPos;
                        float f30 = regionWidth2 * 0.5f;
                        spriteBatch.draw(texture2, vector210.f5527x - f30, vector210.f5528y - f30, f30, f30, regionWidth2, regionWidth2, 1.0f, 1.0f, f29);
                        float packedColor = spriteBatch.getPackedColor();
                        target2.healthBarInvisible = true;
                        Vector2 vector211 = target2.drawPosition;
                        Vector2 vector212 = hook3.drawPos;
                        vector211.set(vector212.f5527x, vector212.f5528y);
                        target2.drawHealth(spriteBatch);
                        spriteBatch.setPackedColor(packedColor);
                    }
                    i9++;
                    f10 = 2.0f;
                } else {
                    return;
                }
            }
        }
    }

    public float getDisorientationChance() {
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_CRUSHER_A_DISORIENTATION_CHANCE_MIN);
        return floatValue + ((this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_CRUSHER_A_DISORIENTATION_CHANCE_MAX) - floatValue) * (getUpgradeLevel() / 10.0f));
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.DAMAGE && isAbilityInstalled(0)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CRUSHER_A_HEAVY_VICE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.U_BONUS_EXPERIENCE && isAbilityInstalled(2)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_CRUSHER_A_CAREFUL_PROCESSING);
            Double.isNaN(d2);
            return (float) (d2 * percentValueAsMultiplier2);
        }
        return statFromConfig;
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x02fd  */
    @Override // com.prineside.tdi2.Tower
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(float r17) {
        /*
            Method dump skipped, instructions count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.towers.CrusherTower.update(float):void");
    }

    @Override // com.prineside.tdi2.Tower
    public void applyDrawInterpolation(float f) {
        float f2;
        super.applyDrawInterpolation(f);
        int i = 0;
        if (f != 0.0f) {
            while (true) {
                Array<Hook> array = this.f12216U;
                if (i < array.size) {
                    Hook hook = array.items[i];
                    Enemy target = hook.getTarget();
                    int i2 = hook.status;
                    if (i2 == 1) {
                        if (target != null) {
                            Vector2 vector2 = f12206X;
                            vector2.set(target.getPosition());
                            vector2.sub(hook.pos);
                            vector2.nor();
                            vector2.scl(this.f12215T * f);
                            hook.drawPos.set(hook.pos).add(vector2);
                        }
                    } else if (i2 == 2) {
                        if (target == null) {
                            f2 = 256.0f;
                        } else {
                            f2 = 153.6f;
                        }
                        Vector2 vector22 = f12206X;
                        vector22.set(hook.pos);
                        vector22.sub(hook.basePos);
                        vector22.nor();
                        vector22.scl(f2 * f);
                        hook.drawPos.set(hook.pos).sub(vector22);
                    }
                    i++;
                } else {
                    return;
                }
            }
        } else {
            while (true) {
                Array<Hook> array2 = this.f12216U;
                if (i < array2.size) {
                    Hook hook2 = array2.items[i];
                    hook2.drawPos.set(hook2.pos);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12208Z) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.CRUSHER.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12211O = input.readFloat();
        this.f12212P = input.readFloat();
        this.f12213Q = input.readVarInt(true);
        this.f12214R = input.readFloat();
        this.f12215T = input.readFloat();
        this.f12216U = (Array) kryo.readObject(input, Array.class);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        int i;
        super.updateCache();
        this.f12214R = getStatBuffed(TowerStatType.DURATION);
        this.f12215T = getStatBuffed(TowerStatType.PROJECTILE_SPEED) * 128.0f;
        this.f12211O = getStatBuffed(TowerStatType.DAMAGE);
        if (isAbilityInstalled(1)) {
            i = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_CRUSHER_A_INCREASED_CAPACITY);
        } else {
            i = 2;
        }
        this.f12213Q = i;
        this.f12212P = getStatBuffed(TowerStatType.U_BONUS_EXPERIENCE) * 0.01f;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12211O);
        output.writeFloat(this.f12212P);
        output.writeVarInt(this.f12213Q, true);
        output.writeFloat(this.f12214R);
        output.writeFloat(this.f12215T);
        kryo.writeObject(output, this.f12216U);
    }
}
