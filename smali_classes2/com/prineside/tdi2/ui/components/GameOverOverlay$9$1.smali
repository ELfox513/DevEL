.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$MapPrestigeOverlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prestigeConfirmed()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->c(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void
.end method
