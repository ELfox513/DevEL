.class public final synthetic Lcom/prineside/tdi2/managers/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/c;->a:Lcom/prineside/tdi2/managers/AuthManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/c;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final finished(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/c;->a:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/c;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->a(Lcom/prineside/tdi2/managers/AuthManager;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method
