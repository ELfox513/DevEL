.class public final Lq1/k;
.super Lb2/f;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lq1/k;->x(I)Lq1/a;

    move-result-object v3

    invoke-interface {v3}, Lq1/a;->c()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public j(Ljava/lang/String;)Lq1/a;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lq1/k;->x(I)Lq1/a;

    move-result-object v2

    invoke-interface {v2}, Lq1/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Lq1/a;)Lq1/a;
    .locals 5

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lq1/k;->x(I)Lq1/a;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-interface {p1}, Lq1/a;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lq1/k;->x(I)Lq1/a;

    move-result-object v3

    invoke-interface {v3}, Lq1/a;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public x(I)Lq1/a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq1/a;

    return-object p1
.end method

.method public z(ILq1/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method
