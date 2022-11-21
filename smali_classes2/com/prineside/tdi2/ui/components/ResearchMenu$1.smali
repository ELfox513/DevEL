.class Lcom/prineside/tdi2/ui/components/ResearchMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/ResearchMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/ResearchesScreen;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/ResearchMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$1;->b:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$1;->a:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v2, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getResetStarResearchesAcceleratorPrice()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "reset_research_branch_for_accelerators"

    invoke-virtual {v2, v0, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/ui/components/ResearchMenu$1$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/ResearchMenu$1$1;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method
