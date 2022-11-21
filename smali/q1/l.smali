.class public final Lq1/l;
.super Lq1/n;
.source "SourceFile"

# interfaces
.implements Lq1/d;


# direct methods
.method public constructor <init>(Lx1/e0;ILx1/a0;Lq1/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lq1/n;-><init>(Lx1/e0;ILx1/a0;Lq1/b;)V

    return-void
.end method


# virtual methods
.method public e()Lx1/g0;
    .locals 2

    invoke-virtual {p0}, Lq1/n;->getAttributes()Lq1/b;

    move-result-object v0

    const-string v1, "ConstantValue"

    invoke-interface {v0, v1}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object v0

    check-cast v0, Lm1/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lm1/d;->a()Lx1/g0;

    move-result-object v0

    return-object v0
.end method
