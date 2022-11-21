.class Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Map$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapEditorSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/MapEditorSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/MapEditorSystem;Lcom/prineside/tdi2/systems/MapEditorSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pathfindingRebuilt(Z)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->d(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    return-void
.end method
