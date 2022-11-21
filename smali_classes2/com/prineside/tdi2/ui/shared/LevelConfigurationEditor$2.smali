.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Input$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$2;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 0

    return-void
.end method

.method public input(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v0, "Level with this name already exists"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$2;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/BasicLevel;->clone(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->registerLevel(Lcom/prineside/tdi2/BasicLevel;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$2;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->P(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel;)Lcom/prineside/tdi2/BasicLevel;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$2;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->R(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v0, "0-9, a-Z and dot, minimum 2 characters"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method
