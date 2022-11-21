.class public Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CraftingQueueItem"
.end annotation


# instance fields
.field public count:I

.field public duration:F

.field public ingredients:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public result:Lcom/prineside/tdi2/ItemStack;

.field public timePassed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->ingredients:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;-><init>()V

    const-string v1, "result"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    const-string v1, "ingredients"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v2}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "count"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    const-string v1, "timePassed"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    iput p0, v0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    return-object v0
.end method


# virtual methods
.method public getCraftedCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTimeLeft()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    return v0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    iget v1, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTimeLeft()F
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->getTotalTime()F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-float/2addr v0, v1

    return v0
.end method

.method public getTimePassed()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    return v0
.end method

.method public getTotalTime()F
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    iget v1, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ItemStack;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string v0, "ingredients"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ItemStack;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->duration:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;->timePassed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "timePassed"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
