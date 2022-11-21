.class Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/music/CachedMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheStatus"
.end annotation


# instance fields
.field public lastPlayTimestamp:I

.field public songFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;-><init>()V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;-><init>()V

    const-string v1, "sfn"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->songFileName:Ljava/lang/String;

    const-string v1, "lpt"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->lastPlayTimestamp:I

    return-object v0
.end method


# virtual methods
.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->songFileName:Ljava/lang/String;

    const-string v1, "sfn"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->lastPlayTimestamp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lpt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
