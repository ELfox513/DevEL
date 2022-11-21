.class public Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/music/LiveMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PcmBuffer"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

.field public data:[S

.field public length:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1000

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->data:[S

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->data:[S

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureCapacity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveMusicManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->data:[S

    :cond_0
    return-void
.end method
