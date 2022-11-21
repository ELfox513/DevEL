.class public abstract Lt6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/d$a;
    }
.end annotation


# static fields
.field public static a:Lt6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lt6/d;->a()Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lt6/d$a;->a()Lt6/d;

    move-result-object v0

    sput-object v0, Lt6/d;->a:Lt6/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lt6/d$a;
    .locals 4

    new-instance v0, Lt6/a$b;

    invoke-direct {v0}, Lt6/a$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lt6/a$b;->h(J)Lt6/d$a;

    move-result-object v0

    sget-object v3, Lt6/c$a;->a:Lt6/c$a;

    invoke-virtual {v0, v3}, Lt6/d$a;->g(Lt6/c$a;)Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lt6/d$a;->c(J)Lt6/d$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()J
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Lt6/c$a;
.end method

.method public abstract h()J
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Lt6/d;->g()Lt6/c$a;

    move-result-object v0

    sget-object v1, Lt6/c$a;->p:Lt6/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    invoke-virtual {p0}, Lt6/d;->g()Lt6/c$a;

    move-result-object v0

    sget-object v1, Lt6/c$a;->b:Lt6/c$a;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lt6/d;->g()Lt6/c$a;

    move-result-object v0

    sget-object v1, Lt6/c$a;->a:Lt6/c$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, Lt6/d;->g()Lt6/c$a;

    move-result-object v0

    sget-object v1, Lt6/c$a;->k:Lt6/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, Lt6/d;->g()Lt6/c$a;

    move-result-object v0

    sget-object v1, Lt6/c$a;->d:Lt6/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    invoke-virtual {p0}, Lt6/d;->g()Lt6/c$a;

    move-result-object v0

    sget-object v1, Lt6/c$a;->a:Lt6/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract n()Lt6/d$a;
.end method

.method public o(Ljava/lang/String;JJ)Lt6/d;
    .locals 1

    invoke-virtual {p0}, Lt6/d;->n()Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt6/d$a;->b(Ljava/lang/String;)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lt6/d$a;->c(J)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lt6/d$a;->h(J)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lt6/d$a;->a()Lt6/d;

    move-result-object p1

    return-object p1
.end method

.method public p()Lt6/d;
    .locals 2

    invoke-virtual {p0}, Lt6/d;->n()Lt6/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt6/d$a;->b(Ljava/lang/String;)Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lt6/d$a;->a()Lt6/d;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lt6/d;
    .locals 1

    invoke-virtual {p0}, Lt6/d;->n()Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt6/d$a;->e(Ljava/lang/String;)Lt6/d$a;

    move-result-object p1

    sget-object v0, Lt6/c$a;->p:Lt6/c$a;

    invoke-virtual {p1, v0}, Lt6/d$a;->g(Lt6/c$a;)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lt6/d$a;->a()Lt6/d;

    move-result-object p1

    return-object p1
.end method

.method public r()Lt6/d;
    .locals 2

    invoke-virtual {p0}, Lt6/d;->n()Lt6/d$a;

    move-result-object v0

    sget-object v1, Lt6/c$a;->b:Lt6/c$a;

    invoke-virtual {v0, v1}, Lt6/d$a;->g(Lt6/c$a;)Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lt6/d$a;->a()Lt6/d;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lt6/d;
    .locals 1

    invoke-virtual {p0}, Lt6/d;->n()Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt6/d$a;->d(Ljava/lang/String;)Lt6/d$a;

    move-result-object p1

    sget-object v0, Lt6/c$a;->k:Lt6/c$a;

    invoke-virtual {p1, v0}, Lt6/d$a;->g(Lt6/c$a;)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lt6/d$a;->b(Ljava/lang/String;)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lt6/d$a;->f(Ljava/lang/String;)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lt6/d$a;->c(J)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lt6/d$a;->h(J)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lt6/d$a;->a()Lt6/d;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;)Lt6/d;
    .locals 1

    invoke-virtual {p0}, Lt6/d;->n()Lt6/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt6/d$a;->d(Ljava/lang/String;)Lt6/d$a;

    move-result-object p1

    sget-object v0, Lt6/c$a;->d:Lt6/c$a;

    invoke-virtual {p1, v0}, Lt6/d$a;->g(Lt6/c$a;)Lt6/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lt6/d$a;->a()Lt6/d;

    move-result-object p1

    return-object p1
.end method
