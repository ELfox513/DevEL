.class public Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameValueProvider;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValuesSnapshot"
.end annotation


# instance fields
.field public effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
            ">;"
        }
    .end annotation
.end field

.field public hash:I

.field public values:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method


# virtual methods
.method public getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDifferences(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget v1, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    iget v2, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    if-eq v1, v2, :cond_0

    new-instance v9, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;->GLOBAL_HASH:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    int-to-double v5, v2

    int-to-double v7, v1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;-><init>(Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;DD)V

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-wide v7, v3, v2

    iget-object v3, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    aget-wide v9, v3, v2

    cmpl-double v3, v7, v9

    if-eqz v3, :cond_1

    new-instance v3, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;->GV_RESULT:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;-><init>(Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;DD)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v2, v3, :cond_3

    new-instance v10, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;

    sget-object v5, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;->GV_COUNT:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    int-to-double v6, v3

    int-to-double v8, v2

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;-><init>(Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;DD)V

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const-class v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-direct {v2, v1, v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_4

    new-instance v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v4, v4, v3

    invoke-direct {v5, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_8

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    :goto_3
    iget v6, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_6

    iget-object v6, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->sameAs(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_7

    new-instance v5, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;->GV_NOT_IN_ORIG:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    invoke-direct {v5, v6, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;-><init>(Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    iget p1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, p1, :cond_9

    new-instance p1, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;

    sget-object v3, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;->GV_NOT_IN_TO:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    iget-object v4, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v4, v4, v1

    invoke-direct {p1, v3, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;-><init>(Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-object v0
.end method

.method public getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    double-to-float p1, v1

    return p1
.end method

.method public getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)F
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-wide v3, p1, p2

    add-double/2addr v1, v3

    double-to-float p1, v1

    return p1
.end method

.method public getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getValue(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public getIntValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)I
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-wide v3, p1, p2

    add-double/2addr v1, v3

    double-to-int p1, v1

    return p1
.end method

.method public getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double v1, v1, v3

    return-wide v1
.end method

.method public getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-wide v3, p1, p2

    add-double/2addr v1, v3

    const-wide p1, 0x3f847ae147ae147bL    # 0.01

    mul-double v1, v1, p1

    return-wide v1
.end method

.method public getPercentValueAsMultiplier([Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 6

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-wide v4, v5, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double v1, v1, v3

    return-wide v1
.end method

.method public getValue(Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public printDifferences(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 10

    iget v0, p3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    iget v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    const-string v2, "\n"

    if-eq v0, v1, :cond_0

    const-string v0, "hash ("

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v3, p3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v3, " != ("

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    array-length v4, v3

    const-string v5, " != "

    if-ge v1, v4, :cond_2

    aget-wide v6, v3, v1

    iget-object v3, p3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    aget-wide v8, v3, v1

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_1

    const-string v3, "value "

    invoke-virtual {p4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    aget-wide v6, v4, v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v1, v3, :cond_3

    const-string v1, "effects count "

    invoke-virtual {p4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v3, p3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const-class v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-direct {v1, v0, v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_4

    new-instance v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v4, v4, v3

    invoke-direct {v5, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v6, ": "

    const-string v7, "not found effect in "

    if-ge v3, v5, :cond_8

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    :goto_3
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_6

    iget-object v8, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v8, v8, v5

    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->sameAs(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_7

    invoke-virtual {p4, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    iget p1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, p1, :cond_9

    invoke-virtual {p4, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-object p3, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p3, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    const-class v0, [D

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const-string v1, "GameValuesSnapshot: {\n"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, "  "

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-wide v7, v6, v4

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
