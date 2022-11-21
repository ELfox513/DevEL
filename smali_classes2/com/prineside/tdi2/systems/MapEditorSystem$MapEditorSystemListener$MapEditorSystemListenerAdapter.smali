.class public Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener$MapEditorSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapEditorSystemListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draggingPositionChanged()V
    .locals 0

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mapGateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 0

    return-void
.end method

.method public mapSizeChanged()V
    .locals 0

    return-void
.end method

.method public mapTileChanged(IILcom/prineside/tdi2/Tile;)V
    .locals 0

    return-void
.end method

.method public mapValidationFailed(Lcom/prineside/tdi2/Map$InvalidMapException;)V
    .locals 0

    return-void
.end method

.method public modeChanged(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V
    .locals 0

    return-void
.end method

.method public startedDragging()V
    .locals 0

    return-void
.end method

.method public stoppedDragging(Lcom/prineside/tdi2/Item;)V
    .locals 0

    return-void
.end method
