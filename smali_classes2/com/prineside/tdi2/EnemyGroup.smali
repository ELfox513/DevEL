.class public Lcom/prineside/tdi2/EnemyGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;
    }
.end annotation


# instance fields
.field public a:I

.field public bounty:F

.field public count:I

.field public delay:F

.field public health:F

.field public interval:F

.field public killExp:F

.field public killScore:I

.field public speed:F

.field public type:Lcom/prineside/tdi2/enums/EnemyType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/EnemyGroup$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/EnemyGroup;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iput p2, p0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    iput p3, p0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    iput p4, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    iput p5, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    iput p6, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    iput p7, p0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    iput p8, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    iput p9, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/EnemyGroup;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/EnemyGroup;

    invoke-direct {v0}, Lcom/prineside/tdi2/EnemyGroup;-><init>()V

    const-string v1, "enemyType"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/EnemyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    const-string v1, "delay"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    const-string v1, "interval"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    const-string v1, "count"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    const-string v1, "health"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    const-string v1, "speed"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    const-string v1, "bounty"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    const-string v1, "exp"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    const-string v1, "score"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    return-object v0
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/EnemyGroup;
    .locals 11

    new-instance v10, Lcom/prineside/tdi2/EnemyGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iget v2, p0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    iget v3, p0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    iget v4, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    iget v5, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    iget v6, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    iget v7, p0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    iget v8, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    iget v9, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    iput v0, v10, Lcom/prineside/tdi2/EnemyGroup;->a:I

    return-object v10
.end method

.method public createSpawnPortion(I)Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;
    .locals 12

    new-instance v11, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;

    iget-object v2, p0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iget v3, p0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    iget v4, p0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    iget v6, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    iget v7, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    iget v8, p0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    iget v9, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    iget v10, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    move-object v0, v11

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v10}, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;-><init>(Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    const/4 p1, 0x0

    iput p1, v11, Lcom/prineside/tdi2/EnemyGroup;->a:I

    return-object v11
.end method

.method public getSpawnCountByTime(F)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    div-float/2addr p1, v1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1

    :cond_2
    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    return p1
.end method

.method public getSpawnedCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/EnemyType;

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enemyType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "interval"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "health"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "speed"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "bounty"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "exp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "score"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnemyGroup { type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bounty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", killExp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", killScore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spawnedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    const-class v1, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->health:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->count:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
