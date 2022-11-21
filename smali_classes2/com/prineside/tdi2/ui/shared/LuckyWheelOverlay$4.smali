.class Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->generateNewLuckyWheel()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->clearParticles()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->rebuild()V

    return-void
.end method
