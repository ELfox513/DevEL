.class Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;
.super Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_SideMenuListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/ui/components/TowerMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V

    return-void
.end method


# virtual methods
.method public offscreenChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->d(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/ui/actors/SideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->isOffscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    return-void
.end method

.method public sideTooltipHidden()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->e(Lcom/prineside/tdi2/ui/components/TowerMenu;I)I

    return-void
.end method
