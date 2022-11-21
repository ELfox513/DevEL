.class Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->b(Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;)Lcom/prineside/tdi2/MapPrestigeConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UserMapManager;->prestigeSellMap(Lcom/prineside/tdi2/MapPrestigeConfig;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->b(Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;)Lcom/prineside/tdi2/MapPrestigeConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->show(Lcom/prineside/tdi2/MapPrestigeConfig;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$MapPrestigeOverlayListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$MapPrestigeOverlayListener;->prestigeConfirmed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method
