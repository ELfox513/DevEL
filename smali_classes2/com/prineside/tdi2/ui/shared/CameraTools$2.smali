.class Lcom/prineside/tdi2/ui/shared/CameraTools$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->b(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    const/4 v3, 0x0

    :goto_1
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_1

    iget-object v4, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/CameraTools;->j(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/CameraTools;->b(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->b(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->b(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->b(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$2;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->update()V

    return-void
.end method
