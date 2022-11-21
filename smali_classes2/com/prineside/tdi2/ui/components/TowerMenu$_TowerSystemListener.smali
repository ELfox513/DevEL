.class Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;
.super Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_TowerSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/ui/components/TowerMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V

    return-void
.end method


# virtual methods
.method public customButtonPressed(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    return-void
.end method

.method public towerAbilityChanged(Lcom/prineside/tdi2/Tower;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/TowerMenu;->l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    :cond_0
    return-void
.end method

.method public towerAimStrategyChanged(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->c(Lcom/prineside/tdi2/ui/components/TowerMenu;)V

    :cond_0
    return-void
.end method

.method public towerExperienceChanged(Lcom/prineside/tdi2/Tower;F)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/TowerMenu;->b(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    :cond_0
    return-void
.end method

.method public towerLeveledUp(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    :cond_0
    return-void
.end method

.method public towerUpgraded(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/TowerMenu;->l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    return-void
.end method
