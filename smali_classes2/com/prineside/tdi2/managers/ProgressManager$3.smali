.class Lcom/prineside/tdi2/managers/ProgressManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ProgressManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ProgressManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ProgressManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$3;->a:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gameLoaded()V
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$3;->a:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$3$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/ProgressManager$3$1;-><init>(Lcom/prineside/tdi2/managers/ProgressManager$3;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method

.method public gameStartedLoading()V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method
