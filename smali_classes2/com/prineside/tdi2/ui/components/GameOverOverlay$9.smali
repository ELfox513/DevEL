.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay;->show(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/MapPrestigeConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/MapPrestigeConfig;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay;Lcom/prineside/tdi2/MapPrestigeConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->a:Lcom/prineside/tdi2/MapPrestigeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->l(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    new-instance v1, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;-><init>()V

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->m(Lcom/prineside/tdi2/ui/components/GameOverOverlay;Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;)Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->l(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v1, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9$1;-><init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->l(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$9;->a:Lcom/prineside/tdi2/MapPrestigeConfig;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->show(Lcom/prineside/tdi2/MapPrestigeConfig;)V

    return-void
.end method
