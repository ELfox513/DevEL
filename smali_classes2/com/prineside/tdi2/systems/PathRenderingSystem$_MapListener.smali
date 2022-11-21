.class Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Map$MapListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/PathRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/PathRenderingSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;->a:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;Lcom/prineside/tdi2/systems/PathRenderingSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;-><init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;)V

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

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;->a:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->updatePathTracesRendering()V

    :cond_0
    return-void
.end method
