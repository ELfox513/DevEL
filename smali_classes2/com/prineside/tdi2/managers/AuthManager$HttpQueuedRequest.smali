.class public Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpQueuedRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/badlogic/gdx/Net$HttpRequest;

.field public c:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/Net$HttpRequest;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->c:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/badlogic/gdx/Net$HttpRequest;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->c:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;

    return-object p0
.end method
