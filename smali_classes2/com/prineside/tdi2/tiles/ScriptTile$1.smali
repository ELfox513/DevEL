.class Lcom/prineside/tdi2/tiles/ScriptTile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/ScriptTile;->fillMapEditorMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public final synthetic d:Lcom/prineside/tdi2/tiles/ScriptTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/ScriptTile;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/ScriptTile$1;->d:Lcom/prineside/tdi2/tiles/ScriptTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/ScriptTile$1;->a:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/ScriptTile$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/ScriptTile$1;->a:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-boolean v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->expandCodeEditor:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->expandCodeEditor:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/ScriptTile$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/high16 v1, 0x44910000    # 1160.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/ScriptTile$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/high16 v1, 0x43dc0000    # 440.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    :goto_0
    return-void
.end method
