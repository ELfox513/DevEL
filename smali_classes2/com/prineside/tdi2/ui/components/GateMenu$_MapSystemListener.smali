.class Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/GateMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/GateMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GateMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GateMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/GateMenu;Lcom/prineside/tdi2/ui/components/GateMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/GateMenu;)V

    return-void
.end method


# virtual methods
.method public selectedGateChanged(Lcom/prineside/tdi2/Gate;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GateMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GateMenu;->b(Lcom/prineside/tdi2/ui/components/GateMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedGate()Lcom/prineside/tdi2/Gate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GateMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GateMenu;->a(Lcom/prineside/tdi2/ui/components/GateMenu;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GateMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/GateMenu;->c(Lcom/prineside/tdi2/ui/components/GateMenu;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GateMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GateMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/GateMenu;->c(Lcom/prineside/tdi2/ui/components/GateMenu;Z)V

    :goto_0
    return-void
.end method
