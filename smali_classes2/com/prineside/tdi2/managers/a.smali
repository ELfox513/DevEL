.class public final synthetic Lcom/prineside/tdi2/managers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;

.field public final synthetic b:Lcom/prineside/tdi2/utils/ObjectRetriever;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/a;->a:Lcom/prineside/tdi2/managers/AuthManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/a;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method


# virtual methods
.method public final finished(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/a;->a:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/a;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->d(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;ZLjava/lang/String;)V

    return-void
.end method
