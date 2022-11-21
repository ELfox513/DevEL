.class Lcom/prineside/tdi2/managers/DebugManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$ScreenResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/DebugManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/DebugManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DebugManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DebugManager$3;->a:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)V
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/DebugManager$3;->a:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/DebugManager;->a(Lcom/prineside/tdi2/managers/DebugManager;)V

    :cond_0
    return-void
.end method

.method public visibleDisplayFrameChanged()V
    .locals 0

    return-void
.end method
