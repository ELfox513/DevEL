.class public Lcom/prineside/tdi2/managers/ProgressManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ProgressManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;,
        Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;,
        Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;,
        Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;,
        Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;,
        Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;,
        Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;,
        Lcom/prineside/tdi2/managers/ProgressManager$Serializer;
    }
.end annotation


# static fields
.field public static final DIFFICULTY_MULTIPLIER_EASY:I = 0x5c

.field public static final DIFFICULTY_MULTIPLIER_NORMAL:I = 0x64

.field public static final ITEM_RARITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:[Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;

.field public static final L:[Ljava/lang/String;

.field public static final M:[Ljava/lang/String;

.field public static final N:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public static final RARITY_BRIGHT_COLORS:[Lcom/badlogic/gdx/graphics/Color;

.field public static final RARITY_COLORS:[Lcom/badlogic/gdx/graphics/Color;

.field public static final VIDEO_AD_BONUSES_CYCLE_LENGTH:I = 0x12c

.field public static final VIDEO_WATCHES_FOR_DOUBLE_GAIN:I = 0x1f4

.field public static final VIDEO_WATCHES_FOR_LUCKY_SHOT:I = 0x14


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:F

.field public E:Z

.field public G:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;",
            ">;"
        }
    .end annotation
.end field

.field public final H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;

.field public J:[Lcom/prineside/tdi2/ItemStack;

.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/IssuedItems;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public caseRandoms:[Lcom/badlogic/gdx/math/RandomXS128;

.field public craftingQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/ItemType;",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;>;"
        }
    .end annotation
.end field

.field public decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

.field public decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/items/CaseItem;",
            ">;"
        }
    .end annotation
.end field

.field public decryptingCaseTimeLeft:F

.field public final k:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/ItemCategoryType;",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;>;"
        }
    .end annotation
.end field

.field public lootBoostTimeLeft:F

.field public luckyWheelLastRotation:F

.field public luckyWheelLastWeaponAngle:F

.field public luckyWheelSpinAvailable:Z

.field public luckyWheelSpinInProgress:Z

.field public luckyWheelSpinRandom:Lcom/badlogic/gdx/math/RandomXS128;

.field public luckyWheelWheelRandom:Lcom/badlogic/gdx/math/RandomXS128;

.field public otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

.field public final p:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/ItemSubcategoryType;",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Z

.field public s:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public t:Z

.field public u:I

.field public v:I

.field public videoAdViewBonuses:[Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

.field public videosWatchedForDoubleGain:I

.field public videosWatchedForLuckyShot:I

.field public w:Lcom/badlogic/gdx/utils/IntArray;

.field public final x:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

.field public y:Z

.field public z:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;

    new-instance v2, Lcom/prineside/tdi2/managers/ProgressManager$1;

    const/16 v3, 0x27c1

    invoke-direct {v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager$1;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/prineside/tdi2/managers/ProgressManager;->K:[Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;

    new-instance v1, Lcom/prineside/tdi2/managers/ProgressManager$2;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/ProgressManager$2;-><init>()V

    sput-object v1, Lcom/prineside/tdi2/managers/ProgressManager;->ITEM_RARITY_COMPARATOR:Ljava/util/Comparator;

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3c693dff

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    aput-object v4, v2, v3

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x4a5bb0ff    # 3599423.8f

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    aput-object v4, v2, v0

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, -0x6fc06101

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v6, -0x3087ea01

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x18a8b8ff

    invoke-direct {v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/4 v7, 0x4

    aput-object v4, v2, v7

    sput-object v2, Lcom/prineside/tdi2/managers/ProgressManager;->RARITY_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P400:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v2, v3

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P300:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v2, v0

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v2, v5

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v2, v6

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v4, v2, v7

    sput-object v2, Lcom/prineside/tdi2/managers/ProgressManager;->RARITY_BRIGHT_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "rarity_COMMON"

    aput-object v4, v2, v3

    const-string v4, "rarity_RARE"

    aput-object v4, v2, v0

    const-string v4, "rarity_VERY_RARE"

    aput-object v4, v2, v5

    const-string v4, "rarity_EPIC"

    aput-object v4, v2, v6

    const-string v4, "rarity_LEGENDARY"

    aput-object v4, v2, v7

    sput-object v2, Lcom/prineside/tdi2/managers/ProgressManager;->L:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "icon-star"

    aput-object v2, v1, v3

    const-string v2, "icon-two-stars"

    aput-object v2, v1, v0

    const-string v0, "icon-three-stars"

    aput-object v0, v1, v5

    const-string v0, "icon-four-stars"

    aput-object v0, v1, v6

    const-string v0, "icon-five-stars"

    aput-object v0, v1, v7

    sput-object v1, Lcom/prineside/tdi2/managers/ProgressManager;->M:[Ljava/lang/String;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->N:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->r:Z

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->w:Lcom/badlogic/gdx/utils/IntArray;

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/math/RandomXS128;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->caseRandoms:[Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/items/CaseItem;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->x:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/ProgressManager;->y:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->A:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->B:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelWheelRandom:Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinRandom:Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;-><init>(Lcom/prineside/tdi2/managers/ProgressManager;Lcom/prineside/tdi2/managers/ProgressManager$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->I:Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    new-instance v1, Lcom/prineside/tdi2/managers/ProgressManager$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ProgressManager$3;-><init>(Lcom/prineside/tdi2/managers/ProgressManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->addListener(Lcom/prineside/tdi2/Game$GameListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;)I

    move-result p0

    return p0
.end method

.method public static addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;",
            "Lcom/prineside/tdi2/Item;",
            "I)",
            "Lcom/prineside/tdi2/ItemStack;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p0

    invoke-static {p0, p2}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, p1, p2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/ProgressManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->g()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/ProgressManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->reload()V

    return-void
.end method

.method public static clampModeDifficulty(Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/GameValueProvider;)I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager$6;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x96

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ENDLESS_MODE_DIFFICULTY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, v0}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p2, p2, v0

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x64

    return p0

    :cond_1
    const/16 p0, 0x5c

    return p0
.end method

.method public static compressStacksArray(Lcom/badlogic/gdx/utils/Array;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/ProgressManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static getMaxQuality(Lcom/prineside/tdi2/enums/RarityType;)F
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float p0, p0, v0

    add-float/2addr p0, v0

    return p0
.end method

.method public static getMinQuality(Lcom/prineside/tdi2/enums/RarityType;)F
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float p0, p0, v0

    return p0
.end method

.method public static getRarityFromQuality(F)Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    sget-object p0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    sget-object p0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object p0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v1, v0

    int-to-float v1, v1

    mul-float p0, p0, v1

    invoke-static {p0}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static globalQualityToRarityQualuty(F)F
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    rem-float/2addr p0, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p0, p0, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    iget p1, p1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static i(I)I
    .locals 1

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    rem-int/lit8 v0, p0, 0xa

    :goto_0
    sub-int/2addr p0, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_1

    rem-int/lit8 v0, p0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2

    rem-int/lit8 v0, p0, 0x64

    goto :goto_0

    :cond_2
    const/16 v0, 0x1388

    if-ge p0, v0, :cond_3

    rem-int/lit16 v0, p0, 0x1f4

    goto :goto_0

    :cond_3
    rem-int/lit16 v0, p0, 0x3e8

    goto :goto_0

    :goto_1
    return p0
.end method


# virtual methods
.method public addAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_ABILITY:Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;->create(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/items/AbilityItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public addAccelerators(I)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public addGates(Lcom/prineside/tdi2/Gate;I)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public addGreenPapers(I)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    if-nez p2, :cond_0

    iput-boolean v0, p1, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    :cond_0
    iget-object p2, p1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->ITEM_RARITY_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public addItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addItems(Lcom/prineside/tdi2/Item;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {v2, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByCategory(Lcom/prineside/tdi2/enums/ItemCategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsBySubcategory(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;

    invoke-interface {v4, p1, v1, p2}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;->itemsChanged(Lcom/prineside/tdi2/Item;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->y:Z

    instance-of v1, p1, Lcom/prineside/tdi2/Item$UsableItem;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/Item$UsableItem;

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$UsableItem;->autoUseWhenAdded()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    if-ge v2, p2, :cond_4

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$UsableItem;->useItem()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "item_used_notification"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5, v5}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->t:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/AuthManager;->notifyNeedCloudSave(Z)V

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager$6;->d:[I

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v0, "ability_token"

    invoke-interface {p1, v0, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_1
    check-cast p1, Lcom/prineside/tdi2/items/CaseKeyItem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/items/CaseKeyItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v0, "bit_dust"

    invoke-interface {p1, v0, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_3
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v0, "rarity_boost"

    invoke-interface {p1, v0, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_4
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v0, "green_paper"

    invoke-interface {p1, v0, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_5
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v0, "accelerator"

    invoke-interface {p1, v0, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_6
    check-cast p1, Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blueprint_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/items/BlueprintItem;->getBlueprintType()Lcom/prineside/tdi2/enums/BlueprintType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_7
    check-cast p1, Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    iget-object p1, p1, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencyReceived(Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addItems(Lcom/prineside/tdi2/ItemStack;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addResources(Lcom/prineside/tdi2/enums/ResourceType;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public addTiles(Lcom/prineside/tdi2/Tile;I)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public areAbilitiesOpened()Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_FIREBALL_MAX_PER_GAME:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public areF2pTimersDisabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public areModifiersOpened()Z
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/managers/ModifierManager;->getCountGameValue(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public calculateProgressHash()J
    .locals 9

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getAccelerators()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    mul-long v0, v0, v2

    invoke-virtual {p0, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public cancelCrafting(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getCraftingQueueItem(I)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTimeLeft()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->grabCrafted(I)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->grabCrafted(I)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCrafting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - nothing was crafting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public checkSpecialTrophiesGiven()V
    .locals 12

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REGULAR_REWARD:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {v6}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_3

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/TrophyItem;

    const/4 v9, 0x0

    :goto_1
    iget v10, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v10, :cond_5

    iget-object v10, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/ItemStack;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/items/TrophyItem;

    iget-object v11, v8, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    iget-object v10, v10, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    if-ne v11, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoring trophy for completed quest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ProgressManager"

    invoke-static {v10, v9}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    iget-object v8, v8, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v8

    new-instance v9, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v9, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-object v8, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    iget v9, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v9, :cond_b

    iget-object v9, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ItemStack;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/items/TrophyItem;

    iget-object v9, v9, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    sget-object v10, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_DEVELOPER:Lcom/prineside/tdi2/enums/TrophyType;

    if-ne v9, v10, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    sget-object v10, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_MASTER:Lcom/prineside/tdi2/enums/TrophyType;

    if-ne v9, v10, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    sget-object v10, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_MILLION:Lcom/prineside/tdi2/enums/TrophyType;

    if-ne v9, v10, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    sget-object v10, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_STORYLINE:Lcom/prineside/tdi2/enums/TrophyType;

    if-ne v9, v10, :cond_a

    const/4 v8, 0x1

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    sget-object v2, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_DEVELOPER:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, v1, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    if-nez v6, :cond_11

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_5
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v6, :cond_10

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v3, v3, v1

    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v9, "2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v9, "3"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v9, "4"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v9, "5"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    const/4 v6, 0x0

    :goto_6
    iget-object v9, v3, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v10, :cond_f

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v9, v9, v6

    const/16 v10, 0x8

    if-ge v6, v10, :cond_e

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isMastered(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v9

    if-nez v9, :cond_e

    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    if-eqz v2, :cond_11

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    sget-object v2, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_MASTER:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, v1, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_11
    if-nez v7, :cond_12

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getMaxOneGame(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_12

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    sget-object v2, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_MILLION:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, v1, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_12
    if-nez v8, :cond_13

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    const-string v2, "5.8"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_13

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    sget-object v2, Lcom/prineside/tdi2/enums/TrophyType;->SPECIAL_STORYLINE:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, v1, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_13
    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_14

    invoke-virtual {p0, v0, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v0, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/badlogic/gdx/utils/Array;)V

    :cond_14
    return-void
.end method

.method public clearDecryptingQueue(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/CaseItem;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no queue item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    return-void
.end method

.method public countAcceleratorsNeeded(I)I
    .locals 4

    int-to-float p1, p1

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public difficultyModeAvailable(Lcom/prineside/tdi2/enums/DifficultyMode;)Z
    .locals 1

    invoke-static {p1}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ENDLESS_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public disableDoubleGainTemp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is not set up yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableDeveloperMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ResearchType;->DEVELOPER_MODE:Lcom/prineside/tdi2/enums/ResearchType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->setInstalledLevel(Lcom/prineside/tdi2/enums/ResearchType;IZ)V

    :cond_0
    return-void
.end method

.method public enableDoubleGainPermanently()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;->doubleGainEnabled()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "double_gain_enabled_permanently"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "money-pack-double-gain"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_1
    return-void
.end method

.method public enableDoubleGainTemporary(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->v:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->v:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->v:I

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;

    invoke-interface {v3}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;->doubleGainEnabled()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->timePassed(IZZ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "double_gain_enabled_timed"

    invoke-virtual {v0, p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "money-pack-double-gain"

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, p1, v0, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return v2

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "double_gain_enabled_permanently"

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-times"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return v1
.end method

.method public existsAnyProgress()Z
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/ItemStack;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ItemStack;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public finishCraftingNow()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v1, v1, v2

    move-object v3, v0

    check-cast v3, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    check-cast v0, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    int-to-float v0, v0

    mul-float v3, v3, v0

    iput v3, v1, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getAcceleratorsRequiredToShortenTime(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAccelerators(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v3, "finish_crafting"

    const-string v4, "accelerator"

    invoke-interface {v1, v3, v4, v0}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v1, v1, v2

    move-object v3, v0

    check-cast v3, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    check-cast v0, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    int-to-float v0, v0

    mul-float v3, v3, v0

    iput v3, v1, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "not_enough_accelerators"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-times"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    return-void
.end method

.method public final g()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->K:[Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ProgressManager;->w:Lcom/badlogic/gdx/utils/IntArray;

    iget v5, v3, Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;->id:I

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handling conditional compensation #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProgressManager"

    invoke-static {v5, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;->handle()Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const-string v4, "compensation given"

    goto :goto_1

    :cond_0
    const-string v4, "conditions not met"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ProgressManager;->w:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;->id:I

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/ProgressManager;->B:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public generateNewLuckyWheel()V
    .locals 41

    move-object/from16 v0, p0

    const-class v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget-boolean v2, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    if-eqz v2, :cond_0

    const-string v1, "ProgressManager"

    const-string v2, "Spin available, can\'t rebuild"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getInventoryStatistics()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-result-object v2

    iget-object v15, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelWheelRandom:Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v14, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v14, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v13, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v4, v3, v13

    if-lez v4, :cond_b

    const/high16 v4, 0x42700000    # 60.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float v3, v3, v4

    div-float v3, v10, v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->GPG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    const/high16 v4, 0x447a0000    # 1000.0f

    :cond_1
    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    float-to-int v10, v4

    invoke-static {v10}, Lcom/prineside/tdi2/managers/ProgressManager;->i(I)I

    move-result v10

    invoke-direct {v6, v13, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v9}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    mul-float v4, v4, v12

    float-to-int v4, v4

    invoke-static {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->i(I)I

    move-result v4

    invoke-direct {v6, v10, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->RG_S:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v5, 0x43fa0000    # 500.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    const/high16 v4, 0x43fa0000    # 500.0f

    :cond_2
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    invoke-static {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->i(I)I

    move-result v4

    invoke-direct {v6, v10, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->RG_V:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v5, 0x43c80000    # 400.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    const/high16 v4, 0x43c80000    # 400.0f

    :cond_4
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    invoke-static {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->i(I)I

    move-result v4

    invoke-direct {v6, v10, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v4, 0x41100000    # 9.0f

    invoke-direct {v5, v6, v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->RG_M:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v5, 0x43af0000    # 350.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_6

    const/high16 v4, 0x43af0000    # 350.0f

    :cond_6
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    invoke-static {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->i(I)I

    move-result v4

    invoke-direct {v6, v10, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v11}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->RG_T:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v5, 0x43960000    # 300.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_8

    const/high16 v4, 0x43960000    # 300.0f

    :cond_8
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    invoke-static {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->i(I)I

    move-result v4

    invoke-direct {v6, v10, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v9}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_9
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->RG_I:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v3, 0x437a0000    # 250.0f

    cmpg-float v3, v4, v3

    if-gez v3, :cond_a

    const/high16 v4, 0x437a0000    # 250.0f

    :cond_a
    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    invoke-static {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->i(I)I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v5, v8}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    const/4 v13, 0x0

    const/4 v10, 0x2

    invoke-direct {v3, v13, v9, v10}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;FI)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v5, 0x3

    invoke-direct {v3, v13, v6, v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;FI)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-array v3, v5, [Lcom/prineside/tdi2/enums/BlueprintType;

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->EXPERIENCE:Lcom/prineside/tdi2/enums/BlueprintType;

    const/4 v13, 0x0

    aput-object v4, v3, v13

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->AGILITY:Lcom/prineside/tdi2/enums/BlueprintType;

    const/4 v13, 0x1

    aput-object v4, v3, v13

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->POWER:Lcom/prineside/tdi2/enums/BlueprintType;

    aput-object v4, v3, v10

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0xa

    if-ge v4, v5, :cond_c

    aget-object v11, v3, v4

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v8

    invoke-direct {v13, v8, v12}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v6, v13, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v13, 0x1

    goto :goto_0

    :cond_c
    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v4, v6, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v4, v9}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_II:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v4, v6, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_III:Lcom/prineside/tdi2/items/BlueprintItem;

    const/4 v8, 0x1

    invoke-direct {v4, v6, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-direct {v3, v4, v13}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-direct {v4, v6, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-direct {v4, v6, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->BDFTPG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    const-wide/16 v24, 0x0

    const/4 v11, 0x5

    cmpl-double v6, v3, v24

    if-lez v6, :cond_d

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v4, v6, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v4, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v4, v6, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v4, v13}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    const/4 v8, 0x7

    invoke-direct {v4, v6, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_d
    const/high16 v6, 0x40400000    # 3.0f

    :goto_1
    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v4, v8, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v4, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v4, v8, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v3, v4, v8}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v4, v8, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-direct {v3, v4, v8}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v4, v8, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v8, 0x40800000    # 4.0f

    invoke-direct {v3, v4, v8}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const v4, 0x7a120

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v4

    int-to-long v12, v4

    invoke-virtual {v3, v12, v13}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v12, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v12

    const/4 v13, 0x6

    invoke-direct {v4, v12, v13}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v4, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v12, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v12

    invoke-direct {v4, v12, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v12, 0x41100000    # 9.0f

    invoke-direct {v3, v4, v12}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v12, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const v6, 0x3f333333    # 0.7f

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v6

    const/4 v12, 0x4

    invoke-direct {v4, v6, v12}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const v10, 0x3f666666    # 0.9f

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v4, v9}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_2
    const/high16 v10, 0x40000000    # 2.0f

    const/16 v6, 0xa

    if-ge v3, v6, :cond_11

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    div-float/2addr v4, v7

    mul-float v4, v4, v10

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v10, v4, v17

    if-lez v10, :cond_e

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_e
    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_f

    const/4 v10, 0x3

    goto :goto_3

    :cond_f
    const v10, 0x3ecccccd    # 0.4f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_10

    const/4 v10, 0x2

    goto :goto_3

    :cond_10
    const/4 v10, 0x1

    :goto_3
    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v12, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v11, v4, v12, v2}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v9

    invoke-direct {v6, v9, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v26, 0x40a00000    # 5.0f

    mul-float v4, v4, v26

    sub-float v4, v7, v4

    invoke-direct {v5, v6, v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v5, 0x3

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v11, 0x5

    const/4 v12, 0x4

    goto :goto_2

    :cond_11
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v26, 0x40a00000    # 5.0f

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v6, Lcom/prineside/tdi2/enums/CaseType;->GREEN:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12, v12}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v5

    const/4 v11, 0x1

    invoke-direct {v4, v5, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v3, v4, v9}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v6, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v5, v6, v12, v12}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v5

    invoke-direct {v4, v5, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v6, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v5, v6, v12, v12}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v5

    invoke-direct {v4, v5, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v4, v8}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v19, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    sget-object v5, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v27, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    move-object/from16 v4, v19

    move-object/from16 v34, v6

    const/16 v20, 0xa

    const/high16 v22, 0x40c00000    # 6.0f

    move/from16 v6, v21

    move/from16 v7, v23

    move/from16 v8, v27

    const/high16 v21, 0x41000000    # 8.0f

    move/from16 v9, v28

    move/from16 v10, v29

    const/16 v17, 0x1

    move/from16 v11, v30

    const/4 v13, 0x4

    const/16 v20, 0x0

    move/from16 v12, v31

    move/from16 v13, v32

    move-object/from16 v35, v14

    move/from16 v14, v33

    move-object v0, v15

    move-object v15, v2

    invoke-virtual/range {v3 .. v15}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v3

    move-object/from16 v4, v34

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v4, v3, v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    move-object/from16 v15, v35

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, v15, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v15, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v3

    sget-object v13, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v3, v13, :cond_13

    iget-object v3, v15, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v15, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v14

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/TileItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-eq v3, v4, :cond_12

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->ROAD:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_13

    :cond_12
    iget-object v3, v15, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v15, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v14

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    const/4 v12, 0x5

    invoke-virtual {v3, v12}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    goto :goto_4

    :cond_13
    const/4 v12, 0x5

    :goto_4
    new-instance v11, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v5, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v4, v19

    move-object/from16 v36, v11

    move/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v37, v13

    move/from16 v13, v18

    move/from16 v14, v20

    move-object/from16 v16, v0

    move-object v0, v15

    move-object v15, v2

    invoke-virtual/range {v3 .. v15}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v3

    move-object/from16 v4, v36

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v4, v3, v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v3

    move-object/from16 v14, v37

    if-ne v3, v14, :cond_14

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v15

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/TileItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_14

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v15

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    goto :goto_5

    :cond_14
    const/4 v13, 0x4

    :goto_5
    new-instance v12, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v5, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v4, v19

    move-object/from16 v38, v12

    move/from16 v12, v17

    move/from16 v13, v18

    move-object/from16 v39, v14

    move/from16 v14, v20

    move-object/from16 v17, v1

    const/4 v1, 0x1

    move-object v15, v2

    invoke-virtual/range {v3 .. v15}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v3

    move-object/from16 v4, v38

    const/high16 v15, 0x40c00000    # 6.0f

    invoke-direct {v4, v3, v15}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v3

    move-object/from16 v14, v39

    if-ne v3, v14, :cond_15

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/TileItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_15

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    goto :goto_6

    :cond_15
    const/4 v13, 0x3

    :goto_6
    new-instance v12, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v5, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move-object/from16 v4, v19

    move-object v1, v12

    move/from16 v12, v18

    move/from16 v13, v20

    move-object/from16 v40, v14

    move/from16 v14, v21

    move-object v15, v2

    invoke-virtual/range {v3 .. v15}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    move-object/from16 v2, v40

    if-ne v1, v2, :cond_16

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/TileItem;

    iget-object v1, v1, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_16

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    goto :goto_7

    :cond_16
    const/4 v2, 0x3

    :goto_7
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v4, v17

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    const-class v7, Lcom/prineside/tdi2/Research$ResearchLevel;

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v13, 0x0

    :goto_8
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v13, v7, :cond_19

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Research;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v8

    if-nez v8, :cond_17

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Lcom/prineside/tdi2/managers/ResearchManager;->canStartResearching(Lcom/prineside/tdi2/Research;Z)Z

    move-result v8

    if-eqz v8, :cond_17

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/prineside/tdi2/managers/ResearchManager;->canStartResearching(Lcom/prineside/tdi2/Research;Z)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, v7, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    iget v7, v7, Lcom/prineside/tdi2/Research;->installedLevel:I

    aget-object v7, v8, v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    const/4 v9, 0x0

    :cond_18
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_19
    const/4 v9, 0x0

    iget v5, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v5, :cond_1f

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_a
    if-ltz v5, :cond_1a

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v8, v16

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    :cond_1a
    move-object/from16 v8, v16

    const/4 v13, 0x0

    :goto_b
    iget v5, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x5

    invoke-static {v5, v7}, Ljava/lang/StrictMath;->min(II)I

    move-result v5

    if-ge v13, v5, :cond_1e

    const/4 v5, 0x0

    :goto_c
    iget-object v10, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v11, v10

    check-cast v11, [Lcom/prineside/tdi2/Research$ResearchLevel;

    aget-object v11, v11, v13

    iget-object v11, v11, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v11, :cond_1d

    check-cast v10, [Lcom/prineside/tdi2/Research$ResearchLevel;

    aget-object v10, v10, v13

    iget-object v10, v10, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/ItemStack;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    move-object/from16 v12, p0

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v11

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v14

    if-ge v11, v14, :cond_1c

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v11

    sget-object v14, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-eq v11, v14, :cond_1b

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v11

    sget-object v14, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-eq v11, v14, :cond_1b

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v11

    sget-object v14, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v11, v14, :cond_1c

    :cond_1b
    new-instance v11, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v14, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    int-to-float v10, v10

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v10, v10, v15

    const/high16 v7, 0x40c00000    # 6.0f

    sub-float v10, v7, v10

    invoke-direct {v11, v14, v10}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1c
    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_d
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x5

    goto :goto_c

    :cond_1d
    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    :cond_1e
    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    goto :goto_e

    :cond_1f
    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    move-object/from16 v8, v16

    :goto_e
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v6, Lcom/prineside/tdi2/enums/StatisticsType;->BDFTPG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v10

    cmpl-double v5, v10, v24

    if-lez v5, :cond_20

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v10, Lcom/prineside/tdi2/ItemStack;

    sget-object v11, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    const/16 v13, 0xa

    invoke-direct {v10, v11, v13}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v10, v3}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    const/16 v11, 0xf

    invoke-direct {v5, v10, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v10, 0x40200000    # 2.5f

    invoke-direct {v3, v5, v10}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_f

    :cond_20
    const/16 v13, 0xa

    :goto_f
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v5

    cmpl-double v3, v5, v24

    if-lez v3, :cond_21

    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v12, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v3

    const/16 v5, 0x1388

    if-ge v3, v5, :cond_21

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    const/16 v10, 0x3e8

    invoke-direct {v5, v6, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v5, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    const/16 v7, 0x7d0

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_10

    :cond_21
    const/high16 v6, 0x40000000    # 2.0f

    :goto_10
    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v10, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7, v10, v9, v9}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v7

    const/4 v10, 0x2

    invoke-direct {v5, v7, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v7, 0x40400000    # 3.0f

    invoke-direct {v3, v5, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v11, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v14, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v11, v14, v9, v9}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v11

    const/4 v14, 0x1

    invoke-direct {v5, v11, v14}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    const/high16 v5, 0x40e00000    # 7.0f

    const/4 v11, 0x0

    invoke-direct {v3, v11, v5, v10}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;FI)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    invoke-direct {v3, v11, v7, v2}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;FI)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    const/4 v11, 0x1

    invoke-direct {v5, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-direct {v3, v5, v11}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-direct {v5, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v5, v15}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    const/4 v11, 0x1

    invoke-direct {v5, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v3, v5, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    sget-object v7, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v3, v11, v7}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v3

    new-instance v14, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v11, Lcom/prineside/tdi2/ItemStack;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v3

    const/4 v9, 0x1

    invoke-direct {v11, v3, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v14, v11, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v3

    const v9, 0x3e19999a    # 0.15f

    cmpg-float v3, v3, v9

    if-gez v3, :cond_22

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v3, v5, v7}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v3

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v3

    const/4 v9, 0x1

    invoke-direct {v7, v3, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v7, v15}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_22
    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->ROAD:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v5

    invoke-interface {v5}, Lcom/prineside/tdi2/Tile$Factory;->create()Lcom/prineside/tdi2/Tile;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v5

    const/16 v7, 0x32

    if-ge v5, v7, :cond_23

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v7, v3, v13}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v7, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_23
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/prineside/tdi2/enums/BossTileType;->values:[Lcom/prineside/tdi2/enums/BossTileType;

    array-length v5, v3

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v5, :cond_26

    aget-object v6, v3, v13

    sget-object v7, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-eq v6, v7, :cond_25

    sget-object v7, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v6, v7, :cond_24

    goto :goto_12

    :cond_24
    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v11, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->create(Lcom/prineside/tdi2/enums/BossTileType;)Lcom/prineside/tdi2/tiles/BossTile;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v7

    if-nez v7, :cond_25

    new-instance v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v9, Lcom/prineside/tdi2/ItemStack;

    const/4 v11, 0x1

    invoke-direct {v9, v6, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v7, v9, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_25
    :goto_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_26
    sget-object v3, Lcom/prineside/tdi2/enums/BossType;->values:[Lcom/prineside/tdi2/enums/BossType;

    array-length v5, v3

    const/4 v13, 0x0

    :goto_13
    if-ge v13, v5, :cond_2d

    aget-object v6, v3, v13

    sget-object v7, Lcom/prineside/tdi2/managers/ProgressManager$6;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v7, v7, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_2b

    if-eq v7, v10, :cond_2a

    if-eq v7, v2, :cond_29

    const/4 v9, 0x4

    if-eq v7, v9, :cond_28

    const/4 v11, 0x5

    if-eq v7, v11, :cond_27

    const/4 v7, 0x0

    goto :goto_14

    :cond_27
    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    goto :goto_14

    :cond_28
    const/4 v11, 0x5

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    goto :goto_14

    :cond_29
    const/4 v9, 0x4

    const/4 v11, 0x5

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    goto :goto_14

    :cond_2a
    const/4 v9, 0x4

    const/4 v11, 0x5

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    goto :goto_14

    :cond_2b
    const/4 v9, 0x4

    const/4 v11, 0x5

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    :goto_14
    if-eqz v7, :cond_2c

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v7

    if-nez v7, :cond_2c

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v14, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    sget-object v14, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->create(Lcom/prineside/tdi2/enums/BossTileType;)Lcom/prineside/tdi2/tiles/BossTile;

    move-result-object v7

    iput-object v6, v7, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v7

    if-nez v7, :cond_2c

    new-instance v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    new-instance v14, Lcom/prineside/tdi2/ItemStack;

    const/4 v15, 0x1

    invoke-direct {v14, v6, v15}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v7, v14, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;F)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2c
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_2d
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v4

    const v5, 0x3ea8f5c3    # 0.33f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2e

    const/4 v4, 0x3

    goto :goto_15

    :cond_2e
    const/4 v4, 0x2

    :goto_15
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_16
    if-ltz v5, :cond_2f

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_2f
    const/4 v13, 0x0

    :goto_17
    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v4, :cond_35

    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v5, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget-object v5, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v5

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    if-ne v5, v7, :cond_32

    if-lt v13, v10, :cond_31

    goto :goto_17

    :cond_31
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_32
    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v7, v4, -0x1

    if-ne v5, v7, :cond_34

    if-nez v13, :cond_34

    const/4 v5, 0x0

    :goto_18
    iget v7, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_34

    iget-object v7, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz v9, :cond_33

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v7

    sget-object v9, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    if-ne v7, v9, :cond_33

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    goto :goto_19

    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_34
    :goto_19
    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_17

    :cond_35
    :goto_1a
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_1b
    if-ltz v1, :cond_36

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_36
    :goto_1c
    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v5, 0x8

    if-ge v1, v5, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget-object v6, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    if-ne v6, v7, :cond_38

    if-lt v13, v2, :cond_37

    goto :goto_1c

    :cond_37
    add-int/lit8 v13, v13, 0x1

    :cond_38
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3b

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3c

    const/4 v5, 0x0

    :goto_1d
    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_3a

    iget-object v7, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-eqz v7, :cond_39

    const/4 v5, 0x1

    goto :goto_1e

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v5, 0x0

    :goto_1e
    if-nez v5, :cond_3c

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    invoke-direct {v5, v9, v7, v10}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;-><init>(Lcom/prineside/tdi2/ItemStack;FI)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_3b
    const/high16 v6, 0x3f000000    # 0.5f

    :cond_3c
    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    goto :goto_1c

    :cond_3d
    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1f
    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v13, v0, :cond_41

    iget-object v0, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v0, v0, v13

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v2, v4, :cond_3e

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    const v4, 0xc350

    if-le v2, v4, :cond_3e

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    const v2, 0xc350

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    goto :goto_20

    :cond_3e
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v2, v4, :cond_3f

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    const/16 v4, 0x2710

    if-le v2, v4, :cond_3f

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    goto :goto_20

    :cond_3f
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v2, v4, :cond_40

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    const/16 v4, 0x3e8

    if-le v2, v4, :cond_40

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    :cond_40
    :goto_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    :cond_41
    new-instance v0, Lcom/prineside/tdi2/managers/x;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/x;-><init>()V

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const/4 v13, 0x0

    :goto_21
    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    div-int/lit8 v1, v0, 0x2

    if-ge v13, v1, :cond_42

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v13

    invoke-virtual {v3, v13, v0}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    add-int/lit8 v13, v13, 0x2

    goto :goto_21

    :cond_42
    iput-object v3, v12, Lcom/prineside/tdi2/managers/ProgressManager;->G:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, v12, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastRotation:F

    iput v0, v12, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastWeaponAngle:F

    return-void
.end method

.method public generateNewShopOffers()V
    .locals 7

    const-class v0, Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->z:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    const/16 v4, 0x96

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v0, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;-><init>(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v0, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;-><init>(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->z:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_ABILITY:Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;->create(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/items/AbilityItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result p1

    return p1
.end method

.method public getAccelerators()I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v0

    return v0
.end method

.method public getAcceleratorsRequiredToShortenTime(F)I
    .locals 1

    const/high16 v0, 0x44160000    # 600.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    return p1
.end method

.method public getAllItems()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getCraftingQueueItem(I)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;

    return-object v0
.end method

.method public getDifficultyModeColor(Lcom/prineside/tdi2/enums/DifficultyMode;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager$6;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method public getDifficultyModeDiffMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager$6;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->ENDLESS_MODE_DIFFICULTY:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x5c

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->clampModeDifficulty(Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/GameValueProvider;)I

    move-result p1

    return p1
.end method

.method public getDifficultyModePrizeMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager$6;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    const/high16 p1, 0x3fc00000    # 1.5f

    return p1

    :cond_1
    const/high16 p1, 0x3f400000    # 0.75f

    return p1
.end method

.method public getDifficultyName(Lcom/prineside/tdi2/enums/DifficultyMode;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "difficulty_mode_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedCasesCount()I
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v3, v3, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getExtraDecryptingSlotsCount()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->DECRYPTING_QUEUE_MAX_SIZE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public getGreenPapers()I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v0

    return v0
.end method

.method public getInventoryStatistics()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->x:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->reset()V

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ProgressManager;->x:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/TileItem;

    invoke-static {v4, v3}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->a(Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;Lcom/prineside/tdi2/items/TileItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->y:Z

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->x:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    return-object v0
.end method

.method public getIssuedPrizes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/IssuedItems;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getItem(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/ItemStack;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsByCategory(Lcom/prineside/tdi2/enums/ItemCategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ItemCategoryType;",
            ")",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p1
.end method

.method public getItemsBySubcategory(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ItemSubcategoryType;",
            ")",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p1
.end method

.method public getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ItemType;",
            ")",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-class v4, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p1
.end method

.method public getItemsCount(Lcom/prineside/tdi2/Item;)I
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getLootBoostTimeLeft()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F

    return v0
.end method

.method public getLuckyWheelOptions()Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->G:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->generateNewLuckyWheel()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->G:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLuckyWheelRespinPriceAccelerators()I
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getLuckyWheelOptions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    const/16 v0, 0xa

    return v0

    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/16 v0, 0x14

    return v0

    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    const/16 v0, 0x1e

    return v0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    const/16 v0, 0x28

    return v0

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const/16 v0, 0x32

    return v0

    :cond_5
    return v1
.end method

.method public getLuckyWheelRespinPriceTokens()I
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getLuckyWheelOptions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public getMaxCraftQueueSize()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->CRAFTING_QUEUE_MAX_SIZE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->min(II)I

    move-result v0

    return v0
.end method

.method public getMaxEncryptedCasesInInventory()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->RARITY_BRIGHT_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRarityColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->RARITY_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRarityIcon(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->M:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRarityName(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->L:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRegularRewardingAdItems(I)Lcom/prineside/tdi2/IssuedItems;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-float v1, v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->RVW:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    move-wide v2, v4

    :cond_0
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide v4, 0x4086800000000000L    # 720.0

    mul-double v2, v2, v4

    new-instance v1, Lcom/prineside/tdi2/IssuedItems;

    sget-object v4, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REWARD_VIDEO:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->GPG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int v4, v4

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_1

    const/16 v4, 0x12c

    :cond_1
    iget-object v5, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v6, v7, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/prineside/tdi2/managers/ProgressManager;->J:[Lcom/prineside/tdi2/ItemStack;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v4, :cond_2

    const/16 v4, 0x7c

    new-array v4, v4, [Lcom/prineside/tdi2/ItemStack;

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v12, v13, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v12, v4, v6

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v12, v13, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v12, v4, v11

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v12, v13, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v12, v4, v10

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v12, v13, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v12, v4, v8

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v12, v13, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v12, v4, v5

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v12, v13, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v12, v4, v9

    const/4 v12, 0x6

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/4 v12, 0x7

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x8

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x9

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0xa

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0xb

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0xc

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0xd

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0xe

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0xf

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x10

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x11

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->RANDOM_TELEPORT:Lcom/prineside/tdi2/items/RandomTeleportItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x12

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x13

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x14

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x15

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x16

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x17

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x18

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x19

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x1a

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x1b

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x1c

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x1d

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x1e

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x1f

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x20

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x21

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x22

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x23

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x24

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x25

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->RANDOM_TELEPORT:Lcom/prineside/tdi2/items/RandomTeleportItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x26

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x27

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x28

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x29

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x2a

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x2b

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x2c

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x2d

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x2e

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x2f

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x30

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x31

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x32

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x33

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x34

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x35

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x36

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x37

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x38

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x39

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x3a

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x3b

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x3c

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x3d

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x3e

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x3f

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->RANDOM_TELEPORT:Lcom/prineside/tdi2/items/RandomTeleportItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x40

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x41

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_II:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x42

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x43

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x44

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x45

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x46

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x47

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x48

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x49

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x4a

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x4b

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x4c

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x4d

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x4e

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x4f

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x50

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x51

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x52

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x53

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x54

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x55

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x56

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x57

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x58

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x59

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x5a

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x5b

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x5c

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x5d

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x5e

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x5f

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x60

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x61

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x62

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->RANDOM_TELEPORT:Lcom/prineside/tdi2/items/RandomTeleportItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x63

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x64

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x65

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x66

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x67

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x68

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x69

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x6a

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x6b

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x6c

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x6d

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x6e

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x6f

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x70

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x71

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x72

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_II:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x73

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x74

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x75

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x76

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x77

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x78

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x79

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v13, v14, v9}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x7a

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    const/16 v12, 0x7b

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-direct {v13, v14, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    aput-object v13, v4, v12

    iput-object v4, v0, Lcom/prineside/tdi2/managers/ProgressManager;->J:[Lcom/prineside/tdi2/ItemStack;

    :cond_2
    iget-object v4, v0, Lcom/prineside/tdi2/managers/ProgressManager;->J:[Lcom/prineside/tdi2/ItemStack;

    array-length v12, v4

    rem-int v12, p1, v12

    aget-object v4, v4, v12

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/enums/ItemType;->BIT_DUST:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v12, v13, :cond_4

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v13, Lcom/prineside/tdi2/enums/DifficultyMode;->ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/ProgressManager;->difficultyModeAvailable(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v4, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {v13, v7}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v7

    invoke-direct {v12, v7, v11}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    int-to-float v7, v7

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v7, v7, v12

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    iget-object v7, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v7, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    new-array v4, v9, [Lcom/prineside/tdi2/enums/StatisticsType;

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->RG_I:Lcom/prineside/tdi2/enums/StatisticsType;

    aput-object v7, v4, v6

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->RG_T:Lcom/prineside/tdi2/enums/StatisticsType;

    aput-object v7, v4, v11

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->RG_M:Lcom/prineside/tdi2/enums/StatisticsType;

    aput-object v7, v4, v10

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->RG_V:Lcom/prineside/tdi2/enums/StatisticsType;

    aput-object v7, v4, v8

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->RG_S:Lcom/prineside/tdi2/enums/StatisticsType;

    aput-object v7, v4, v5

    :goto_1
    if-ge v6, v9, :cond_c

    aget-object v7, v4, v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v12, v7}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v12

    double-to-float v12, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v2

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    mul-double v12, v12, v14

    double-to-int v12, v12

    if-le v12, v9, :cond_b

    sget-object v13, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v14, Lcom/prineside/tdi2/managers/ProgressManager$6;->e:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v14, v7

    if-eq v7, v11, :cond_a

    if-eq v7, v10, :cond_9

    if-eq v7, v8, :cond_8

    if-eq v7, v5, :cond_7

    if-eq v7, v9, :cond_6

    goto :goto_2

    :cond_6
    sget-object v13, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    goto :goto_2

    :cond_7
    sget-object v13, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    goto :goto_2

    :cond_8
    sget-object v13, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    goto :goto_2

    :cond_9
    sget-object v13, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    goto :goto_2

    :cond_a
    sget-object v13, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    :goto_2
    iget-object v7, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v14, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v14, v13, v12}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_c
    return-object v1
.end method

.method public getResources(Lcom/prineside/tdi2/enums/ResourceType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result p1

    return p1
.end method

.method public getShopOffers()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->z:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->generateNewShopOffers()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->z:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getTempDoubleGainDurationLeft()I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->v:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getTotalCraftingTimeLeft()F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTimeLeft()F

    move-result v2

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getVideoAdViewBonuses()[Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->videoAdViewBonuses:[Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    new-instance v1, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    const/16 v3, 0x1e

    invoke-direct {v1, v3, v2}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    const/16 v5, 0x46

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7, v8, v2, v2}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v1, v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    const/16 v5, 0x6e

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v6, v7, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v1, v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-instance v5, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    const/16 v6, 0x96

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-direct {v7, v9, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;)V

    aput-object v5, v0, v1

    const/4 v1, 0x4

    new-instance v5, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    const/16 v6, 0xc8

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    const/16 v10, 0x32

    invoke-direct {v7, v9, v10}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;)V

    aput-object v5, v0, v1

    const/4 v1, 0x5

    new-instance v5, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    const/16 v6, 0xfa

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    invoke-virtual {v9, v8, v2, v2}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v2

    invoke-direct {v7, v2, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;)V

    aput-object v5, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    const/16 v6, 0x12c

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-direct {v2, v6, v3, v4}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;Z)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->videoAdViewBonuses:[Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->videoAdViewBonuses:[Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;

    return-object v0
.end method

.method public giveDoubleGainIfNecessary()V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->eligibleForFreeDoubleGain()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->r:Z

    if-nez v0, :cond_1

    const-string v0, "ProgressManager"

    const-string v1, "eligible for free DG, reward not received"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "icon-check"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainPermanent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v3, Lcom/prineside/tdi2/IssuedItems$IssueReason;->PURCHASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v3, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/16 v6, 0x7530

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    const/16 v6, 0x12c

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    iget-object v0, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v5, "Double Gain was already enabled, please take these items instead. Thank you for playing Infinitode 2 on Steam!"

    invoke-virtual {v3, v5, v0, v2, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->requireDelayedSave()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->enableDoubleGainPermanently()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v5, "Double Gain enabled, thank you for playing Infinitode 2 on Steam!"

    invoke-virtual {v3, v5, v0, v2, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_0
    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->r:Z

    :cond_1
    return-void
.end method

.method public givePendingBonuses()V
    .locals 7

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->E:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getInvitedById()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v4, Lcom/prineside/tdi2/IssuedItems$IssueReason;->SIGNED_UP_BY_INVITE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v4, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    invoke-virtual {v6, v1, v2, v3}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v1

    invoke-direct {v5, v1, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/ProgressManager;->E:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    :cond_1
    return-void
.end method

.method public grabCrafted()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->grabCrafted(I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public grabCrafted(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getCraftingQueueItem(I)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getCraftedCount()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    mul-int v4, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    iget v3, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    if-ne v3, v2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    iget p1, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    int-to-float v4, v2

    iget v5, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    mul-float v4, v4, v5

    sub-float/2addr p1, v4

    iput p1, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grabCrafted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - nothing was crafting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isDeveloperModeEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->DEVELOPER_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDoubleGainEnabled()Z
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->u:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->v:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDoubleGainPermanent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    return v0
.end method

.method public isLuckyWheelSpinAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    return v0
.end method

.method public isPermanentDoubleGainEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainPermanent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager$6;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchType;->MINER_TYPE_INFIAR:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchType;->MINER_TYPE_TENSOR:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchType;->MINER_TYPE_MATRIX:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchType;->MINER_TYPE_VECTOR:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchType;->MINER_TYPE_SCALAR:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public openPack(Lcom/prineside/tdi2/Item;IZZ)Z
    .locals 8

    const/4 v0, 0x1

    if-lt p2, v0, :cond_b

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->canBeUnpacked()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_TILE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v1, v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/items/RandomTileItem;

    new-instance v3, Lcom/prineside/tdi2/IssuedItems;

    sget-object v4, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_TILE_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget v1, v1, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    iput v1, v3, Lcom/prineside/tdi2/IssuedItems;->randomTilePackQuality:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v1, v3, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/items/CaseItem;

    new-instance v3, Lcom/prineside/tdi2/IssuedItems;

    sget-object v4, Lcom/prineside/tdi2/IssuedItems$IssueReason;->CASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v1, v1, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    iput-object v1, v3, Lcom/prineside/tdi2/IssuedItems;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_TELEPORT:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v1, v3, :cond_2

    new-instance v3, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_TELEPORT_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_BARRIER:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v1, v3, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/items/RandomBarrierItem;

    new-instance v3, Lcom/prineside/tdi2/IssuedItems;

    sget-object v4, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_BARRIER_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget v1, v1, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    iput v1, v3, Lcom/prineside/tdi2/IssuedItems;->randomBarrierPackQuality:F

    :goto_0
    iput p2, v3, Lcom/prineside/tdi2/IssuedItems;->massUnpackCount:I

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getInventoryStatistics()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->cpy()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_4

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/Item;->openPack(Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget-object v6, v3, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    const/4 v6, 0x0

    :goto_2
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_3

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ItemStack;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->countItem(Lcom/prineside/tdi2/Item;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, v3, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v1, 0x32

    if-le p2, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->compressStacksArray(Lcom/badlogic/gdx/utils/Array;)V

    :cond_6
    iget-object p1, v3, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object p2, Lcom/prineside/tdi2/ItemStack;->SORT_COMPARATOR_RARITY_ASC:Ljava/util/Comparator;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object p2, v3, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/badlogic/gdx/utils/Array;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1, v3, p4}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    if-eqz p3, :cond_7

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->openedPackOverlay:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

    iget-object p2, v3, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;->show(Lcom/badlogic/gdx/utils/Array;Z)V

    :cond_7
    return v0

    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not implemented for unpacking: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "not_enough_items"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string p4, "icon-times"

    invoke-virtual {p3, p4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p3

    sget-object p4, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return v2

    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Item can\'t be unpacked: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "incorrect count "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public postRender(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->B:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->D:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->D:F

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->D:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    :cond_2
    return-void
.end method

.method public final reload()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "failed to load other items random"

    const-string v3, "item"

    const-string v4, "failed to load issued prizes log"

    const-string v5, "failed to load items"

    const-string v6, "-1"

    const-string v7, "0"

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->t:Z

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    iput-boolean v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->r:Z

    iput-boolean v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->E:Z

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v1, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v10}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v10, v1, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v10, v1, Lcom/prineside/tdi2/managers/ProgressManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v10, v1, Lcom/prineside/tdi2/managers/ProgressManager;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v10, v1, Lcom/prineside/tdi2/managers/ProgressManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v10, v1, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v1, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v12, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v12, :cond_1

    const/4 v11, 0x0

    :goto_1
    iget v12, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v12, :cond_0

    iget-object v12, v1, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v13}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v13

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v14}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v14

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v15}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v15

    invoke-interface {v12, v13, v14, v15}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;->itemsChanged(Lcom/prineside/tdi2/Item;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v10, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v10

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v11, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_STATISTICS:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v11

    const-string v12, "issuedPrizes"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    :cond_2
    const-string v0, "doubleGainEnabled"

    const-string v13, "false"

    invoke-virtual {v10, v0, v13}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "true"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    const-string v15, "ProgressManager"

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Double gain "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    if-eqz v8, :cond_3

    const-string v8, "enabled"

    goto :goto_2

    :cond_3
    const-string v8, "disabled"

    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " by preferences"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "steamRewardReceived"

    invoke-virtual {v10, v0, v13}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->r:Z

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Steam reward "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->r:Z

    if-eqz v8, :cond_5

    const-string v8, "received"

    goto :goto_3

    :cond_5
    const-string v8, "not received"

    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " according to preferences"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :try_start_0
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    const-string v8, "tempDoubleGainStartDate"

    invoke-virtual {v10, v8, v7}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->u:I

    const-string v8, "tempDoubleGainEndDate"

    invoke-virtual {v10, v8, v7}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->v:I

    iget v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->u:I

    if-lt v0, v9, :cond_7

    if-le v0, v8, :cond_8

    :cond_7
    const/4 v8, 0x0

    iput v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->u:I

    iput v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v8, "failed to load temp double gain"

    invoke-static {v15, v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    const-string v0, "bonusGivenForRegByInvite"

    invoke-virtual {v10, v0, v13}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->E:Z

    :try_start_1
    const-string v0, "difficultyMode"

    iget-object v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v0, v8}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/DifficultyMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0

    iput-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;

    :goto_5
    const/4 v8, 0x0

    iput v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F

    :try_start_2
    const-string v0, "lootBoostTimeLeft"

    invoke-virtual {v10, v0, v7}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v9, "failed to load lootBoostTimeLeft"

    invoke-static {v15, v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_9

    invoke-virtual {v11, v12, v9}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_3
    new-instance v11, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {v0}, Lcom/prineside/tdi2/IssuedItems;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/IssuedItems;

    move-result-object v0

    iget-object v12, v1, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    :try_start_5
    invoke-static {v15, v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-static {v15, v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    const-string v0, "items"

    invoke-virtual {v10, v0, v9}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v4

    if-eqz v0, :cond_c

    :try_start_6
    new-instance v11, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    invoke-static {v0}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v12

    sget-object v8, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v12, v8, :cond_b

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V

    goto :goto_9

    :cond_a
    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    :try_start_8
    invoke-static {v15, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_b
    :goto_9
    const/4 v8, 0x0

    goto :goto_8

    :catch_6
    move-exception v0

    invoke-static {v15, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    iput-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    const/4 v4, 0x0

    iput v4, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    const-string v0, "decryptingCase"

    invoke-virtual {v10, v0, v9}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to load decrypting case "

    if-eqz v4, :cond_f

    :try_start_9
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/Item;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/CaseItem;

    goto :goto_a

    :cond_d
    move-object v3, v9

    :goto_a
    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    if-eqz v3, :cond_e

    const-string v3, "timeLeft"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    :cond_e
    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_f

    iput v3, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_b
    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const-string v0, "decryptingCaseQueue"

    invoke-virtual {v10, v0, v9}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_a
    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3}, Lcom/prineside/tdi2/Item;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    const/4 v0, 0x0

    :goto_d
    iget-object v3, v1, Lcom/prineside/tdi2/managers/ProgressManager;->caseRandoms:[Lcom/badlogic/gdx/math/RandomXS128;

    array-length v4, v3

    if-ge v0, v4, :cond_11

    new-instance v4, Lcom/badlogic/gdx/math/RandomXS128;

    mul-int/lit16 v5, v0, 0x3ff

    int-to-long v11, v5

    invoke-direct {v4, v11, v12}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(J)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_11
    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    const-wide/16 v3, 0x401

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(J)V

    iput-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

    const-string v0, "caseRandoms"

    invoke-virtual {v10, v0, v9}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "stateB"

    const-string v4, "stateA"

    if-eqz v0, :cond_12

    :try_start_b
    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :try_start_c
    const-string v8, "type"

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/CaseType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/CaseType;

    move-result-object v8

    iget-object v11, v1, Lcom/prineside/tdi2/managers/ProgressManager;->caseRandoms:[Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v8, v11, v8

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-object/from16 v16, v10

    :try_start_d
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v11, v12, v9, v10}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_f

    :catch_a
    move-exception v0

    move-object/from16 v16, v10

    :goto_f
    :try_start_e
    const-string v8, "failed to load case random"

    invoke-static {v15, v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :goto_10
    move-object/from16 v10, v16

    const/4 v9, 0x0

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v16, v10

    :goto_11
    const-string v5, "failed to load case randoms"

    invoke-static {v15, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_12
    move-object/from16 v16, v10

    :goto_12
    const-string v0, "otherItemsRandom"

    move-object/from16 v5, v16

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_f
    new-instance v8, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    iget-object v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v8, v9, v10, v3, v4}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    :try_start_10
    invoke-static {v15, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_13

    :catch_e
    move-exception v0

    move-object v3, v0

    invoke-static {v15, v2, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const-string v0, "craftingQueue"

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_11
    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    const-string v2, "failed to load crafting queue"

    invoke-static {v15, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->G:Lcom/badlogic/gdx/utils/Array;

    const-string v0, "luckyWheelOptions"

    invoke-virtual {v5, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_12
    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_15

    :cond_15
    iput-object v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->G:Lcom/badlogic/gdx/utils/Array;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    const-string v2, "failed to load luckyWheelOptions"

    invoke-static {v15, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    :try_start_13
    const-string v0, "luckyWheelSpinAvailable"

    invoke-virtual {v5, v0, v13}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    const-string v0, "luckyWheelSpinInProgress"

    invoke-virtual {v5, v0, v13}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinInProgress:Z

    const-string v0, "luckyWheelLastRotation"

    invoke-virtual {v5, v0, v7}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastRotation:F

    const-string v0, "luckyWheelLastWeaponAngle"

    invoke-virtual {v5, v0, v7}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastWeaponAngle:F
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    const-wide/16 v2, -0x1

    :try_start_14
    const-string v0, "luckyWheelWR1"

    invoke-virtual {v5, v0, v6}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11

    :try_start_15
    const-string v0, "luckyWheelWR2"

    invoke-virtual {v5, v0, v6}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_17

    :catch_11
    move-wide v8, v2

    :catch_12
    :try_start_16
    const-string v0, "failed to load lucky spin wheel seeds"

    invoke-static {v15, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v2

    :goto_17
    cmp-long v0, v8, v2

    if-eqz v0, :cond_17

    cmp-long v0, v10, v2

    if-nez v0, :cond_18

    :cond_17
    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt()I

    move-result v0

    int-to-long v10, v0

    :cond_18
    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelWheelRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    :try_start_17
    const-string v0, "luckyWheelSR1"

    invoke-virtual {v5, v0, v6}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13

    :try_start_18
    const-string v0, "luckyWheelSR2"

    invoke-virtual {v5, v0, v6}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    goto :goto_18

    :catch_13
    move-wide v8, v2

    :catch_14
    :try_start_19
    const-string v0, "failed to load lucky spin handle seeds"

    invoke-static {v15, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v2

    :goto_18
    cmp-long v0, v8, v2

    if-eqz v0, :cond_19

    cmp-long v0, v10, v2

    if-nez v0, :cond_1a

    :cond_19
    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt()I

    move-result v2

    int-to-long v8, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt()I

    move-result v0

    int-to-long v10, v0

    :cond_1a
    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    const-string v2, "failed to load lucky wheel status"

    invoke-static {v15, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->w:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    const-string v0, "handledConditionalCompensations"

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_1a
    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/ProgressManager;->w:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    const-string v2, "failed to load handledConditionalCompensations, marking all as completed"

    invoke-static {v15, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->K:[Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    iget-object v6, v1, Lcom/prineside/tdi2/managers/ProgressManager;->w:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, v4, Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;->id:I

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v2, 0x0

    iput v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    iput v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    :try_start_1b
    const-string v0, "videosWatchedForLuckyShot"

    invoke-virtual {v5, v0, v7}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    const-string v0, "videosWatchedForDoubleGain"

    invoke-virtual {v5, v0, v7}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_1c

    :catch_17
    move-exception v0

    const-string v2, "failed to load videos stats"

    invoke-static {v15, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->B:Z

    iput-boolean v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    iput-boolean v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->t:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/prineside/tdi2/managers/ProgressManager;->y:Z

    return-void
.end method

.method public removeAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_ABILITY:Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;->create(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/items/AbilityItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result p1

    return p1
.end method

.method public removeAccelerators(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result p1

    return p1
.end method

.method public removeAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    return-void
.end method

.method public removeGreenPapers(I)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->GPS:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_1
    return v0
.end method

.method public removeItems(Lcom/prineside/tdi2/Item;I)Z
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    if-ne v5, p2, :cond_2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getAllItems()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    const-string v6, "ProgressManager"

    if-nez v2, :cond_0

    const-string v2, "allItems had no such item"

    invoke-static {v6, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByCategory(Lcom/prineside/tdi2/enums/ItemCategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "itemsByCategory had no such item"

    invoke-static {v6, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsBySubcategory(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "itemsBySubcategory had no such item"

    invoke-static {v6, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-le v5, p2, :cond_4

    sub-int v2, v5, p2

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_3
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;

    neg-int v3, p2

    invoke-interface {v0, p1, v5, v3}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;->itemsChanged(Lcom/prineside/tdi2/Item;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iput-boolean v4, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    iput-boolean v4, p0, Lcom/prineside/tdi2/managers/ProgressManager;->y:Z

    :cond_8
    return v2
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeResources(Lcom/prineside/tdi2/enums/ResourceType;I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->RS:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v3, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object p2, Lcom/prineside/tdi2/managers/ProgressManager$6;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v0, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->RS_I:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->RS_T:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->RS_M:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->RS_V:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->RS_S:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :goto_0
    return v0
.end method

.method public requireDelayedSave()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    return-void
.end method

.method public save()V
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_STATISTICS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v4, "difficultyMode"

    invoke-virtual {v2, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->q:Z

    const-string v4, "true"

    const-string v5, "false"

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    const-string v6, "doubleGainEnabled"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->r:Z

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    const-string v6, "steamRewardReceived"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->E:Z

    if-eqz v0, :cond_3

    move-object v0, v4

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    const-string v6, "bonusGivenForRegByInvite"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v6, "lootBoostTimeLeft"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "videosWatchedForDoubleGain"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "videosWatchedForLuckyShot"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->u:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "tempDoubleGainStartDate"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->v:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "tempDoubleGainEndDate"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/IssuedItems;

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/IssuedItems;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "issuedPrizes"

    invoke-virtual {v3, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v8, 0x0

    :goto_4
    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_5

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ItemStack;

    aget-object v9, v9, v8

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/ItemStack;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "items"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    if-eqz v9, :cond_6

    const-string v9, "item"

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/items/CaseItem;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    iget v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v10, "timeLeft"

    invoke-virtual {v0, v10, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "decryptingCase"

    invoke-virtual {v2, v8, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v8, 0x0

    :goto_5
    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_7

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/items/CaseItem;

    aget-object v9, v9, v8

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/items/CaseItem;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "decryptingCaseQueue"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    sget-object v8, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_6
    const-string v11, "stateB"

    const-string v12, "stateA"

    if-ge v10, v9, :cond_8

    aget-object v14, v8, v10

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    const-string v13, "type"

    invoke-virtual {v0, v13, v15}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v13, v1, Lcom/prineside/tdi2/managers/ProgressManager;->caseRandoms:[Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget-object v13, v13, v15

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v12, v1, Lcom/prineside/tdi2/managers/ProgressManager;->caseRandoms:[Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "caseRandoms"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v12, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/prineside/tdi2/managers/ProgressManager;->otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "otherItemsRandom"

    invoke-virtual {v2, v8, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    iget-object v8, v1, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "craftingQueue"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getLuckyWheelOptions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    const/4 v9, 0x0

    :goto_8
    iget v10, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v10, :cond_a

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v10, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v10, v10, v9

    invoke-virtual {v10, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v0, "luckyWheelOptions"

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v6, "ProgressManager"

    const-string v8, "failed to save luckyWheelOptions"

    invoke-static {v6, v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    iget-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    if-eqz v0, :cond_b

    move-object v0, v4

    goto :goto_a

    :cond_b
    move-object v0, v5

    :goto_a
    const-string v6, "luckyWheelSpinAvailable"

    invoke-virtual {v2, v6, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinInProgress:Z

    if-eqz v0, :cond_c

    goto :goto_b

    :cond_c
    move-object v4, v5

    :goto_b
    const-string v0, "luckyWheelSpinInProgress"

    invoke-virtual {v2, v0, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastRotation:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v4, "luckyWheelLastRotation"

    invoke-virtual {v2, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastWeaponAngle:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v4, "luckyWheelLastWeaponAngle"

    invoke-virtual {v2, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelWheelRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "luckyWheelWR1"

    invoke-virtual {v2, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelWheelRandom:Lcom/badlogic/gdx/math/RandomXS128;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v5, "luckyWheelWR2"

    invoke-virtual {v2, v5, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v5, "luckyWheelSR1"

    invoke-virtual {v2, v5, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "luckyWheelSR2"

    invoke-virtual {v2, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v4, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v5, 0x0

    :goto_c
    iget-object v6, v1, Lcom/prineside/tdi2/managers/ProgressManager;->w:Lcom/badlogic/gdx/utils/IntArray;

    iget v8, v6, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v5, v8, :cond_d

    iget-object v6, v6, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_d
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "handledConditionalCompensations"

    invoke-virtual {v2, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    iput-boolean v7, v1, Lcom/prineside/tdi2/managers/ProgressManager;->B:Z

    iput-boolean v7, v1, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_d
    iget-object v0, v1, Lcom/prineside/tdi2/managers/ProgressManager;->H:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v2, :cond_e

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;->saved()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_e
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public saveIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->B:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    :cond_1
    return-void
.end method

.method public sellItems(Lcom/prineside/tdi2/Item;I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->f(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->canBeSold()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Item;->addSellItems(Lcom/badlogic/gdx/utils/Array;)V

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->N:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ItemStack;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-static {v2, p2}, Lcom/prineside/tdi2/utils/PMath;->multiplyWithoutOverflow(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public setAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v0

    if-ge p2, v0, :cond_0

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)Z

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAccelerators(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v0

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAccelerators(I)Z

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addAccelerators(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDifficultyMode(Lcom/prineside/tdi2/enums/DifficultyMode;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->s:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/GameValueManager;->requireRecalculation()V

    return-void
.end method

.method public setMoney(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v0

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeGreenPapers(I)Z

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addGreenPapers(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setResources(Lcom/prineside/tdi2/enums/ResourceType;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->e()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v0

    if-ge p2, v0, :cond_0

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeResources(Lcom/prineside/tdi2/enums/ResourceType;I)Z

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addResources(Lcom/prineside/tdi2/enums/ResourceType;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/ProgressManager$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ProgressManager$4;-><init>(Lcom/prineside/tdi2/managers/ProgressManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->I:Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager;->addListener(Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/ProgressManager$5;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ProgressManager$5;-><init>(Lcom/prineside/tdi2/managers/ProgressManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->A:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->reload()V

    return-void
.end method

.method public showNewlyIssuedPrizesPopup()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/IssuedItems;

    iget-boolean v2, v2, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    const-string v1, "ProgressManager"

    const-string v2, "need to show"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/IssuedItems;

    iget-boolean v2, v2, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/IssuedItems;

    iput-boolean v4, v2, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/IssuedItems;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->issuedPrizesOverlay:Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;->show(Lcom/badlogic/gdx/utils/Array;)V

    iput-boolean v4, p0, Lcom/prineside/tdi2/managers/ProgressManager;->C:Z

    :cond_4
    return-void
.end method

.method public startCrafting(Lcom/prineside/tdi2/CraftRecipe;Lcom/badlogic/gdx/utils/Array;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/CraftRecipe;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Item;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v2, ", "

    const-string v3, ")"

    if-ne v0, v1, :cond_9

    if-ltz p3, :cond_8

    invoke-virtual {p1}, Lcom/prineside/tdi2/CraftRecipe;->getMaxQueueStackWithGVs()I

    move-result v0

    if-gt p3, v0, :cond_8

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxCraftQueueSize()I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "crafting_queue_is_full"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "icon-exclamation-triangle"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p3

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p1, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_4

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    aget-object v4, v4, v2

    iget-object v5, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Lcom/prineside/tdi2/Item;

    aget-object v6, v6, v2

    const-string v7, "ingredient "

    if-eqz v6, :cond_3

    check-cast v5, [Lcom/prineside/tdi2/Item;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->fits(Lcom/prineside/tdi2/Item;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getCountWithGVs()I

    move-result v4

    mul-int v4, v4, p3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v6, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/Item;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v5

    if-lt v5, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not enough of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/Item;

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to craft "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " items ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t fit recipe ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/Item;

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz v0, :cond_6

    :goto_1
    iget-object v0, p1, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_5

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    aget-object v0, v0, v1

    iget-object v2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Item;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getCountWithGVs()I

    move-result v0

    mul-int v0, v0, p3

    invoke-virtual {p0, v2, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p2, p1, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    iget-object p1, p1, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    mul-int p1, p1, p3

    invoke-virtual {p0, p2, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput p3, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    iget-object v2, p1, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    iput-object v2, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p1}, Lcom/prineside/tdi2/CraftRecipe;->getTimeWithGVs()F

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    :goto_2
    iget-object v2, p1, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_7

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getCountWithGVs()I

    move-result v2

    mul-int v2, v2, p3

    iget-object v3, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    iget-object v5, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Item;

    aget-object v5, v5, v1

    invoke-direct {v4, v5, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Item;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    return-void

    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count must be 1 <=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/CraftRecipe;->getMaxQueueStackWithGVs()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " given"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ingredients.size != recipe.ingredients.size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "recipe is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public startDecryptingCase(Lcom/prineside/tdi2/enums/CaseType;)Z
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    const-string v1, "startDecryptingCase failed - no case found of type "

    const-string v2, "ProgressManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getExtraDecryptingSlotsCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v7, v6, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    if-ne v7, p1, :cond_0

    invoke-virtual {p0, v6, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "other_case_is_decrypting"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-times"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return v3

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v5, 0x0

    :goto_1
    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_5

    iget-object v6, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/items/CaseItem;

    iget-boolean v7, v6, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    if-ne v7, p1, :cond_4

    invoke-virtual {p0, v6, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    iput-object v6, p0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/items/CaseItem;->getDecryptionTime()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    return v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public updateNativeNotifications()V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1}, Lcom/prineside/tdi2/ActionResolver;->hasNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SEND_NOTIFICATIONS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    cmpl-double v7, v1, v3

    if-nez v7, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1, v6}, Lcom/prineside/tdi2/ActionResolver;->clearNotification(I)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1, v5}, Lcom/prineside/tdi2/ActionResolver;->clearNotification(I)V

    return-void

    :cond_1
    iget v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getExtraDecryptingSlotsCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseQueue:Lcom/badlogic/gdx/utils/Array;

    iget v7, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v3, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/items/CaseItem;->getDecryptionTime()F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    const-wide/16 v7, 0x1388

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v9, 0x0

    if-eqz v3, :cond_5

    cmpg-float v10, v1, v9

    if-gtz v10, :cond_4

    goto :goto_2

    :cond_4
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/prineside/tdi2/items/CaseItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v2, "case_was_decrypted"

    invoke-virtual {v10, v2, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "decrypted_chest_native_notification_body"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v12, 0x1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v2

    mul-float v1, v1, v4

    float-to-long v5, v1

    add-long/2addr v2, v5

    add-long v15, v2, v7

    invoke-interface/range {v11 .. v16}, Lcom/prineside/tdi2/ActionResolver;->addNotification(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1, v6}, Lcom/prineside/tdi2/ActionResolver;->clearNotification(I)V

    :goto_3
    iget-object v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->craftingQueue:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v1

    cmpl-float v1, v1, v9

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "all_items_crafted"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "finished_crafting_native_notification_body"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v10, 0x2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ProgressManager;->getTotalCraftingTimeLeft()F

    move-result v3

    mul-float v3, v3, v4

    float-to-long v3, v3

    add-long/2addr v1, v3

    add-long v13, v1, v7

    invoke-interface/range {v9 .. v14}, Lcom/prineside/tdi2/ActionResolver;->addNotification(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/prineside/tdi2/ActionResolver;->clearNotification(I)V

    :goto_5
    return-void
.end method
