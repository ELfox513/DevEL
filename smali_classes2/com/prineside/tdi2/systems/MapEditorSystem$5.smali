.class Lcom/prineside/tdi2/systems/MapEditorSystem$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/systems/MapEditorSystem;->goToPreviousScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/MapEditorSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem$5;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem$5;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-boolean v0, v0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLevelSelectScreen()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToCustomMapSelectScreen()V

    :goto_0
    return-void
.end method
