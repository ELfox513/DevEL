.class Lcom/prineside/tdi2/ui/components/TowerMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$5;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$5;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$5;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->m(Lcom/prineside/tdi2/ui/components/TowerMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$5;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->cancelUsingCustomButton()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$5;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->hasCustomButton()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->isCustomButtonNeedMapPoint()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$5;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->startUsingCustomButton()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$5;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/prineside/tdi2/systems/TowerSystem;->customTowerButtonAction(Lcom/prineside/tdi2/Tower;II)V

    :cond_2
    :goto_0
    return-void
.end method
