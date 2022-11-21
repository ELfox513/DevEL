.class Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;
.super Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/SpawnMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_WaveSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/SpawnMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/ui/components/SpawnMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public statusChanged(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->c(Lcom/prineside/tdi2/ui/components/SpawnMenu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->update()V

    :cond_0
    return-void
.end method
