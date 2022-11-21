.class public final Lr4/ur3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vu3;


# instance fields
.field public final a:Lr4/vu3;

.field public b:Z

.field public final synthetic c:Lr4/ls3;


# direct methods
.method public constructor <init>(Lr4/ls3;Lr4/vu3;)V
    .locals 0

    iput-object p1, p0, Lr4/ur3;->c:Lr4/ls3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/ur3;->a:Lr4/vu3;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/ur3;->c:Lr4/ls3;

    invoke-virtual {v0}, Lr4/ls3;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/ur3;->a:Lr4/vu3;

    invoke-interface {v0}, Lr4/vu3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/ur3;->a:Lr4/vu3;

    invoke-interface {v0}, Lr4/vu3;->b()V

    return-void
.end method

.method public final c(J)I
    .locals 1

    iget-object v0, p0, Lr4/ur3;->c:Lr4/ls3;

    invoke-virtual {v0}, Lr4/ls3;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lr4/ur3;->a:Lr4/vu3;

    invoke-interface {v0, p1, p2}, Lr4/vu3;->c(J)I

    move-result p1

    return p1
.end method

.method public final d(Lr4/f5;Lr4/i4;I)I
    .locals 10

    iget-object v0, p0, Lr4/ur3;->c:Lr4/ls3;

    invoke-virtual {v0}, Lr4/ls3;->n()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lr4/ur3;->b:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Lr4/qb4;->f(I)V

    return v3

    :cond_1
    iget-object v0, p0, Lr4/ur3;->a:Lr4/vu3;

    invoke-interface {v0, p1, p2, p3}, Lr4/vu3;->d(Lr4/f5;Lr4/i4;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_5

    iget-object p2, p1, Lr4/f5;->a:Lr4/e5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p2, Lr4/e5;->B:I

    const/4 v1, 0x0

    if-nez p3, :cond_2

    iget p3, p2, Lr4/e5;->C:I

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    :cond_2
    iget-object v2, p0, Lr4/ur3;->c:Lr4/ls3;

    iget-wide v2, v2, Lr4/ls3;->p:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p2, Lr4/e5;->C:I

    :goto_0
    invoke-virtual {p2}, Lr4/e5;->a()Lr4/c5;

    move-result-object p2

    invoke-virtual {p2, p3}, Lr4/c5;->E(I)Lr4/c5;

    invoke-virtual {p2, v1}, Lr4/c5;->F(I)Lr4/c5;

    invoke-virtual {p2}, Lr4/c5;->I()Lr4/e5;

    move-result-object p2

    iput-object p2, p1, Lr4/f5;->a:Lr4/e5;

    :cond_4
    return v0

    :cond_5
    iget-object p1, p0, Lr4/ur3;->c:Lr4/ls3;

    iget-wide v6, p1, Lr4/ls3;->p:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_8

    if-ne p3, v3, :cond_6

    iget-wide v8, p2, Lr4/i4;->e:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_7

    :cond_6
    if-ne p3, v1, :cond_8

    invoke-virtual {p1}, Lr4/ls3;->f()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_8

    iget-boolean p1, p2, Lr4/i4;->d:Z

    if-nez p1, :cond_8

    :cond_7
    invoke-virtual {p2}, Lr4/qb4;->a()V

    invoke-virtual {p2, v2}, Lr4/qb4;->f(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/ur3;->b:Z

    return v3

    :cond_8
    return p3
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/ur3;->b:Z

    return-void
.end method
