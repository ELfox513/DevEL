.class public final Lr4/h52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/vp2;

.field public final b:Lr4/dq1;

.field public final c:Lr4/ls1;

.field public final d:Lr4/xt2;


# direct methods
.method public constructor <init>(Lr4/vp2;Lr4/dq1;Lr4/ls1;Lr4/xt2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h52;->a:Lr4/vp2;

    iput-object p2, p0, Lr4/h52;->b:Lr4/dq1;

    iput-object p3, p0, Lr4/h52;->c:Lr4/ls1;

    iput-object p4, p0, Lr4/h52;->d:Lr4/xt2;

    return-void
.end method


# virtual methods
.method public final a(Lr4/so2;Lr4/no2;ILr4/u12;J)V
    .locals 9

    sget-object v0, Lr4/rz;->i6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "adapter_sv"

    const-string v2, "adapter_v"

    const-string v3, "areec"

    const-string v4, "ancn"

    const-string v5, "arec"

    const-string v6, "sc"

    const-string v7, "adapter_l"

    const-string v8, "adapter_status"

    if-eqz v0, :cond_3

    invoke-static {v8}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/wt2;->h(Lr4/so2;)Lr4/wt2;

    invoke-virtual {v0, p2}, Lr4/wt2;->i(Lr4/no2;)Lr4/wt2;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lr4/u12;->b()Lr4/lt;

    move-result-object p1

    iget p1, p1, Lr4/lt;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget-object p1, p0, Lr4/h52;->a:Lr4/vp2;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lr4/vp2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v3, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_0
    iget-object p1, p0, Lr4/h52;->b:Lr4/dq1;

    iget-object p2, p2, Lr4/no2;->t:Ljava/util/List;

    invoke-virtual {p1, p2}, Lr4/dq1;->d(Ljava/util/List;)Lr4/cq1;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p1, Lr4/cq1;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget-object p2, p1, Lr4/cq1;->b:Lr4/rd0;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_1
    iget-object p1, p1, Lr4/cq1;->c:Lr4/rd0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_2
    iget-object p1, p0, Lr4/h52;->d:Lr4/xt2;

    invoke-interface {p1, v0}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void

    :cond_3
    iget-object v0, p0, Lr4/h52;->c:Lr4/ls1;

    invoke-virtual {v0}, Lr4/ls1;->d()Lr4/ks1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/ks1;->b(Lr4/so2;)Lr4/ks1;

    invoke-virtual {v0, p2}, Lr4/ks1;->c(Lr4/no2;)Lr4/ks1;

    const-string p1, "action"

    invoke-virtual {v0, p1, v8}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lr4/u12;->b()Lr4/lt;

    move-result-object p1

    iget p1, p1, Lr4/lt;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    iget-object p1, p0, Lr4/h52;->a:Lr4/vp2;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lr4/vp2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, v3, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_4
    iget-object p1, p0, Lr4/h52;->b:Lr4/dq1;

    iget-object p2, p2, Lr4/no2;->t:Ljava/util/List;

    invoke-virtual {p1, p2}, Lr4/dq1;->d(Ljava/util/List;)Lr4/cq1;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p1, Lr4/cq1;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    iget-object p2, p1, Lr4/cq1;->b:Lr4/rd0;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_5
    iget-object p1, p1, Lr4/cq1;->c:Lr4/rd0;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_6
    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method
