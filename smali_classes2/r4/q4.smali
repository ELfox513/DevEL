.class public final Lr4/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/f7;


# instance fields
.field public final synthetic a:Lr4/y4;


# direct methods
.method public constructor <init>(Lr4/y4;)V
    .locals 0

    iput-object p1, p0, Lr4/q4;->a:Lr4/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final V(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object p1, p0, Lr4/q4;->a:Lr4/y4;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lr4/y4;->Q(Lr4/y4;Z)Z

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/q4;->a:Lr4/y4;

    invoke-static {v0}, Lr4/y4;->P(Lr4/y4;)Lr4/xa;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lr4/xa;->C(I)Z

    return-void
.end method
