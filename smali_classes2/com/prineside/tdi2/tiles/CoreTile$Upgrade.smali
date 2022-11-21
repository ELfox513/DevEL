.class public Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/CoreTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Upgrade"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/enums/GameValueType;

.field public b:Lcom/prineside/tdi2/enums/TriggeredActionType;

.field public costsCoins:Z

.field public isAction:Z

.field public links:I

.field public starting:Z

.field public upgradeLevels:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(ZZLcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/TriggeredActionType;Lcom/badlogic/gdx/utils/Array;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/prineside/tdi2/enums/GameValueType;",
            "Lcom/prineside/tdi2/enums/TriggeredActionType;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;",
            ">;IZ)V"
        }
    .end annotation

    const-class v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    iput-boolean p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    iput-object p4, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    iput p6, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    iput-boolean p7, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-nez p5, :cond_0

    new-instance p5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p5, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    new-instance p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-direct {p1, p2, v2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;-><init>(FI)V

    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;
    .locals 11

    const-string v0, "a"

    const-string v1, "gv"

    const-string v2, "s"

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v2, "ia"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "CoreTile"

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/enums/TriggeredActionType;->GIVE_COINS:Lcom/prineside/tdi2/enums/TriggeredActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/TriggeredActionType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_1

    :catch_0
    sget-object v1, Lcom/prineside/tdi2/enums/TriggeredActionType;->GIVE_COINS:Lcom/prineside/tdi2/enums/TriggeredActionType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load action type from json ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fallback to GIVE_COINS"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->EMOJI_ENEMIES:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->EMOJI_ENEMIES:Lcom/prineside/tdi2/enums/GameValueType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load GV type from json ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fallback to EMOJI_ENEMIES"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v7, v6

    move-object v6, v0

    :goto_1
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "cc"

    invoke-virtual {p0, v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    new-instance v8, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const-string v0, "d"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "p"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    invoke-direct {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;-><init>()V

    iput v0, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    iput p0, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string v0, "ul"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_3
    new-instance p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;-><init>(ZZLcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/TriggeredActionType;Lcom/badlogic/gdx/utils/Array;IZ)V

    return-object p0
.end method


# virtual methods
.method public cloneUpgrade()Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;
    .locals 9

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->cpy()Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iget-boolean v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    iget-boolean v2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    iget v6, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    iget-boolean v7, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;-><init>(ZZLcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/TriggeredActionType;Lcom/badlogic/gdx/utils/Array;IZ)V

    return-object v8
.end method

.method public generateHash()I
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    add-int/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v3, v3, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v4, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/TriggeredActionType;->DUMMY:Lcom/prineside/tdi2/enums/TriggeredActionType;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "upgrade is a GameValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->DUMMY:Lcom/prineside/tdi2/enums/GameValueType;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "upgrade is an action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile;->LINK_DIRECTION_BITS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    const-class v0, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    const-class v0, Lcom/prineside/tdi2/enums/TriggeredActionType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/TriggeredActionType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;)Z
    .locals 6

    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    if-eq v0, v1, :cond_3

    return v2

    :cond_2
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    iget v0, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    iget v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-eq v0, v1, :cond_5

    return v2

    :cond_5
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_9

    iget-object v3, p1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-ne v4, v5, :cond_8

    check-cast v3, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    check-cast v1, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    return v2

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public setActionType(Lcom/prineside/tdi2/enums/TriggeredActionType;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "upgrade is a GameValue"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "type is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "upgrade is an action"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "type is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile;->LINK_DIRECTION_BITS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/tiles/CoreTile;->LINK_DIRECTION_BITS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    iget p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    or-int/2addr p2, p1

    xor-int/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    :goto_0
    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ia"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gv"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "cc"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ul"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->starting:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->a:Lcom/prineside/tdi2/enums/GameValueType;

    const-class v1, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->b:Lcom/prineside/tdi2/enums/TriggeredActionType;

    const-class v1, Lcom/prineside/tdi2/enums/TriggeredActionType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->links:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
