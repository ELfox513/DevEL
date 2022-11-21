.class Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;
.super Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_TowerSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/MapRenderingSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V

    return-void
.end method


# virtual methods
.method public towerAbilityChanged(Lcom/prineside/tdi2/Tower;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTowersRedraw()V

    return-void
.end method

.method public towerAimStrategyChanged(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTowersRedraw()V

    :cond_0
    return-void
.end method

.method public towerLeveledUp(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTowersRedraw()V

    :cond_0
    return-void
.end method

.method public towerUpgraded(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTowersRedraw()V

    :cond_0
    return-void
.end method
