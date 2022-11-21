.class Lcom/prineside/tdi2/managers/DebugManager$1;
.super Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DebugManager$1;->a:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public signInStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager$1;->a:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/DebugManager;->a(Lcom/prineside/tdi2/managers/DebugManager;)V

    return-void
.end method
