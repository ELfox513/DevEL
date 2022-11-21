.class public Lcom/badlogic/gdx/Net$HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequest"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public p:Ljava/lang/String;

.field public q:Ljava/io/InputStream;

.field public r:J

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->k:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->s:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->t:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->r:J

    return-wide v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->q:Ljava/io/InputStream;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->s:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getIncludeCredentials()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->t:Z

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->k:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->k:I

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->q:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->r:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->s:Z

    return-void
.end method

.method public setContent(Ljava/io/InputStream;J)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->q:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/badlogic/gdx/Net$HttpRequest;->r:J

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->p:Ljava/lang/String;

    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 2

    if-nez p1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Following redirects can\'t be disabled using the GWT/WebGL backend!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->s:Z

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIncludeCredentials(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->t:Z

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->k:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->b:Ljava/lang/String;

    return-void
.end method
