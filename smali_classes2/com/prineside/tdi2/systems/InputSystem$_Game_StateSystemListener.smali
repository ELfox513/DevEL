.class Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/InputSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_Game_StateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/InputSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/systems/InputSystem;)V

    return-void
.end method


# virtual methods
.method public gamePaused()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/systems/InputSystem;->d(Lcom/prineside/tdi2/systems/InputSystem;Lcom/badlogic/gdx/InputProcessor;)Lcom/badlogic/gdx/InputProcessor;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/InputSystem;->enableOnlyStage()V

    return-void
.end method

.method public gameResumed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game resumed, input processor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v1}, Lcom/prineside/tdi2/systems/InputSystem;->c(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v1}, Lcom/prineside/tdi2/systems/InputSystem;->c(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-void
.end method

.method public realUpdate(F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/CameraController;->realUpdate(F)V

    return-void
.end method
