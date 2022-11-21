.class public final synthetic Lcom/prineside/tdi2/managers/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/NetworkManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/NetworkManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/p;->a:Lcom/prineside/tdi2/managers/NetworkManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/p;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/managers/p;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/p;->a:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/p;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/p;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/p;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/NetworkManager;->a(Lcom/prineside/tdi2/managers/NetworkManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
