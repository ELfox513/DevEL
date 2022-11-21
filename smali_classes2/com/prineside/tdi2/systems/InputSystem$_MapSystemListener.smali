.class Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/InputSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/InputSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/systems/InputSystem;)V

    return-void
.end method


# virtual methods
.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/systems/InputSystem;->j(Lcom/prineside/tdi2/systems/InputSystem;I)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/systems/InputSystem;->a(Lcom/prineside/tdi2/systems/InputSystem;I)I

    :cond_0
    return-void
.end method
