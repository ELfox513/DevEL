.class final enum Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/music/LiveMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public static final enum SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public static final enum SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public static final enum SLEEP_NO_AUDIO_DEVICE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public static final enum SLEEP_NO_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public static final enum STARTING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public static final enum STOPPED:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->STARTING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-string v1, "STOPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->STOPPED:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-string v1, "SLEEP_NO_BUFFER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NO_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-string v1, "SLEEP_NO_AUDIO_DEVICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NO_AUDIO_DEVICE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-string v1, "SLEEP_APP_INACTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-string v1, "SLEEP_NOT_PLAYING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    invoke-static {}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->c()[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->a:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->STARTING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->STOPPED:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NO_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NO_AUDIO_DEVICE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->a:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    return-object v0
.end method
