.class Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/PathRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_GameStateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/PathRenderingSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;->a:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;Lcom/prineside/tdi2/systems/PathRenderingSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;)V

    return-void
.end method


# virtual methods
.method public gameResumed()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;->a:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->updatePathTracesRendering()V

    return-void
.end method
