.class Lcom/prineside/tdi2/systems/MapEditorSystem$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/systems/MapEditorSystem;->startMap()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/prineside/tdi2/systems/MapEditorSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapEditorSystem;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem$3;->b:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iput-object p2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->deleteSavedGame()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
