.class Lcom/prineside/tdi2/ui/components/ResearchMenu$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/ResearchMenu$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ResearchMenu$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$1$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->resetStarResearches()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$1$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu$1;->b:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$1$1;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/ResearchMenu$1;->a:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-virtual {v0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->updateStarsCount()V

    return-void
.end method
