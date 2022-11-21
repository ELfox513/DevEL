.class public final synthetic Lr4/cr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/hp;


# instance fields
.field public final a:Lr4/bp2;


# direct methods
.method public constructor <init>(Lr4/bp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cr1;->a:Lr4/bp2;

    return-void
.end method


# virtual methods
.method public final a(Lr4/xq;)V
    .locals 3

    iget-object v0, p0, Lr4/cr1;->a:Lr4/bp2;

    invoke-virtual {p1}, Lr4/xq;->D()Lr4/sp;

    move-result-object v1

    invoke-virtual {v1}, Lr4/pm3;->x()Lr4/lm3;

    move-result-object v1

    check-cast v1, Lr4/rp;

    invoke-virtual {p1}, Lr4/xq;->D()Lr4/sp;

    move-result-object v2

    invoke-virtual {v2}, Lr4/sp;->C()Lr4/mq;

    move-result-object v2

    invoke-virtual {v2}, Lr4/pm3;->x()Lr4/lm3;

    move-result-object v2

    check-cast v2, Lr4/lq;

    iget-object v0, v0, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    iget-object v0, v0, Lr4/so2;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lr4/lq;->v(Ljava/lang/String;)Lr4/lq;

    invoke-virtual {v1, v2}, Lr4/rp;->x(Lr4/lq;)Lr4/rp;

    invoke-virtual {p1, v1}, Lr4/xq;->E(Lr4/rp;)Lr4/xq;

    return-void
.end method
