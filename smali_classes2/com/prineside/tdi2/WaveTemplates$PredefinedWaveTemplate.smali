.class public Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/WaveTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredefinedWaveTemplate"
.end annotation


# instance fields
.field public enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

.field public waveMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/EnemyGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/prineside/tdi2/EnemyGroup;

    iput-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/EnemyGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/EnemyGroup;

    iput-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/EnemyGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/EnemyGroup;

    iput-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    invoke-direct {v0}, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;-><init>()V

    const-string v1, "message"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->waveMessage:Ljava/lang/String;

    const-string v1, "enemyGroups"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    iget v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v1, v1, [Lcom/prineside/tdi2/EnemyGroup;

    iput-object v1, v0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    invoke-static {v2}, Lcom/prineside/tdi2/EnemyGroup;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/EnemyGroup;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->waveMessage:Ljava/lang/String;

    const-class v0, [Lcom/prineside/tdi2/EnemyGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/prineside/tdi2/EnemyGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->waveMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "enemyGroups"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/EnemyGroup;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->waveMessage:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    const-class v1, [Lcom/prineside/tdi2/EnemyGroup;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
