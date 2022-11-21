.class public abstract Lcom/prineside/tdi2/Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Item$Factory;,
        Lcom/prineside/tdi2/Item$UsableItem;,
        Lcom/prineside/tdi2/Item$D;
    }
.end annotation


# static fields
.field public static final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/badlogic/gdx/utils/IntArray;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/Item;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Item;->a:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public static a(F)F
    .locals 2

    const v0, 0x3d4ccccd    # 0.05f

    mul-float p0, p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    :cond_0
    return p0
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 2

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/ItemType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prineside/tdi2/Item$Factory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addSellItems(Lcom/badlogic/gdx/utils/Array;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Item;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Item;->addSellItems(Lcom/badlogic/gdx/utils/Array;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Item;->b:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v0

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    invoke-static {v1, p2}, Lcom/prineside/tdi2/utils/PMath;->multiplyWithoutOverflow(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public affectedByLuckyWheelMultiplier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canBeSold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canBeUnpacked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 0

    return-object p0
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    return-void
.end method

.method public fillWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 0

    return-void
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 0

    return-object p0
.end method

.method public abstract generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
.end method

.method public abstract getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;
.end method

.method public final getData(Lcom/prineside/tdi2/enums/ItemDataType;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Item;->getData()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v2, v1

    if-ne v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget p1, v2, v1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getData()Lcom/badlogic/gdx/utils/IntArray;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Item;->a:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Item;->a:Lcom/badlogic/gdx/utils/IntArray;

    return-object v0
.end method

.method public abstract getDescription()Ljava/lang/CharSequence;
.end method

.method public getPriceInAcceleratorsForResearchReset(I)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getRarity()Lcom/prineside/tdi2/enums/RarityType;
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    :goto_0
    mul-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_0
.end method

.method public abstract getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getType()Lcom/prineside/tdi2/enums/ItemType;
.end method

.method public isAffectedByDoubleGain()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isCountable()Z
.end method

.method public openPack(Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/Item;->canBeUnpacked()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Is not pack"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Item;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    if-eq v1, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    return-void
.end method
