.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic M:[Z

.field public final synthetic N:[F

.field public final synthetic O:[Z

.field public final synthetic P:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;[Z[F[Z)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->P:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->M:[Z

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->N:[F

    iput-object p4, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->O:[Z

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->M:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->N:[F

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/high16 p1, 0x3f400000    # 0.75f

    cmpl-float p1, v2, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->O:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->P:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->P:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->P:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;->sellButtonHeld()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->P:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;->M:[Z

    aput-boolean v1, p1, v1

    :cond_1
    return-void
.end method
