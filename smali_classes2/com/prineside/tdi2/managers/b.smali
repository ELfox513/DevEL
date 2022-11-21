.class public final synthetic Lcom/prineside/tdi2/managers/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/b;->a:Lcom/prineside/tdi2/managers/AuthManager;

    return-void
.end method


# virtual methods
.method public final finished(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/b;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->e(Lcom/prineside/tdi2/managers/AuthManager;ZLjava/lang/String;)V

    return-void
.end method
