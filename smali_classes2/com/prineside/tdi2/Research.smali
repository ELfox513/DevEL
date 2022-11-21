.class public Lcom/prineside/tdi2/Research;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Research$ResearchLink;,
        Lcom/prineside/tdi2/Research$ResearchLevel;,
        Lcom/prineside/tdi2/Research$EndlessResearchLevel;
    }
.end annotation


# static fields
.field public static final RESET_RESEARCH_STATE_AVAILABLE:I = 0x0

.field public static final RESET_RESEARCH_STATE_HAS_CHILD:I = 0x1

.field public static final RESET_RESEARCH_STATE_NOT_ENOUGH_ACCELERATORS:I = 0x5

.field public static final RESET_RESEARCH_STATE_NOT_INSTALLED:I = 0x2

.field public static final RESET_RESEARCH_STATE_NOT_SUITABLE:I = 0x3

.field public static final RESET_RESEARCH_STATE_STAR_BRANCH:I = 0x4

.field public static final b:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final c:Ljava/util/zip/CRC32;

.field public static final d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public cantBeIgnoredOnUserMaps:Z

.field public final category:Lcom/prineside/tdi2/ResearchCategory;

.field public distanceToCenter:F

.field public endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

.field public endlessOnly:Z

.field public endlessPriceExp:F

.field public endlessPriceLevel:I

.field public installedLevel:I

.field public installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

.field public final levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

.field public final linksToChildren:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Research$ResearchLink;",
            ">;"
        }
    .end annotation
.end field

.field public final linksToParents:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Research$ResearchLink;",
            ">;"
        }
    .end annotation
.end field

.field public maxEndlessLevel:I

.field public final position3d:Lcom/badlogic/gdx/math/Vector3;

.field public priceInStars:I

.field public relatedToTowerType:Lcom/prineside/tdi2/enums/TowerType;

.field public final type:Lcom/prineside/tdi2/enums/ResearchType;

.field public unlocksTower:Z

.field public x:I

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Research;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Research;->c:Ljava/util/zip/CRC32;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Research;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/Research;->e:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ResearchType;Lcom/prineside/tdi2/ResearchCategory;[Lcom/prineside/tdi2/Research$ResearchLevel;I)V
    .locals 11

    const-class v0, Lcom/prineside/tdi2/Research$ResearchLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Research;->position3d:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Research;->cantBeIgnoredOnUserMaps:Z

    iput v0, p0, Lcom/prineside/tdi2/Research;->priceInStars:I

    array-length v1, p3

    const-string v2, "upgrade "

    if-eqz v1, :cond_b

    array-length v1, p3

    if-lt p4, v1, :cond_a

    iput-object p1, p0, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    iput p4, p0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    iput p4, p0, Lcom/prineside/tdi2/Research;->endlessPriceLevel:I

    iput-object p2, p0, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    iput-object p3, p0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length p2, p3

    const/4 v1, 0x1

    if-eq p4, p2, :cond_7

    const/4 p2, 0x0

    move-object v6, p2

    const/4 p2, 0x0

    const/4 p4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_5

    aget-object v2, p3, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v8, v2, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v9, :cond_4

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_0

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f266666    # 0.65f

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_1

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v9, v9, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    mul-int/lit8 v9, v9, 0x3

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v8

    mul-int v9, v9, v8

    add-int/2addr v4, v9

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_2

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-virtual {v8}, Lcom/prineside/tdi2/items/BlueprintItem;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    if-ne v9, v10, :cond_3

    invoke-virtual {v8}, Lcom/prineside/tdi2/items/BlueprintItem;->getBlueprintType()Lcom/prineside/tdi2/enums/BlueprintType;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_3

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v4

    add-int/2addr p4, v4

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_5
    array-length p2, p3

    div-int v4, p4, p2

    array-length p2, p3

    sub-int/2addr p2, v1

    aget-object p2, p3, p2

    iget-object p2, p2, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    array-length p2, p2

    new-array v8, p2, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    :goto_3
    array-length p2, p3

    sub-int/2addr p2, v1

    aget-object p2, p3, p2

    iget-object p2, p2, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    array-length p2, p2

    if-ge v0, p2, :cond_6

    new-instance p2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    array-length p4, p3

    sub-int/2addr p4, v1

    aget-object p4, p3, p4

    iget-object p4, p4, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object p4, p4, v0

    iget-object p4, p4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, p3

    sub-int/2addr v2, v1

    aget-object v2, p3, v2

    iget-object v2, v2, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-direct {p2, p4, v2, v3}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>(Lcom/prineside/tdi2/enums/GameValueType;D)V

    aput-object p2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-instance p2, Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/prineside/tdi2/Research$EndlessResearchLevel;-><init>(Lcom/prineside/tdi2/Research;IILcom/prineside/tdi2/enums/BlueprintType;I[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V

    iput-object p2, p0, Lcom/prineside/tdi2/Research;->endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    :cond_7
    sget-object p2, Lcom/prineside/tdi2/Research;->c:Ljava/util/zip/CRC32;

    invoke-virtual {p2}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string p4, "UTF-8"

    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {p2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/Research;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TOWER_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :try_start_0
    aget-object p3, p2, v1

    const-string p4, "TYPE"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p3, 0x2

    aget-object p2, p2, p3

    invoke-static {p2}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/Research;->relatedToTowerType:Lcom/prineside/tdi2/enums/TowerType;

    iput-boolean v1, p0, Lcom/prineside/tdi2/Research;->unlocksTower:Z

    goto :goto_4

    :cond_8
    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/Research;->relatedToTowerType:Lcom/prineside/tdi2/enums/TowerType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown tower type for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Research"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void

    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have maxEndlessLevel >= "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have at least one level"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public static synthetic a()Lcom/badlogic/gdx/utils/Array;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Research;->e:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public static synthetic b(I)I
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/Research;->c(I)I

    move-result p0

    return p0
.end method

.method public static c(I)I
    .locals 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v1, 0x64

    if-ge p0, v1, :cond_1

    div-int/lit8 p0, p0, 0x5

    mul-int/lit8 p0, p0, 0x5

    return p0

    :cond_1
    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_2

    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    return p0

    :cond_2
    div-int/lit8 p0, p0, 0x32

    mul-int/lit8 p0, p0, 0x32

    return p0
.end method


# virtual methods
.method public getCumulativePrice(IIZ)Lcom/badlogic/gdx/utils/Array;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    sget-object v1, Lcom/prineside/tdi2/Research;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_0
    if-gt p1, p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Research;->d:Lcom/badlogic/gdx/utils/Array;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/items/ResearchTokenUsedItem;

    invoke-static {v2, v3, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    goto :goto_3

    :cond_0
    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/Research;->endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->getPrice(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_2

    iget-object v4, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ItemStack;

    aget-object v4, v4, v3

    sget-object v5, Lcom/prineside/tdi2/Research;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    invoke-static {v5, v6, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/Research;->d:Lcom/badlogic/gdx/utils/Array;

    return-object p1
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ResearchCategory;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffects(I)Lcom/badlogic/gdx/utils/Array;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    iget v1, p0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    if-gt p1, v1, :cond_a

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v3, v2

    if-lt p1, v3, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget-object v6, v6, v5

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v9, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v10, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v9, v10, :cond_1

    iget-wide v9, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-wide v11, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    add-double/2addr v9, v11

    iput-wide v9, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_3

    new-instance v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v8, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v9, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-direct {v7, v8, v9, v10}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>(Lcom/prineside/tdi2/enums/GameValueType;D)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eq v2, p1, :cond_9

    iget-object v2, p0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v2, v2

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/prineside/tdi2/Research;->endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    iget-object v4, v4, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    array-length v5, v4

    if-ge v2, v5, :cond_9

    aget-object v4, v4, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v7, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v8, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v7, v8, :cond_6

    iget-wide v7, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-wide v9, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    int-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    iput-wide v7, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_8

    new-instance v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v6, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v7, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    int-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-direct {v5, v6, v7, v8}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>(Lcom/prineside/tdi2/enums/GameValueType;D)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-object v1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid research level \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", max: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getRelatedToTowerType()Lcom/prineside/tdi2/enums/TowerType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Research;->relatedToTowerType:Lcom/prineside/tdi2/enums/TowerType;

    return-object v0
.end method

.method public getResetPrice()I
    .locals 6

    iget v0, p0, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/prineside/tdi2/Research;->getCumulativePrice(IIZ)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/Item;->getPriceInAcceleratorsForResearchReset(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    const/16 v2, 0x190

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Research;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Research;->isUnlocksTower()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Research;->getRelatedToTowerType()Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Research;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResearchCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Research;->getRelatedToTowerType()Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getTitle(Lcom/prineside/tdi2/enums/TowerType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Research;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResearchCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public isMaxEndlessLevel()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget v1, p0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaxNormalLevel()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/Research;->endlessOnly:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget-object v1, p0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v1, v1

    if-lt v0, v1, :cond_0

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

.method public isUnlocksTower()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Research;->unlocksTower:Z

    return v0
.end method

.method public resetForAcceleratorsState()I
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Research;->getResetPrice()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v1, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v2, v2, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v2, v2, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    iget v1, p0, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v1, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getAccelerators()I

    move-result v1

    if-ge v1, v0, :cond_5

    const/4 v0, 0x5

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method
