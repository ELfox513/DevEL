.class public Lcom/prineside/tdi2/OkSdkHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "OkSdkHandler"


# instance fields
.field public isInit:Z

.field public okCurrentUserId:Ljava/lang/String;

.field public okIsInitSuccess:Z

.field public okIsLoginSuccess:Z

.field public okNeedDownload:Z

.field public sdk:Lp7/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->getOkJoySDK()Lp7/d;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->isInit:Z

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$1;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->c(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$2;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->m(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$3;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->a(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$4;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->k(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$5;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$5;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->h(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$6;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$6;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->n(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$7;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$7;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->b(Lp7/i;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$8;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$8;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->e(Lp7/j;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$9;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$9;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->l(Lp7/h;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$10;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$10;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->i(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$11;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$11;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->f(Lp7/g;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    new-instance v1, Lcom/prineside/tdi2/OkSdkHandler$12;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/OkSdkHandler$12;-><init>(Lcom/prineside/tdi2/OkSdkHandler;)V

    invoke-interface {v0, v1}, Lp7/d;->j(Lp7/g;)V

    iget-object v2, p0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "okgame"

    const-string v6, "74"

    const-string v7, "4247"

    invoke-interface/range {v2 .. v7}, Lp7/d;->g(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
