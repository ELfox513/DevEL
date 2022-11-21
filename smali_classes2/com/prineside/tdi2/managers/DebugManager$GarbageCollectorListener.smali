.class Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/DebugManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GarbageCollectorListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/DebugManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DebugManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;->a:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/DebugManager;Lcom/prineside/tdi2/managers/DebugManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;-><init>(Lcom/prineside/tdi2/managers/DebugManager;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;->a:Lcom/prineside/tdi2/managers/DebugManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->c(Lcom/prineside/tdi2/managers/DebugManager;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;->a:Lcom/prineside/tdi2/managers/DebugManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->d(Lcom/prineside/tdi2/managers/DebugManager;F)F

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
