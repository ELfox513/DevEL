.class public final Lr4/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/pt3;
.implements Lr4/qp2;


# instance fields
.field public final a:Lr4/h6;

.field public b:Lr4/ot3;

.field public d:Lr4/po2;

.field public final synthetic k:Lr4/j6;


# direct methods
.method public constructor <init>(Lr4/j6;Lr4/h6;)V
    .locals 1

    iput-object p1, p0, Lr4/f6;->k:Lr4/j6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/j6;->a(Lr4/j6;)Lr4/ot3;

    move-result-object v0

    iput-object v0, p0, Lr4/f6;->b:Lr4/ot3;

    invoke-static {p1}, Lr4/j6;->b(Lr4/j6;)Lr4/po2;

    move-result-object p1

    iput-object p1, p0, Lr4/f6;->d:Lr4/po2;

    iput-object p2, p0, Lr4/f6;->a:Lr4/h6;

    return-void
.end method


# virtual methods
.method public final a(ILr4/ft3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/f6;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/f6;->b:Lr4/ot3;

    invoke-virtual {p1, p3}, Lr4/ot3;->m(Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final b(ILr4/ft3;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lr4/f6;->a:Lr4/h6;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Lr4/h6;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lr4/h6;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/ft3;

    iget-wide v4, v4, Lr4/f04;->d:J

    iget-wide v6, p2, Lr4/f04;->d:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v0, p2, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v1, v1, Lr4/h6;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p2, v0}, Lr4/ft3;->c(Ljava/lang/Object;)Lr4/ft3;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    iget-object p2, p0, Lr4/f6;->a:Lr4/h6;

    iget p2, p2, Lr4/h6;->d:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lr4/f6;->b:Lr4/ot3;

    iget v1, p2, Lr4/ot3;->a:I

    if-ne v1, p1, :cond_4

    iget-object p2, p2, Lr4/ot3;->b:Lr4/ft3;

    invoke-static {p2, v0}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iget-object p2, p0, Lr4/f6;->k:Lr4/j6;

    invoke-static {p2}, Lr4/j6;->a(Lr4/j6;)Lr4/ot3;

    move-result-object p2

    const-wide/16 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Lr4/ot3;->a(ILr4/ft3;J)Lr4/ot3;

    move-result-object p2

    iput-object p2, p0, Lr4/f6;->b:Lr4/ot3;

    :cond_5
    iget-object p2, p0, Lr4/f6;->d:Lr4/po2;

    iget v1, p2, Lr4/po2;->a:I

    if-ne v1, p1, :cond_6

    iget-object p2, p2, Lr4/po2;->b:Lr4/ft3;

    invoke-static {p2, v0}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lr4/f6;->k:Lr4/j6;

    invoke-static {p2}, Lr4/j6;->b(Lr4/j6;)Lr4/po2;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lr4/po2;->a(ILr4/ft3;)Lr4/po2;

    move-result-object p1

    iput-object p1, p0, Lr4/f6;->d:Lr4/po2;

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public final g(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/f6;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/f6;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4}, Lr4/ot3;->e(Lr4/ws3;Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final h(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/f6;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/f6;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4}, Lr4/ot3;->g(Lr4/ws3;Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final k(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/f6;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/f6;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4}, Lr4/ot3;->i(Lr4/ws3;Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final y(ILr4/ft3;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/f6;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/f6;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4, p5, p6}, Lr4/ot3;->k(Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method
