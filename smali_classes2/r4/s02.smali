.class public final synthetic Lr4/s02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/hp;


# instance fields
.field public final a:Lr4/js;


# direct methods
.method public constructor <init>(Lr4/js;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/s02;->a:Lr4/js;

    return-void
.end method


# virtual methods
.method public final a(Lr4/xq;)V
    .locals 2

    iget-object v0, p0, Lr4/s02;->a:Lr4/js;

    invoke-virtual {p1}, Lr4/xq;->B()Lr4/qq;

    move-result-object v1

    invoke-virtual {v1}, Lr4/pm3;->x()Lr4/lm3;

    move-result-object v1

    check-cast v1, Lr4/pq;

    invoke-virtual {v1, v0}, Lr4/pq;->x(Lr4/js;)Lr4/pq;

    invoke-virtual {p1, v1}, Lr4/xq;->C(Lr4/pq;)Lr4/xq;

    return-void
.end method
