.class public final synthetic Lcom/prineside/tdi2/screens/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LoadingScreen$1;

.field public final synthetic b:Lcom/prineside/tdi2/utils/GameSyncLoader;

.field public final synthetic d:Lcom/prineside/tdi2/utils/GameSyncLoader$Task;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/LoadingScreen$1;Lcom/prineside/tdi2/utils/GameSyncLoader;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/y;->a:Lcom/prineside/tdi2/screens/LoadingScreen$1;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/y;->b:Lcom/prineside/tdi2/utils/GameSyncLoader;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/y;->d:Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/y;->a:Lcom/prineside/tdi2/screens/LoadingScreen$1;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/y;->b:Lcom/prineside/tdi2/utils/GameSyncLoader;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/y;->d:Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/screens/LoadingScreen$1;->a(Lcom/prineside/tdi2/screens/LoadingScreen$1;Lcom/prineside/tdi2/utils/GameSyncLoader;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    return-void
.end method
