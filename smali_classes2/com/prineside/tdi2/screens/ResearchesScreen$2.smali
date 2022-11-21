.class Lcom/prineside/tdi2/screens/ResearchesScreen$2;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/ResearchesScreen;-><init>(Lcom/prineside/tdi2/enums/ResearchType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/math/Vector2;

.field public final synthetic b:Lcom/prineside/tdi2/screens/ResearchesScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public mouseMoved(II)Z
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/Research;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, p2, v2}, Lcom/prineside/tdi2/screens/ResearchesScreen;->e(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1, p2}, Lcom/prineside/tdi2/managers/ResearchManager;->isVisible(Lcom/prineside/tdi2/Research;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/ResearchesScreen;->f(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/ResearchesScreen;->f(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;)V

    return v0
.end method

.method public touchUp(IIII)Z
    .locals 1

    iget-object p3, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinX()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinY()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/Research;

    iget-object p4, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p4, p2, v0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->e(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p4, p2}, Lcom/prineside/tdi2/managers/ResearchManager;->isVisible(Lcom/prineside/tdi2/Research;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/ResearchesScreen;->g(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;)V

    return p3

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$2;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/ResearchesScreen;->g(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;)V

    return p3
.end method
