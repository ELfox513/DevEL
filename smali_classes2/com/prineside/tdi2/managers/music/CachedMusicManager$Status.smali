.class final enum Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/music/CachedMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE_GENERATED:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

.field public static final enum IDLE:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

.field public static final enum PLAYING:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

.field public static final enum WAITING_CACHE_GENERATION:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

.field public static final values:[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->IDLE:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const-string v1, "WAITING_CACHE_GENERATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->WAITING_CACHE_GENERATION:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const-string v1, "CACHE_GENERATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->CACHE_GENERATED:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const-string v1, "PLAYING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->PLAYING:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    invoke-static {}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->c()[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->a:[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    invoke-static {}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->values()[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->values:[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    sget-object v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->IDLE:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->WAITING_CACHE_GENERATION:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->CACHE_GENERATED:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->PLAYING:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->a:[Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    return-object v0
.end method
