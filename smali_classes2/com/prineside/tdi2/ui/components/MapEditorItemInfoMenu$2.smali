.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
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
.field public final synthetic b:[Z

.field public final synthetic c:[Z

.field public final synthetic d:[F

.field public final synthetic e:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;[Z[Z[F)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->e:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->b:[Z

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->c:[Z

    iput-object p4, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->d:[F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->b:[Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    aput-boolean p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->c:[Z

    aput-boolean p2, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->d:[F

    const/4 p4, 0x0

    aput p4, p1, p2

    return p3
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->b:[Z

    const/4 p2, 0x0

    aput-boolean p2, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->c:[Z

    aget-boolean p1, p1, p2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->e:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->e:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->e:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;

    invoke-interface {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;->sellButtonPressed()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;->e:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    return-void
.end method
