.class Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public final synthetic r:Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;->r:Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;->r:Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollY()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;->r:Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->a()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->d(F)V

    return-void
.end method
