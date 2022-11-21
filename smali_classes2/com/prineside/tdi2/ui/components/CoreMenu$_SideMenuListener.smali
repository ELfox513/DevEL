.class Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;
.super Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/CoreMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_SideMenuListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/CoreMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/CoreMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/CoreMenu;Lcom/prineside/tdi2/ui/components/CoreMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/CoreMenu;)V

    return-void
.end method


# virtual methods
.method public offscreenChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->b(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->d(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->f(Lcom/prineside/tdi2/ui/components/CoreMenu;)V

    return-void
.end method
