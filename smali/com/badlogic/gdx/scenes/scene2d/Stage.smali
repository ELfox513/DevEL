.class public Lcom/badlogic/gdx/scenes/scene2d/Stage;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    }
.end annotation


# static fields
.field public static I:Z


# instance fields
.field public A:Z

.field public B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public final H:Lcom/badlogic/gdx/graphics/Color;

.field public a:Lcom/badlogic/gdx/utils/viewport/Viewport;

.field public final b:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field public d:Z

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final p:Lcom/badlogic/gdx/math/Vector2;

.field public final q:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public final r:[Z

.field public final s:[I

.field public final t:[I

.field public u:I

.field public v:I

.field public w:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public x:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public y:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public final z:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 5

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    const/16 v0, 0x14

    new-array v1, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->q:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->r:[Z

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->s:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->t:[I

    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->A:Z

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->H:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->b:Lcom/badlogic/gdx/graphics/g2d/Batch;

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "batch cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "viewport cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->q:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->q:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v4, v3, v1

    if-ne p1, v4, :cond_0

    aput-object v2, v3, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->s:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->t:[I

    aget v3, v3, v1

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->e(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->w:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, v0, :cond_2

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->w:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->u:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->v:I

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->e(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)V

    :cond_2
    return-void
.end method

.method public act()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    const v1, 0x3d088889

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    return-void
.end method

.method public act(F)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->q:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->q:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v2, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->r:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->s:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->t:[I

    aget v5, v5, v1

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->d(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->s:[I

    aget v2, v2, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->t:[I

    aget v4, v4, v1

    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->e(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->w:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->u:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->v:I

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->d(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->w:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    return-void
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iput-object p2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object p3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->k:I

    iput p5, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->p:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    instance-of v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->b(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setAutoShapeType(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->E:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->F:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->D:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->F:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_4

    move-object v0, v2

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v3, :cond_5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    return-void

    :cond_8
    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    :goto_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->D:Z

    if-eqz v1, :cond_9

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->b(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_a
    :goto_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->isDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->b:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1, v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    return-void
.end method

.method public cancelTouchFocus()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    const/high16 v6, -0x31000000

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    :cond_2
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->k:I

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->p:I

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 7
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    const/high16 v1, -0x31000000

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v6, p1, :cond_0

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->k:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->p:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    return-void
.end method

.method public final d(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    if-ne p2, p1, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-static {p3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-static {p3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->b:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->B:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->dispose()V

    :cond_1
    return-void
.end method

.method public draw()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->b:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->I:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->c()V

    :cond_1
    return-void
.end method

.method public final e(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const-class p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object p3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public f(II)Z
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v3

    add-int/2addr v3, v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-ge v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method public getActionsRequestRendering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->A:Z

    return v0
.end method

.method public getActors()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->b:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getDebugColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->H:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v0

    return v0
.end method

.method public getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v0

    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public isDebugAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->D:Z

    return v0
.end method

.method public keyDown(I)Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public keyTyped(C)Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setCharacter(C)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public keyUp(I)Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public mouseMoved(II)Z
    .locals 2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->u:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->v:I

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->f(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_1
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public removeTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p3, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->k:I

    if-ne v3, p4, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->p:I

    if-ne v3, p5, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public scrolled(FF)Z
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->v:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmountX(F)V

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmountY(F)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public setActionsRequestRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->A:Z

    return-void
.end method

.method public setDebugAll(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->D:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->D:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->I:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setDebugInvisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->C:Z

    return-void
.end method

.method public setDebugParentUnderMouse(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->F:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->F:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->I:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V
    .locals 2
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    sput-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/Stage;->I:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setDebugTableUnderMouse(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V

    return-void
.end method

.method public setDebugUnderMouse(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->E:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->E:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->I:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 4
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_2

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return v3
.end method

.method public setRoot(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    return-void
.end method

.method public setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 4
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->scroll:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_2

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return v3
.end method

.method public setViewport(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-void
.end method

.method public stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p1
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public touchCancelled(IIII)Z
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus()V

    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(IIII)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->f(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->r:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->s:[I

    aput p1, v0, p3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->t:[I

    aput p2, v0, p3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p3, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object p2

    sget-object p3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public touchDragged(III)Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->s:[I

    aput p1, v0, p3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->t:[I

    aput p2, v0, p3

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->u:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->v:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->k:I

    if-eq v4, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->handle()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public touchUp(IIII)Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->r:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->s:[I

    aput p1, v0, p3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->t:[I

    aput p2, v0, p3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->p:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->k:I

    if-ne v4, p3, :cond_4

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->p:I

    if-eq v4, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->a:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->handle()V

    :cond_3
    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isHandled()Z

    move-result p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->x:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_1
    return-void
.end method

.method public unfocusAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus()V

    return-void
.end method
