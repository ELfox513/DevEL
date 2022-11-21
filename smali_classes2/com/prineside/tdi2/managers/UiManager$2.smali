.class Lcom/prineside/tdi2/managers/UiManager$2;
.super Lcom/badlogic/gdx/scenes/scene2d/Stage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/UiManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic J:Lcom/prineside/tdi2/managers/UiManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/UiManager;Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$2;->J:Lcom/prineside/tdi2/managers/UiManager;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method


# virtual methods
.method public touchDown(IIII)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager$2;->J:Lcom/prineside/tdi2/managers/UiManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/UiManager;->a(Lcom/prineside/tdi2/managers/UiManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager$2;->J:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-static {}, Lcom/prineside/tdi2/managers/UiManager;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-static {}, Lcom/prineside/tdi2/managers/UiManager;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/prineside/tdi2/managers/UiManager;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchDown(IIII)Z

    move-result p1

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/managers/UiManager$2;->J:Lcom/prineside/tdi2/managers/UiManager;

    invoke-static {p2, v0}, Lcom/prineside/tdi2/managers/UiManager;->c(Lcom/prineside/tdi2/managers/UiManager;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "UiManager"

    invoke-static {p3, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchDown(IIII)Z

    move-result p1

    return p1
.end method
