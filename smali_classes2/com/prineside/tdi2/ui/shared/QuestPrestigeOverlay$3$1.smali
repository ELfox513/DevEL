.class Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->resetQuestsForPrestige()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;->setVisible(Z)V

    return-void
.end method
