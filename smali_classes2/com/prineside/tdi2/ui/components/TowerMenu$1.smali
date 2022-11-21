.class Lcom/prineside/tdi2/ui/components/TowerMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;


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

.field public final synthetic b:I

.field public final synthetic c:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->c:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iput p3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abilityConfirmed()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->c:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->c:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/TowerSystem;->selectTowerAbilityAction(Lcom/prineside/tdi2/Tower;I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->c:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    :cond_0
    return-void
.end method

.method public globalAbilityConfirmed()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->c:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->c:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/TowerSystem;->selectGlobalTowerAbilityAction(Lcom/prineside/tdi2/Tower;I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$1;->c:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    :cond_0
    return-void
.end method
