.class Lcom/prineside/tdi2/ui/components/BuildMenu$11;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

.field public final synthetic p:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic q:Lcom/prineside/tdi2/ui/components/BuildMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->q:Lcom/prineside/tdi2/ui/components/BuildMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->o:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->p:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->q:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->q(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->o:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->p:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->q:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/BuildMenu;->q(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->V:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/MinerSystem;->buildMinerAction(Lcom/prineside/tdi2/enums/MinerType;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$11;->q:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/BuildMenu;->r(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    :goto_0
    return-void
.end method
