package com.prineside.tdi2;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.items.BlueprintItem;
import com.prineside.tdi2.items.ResourceItem;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.PMath;
import java.nio.charset.Charset;
import java.util.zip.CRC32;
import net.bytebuddy.utility.JavaConstant;
/* loaded from: classes2.dex */
public class Research {
    public static final int RESET_RESEARCH_STATE_AVAILABLE = 0;
    public static final int RESET_RESEARCH_STATE_HAS_CHILD = 1;
    public static final int RESET_RESEARCH_STATE_NOT_ENOUGH_ACCELERATORS = 5;
    public static final int RESET_RESEARCH_STATE_NOT_INSTALLED = 2;
    public static final int RESET_RESEARCH_STATE_NOT_SUITABLE = 3;
    public static final int RESET_RESEARCH_STATE_STAR_BRANCH = 4;

    /* renamed from: b */
    public static final StringBuilder f8851b = new StringBuilder();

    /* renamed from: c */
    public static final CRC32 f8852c = new CRC32();

    /* renamed from: d */
    public static final Array<ItemStack> f8853d = new Array<>();

    /* renamed from: e */
    public static final Array<ItemStack> f8854e = new Array<>(ItemStack.class);

    /* renamed from: a */
    public final String f8855a;
    public final ResearchCategory category;
    public float distanceToCenter;
    public EndlessResearchLevel endlessLevel;
    public boolean endlessOnly;
    public float endlessPriceExp;
    public int endlessPriceLevel;
    public int installedLevel;
    public IntArray installedLevelsForToken;
    public final ResearchLevel[] levels;
    public int maxEndlessLevel;
    public TowerType relatedToTowerType;
    public final ResearchType type;
    public boolean unlocksTower;

    /* renamed from: x */
    public int f8856x;

    /* renamed from: y */
    public int f8857y;
    public final Array<ResearchLink> linksToParents = new Array<>(ResearchLink.class);
    public final Array<ResearchLink> linksToChildren = new Array<>(ResearchLink.class);
    public final Vector3 position3d = new Vector3();
    public boolean cantBeIgnoredOnUserMaps = false;
    public int priceInStars = 0;

    /* renamed from: com.prineside.tdi2.Research$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C15741 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8858a;

        static {
            int[] iArr = new int[ResourceType.values().length];
            f8858a = iArr;
            try {
                iArr[ResourceType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8858a[ResourceType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8858a[ResourceType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8858a[ResourceType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8858a[ResourceType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public class EndlessResearchLevel {
        public BlueprintType blueprintType;
        public final GameValueManager.GameValueEffect[] effects;
        public final int prestigeTokens;
        public final int priceBase;
        public final int randomSeed;

        public EndlessResearchLevel(int i, int i2, BlueprintType blueprintType, int i3, GameValueManager.GameValueEffect[] gameValueEffectArr) {
            this.prestigeTokens = i3;
            this.priceBase = i;
            this.randomSeed = i2;
            this.effects = gameValueEffectArr;
            this.blueprintType = blueprintType;
        }

        public Array<ItemStack> getPrice(int i) {
            int i2;
            BlueprintType blueprintType;
            int i3;
            int length = Research.this.levels.length;
            if (i > length) {
                Research.f8854e.clear();
                int min = Math.min(Research.this.endlessPriceLevel, i);
                RandomXS128 randomXS128 = FastRandom.random;
                randomXS128.setSeed((this.randomSeed * 31) + i);
                int i4 = this.prestigeTokens;
                int i5 = 1;
                if (i4 > 0) {
                    double d = i4;
                    Double.isNaN(d);
                    double d2 = min - 1;
                    Double.isNaN(d2);
                    int ceil = i4 + MathUtils.ceil((float) (d * 0.1d * d2));
                    if (i > Research.this.endlessPriceLevel) {
                        ceil += (int) (ceil * (i - i3) * 0.025f);
                    }
                    Research.f8854e.add(new ItemStack(Item.C1543D.PRESTIGE_TOKEN, ceil));
                } else {
                    int nextInt = randomXS128.nextInt(2);
                    float f = min - length;
                    int pow = (int) StrictMath.pow(StrictMath.pow(this.priceBase * (((f / length) * 0.2f) + 1.0f), (((randomXS128.nextFloat() * 0.0015f) + 0.0085f) * f) + 1.0f) * 0.6d, Research.this.endlessPriceExp);
                    if (i > Research.this.endlessPriceLevel) {
                        pow += (int) (pow * (i - i2) * 0.075f);
                    }
                    float f2 = pow;
                    if (nextInt == 0) {
                        f2 *= 1.3f;
                    }
                    Research.f8854e.add(new ItemStack(Item.C1543D.GREEN_PAPER, Research.m21904c((int) (f2 * 1.4f))));
                    ResourceType[] resourceTypeArr = ResourceType.values;
                    ResourceType resourceType = resourceTypeArr[randomXS128.nextInt(resourceTypeArr.length)];
                    if (randomXS128.nextFloat() < 0.25f) {
                        resourceType = ResourceType.INFIAR;
                    }
                    float f3 = nextInt == 1 ? pow * 1.3f : pow;
                    double pow2 = StrictMath.pow(f3 * 0.5f, (randomXS128.nextFloat() * 0.02f) + 0.99f) * 0.25d;
                    int i6 = C15741.f8858a[resourceType.ordinal()];
                    if (i6 != 1) {
                        if (i6 != 2) {
                            if (i6 != 3) {
                                if (i6 != 4) {
                                    if (i6 == 5) {
                                        Research.f8854e.add(new ItemStack(Item.C1543D.RESOURCE_INFIAR, Research.m21904c((int) (pow2 * 0.8d))));
                                    }
                                } else {
                                    Research.f8854e.add(new ItemStack(Item.C1543D.RESOURCE_TENSOR, Research.m21904c((int) (pow2 * 0.9d))));
                                }
                            } else {
                                Research.f8854e.add(new ItemStack(Item.C1543D.RESOURCE_MATRIX, Research.m21904c((int) pow2)));
                            }
                        } else {
                            Research.f8854e.add(new ItemStack(Item.C1543D.RESOURCE_VECTOR, Research.m21904c((int) (pow2 * 1.25d))));
                        }
                    } else {
                        Research.f8854e.add(new ItemStack(Item.C1543D.RESOURCE_SCALAR, Research.m21904c((int) (pow2 * 1.5d))));
                    }
                    int nextInt2 = randomXS128.nextInt(1200) + 6500;
                    if (pow > nextInt2) {
                        int nextInt3 = (pow - nextInt2) / (randomXS128.nextInt(150) + 550);
                        if (nextInt3 >= 1) {
                            i5 = nextInt3;
                        }
                        Research.f8854e.add(new ItemStack(Item.C1543D.BIT_DUST, Research.m21904c(i5)));
                    }
                    BlueprintType blueprintType2 = this.blueprintType;
                    if (blueprintType2 != null) {
                        Research.f8854e.add(new ItemStack(Item.C1543D.F_BLUEPRINT.create(blueprintType2), i));
                    }
                    int i7 = 0;
                    for (int i8 = 0; i8 < 54 && pow > (((i8 * 500) + 2000) * i8) + 7000; i8++) {
                        i7++;
                    }
                    if (i7 >= 27) {
                        blueprintType = BlueprintType.SPECIAL_IV;
                        i7 /= 27;
                    } else if (i7 >= 9) {
                        blueprintType = BlueprintType.SPECIAL_III;
                        i7 /= 9;
                    } else if (i7 >= 3) {
                        blueprintType = BlueprintType.SPECIAL_II;
                        i7 /= 3;
                    } else {
                        blueprintType = BlueprintType.SPECIAL_I;
                    }
                    if (i7 != 0) {
                        Research.f8854e.add(new ItemStack(Item.C1543D.F_BLUEPRINT.create(blueprintType), i7));
                    }
                }
                FastRandom.random.setSeed(FastRandom.getInt(10000));
                return Research.f8854e;
            }
            throw new IllegalArgumentException("level must be > " + length);
        }
    }

    /* loaded from: classes2.dex */
    public static class ResearchLevel {
        public GameValueManager.GameValueEffect[] effects;
        public int number;
        public Array<ItemStack> price = new Array<>(ItemStack.class);
        public Requirement[] requirements;
        public int researchDuration;
    }

    public Array<ItemStack> getCumulativePrice(int i, int i2, boolean z) {
        Array<ItemStack> price;
        IntArray intArray;
        int max = Math.max(i, 0);
        int min = Math.min(i2, this.maxEndlessLevel);
        f8853d.clear();
        for (int i3 = max + 1; i3 <= min; i3++) {
            if (z && (intArray = this.installedLevelsForToken) != null && intArray.contains(i3)) {
                ProgressManager.addItemToStacksArray(f8853d, Item.C1543D.RESEARCH_TOKEN_USED, 1);
            } else {
                int i4 = i3 - 1;
                ResearchLevel[] researchLevelArr = this.levels;
                if (i4 < researchLevelArr.length) {
                    price = researchLevelArr[i4].price;
                } else {
                    price = this.endlessLevel.getPrice(i3);
                }
                for (int i5 = 0; i5 < price.size; i5++) {
                    ItemStack itemStack = price.items[i5];
                    ProgressManager.addItemToStacksArray(f8853d, itemStack.getItem(), itemStack.getCount());
                }
            }
        }
        return f8853d;
    }

    public CharSequence getDescription() {
        return this.category.getDescription();
    }

    public Array<GameValueManager.GameValueEffect> getEffects(int i) {
        int i2;
        boolean z;
        boolean z2;
        if (i >= 1 && i <= this.maxEndlessLevel) {
            Array<GameValueManager.GameValueEffect> array = new Array<>(GameValueManager.GameValueEffect.class);
            ResearchLevel[] researchLevelArr = this.levels;
            if (i >= researchLevelArr.length) {
                i2 = researchLevelArr.length;
            } else {
                i2 = i;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = 0;
                while (true) {
                    GameValueManager.GameValueEffect[] gameValueEffectArr = this.levels[i3].effects;
                    if (i4 < gameValueEffectArr.length) {
                        GameValueManager.GameValueEffect gameValueEffect = gameValueEffectArr[i4];
                        Array.ArrayIterator<GameValueManager.GameValueEffect> it = array.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                GameValueManager.GameValueEffect next = it.next();
                                if (next.type == gameValueEffect.type) {
                                    next.delta += gameValueEffect.delta;
                                    z2 = true;
                                    break;
                                }
                            } else {
                                z2 = false;
                                break;
                            }
                        }
                        if (!z2) {
                            array.add(new GameValueManager.GameValueEffect(gameValueEffect.type, gameValueEffect.delta));
                        }
                        i4++;
                    }
                }
            }
            if (i2 != i) {
                int length = i - this.levels.length;
                int i5 = 0;
                while (true) {
                    GameValueManager.GameValueEffect[] gameValueEffectArr2 = this.endlessLevel.effects;
                    if (i5 >= gameValueEffectArr2.length) {
                        break;
                    }
                    GameValueManager.GameValueEffect gameValueEffect2 = gameValueEffectArr2[i5];
                    Array.ArrayIterator<GameValueManager.GameValueEffect> it2 = array.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            GameValueManager.GameValueEffect next2 = it2.next();
                            if (next2.type == gameValueEffect2.type) {
                                double d = next2.delta;
                                double d2 = gameValueEffect2.delta;
                                double d3 = length;
                                Double.isNaN(d3);
                                next2.delta = d + (d2 * d3);
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (!z) {
                        GameValueType gameValueType = gameValueEffect2.type;
                        double d4 = gameValueEffect2.delta;
                        double d5 = length;
                        Double.isNaN(d5);
                        array.add(new GameValueManager.GameValueEffect(gameValueType, d4 * d5));
                    }
                    i5++;
                }
            }
            return array;
        }
        throw new IllegalArgumentException("Invalid research level '" + i + "' for " + this.type.name() + ", max: " + this.maxEndlessLevel);
    }

    public TowerType getRelatedToTowerType() {
        return this.relatedToTowerType;
    }

    public String getShortName() {
        return this.f8855a;
    }

    public boolean isMaxEndlessLevel() {
        return this.installedLevel >= this.maxEndlessLevel;
    }

    public boolean isMaxNormalLevel() {
        return this.endlessOnly || this.installedLevel >= this.levels.length;
    }

    public boolean isUnlocksTower() {
        return this.unlocksTower;
    }

    /* loaded from: classes2.dex */
    public static class ResearchLink {
        public final Research child;
        public final Research parent;
        public int pivotX;
        public int pivotY;
        public final int requiredLevels;
        public final float requiredLevelsLabelPos;
        public final int requiredLevelsLabelX;
        public final int requiredLevelsLabelY;

        public boolean isVisible() {
            return this.requiredLevels <= this.parent.installedLevel;
        }

        public ResearchLink(Research research, Research research2, int i, int i2, int i3, float f) {
            int i4;
            int i5;
            this.parent = research;
            this.child = research2;
            this.requiredLevels = i;
            this.pivotX = i2;
            this.pivotY = i3;
            this.requiredLevelsLabelPos = f;
            float f2 = i2;
            float f3 = i3;
            float distanceBetweenPoints = PMath.getDistanceBetweenPoints(research2.f8856x, research2.f8857y, f2, f3);
            float distanceBetweenPoints2 = PMath.getDistanceBetweenPoints(research.f8856x, research.f8857y, f2, f3);
            float f4 = f * (distanceBetweenPoints + distanceBetweenPoints2);
            if (f4 < distanceBetweenPoints) {
                float f5 = f4 / distanceBetweenPoints;
                this.requiredLevelsLabelX = (int) (research2.f8856x + ((i2 - i4) * f5));
                this.requiredLevelsLabelY = (int) (research2.f8857y + ((i3 - i5) * f5));
                return;
            }
            float f6 = (f4 - distanceBetweenPoints) / distanceBetweenPoints2;
            this.requiredLevelsLabelX = (int) (f2 + ((research.f8856x - i2) * f6));
            this.requiredLevelsLabelY = (int) (f3 + ((research.f8857y - i3) * f6));
        }
    }

    public Research(ResearchType researchType, ResearchCategory researchCategory, ResearchLevel[] researchLevelArr, int i) {
        if (researchLevelArr.length != 0) {
            if (i >= researchLevelArr.length) {
                this.type = researchType;
                this.maxEndlessLevel = i;
                this.endlessPriceLevel = i;
                this.category = researchCategory;
                this.levels = researchLevelArr;
                if (i != researchLevelArr.length) {
                    BlueprintType blueprintType = null;
                    int i2 = 0;
                    int i3 = 1;
                    int i4 = 0;
                    for (ResearchLevel researchLevel : researchLevelArr) {
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            Array<ItemStack> array = researchLevel.price;
                            if (i5 < array.size) {
                                ItemStack itemStack = array.items[i5];
                                if (itemStack.getItem().getType() == ItemType.GREEN_PAPER) {
                                    i6 += (int) (itemStack.getCount() * 0.65f);
                                } else if (itemStack.getItem().getType() == ItemType.RESOURCE) {
                                    i6 += (((ResourceItem) itemStack.getItem()).resourceType.ordinal() + 3) * 3 * itemStack.getCount();
                                } else if (blueprintType == null && itemStack.getItem().getType() == ItemType.BLUEPRINT) {
                                    BlueprintItem blueprintItem = (BlueprintItem) itemStack.getItem();
                                    if (blueprintItem.getRarity() == RarityType.COMMON) {
                                        blueprintType = blueprintItem.getBlueprintType();
                                    }
                                } else if (itemStack.getItem().getType() == ItemType.PRESTIGE_TOKEN) {
                                    i4 = itemStack.getCount();
                                }
                                i5++;
                            }
                        }
                        i3 = (i3 * 31) + i6;
                        i2 += i6;
                    }
                    int length = i2 / researchLevelArr.length;
                    GameValueManager.GameValueEffect[] gameValueEffectArr = new GameValueManager.GameValueEffect[researchLevelArr[researchLevelArr.length - 1].effects.length];
                    for (int i7 = 0; i7 < researchLevelArr[researchLevelArr.length - 1].effects.length; i7++) {
                        gameValueEffectArr[i7] = new GameValueManager.GameValueEffect(researchLevelArr[researchLevelArr.length - 1].effects[i7].type, researchLevelArr[researchLevelArr.length - 1].effects[i7].delta);
                    }
                    this.endlessLevel = new EndlessResearchLevel(length, i3, blueprintType, i4, gameValueEffectArr);
                }
                CRC32 crc32 = f8852c;
                crc32.reset();
                crc32.update(researchType.name().getBytes(Charset.forName("UTF-8")));
                this.f8855a = Long.toHexString(crc32.getValue());
                if (researchType.name().startsWith("TOWER_")) {
                    String[] split = researchType.name().split(JavaConstant.Dynamic.DEFAULT_NAME);
                    try {
                        if (split[1].equals("TYPE")) {
                            this.relatedToTowerType = TowerType.valueOf(split[2]);
                            this.unlocksTower = true;
                        } else {
                            this.relatedToTowerType = TowerType.valueOf(split[1]);
                        }
                        return;
                    } catch (Exception unused) {
                        Logger.error("Research", "Unknown tower type for " + researchType.name());
                        return;
                    }
                }
                return;
            }
            throw new IllegalArgumentException("upgrade " + researchType.name() + " must have maxEndlessLevel >= " + researchLevelArr.length);
        }
        throw new IllegalArgumentException("upgrade " + researchType.name() + " must have at least one level");
    }

    /* renamed from: c */
    public static int m21904c(int i) {
        if (i < 10) {
            return i;
        }
        if (i < 100) {
            return (i / 5) * 5;
        }
        if (i < 1000) {
            return (i / 10) * 10;
        }
        return (i / 50) * 50;
    }

    public int getResetPrice() {
        Array.ArrayIterator<ItemStack> it = getCumulativePrice(0, this.installedLevel, false).iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            ItemStack next = it.next();
            d += next.getItem().getPriceInAcceleratorsForResearchReset(next.getCount());
        }
        return MathUtils.clamp(MathUtils.round((float) Math.pow(d, 0.9d)), 0, (int) HttpStatus.SC_BAD_REQUEST);
    }

    public StringBuilder getTitle() {
        if (!isUnlocksTower() && getRelatedToTowerType() != null) {
            StringBuilder stringBuilder = f8851b;
            stringBuilder.setLength(0);
            stringBuilder.append(this.category.getTitle()).append(" (").append(Game.f8589i.towerManager.getTitle(getRelatedToTowerType())).append(")");
            return stringBuilder;
        }
        StringBuilder stringBuilder2 = f8851b;
        stringBuilder2.setLength(0);
        stringBuilder2.append(this.category.getTitle());
        return stringBuilder2;
    }

    public int resetForAcceleratorsState() {
        int resetPrice = getResetPrice();
        if (resetPrice == 0) {
            return 3;
        }
        if (this.priceInStars > 0) {
            return 4;
        }
        Array.ArrayIterator<ResearchLink> it = this.linksToChildren.iterator();
        while (it.hasNext()) {
            if (it.next().child.installedLevel > 0) {
                return 1;
            }
        }
        if (this.installedLevel == 0) {
            return 2;
        }
        if (Game.f8589i.progressManager.getAccelerators() < resetPrice) {
            return 5;
        }
        return 0;
    }
}
