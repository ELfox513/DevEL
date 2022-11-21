.class Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GraphicsSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_Game_StateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/GraphicsSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/GraphicsSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/GraphicsSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/GraphicsSystem;Lcom/prineside/tdi2/systems/GraphicsSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/systems/GraphicsSystem;)V

    return-void
.end method


# virtual methods
.method public gamePaused()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->pauseMenu:Lcom/prineside/tdi2/ui/components/PauseMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu;->setVisible(Z)V

    return-void
.end method

.method public gameResumed()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->pauseMenu:Lcom/prineside/tdi2/ui/components/PauseMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu;->setVisible(Z)V

    return-void
.end method
