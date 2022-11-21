.class Lcom/prineside/tdi2/ui/components/ResearchMenu$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/ResearchMenu$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ResearchMenu$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$3$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$3$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/ResearchMenu$3;->a:Lcom/prineside/tdi2/Research;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->researchForToken(Lcom/prineside/tdi2/Research;)Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->hide()V

    return-void
.end method
