.class public Lf7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Lj7/h;

.field public final c:Ld7/b;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lj7/h;Ld7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lj7/h;",
            "Ld7/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/i;->a:Lorg/apache/http/client/ResponseHandler;

    iput-object p2, p0, Lf7/i;->b:Lj7/h;

    iput-object p3, p0, Lf7/i;->c:Ld7/b;

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lf7/i;->c:Ld7/b;

    iget-object v1, p0, Lf7/i;->b:Lj7/h;

    invoke-virtual {v1}, Lj7/h;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld7/b;->J(J)Ld7/b;

    iget-object v0, p0, Lf7/i;->c:Ld7/b;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ld7/b;->A(I)Ld7/b;

    invoke-static {p1}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf7/i;->c:Ld7/b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld7/b;->F(J)Ld7/b;

    :cond_0
    invoke-static {p1}, Lf7/k;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lf7/i;->c:Ld7/b;

    invoke-virtual {v1, v0}, Ld7/b;->E(Ljava/lang/String;)Ld7/b;

    :cond_1
    iget-object v0, p0, Lf7/i;->c:Ld7/b;

    invoke-virtual {v0}, Ld7/b;->h()Lk7/h;

    iget-object v0, p0, Lf7/i;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
