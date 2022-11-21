.class Lcom/prineside/tdi2/ui/components/TowerMenu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;


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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$4;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$4;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strategyChanged(Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$4;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$4;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v1, v0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->setTowerAimStrategyAction(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Tower$AimStrategy;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$4;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyName(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/Tooltip;->show(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
