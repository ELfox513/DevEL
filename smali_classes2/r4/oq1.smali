.class public final synthetic Lr4/oq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/hp;


# instance fields
.field public final a:Lr4/qp;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/js;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/qp;Ljava/lang/String;Lr4/js;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/oq1;->a:Lr4/qp;

    iput-object p2, p0, Lr4/oq1;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/oq1;->c:Lr4/js;

    iput-object p4, p0, Lr4/oq1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lr4/xq;)V
    .locals 5

    iget-object v0, p0, Lr4/oq1;->a:Lr4/qp;

    iget-object v1, p0, Lr4/oq1;->b:Ljava/lang/String;

    iget-object v2, p0, Lr4/oq1;->c:Lr4/js;

    iget-object v3, p0, Lr4/oq1;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lr4/xq;->D()Lr4/sp;

    move-result-object v4

    invoke-virtual {v4}, Lr4/pm3;->x()Lr4/lm3;

    move-result-object v4

    check-cast v4, Lr4/rp;

    invoke-virtual {v4, v0}, Lr4/rp;->v(Lr4/qp;)Lr4/rp;

    invoke-virtual {p1, v4}, Lr4/xq;->E(Lr4/rp;)Lr4/xq;

    invoke-virtual {p1}, Lr4/xq;->B()Lr4/qq;

    move-result-object v0

    invoke-virtual {v0}, Lr4/pm3;->x()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/pq;

    invoke-virtual {v0, v1}, Lr4/pq;->v(Ljava/lang/String;)Lr4/pq;

    invoke-virtual {v0, v2}, Lr4/pq;->x(Lr4/js;)Lr4/pq;

    invoke-virtual {p1, v0}, Lr4/xq;->C(Lr4/pq;)Lr4/xq;

    invoke-virtual {p1, v3}, Lr4/xq;->x(Ljava/lang/String;)Lr4/xq;

    return-void
.end method
