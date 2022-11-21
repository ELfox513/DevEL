.class public final Lr4/ns3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/pt3;
.implements Lr4/qp2;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lr4/ot3;

.field public d:Lr4/po2;

.field public final synthetic k:Lr4/ps3;


# direct methods
.method public constructor <init>(Lr4/ps3;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lr4/ns3;->k:Lr4/ps3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/so3;->s(Lr4/ft3;)Lr4/ot3;

    move-result-object v1

    iput-object v1, p0, Lr4/ns3;->b:Lr4/ot3;

    invoke-virtual {p1, v0}, Lr4/so3;->w(Lr4/ft3;)Lr4/po2;

    move-result-object p1

    iput-object p1, p0, Lr4/ns3;->d:Lr4/po2;

    iput-object p2, p0, Lr4/ns3;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILr4/ft3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/ns3;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/ns3;->b:Lr4/ot3;

    invoke-virtual {p1, p3}, Lr4/ot3;->m(Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final b(ILr4/ft3;)Z
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lr4/ns3;->k:Lr4/ps3;

    iget-object v1, p0, Lr4/ns3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lr4/ps3;->B(Ljava/lang/Object;Lr4/ft3;)Lr4/ft3;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lr4/ns3;->b:Lr4/ot3;

    iget v1, v0, Lr4/ot3;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lr4/ot3;->b:Lr4/ft3;

    invoke-static {v0, p2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lr4/ns3;->k:Lr4/ps3;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lr4/so3;->u(ILr4/ft3;J)Lr4/ot3;

    move-result-object v0

    iput-object v0, p0, Lr4/ns3;->b:Lr4/ot3;

    :cond_3
    iget-object v0, p0, Lr4/ns3;->d:Lr4/po2;

    iget v1, v0, Lr4/po2;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lr4/po2;->b:Lr4/ft3;

    invoke-static {v0, p2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lr4/ns3;->k:Lr4/ps3;

    invoke-virtual {v0, p1, p2}, Lr4/so3;->x(ILr4/ft3;)Lr4/po2;

    move-result-object p1

    iput-object p1, p0, Lr4/ns3;->d:Lr4/po2;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final g(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/ns3;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/ns3;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4}, Lr4/ot3;->e(Lr4/ws3;Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final h(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/ns3;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/ns3;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4}, Lr4/ot3;->g(Lr4/ws3;Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final k(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/ns3;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/ns3;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4}, Lr4/ot3;->i(Lr4/ws3;Lr4/ct3;)V

    :cond_0
    return-void
.end method

.method public final y(ILr4/ft3;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/ns3;->b(ILr4/ft3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/ns3;->b:Lr4/ot3;

    invoke-virtual {p1, p3, p4, p5, p6}, Lr4/ot3;->k(Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method
