.class Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu$3;->globalUpgradeButtonConfirmed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Tower;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/TowerMenu$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu$3;Lcom/prineside/tdi2/Tower;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;->b:Lcom/prineside/tdi2/ui/components/TowerMenu$3;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;->a:Lcom/prineside/tdi2/Tower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;->b:Lcom/prineside/tdi2/ui/components/TowerMenu$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;->a:Lcom/prineside/tdi2/Tower;

    iget-object v1, v1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->globalUpgradeTowerAction(Lcom/prineside/tdi2/enums/TowerType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;->b:Lcom/prineside/tdi2/ui/components/TowerMenu$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    return-void
.end method
