.class public Lcom/prineside/tdi2/GameValueConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# instance fields
.field public allowBonuses:Z

.field public overwrite:Z

.field public type:Lcom/prineside/tdi2/enums/GameValueType;

.field public value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-wide p2, p0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iput-boolean p4, p0, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    iput-boolean p5, p0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/GameValueConfig;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {v0}, Lcom/prineside/tdi2/GameValueConfig;-><init>()V

    const-string v1, "t"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    const-string v1, "v"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    const-string v1, "o"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    const-string v1, "b"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "failed to load from json"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/GameValueConfig;
    .locals 7

    new-instance v6, Lcom/prineside/tdi2/GameValueConfig;

    iget-object v1, p0, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v2, p0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iget-boolean v4, p0, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    iget-boolean v5, p0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    return-object v6
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/GameValueType;

    iput-object p1, p0, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/GameValueConfig;)Z
    .locals 6

    iget-object v0, p1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v1, p0, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-wide v0, p1, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iget-wide v3, p0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p1, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-boolean p1, p1, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    if-eq p1, v0, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "o"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    const-class v1, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
