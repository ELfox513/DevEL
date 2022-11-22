.class public Lcom/prineside/tdi2/managers/ReplayManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ReplayManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;,
        Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;,
        Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;,
        Lcom/prineside/tdi2/managers/ReplayManager$Serializer;
    }
.end annotation


# static fields
.field public static helperOutput:Lcom/prineside/kryo/FixedOutput;

.field public static final k:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/kryo/FixedOutput;

    const/high16 v1, 0x10000

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;-><init>(II)V

    sput-object v0, Lcom/prineside/tdi2/managers/ReplayManager;->helperOutput:Lcom/prineside/kryo/FixedOutput;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/ReplayManager;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iput v3, p0, Lcom/prineside/tdi2/managers/ReplayManager;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/ReplayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager;->reload()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/ReplayManager;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/managers/ReplayManager;->d:I

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/ReplayManager;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/ReplayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager;->f()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method


# virtual methods
.method public deleteAllReplays()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager;->getAllRecordIds()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache/replays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".rpl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public final e()V
    .locals 15

    const-class v0, Lcom/prineside/tdi2/utils/ObjectPair;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager;->getAllRecordIds()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v7, "ReplayManager"

    if-ge v5, v6, :cond_1

    iget-object v6, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/managers/ReplayManager;->getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v6

    iget-boolean v8, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v9, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-static {v8}, Lcom/prineside/tdi2/Config;->isCompatibleWithBuild(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->removeStateData()V

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveLocally()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanup - removed state from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as it is obsolete and already sent"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    const/4 v6, 0x0

    :goto_1
    iget v8, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_5

    iget-object v8, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {p0, v8}, Lcom/prineside/tdi2/managers/ReplayManager;->getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v8

    iget-boolean v9, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-eqz v9, :cond_4

    iget v9, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-static {v9}, Lcom/prineside/tdi2/Config;->isCompatibleWithBuild(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    mul-int/lit8 v9, v9, 0x1f

    iget-object v10, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x1f

    iget-object v10, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    if-nez v10, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    :goto_2
    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/utils/ObjectPair;

    if-eqz v10, :cond_3

    iget-object v10, v10, Lcom/prineside/tdi2/utils/ObjectPair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/utils/ObjectPair;

    iget-object v11, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    iput-object v11, v10, Lcom/prineside/tdi2/utils/ObjectPair;->first:Ljava/lang/Object;

    iget-wide v11, v8, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v10, Lcom/prineside/tdi2/utils/ObjectPair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v8, v6, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    check-cast v8, Lcom/prineside/tdi2/utils/ObjectPair;

    iget-object v8, v8, Lcom/prineside/tdi2/utils/ObjectPair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    check-cast v6, Lcom/prineside/tdi2/utils/ObjectPair;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preserving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " replays"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    :goto_4
    iget v0, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v0, :cond_8

    iget-object v0, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ReplayManager;->getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v0

    iget-object v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/utils/ObjectPair;

    iget-object v8, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    iput-object v8, v6, Lcom/prineside/tdi2/utils/ObjectPair;->first:Ljava/lang/Object;

    iget-wide v8, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/prineside/tdi2/utils/ObjectPair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/ReplayManager$3;-><init>(Lcom/prineside/tdi2/managers/ReplayManager;)V

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const/16 v0, 0x14

    :goto_5
    iget v1, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_9

    iget-object v1, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/utils/ObjectPair;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/utils/ObjectPair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache/replays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".rpl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as obsolete"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method public final f()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sentGameReplaysToServer"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public getAllRecordIds()Lcom/badlogic/gdx/utils/Array;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "cache/replays/"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".rpl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache/replays/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    array-length v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->fromBytes([BZ)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "zero bytes read"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v3, "ReplayManager"

    const-string v4, "failed to load replay record - removing"

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-object v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replay ID should not contain dots, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " given"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadAndStoreBestReplayFromServer(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requesting best replay from server for level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReplayManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getSignInStatus()Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    if-eq v0, v2, :cond_0

    const-string p1, "player is not signed in, skipping best replay request"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->GET_BEST_GAME_REPLAY_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "map"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/managers/ReplayManager$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/prineside/tdi2/managers/ReplayManager$4;-><init>(Lcom/prineside/tdi2/managers/ReplayManager;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method

.method public final reload()V
    .locals 5

    const-string v0, "ReplayManager"

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    const-string v2, "sentGameReplaysToServer"

    const-string v3, "[]"

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " replay IDs sent to the server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public saveReplay(Lcom/prineside/tdi2/GameSystemProvider;[BZ)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->fromState(Lcom/prineside/tdi2/GameSystemProvider;[BZ)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveLocally()V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/ReplayManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object p3, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    return-object p1
.end method

.method public sendReplayToServer(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    const-string v1, "ReplayManager"

    if-nez v0, :cond_0

    const-string p1, "not signed it"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "skipped sendReplayToServer - dev mode"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ReplayManager;->getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t get record "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->getStateBytes()[B

    move-result-object v2

    if-nez v2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is cleaned up and no longer has a state"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a custom map"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v4, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/prineside/tdi2/enums/DifficultyMode;->ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v3, v4, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " difficulty, won\'t be sent to the server"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-nez v2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasn\'t leaderboards, skipping"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get level "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not sent yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    iget v3, p0, Lcom/prineside/tdi2/managers/ReplayManager;->d:I

    if-ge v2, v3, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has too low version, skipping"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    new-instance v2, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v3, "POST"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/Config;->GAME_REPLAY_REPORT_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    sget-object v4, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const-string v5, "build"

    iget v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "id"

    iget-object v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "os"

    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v6}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "playRealTime"

    iget v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->playRealTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "gameMode"

    iget-object v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "difficultyMode"

    iget-object v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "modeDifficultyMultiplier"

    iget v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->modeDifficultyMultiplier:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    if-eqz v5, :cond_8

    const-string v6, "levelName"

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const-string v5, "profileXp"

    iget v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->profileXp:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "defeatedWaves"

    iget v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "score"

    iget-wide v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "record"

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->toCompactString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "report"

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sessionid"

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    sget-object v3, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v4, Lcom/prineside/tdi2/managers/ReplayManager$5;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/prineside/tdi2/managers/ReplayManager$5;-><init>(Lcom/prineside/tdi2/managers/ReplayManager;Ljava/lang/String;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v3, v2, v4}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send replay to the server ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendUnsentReplaysToTheServer()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    const-string v1, "ReplayManager"

    if-eqz v0, :cond_0

    const-string v0, "skipped sendUnsentReplaysToTheServer - dev mode"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->isTemporarySettingsApplied()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "temporary settings enabled, skipped replays sending"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "sending unsent replays..."

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager;->getAllRecordIds()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ReplayManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/ReplayManager;->sendReplayToServer(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager;->e()V

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/ReplayManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ReplayManager$1;-><init>(Lcom/prineside/tdi2/managers/ReplayManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager;->reload()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/managers/ReplayManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ReplayManager$2;-><init>(Lcom/prineside/tdi2/managers/ReplayManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->getNews(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
