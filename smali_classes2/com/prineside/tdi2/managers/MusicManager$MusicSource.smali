.class public Lcom/prineside/tdi2/managers/MusicManager$MusicSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicSource"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;


# instance fields
.field public id:Ljava/lang/String;

.field public repeats:I

.field public type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;-><init>(Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;Ljava/lang/String;)V

    sput-object v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    iput-object p1, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/MusicManager$MusicSource;
    .locals 4

    :try_start_0
    const-string v0, "type"

    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "repeats"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-direct {v3, v0, v1}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;-><init>(Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;Ljava/lang/String;)V

    iput v2, v3, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed MusicSource.fromJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MusicManager"

    invoke-static {v1, p0, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    return-object p0
.end method


# virtual methods
.method public getBase64()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->BASIC_LEVEL:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->USER_MAP:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModule()Lcom/prineside/tdi2/ibxm/Module;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->BASIC_LEVEL:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->USER_MAP:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    if-ne v0, v1, :cond_1

    :try_start_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_1
    return-object v2
.end method

.method public sameAs(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    iget-object v1, p1, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "repeats"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
