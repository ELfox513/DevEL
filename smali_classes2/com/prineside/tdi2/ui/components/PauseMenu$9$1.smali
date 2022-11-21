.class Lcom/prineside/tdi2/ui/components/PauseMenu$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/PauseMenu$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/PauseMenu$9;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/PauseMenu$9;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$9$1;->a:Lcom/prineside/tdi2/ui/components/PauseMenu$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$9$1;->a:Lcom/prineside/tdi2/ui/components/PauseMenu$9;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/PauseMenu$9;->a:Lcom/prineside/tdi2/ui/components/PauseMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/PauseMenu;->h(Lcom/prineside/tdi2/ui/components/PauseMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/LootSystem;->viewRewardingAdAction()V

    :cond_0
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/PauseMenu$9$1;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
