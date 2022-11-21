.class public final synthetic Lcom/prineside/tdi2/tiles/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/ScriptTile;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/ScriptTile;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/x;->a:Lcom/prineside/tdi2/tiles/ScriptTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/x;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/x;->a:Lcom/prineside/tdi2/tiles/ScriptTile;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/x;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/ScriptTile;->f(Lcom/prineside/tdi2/tiles/ScriptTile;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    return-void
.end method
