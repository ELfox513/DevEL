.class public final synthetic Lcom/prineside/tdi2/tiles/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/ScriptTile;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

.field public final synthetic d:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/ScriptTile;Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/v;->a:Lcom/prineside/tdi2/tiles/ScriptTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/v;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/v;->d:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/v;->a:Lcom/prineside/tdi2/tiles/ScriptTile;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/v;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/v;->d:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/tiles/ScriptTile;->d(Lcom/prineside/tdi2/tiles/ScriptTile;Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    return-void
.end method
