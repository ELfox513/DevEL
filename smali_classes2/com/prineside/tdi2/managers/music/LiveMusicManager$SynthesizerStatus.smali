.class final enum Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/music/LiveMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SynthesizerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final enum NOT_ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final enum RESTART_PLAYBACK:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final enum SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final enum SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final enum SLEEP_NO_AUDIO_DATA:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final enum SLEEP_NO_FREE_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final enum SLEEP_NO_IBXM:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->NOT_ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "SLEEP_APP_INACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "SLEEP_NOT_PLAYING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "SLEEP_NO_IBXM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_IBXM:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "SLEEP_NO_FREE_BUFFER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_FREE_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "SLEEP_NO_AUDIO_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_AUDIO_DATA:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "RESTART_PLAYBACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->RESTART_PLAYBACK:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    invoke-static {}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->c()[Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->a:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->NOT_ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_IBXM:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_FREE_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_AUDIO_DATA:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->RESTART_PLAYBACK:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->a:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    return-object v0
.end method
